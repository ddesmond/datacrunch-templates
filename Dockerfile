FROM nvidia/cuda:12.8.0-runtime-ubuntu24.04
LABEL authors="des"
# Docker image to run ComfyUI
RUN apt update -y && apt install -y \
    git \
    curl \
    wget


RUN curl https://raw.githubusercontent.com/ddesmond/datacrunch-templates/refs/heads/main/datacrunch-run.sh | bash &


ENTRYPOINT ["top", "-b"]