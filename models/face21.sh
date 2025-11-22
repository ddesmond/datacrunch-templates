#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d  $MODELS/diffusion_models https://huggingface.co/paredeyes/Wan2.1_14B_FusionX/resolve/main/wan2.1_Vace_14B_fp16.safetensors -o wan2.1_Vace_14B_fp16.safetensors


aria2c -d  $MODELS/text_encoders https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp16.safetensors -o umt5_xxl_fp16.safetensors

# loras
aria2c -d $MODELS/loras https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_CausVid_14B_T2V_lora_rank32.safetensors -o Wan21_CausVid_14B_T2V_lora_rank32.safetensors
aria2c -d $MODELS/vae https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors -o wan_2.1_vae.safetensors
aria2c -d $MODELS/clip_vision https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors -o clip_vision_h.safetensors