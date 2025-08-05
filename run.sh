#!/bin/bash
echo "_____ RUN COMFYUI _____"
export PIP_ROOT_USER_ACTION=ignore
source /opt/datacrunch-templates/env.sh
cd /opt/ComfyUI

python3 main.py --listen 0.0.0.0 --port 8188 --output-directory /outputs/ --disable-xformers --preview-method auto