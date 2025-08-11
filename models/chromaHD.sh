#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"
echo "ChromHD"

aria2c -d $MODELS/checkpoints https://huggingface.co/lodestones/Chroma1-HD/resolve/main/Chroma-HD.safetensors -o Chroma-HD.safetensors

aria2c -d  $MODELS/vae https://huggingface.co/lodestones/Chroma/resolve/main/ae.safetensors -o chroma-flux-ae.safetensors
aria2c -d  $MODELS/text_encoders https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors -o t5xxl_fp16.safetensors
