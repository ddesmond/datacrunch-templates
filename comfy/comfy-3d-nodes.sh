#!/bin/bash
echo "Run: Setup 3D comfy nodes!"

for repo in \
https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git \
https://github.com/kijai/ComfyUI-KJNodes.git \
https://github.com/rgthree/rgthree-comfy.git \
https://github.com/JPS-GER/ComfyUI_JPS-Nodes.git \
https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git \
https://github.com/Jordach/comfy-plasma.git \
https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git \
https://github.com/bash-j/mikey_nodes.git \
https://github.com/ltdrdata/ComfyUI-Impact-Pack.git \
https://github.com/Fannovel16/comfyui_controlnet_aux.git \
https://github.com/yolain/ComfyUI-Easy-Use.git \
https://github.com/kijai/ComfyUI-Florence2.git \
https://github.com/WASasquatch/was-node-suite-comfyui.git \
https://github.com/theUpsider/ComfyUI-Logic.git \
https://github.com/cubiq/ComfyUI_essentials.git \
https://github.com/ClownsharkBatwing/RES4LYF \
https://github.com/BadCafeCode/masquerade-nodes-comfyui.git \
https://github.com/1038lab/ComfyUI-RMBG.git \
https://github.com/crystian/ComfyUI-Crystools \
https://github.com/ltdrdata/ComfyUI-Manager \
https://github.com/kijai/ComfyUI-Hunyuan3DWrapper.git \
https://github.com/liusida/ComfyUI-Login.git; \
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