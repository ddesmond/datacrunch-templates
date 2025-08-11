#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/vae https://huggingface.co/Comfy-Org/Lumina_Image_2.0_Repackaged/resolve/main/split_files/vae/ae.safetensors -o ae.safetensors
aria2c -d $MODELS/text_encoders https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors -o t5xxl_fp16.safetensors
# clips
aria2c -d $MODELS/clip_vision https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors -o clip_l.safetensors
aria2c -d $MODELS/clip_vision https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors -o clip_vision_h.safetensors
aria2c -d $MODELS/mmaudio https://huggingface.co/Kijai/MMAudio_safetensors/resolve/main/apple_DFN5B-CLIP-ViT-H-14-384_fp16.safetensors -o apple_DFN5B-CLIP-ViT-H-14-384_fp16.safetensors

# loras
aria2c -d $MODELS/loras "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/DetailEnhancerV1.safetensors" -o DetailEnhancerV1.safetensors
aria2c -d $MODELS/loras "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/Wan14B_RealismBoost.safetensors" -o Wan14B_RealismBoost.safetensors

# upscalers
aria2c -d $MODELS/upscale_models https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth -o 4x_foolhardy_Remacri.pth
aria2c -d $MODELS/upscale_models https://huggingface.co/Kim2091/UltraSharpV2/resolve/main/4x-UltraSharpV2.safetensors -o 4x-UltraSharpV2.safetensors

# controlnet
aria2c -d $MODELS/controlnet https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro/resolve/main/diffusion_pytorch_model.safetensors -o FLUX.1-dev-ControlNet-Union-Pro.safetensors