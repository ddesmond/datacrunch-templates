FROM nvidia/cuda:12.8.0-runtime-ubuntu24.04
LABEL authors="des"
# Docker image to run ComfyUI

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    git \
    libgl1-mesa-glx \
    libglib2.0-0 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/ddesmond/datacrunch-templates/refs/heads/main/datacrunch-run.sh | bash &


ENTRYPOINT ["top", "-b"]