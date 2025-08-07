#!/bin/bash
echo "_____ WARMUP COMFYUI _____"


# link back models here
if [[ -L /opt/ComfyUI/models ]]
then
   echo "MODELS is a symlink to a directory. Pass."
else
  echo "MODELS is a not symlink to a directory"
  rm -rf models/
  ln -sf /opt/models /opt/ComfyUI
  ls -la .
  echo "Models relinked. Happy Comfying!"
fi

source /opt/datacrunch-templates/env.sh

echo "_____ Startup COMFYUI _____"
cd /opt/ComfyUI

python3 main.py --listen 0.0.0.0 --port $COMFYUI_UI_PORT --output-directory $COMFY_OUTPUTS_PATH/ --disable-xformers --preview-method auto