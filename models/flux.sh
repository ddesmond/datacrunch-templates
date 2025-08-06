#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "Krea"
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/FLUX.1-Krea-dev_ComfyUI/resolve/main/split_files/diffusion_models/flux1-krea-dev_fp8_scaled.safetensors

