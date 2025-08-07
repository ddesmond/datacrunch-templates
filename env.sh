# add envs here

source ~/.bashrc

echo "Run: Eval pyenv and set global"
eval "$(pyenv init -)"
pyenv global 3.12


echo "LOAD env vars"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
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

#C OMFY
export COMFYUI_PATH=/opt/ComfyUI
export COMFYUI_MODEL_PATH=/opt/models
export COMFYUI_UI_PORT=8188
export COMFYUI_OUTPUTS_PATH=/outputs