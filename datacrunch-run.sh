#!/bin/bash

echo "Setting up Comfy!"

cd /opt

git pull https://github.com/ddesmond/datacrunch-templates.git
cd /opt/datacrunch-templates

# rundown
bash init.sh > /opt/logs-init.txt
bash deps.sh > /opt/logs-deps.txt
cd comfy
bash comfy-setup.sh > /opt/logs-setup.txt
bash comfy-nodes.sh > /opt/logs-nodes.txt
echo "Setup done!"

echo "Run Comfy"
cd /opt/datacrunch-templates
bash run.sh > /opt/logs-runcomfy.txt