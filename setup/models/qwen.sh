#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_bf16.safetensors -o qwen_image_bf16.safetensors
aria2c -d $MODELS/text_encoders https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b.safetensors -o qwen_2.5_vl_7b.safetensors
aria2c -d $MODELS/vae https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors -o qwen_image_vae.safetensors

