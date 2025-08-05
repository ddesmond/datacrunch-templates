#!/bin/bash

echo "Setting up Comfy!"

cd /opt

git pull https://github.com/ddesmond/datacrunch-templates.git
cd datacrunch-templates

# rundown
bash init.sh
bash deps.sh
cd comfy
bash comfy-setup.sh
bash comfy-nodes.sh