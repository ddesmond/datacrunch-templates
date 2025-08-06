#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

wget -P $MODELS/diffusion_models https://huggingface.co/paredeyes/Wan2.1_14B_FusionX/resolve/main/wan2.1_Vace_14B_fp16.safetensors