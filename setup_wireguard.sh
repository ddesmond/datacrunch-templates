#!/bin/bash

# Exit on any error
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}This script must be run as root${NC}"
   exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo -e "${GREEN}Installing Docker...${NC}"
    apt update && apt install -y docker.io
    systemctl start docker
    systemctl enable docker
fi

# Prompt for public network interface
echo "Enter the public network interface (e.g., eth0, enp1s0):"
read -r PUBLIC_INTERFACE
if ! ip link show "$PUBLIC_INTERFACE" > /dev/null 2>&1; then
    echo -e "${RED}Interface $PUBLIC_INTERFACE does not exist${NC}"
    exit 1
fi

# Prompt for WireGuard port
echo "Enter the WireGuard port (default: 51820):"
read -r WG_PORT
WG_PORT=${WG_PORT:-51820}

# Prompt for VPN subnet
echo "Enter the VPN subnet (default: 10.8.0.0/24):"
read -r VPN_SUBNET
VPN_SUBNET=${VPN_SUBNET:-10.8.0.0/24}
SERVER_IP=$(echo "$VPN_SUBNET" | sed 's/0\/24/1/')
CLIENT_IP=$(echo "$VPN_SUBNET" | sed 's/0\/24/2/')

# Install UFW
echo -e "${GREEN}Installing UFW...${NC}"
apt install -y ufw

# Enable IP forwarding
echo -e "${GREEN}Enabling IP forwarding...${NC}"
sysctl -w net.ipv4.ip_forward=1
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

# Create directory for WireGuard configurations
mkdir -p /etc/wireguard
chmod 700 /etc/wireguard

# Run linuxserver/wireguard container
echo -e "${GREEN}Starting WireGuard container...${NC}"
docker run -d \
  --name=wireguard \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e SERVERURL=auto \
  -e SERVERPORT=$WG_PORT \
  -e PEERS=1 \
  -e PEERDNS=8.8.8.8 \
  -e INTERNAL_SUBNET=$VPN_SUBNET \
  -e ALLOWEDIPS=0.0.0.0/0 \
  -p $WG_PORT:51820/udp \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --restart=unless-stopped \
  linuxserver/wireguard:latest

# Wait for container to initialize
sleep 5

# Retrieve server and client configurations
echo -e "${GREEN}Retrieving WireGuard configurations...${NC}"
docker cp wireguard:/config/wg0.conf /etc/wireguard/wg0.conf
docker cp wireguard:/config/peer1/peer1.conf /etc/wireguard/client_wg0.conf

# Update client configuration with server public IP
SERVER_PUBLIC_IP=$(curl -s https://icanhazip.com)
sed -i "s/Endpoint = .*/Endpoint = $SERVER_PUBLIC_IP:$WG_PORT/" /etc/wireguard/client_wg0.conf

# Configure firewall
echo -e "${GREEN}Configuring UFW firewall...${NC}"
ufw reset
ufw allow $WG_PORT/udp
ufw allow 22/tcp
ufw route allow in on wg0 out on "$PUBLIC_INTERFACE"
ufw allow in on wg0
ufw default deny incoming
ufw default allow outgoing
echo "y" | ufw enable

# Display client configuration
echo -e "${GREEN}Client configuration generated at /etc/wireguard/client_wg0.conf:${NC}"
cat /etc/wireguard/client_wg0.conf

echo -e "${GREEN}Setup complete!${NC}"
echo "Copy /etc/wireguard/client_wg0.conf to your client device and start WireGuard."
echo "Test connectivity with: ping $SERVER_IP"
echo "The server is only accessible via WireGuard (port $WG_PORT/UDP) and SSH (port 22/TCP)."