#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

echo "Wan LIGHTX loras"
aria2c -d $MODELS/loras https://huggingface.co/lightx2v/Wan2.2-Lightning/resolve/main/Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1/high_noise_model.safetensors -o Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1_HN.safetensors
aria2c -d $MODELS/loras https://huggingface.co/lightx2v/Wan2.2-Lightning/resolve/main/Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1/low_noise_model.safetensors -o Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1_LN.safetensors

aria2c -d $MODELS/loras https://huggingface.co/lightx2v/Wan2.2-Lightning/resolve/main/Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/high_noise_model.safetensors -o Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1_HN.safetensors
aria2c -d $MODELS/loras https://huggingface.co/lightx2v/Wan2.2-Lightning/resolve/main/Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1/low_noise_model.safetensors -o Wan2.2-T2V-A14B-4steps-lora-rank64-Seko-V1.1_LN.safetensors
