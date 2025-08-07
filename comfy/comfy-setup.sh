#!/bin/bash

# install fresh pull
echo "Run: Install ComfyUI"

cd /opt && git clone https://github.com/comfyanonymous/ComfyUI.git
cd /opt/ComfyUI


echo "Run: Install requirements"
pip install --no-cache-dir -r requirements.txt

