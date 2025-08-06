#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"
# wan 2.1 fusionx
wget -P $MODELS/diffusion_models https://huggingface.co/paredeyes/Wan2.1_14B_FusionX/resolve/main/Wan14BT2VFusioniX_Phantom_fp16.safetensors
wget -P $MODELS/diffusion_models https://huggingface.co/paredeyes/Wan2.1_14B_FusionX/resolve/main/Wan14B_I2V_FusioniX_fp16.safetensors

#loras
wget -P $MODELS/loras https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/FusionX_LoRa/Phantom_Wan_14B_FusionX_LoRA.safetensors
wget -P $MODELS/loras https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/FusionX_LoRa/Wan2.1_I2V_14B_FusionX_LoRA.safetensors
wget -P $MODELS/loras https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/FusionX_LoRa/Wan2.1_T2V_14B_FusionX_LoRA.safetensors