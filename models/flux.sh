#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "FLUX.1"
aria2c -d $MODELS/diffusion_models https://huggingface.co/Comfy-Org/FLUX.1-Krea-dev_ComfyUI/resolve/main/split_files/diffusion_models/flux1-krea-dev_fp8_scaled.safetensors -o flux1-krea-dev_fp8_scaled.safetensors
aria2c -d $MODELS/diffusion_models https://huggingface.co/black-forest-labs/FLUX.1-Kontext-dev/resolve/main/flux1-kontext-dev.safetensors -o flux1-kontext-dev.safetensors

