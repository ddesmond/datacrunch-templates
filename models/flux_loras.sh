#!/bin/bash

source ./structure.sh
export MODELS=/opt/models
echo "Download models list"
mkdir -p $MODELS/loras/flux

aria2c -d $MODELS/loras/flux "https://civitai.com/api/download/models/878823?type=Model&format=SafeTensor" -o flux_boromini_lora.safetensors
aria2c -d $MODELS/loras/flux "https://civitai.com/api/download/models/1068216?type=Model&format=SafeTensor" -o flux_duality_monuments_lora.safetensors
aria2c -d $MODELS/loras/flux "https://civitai.com/api/download/models/863654?type=Model&format=SafeTensor" -o flux_aleppo_lora.safetensors

# https://civitai.com/models/1675855/roman-empire-cinematic-style-f1d-pony
aria2c -d $MODELS/loras/flux "https://civitai.com/api/download/models/1896822?type=Model&format=SafeTensor" -o flux_cinematic_roman_lora.safetensors