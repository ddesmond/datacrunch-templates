#!/bin/bash

# install fresh pull
echo "Run: Install ComfyUI"

cd /opt && git clone --depth 1 https://github.com/comfyanonymous/ComfyUI.git
cd /opt/ComfyUI


echo "Run: Install requirements"
uv pip install --no-cache-dir -r requirements.txt --system

# link back models here
if [[ -L /opt/ComfyUI/models ]]
then
   echo "MODELS is a symlink to a directory. Pass."
else
  echo "MODELS is a not symlink to a directory"
  rm -rf /opt/ComfyUI/models
  ln -sf /opt/models /opt/ComfyUI
  ls -la /opt/ComfyUI/models
  echo "Models relinked. Happy Comfying!"
fi