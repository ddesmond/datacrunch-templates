#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "Wan"
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors
wget -P $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors

wget -P $MODELS/vae https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/taew2_1.safetensors
wget -P $MODELS/vae https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
wget -P $MODELS/vae https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan2.2_vae.safetensors

wget -P $MODELS/text_encoders https://huggingface.co/Wan-AI/Wan2.1-T2V-1.3B/resolve/main/models_t5_umt5-xxl-enc-bf16.pth
wget -P $MODELS/text_encoders https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp16.safetensors


# loras
wget -P $MODELS/loras https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_T2V-A14B-4steps-lora_HIGH_fp16.safetensors
wget -P $MODELS/loras https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_T2V-A14B-4steps-lora_LOW_fp16.safetensors


