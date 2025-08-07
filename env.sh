# add envs here
echo "LOAD env vars"

export PIP_ROOT_USER_ACTION=ignore

# Setup envs here
export HF_TOKEN=""
export HF_ENDPOINT="https://huggingface.co"
export HF_HUB_ENABLE_HF_TRANSFER=true
export HF_HUB_ENABLE_HF_TRANSFER_NO_AUTH=true
export HF_HUB_DOWNLOAD_TIMEOUT=60
export COMFY_INSTANCE=developer

# export TCNN_CUDA_ARCHITECTURES=86
# export TORCH_CUDA_ARCH_LIST=8.6