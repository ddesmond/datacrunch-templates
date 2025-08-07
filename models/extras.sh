#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/vae https://huggingface.co/Comfy-Org/Lumina_Image_2.0_Repackaged/resolve/main/split_files/vae/ae.safetensors
aria2c -d $MODELS/clip_vision https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors
aria2c -d $MODELS/clip_vision https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors
aria2c -d $MODELS/mmaudio https://huggingface.co/Kijai/MMAudio_safetensors/resolve/main/apple_DFN5B-CLIP-ViT-H-14-384_fp16.safetensors
aria2c -d $MODELS/loras "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/DetailEnhancerV1.safetensors"
aria2c -d $MODELS/loras "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/Wan14B_RealismBoost.safetensors"