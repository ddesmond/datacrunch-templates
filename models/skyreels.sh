#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"


wget -P $MODELS/diffusion_models https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Skyreels/Wan2_1-SkyReels-V2-DF-14B-720P_fp16.safetensors