#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "Wan  2.1"


aria2c -d $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_720p_14B_bf16.safetensors -o wan2.1_i2v_720p_14B_bf16.safetensors
aria2c -d $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_t2v_14B_bf16.safetensors -o wan2.1_t2v_14B_bf16.safetensors


aria2c -d $MODELS/clip_vision https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors -o clip_vision_h.safetensors