#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"


wget -P $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2mv/resolve/main/hunyuan3d-dit-v2-mv/model.fp16.safetensors
mv $MODELS/checkpoints/model.fp16.safetensors $MODELS/checkpoints/hunyuan3d-dit-v2-mv.safetensors

wget -P $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2mv/resolve/main/hunyuan3d-dit-v2-mv-turbo/model.fp16.safetensors
mv $MODELS/checkpoints/model.fp16.safetensors $MODELS/checkpoints/hunyuan3d-dit-v2-mv-turbo.safetensors


wget -P $MODELS/checkpoints https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-dit-v2-0/model.fp16.safetensors
mv $MODELS/checkpoints/model.fp16.safetensors $MODELS/checkpoints/hunyuan3d-dit-v2.safetensors

# vae
wget -P $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-vae-v2-0/model.fp16.safetensors
mv $MODELS/vae/model.fp16.safetensors $MODELS/vae/hunyuan3d-vae-v2-0.safetensors

wget -P $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-vae-v2-0-turbo/model.fp16.safetensors
mv $MODELS/vae/model.fp16.safetensors $MODELS/vae/hunyuan3d-vae-v2-0-turbo.safetensors

# unet delight
wget -p $MODELS/unet https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/unet/diffusion_pytorch_model.safetensors
mv $MODELS/unet/diffusion_pytorch_model.safetensors $MODELS/unet/hunyuan3d-delight-v2-0_unet.safetensors

# text encoder
wget -p $MODELS/text_encoders https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/text_encoder/model.safetensors
mv $MODELS/text_encoders/model.safetensors $MODELS/text_encoders/hunyuan3d-delight-v2-0_te.safetensors

# vae
wget -p $MODELS/vae https://huggingface.co/tencent/Hunyuan3D-2/resolve/main/hunyuan3d-delight-v2-0/vae/diffusion_pytorch_model.safetensors
mv $MODELS/vae/diffusion_pytorch_model.safetensors $MODELS/vae/hunyuan3d-delight-v2-0_vae.safetensors