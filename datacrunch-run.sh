#!/bin/bash

echo "Setting up Comfy!"

cd /opt

git pull https://github.com/ddesmond/datacrunch-templates.git
cd /opt/datacrunch-templates

# rundown
bash init.sh
bash deps.sh
cd comfy
bash comfy-setup.sh
bash comfy-nodes.sh
echo "Setup done!"

echo "Run Comfy"
cd /opt/datacrunch-templates
bash run.sh