#!/bin/bash
# Lodgy - A tool for log following and analysis

curl https://logdy.dev/install.sh | bash

echo "Lodgy installed successfully."

# run lodgy
logdy follow /root/startup.log --ui-ip=0.0.0.0 --ui-pass=xxx &