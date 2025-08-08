#!/bin/bash
# setup firewall rules
# or add wireguard / netbird here
echo "Run: Setup firewall rules"

apt update -y
apt install fail2ban -y
systemctl start fail2ban
systemctl enable fail2ban
apt install ufw -y
ufw allow ssh
ufw allow 8201
ufw enable