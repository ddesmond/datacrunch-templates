#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2mv/resolve/main/hunyuan3d-dit-v2-mv/model.fp16.safetensors -o hunyuan3d-dit-v2-mv.safetensors
aria2c -d $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2mv/resolve/main/hunyuan3d-dit-v2-mv-turbo/model.fp16.safetensors -o hunyuan3d-dit-v2-mv-turbo.safetensors
aria2c -d $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-dit-v2-0/model.fp16.safetensors -o hunyuan3d-dit-v2.safetensors

# vae
aria2c -d $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-vae-v2-0/model.fp16.safetensors -o hunyuan3d-vae-v2-0.safetensors
aria2c -d $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-vae-v2-0-turbo/model.fp16.safetensors -o hunyuan3d-vae-v2-0-turbo.safetensors

# unet delight
aria2c -d $MODELS/unet https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/unet/diffusion_pytorch_model.safetensors -o hunyuan3d-delight-v2-0_unet.safetensors
# text encoder
aria2c -d $MODELS/text_encoders https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/text_encoder/model.safetensors -o hunyuan3d-delight-v2-0_te.safetensors
# vae
aria2c -d $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/vae/diffusion_pytorch_model.safetensors -o hunyuan3d-delight-v2-0_vae.safetensors
