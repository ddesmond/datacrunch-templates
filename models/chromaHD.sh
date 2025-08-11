#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"
echo "ChromHD"

aria2c -d $MODELS/checkpoints https://huggingface.co/lodestones/Chroma1-HD/resolve/main/Chroma-HD.safetensors -o Chroma-HD.safetensors

aria2c -d  $MODELS/vae https://huggingface.co/lodestones/Chroma1-HD/resolve/main/vae/diffusion_pytorch_model.safetensors-o Chroma-HD_vae.safetensors
