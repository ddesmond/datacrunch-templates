#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

wget -P $MODELS/vae https://huggingface.co/Qwen/Qwen-Image/resolve/main/vae/diffusion_pytorch_model.safetensors
mv $MODELS/vae/diffusion_pytorch_model.safetensors $MODELS/vae/qwen-image-vae.safetensors