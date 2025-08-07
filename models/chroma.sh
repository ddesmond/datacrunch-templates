#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"

aria2c -d $MODELS/diffusion_models https://huggingface.co/lodestones/Chroma/resolve/main/chroma-unlocked-v29.safetensors -o chroma-unlocked-v29.safetensors