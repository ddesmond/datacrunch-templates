#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/diffusion_models https://huggingface.co/lodestones/Chroma/resolve/main/chroma-unlocked-v29.safetensors -o chroma-unlocked-v29.safetensors

aria2c -d  $MODELS/text_encoders https://huggingface.co/Wan-AI/Wan2.1-T2V-1.3B/resolve/main/models_t5_umt5-xxl-enc-bf16.pth -o t5_umt5-xxl-enc-bf16.pth
aria2c -d  $MODELS/text_encoders https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp16.safetensors -o umt5_xxl_fp16.safetensors