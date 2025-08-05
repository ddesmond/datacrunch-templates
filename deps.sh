#!/bin/bash
# wan deps
echo "Comfy / Wan deps"
apt-get update -y

apt-get install -y --no-install-recommends \
    curl ffmpeg ninja-build git aria2 git-lfs wget vim \
    libgl1 libglib2.0-0 build-essential gcc

pip install packaging setuptools wheel
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128
pip install opencv-python
pip install pyyaml gdown triton comfy-cli
pip install PyOpenGL-accelerate
pip install sageattention