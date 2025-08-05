# install fresh pull

mkdir -p /outputs

cd /opt && git clone https://github.com/comfyanonymous/ComfyUI.git
cd /opt/ComfyUI

pip install --no-cache-dir -r requirements.txt

