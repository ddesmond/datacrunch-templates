#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "Wan Vace inpaint 2.2"

aria2c -d  $MODELS/vae https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors -o wan_2.1_vae.safetensors
aria2c -d  $MODELS/text_encoders https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp16.safetensors -o umt5_xxl_fp16.safetensors
aria2c -d  $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_fun_inpaint_high_noise_14B_bf16.safetensors -o wan2.2_fun_inpaint_high_noise_14B_bf16
aria2c -d  $MODELS/loras https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/loras/wan2.2_i2v_lightx2v_4steps_lora_v1_high_noise.safetensors -o wan2.2_i2v_lightx2v_4steps_lora_v1_high_noise.safetensors
aria2c -d  $MODELS/loras https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/loras/wan2.2_i2v_lightx2v_4steps_lora_v1_low_noise.safetensors -o wan2.2_i2v_lightx2v_4steps_lora_v1_low_noise.safetensors
aria2c -d  $MODELS/diffusion_models https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_fun_inpaint_low_noise_14B_bf16.safetensors -o wan2.2_fun_inpaint_low_noise_14B_bf16.safetensors


