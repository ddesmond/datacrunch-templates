#!/bin/bash
echo "Run: Setup comfy nodes!"

for repo in \
https://github.com/kijai/ComfyUI-MMAudio; \
do \
    cd /opt/ComfyUI/custom_nodes; \
    repo_dir=$(basename "$repo" .git); \
    if [ "$repo" = "https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git" ]; then \
        git clone --depth 1 --recursive "$repo"; \
    else \
        git clone --depth 1 "$repo"; \
    fi; \
    if [ -f "/opt/ComfyUI/custom_nodes/$repo_dir/requirements.txt" ]; then \
        uv pip install -r "/opt/ComfyUI/custom_nodes/$repo_dir/requirements.txt" --system; \
    fi; \
    if [ -f "/opt/ComfyUI/custom_nodes/$repo_dir/install.py" ]; then \
        python "/opt/ComfyUI/custom_nodes/$repo_dir/install.py"; \
    fi; \
done

echo "Run: Setup comfy nodes DONE!"