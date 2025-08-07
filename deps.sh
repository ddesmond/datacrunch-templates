#!/bin/bash
# wan deps
echo "Run: Install Comfy / Wan deps"
apt-get update -y

apt-get install -y --no-install-recommends \
    curl ffmpeg ninja-build git aria2 git-lfs wget vim \
    libgl1 libglib2.0-0 build-essential gcc

uv pip install packaging setuptools wheel --system
uv pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128 --system
uv pip install opencv-python pyyaml gdown triton comfy-cli PyOpenGL-accelerate install sageattention --system
