#!/bin/bash
echo "_____ WARMUP COMFYUI _____"

# LOAD ENVS
source /opt/datacrunch-templates/env.sh

# set outputs
if [[ -L $COMFYUI_OUTPUTS_PATH ]]
then
   echo "Out is a symlink to a directory. Pass."
else
  mkdir -p $COMFYUI_OUTPUTS_PATH
  echo "Output path setup"
  # copy user data - we asume this is a fresh install!
  # backup your user data first!
  cp -r /opt/datacrunch-templates/comfy_data/user /opt/ComfyUI/
fi

# fix manager ini
mkdir -p /opt/ComfyUI/user
mkdir -p /opt/ComfyUI/user__manager
chmod -R 777 /opt/ComfyUI/user

cp -r /opt/datacrunch-templates/comfy_data/user/config.ini /opt/ComfyUI/user/__manager/config.ini

# add snapshot
cp -r /opt/datacrunch-templates/comfy_data/custom-node-list.json /opt/ComfyUI/user/__manager/snapshots/2026-04-23_05-06-54_snapshot.json




echo "_____ Startup COMFYUI _____"
cd /opt/ComfyUI

python3 main.py --listen 0.0.0.0 --port $COMFYUI_UI_PORT --output-directory $COMFYUI_OUTPUTS_PATH/ --disable-xformers --preview-method auto