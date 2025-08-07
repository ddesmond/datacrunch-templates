### DataCrunch.io Yum Yum Comfy Setup
![](assets/dclogo.png)

Use the [datacrunch-run.sh](datacrunch-run.sh) script as startup or run directly from shell.

### ENV
Setup your env vars in the files

### Python
Pyenv manages global python
uv helps with speeding up installs

### ComfyUI
Install pulls fresh ComfyUI from git and installs it to /opt/ComfyUI
Dependencies are installed via UV pip from requirements.txt

Custom nodes are pulled fresh and installed with their dependencies

ComfyUI Login will ask for a username and password on first run.

### Models
Models download to /opt/models and is ln -s on first run to /opt/ComfyUI/models.


### Huggingface
Add your keys via CLI to access private models


#### More info
Time to install is about 10 minutes.
