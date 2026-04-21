#!/bin/bash
# Lodgy - A tool for log following and analysis

curl https://logdy.dev/install.sh | bash

echo "Lodgy installed successfully."
echo "--------> lodgy port 8000 for web ui"
echo "--------> gradio port 8105 for web ui"
echo "--------> comfy port 8201 for web ui"

# run lodgy
logdy follow /root/startup.log --ui-ip=0.0.0.0 --ui-pass=xxx &