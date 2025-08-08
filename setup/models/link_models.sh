#!/bin/bash
echo "Relink models paths!"
# edit this to link your own workspaces or model paths
rm -rf /opt/ComfyUI/models
ln -s /opt/models /opt/ComfyUI