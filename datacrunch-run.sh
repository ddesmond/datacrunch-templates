#!/bin/bash

echo "Setup work ENVS"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIP_ROOT_USER_ACTION=ignore


echo "Setting up Comfy!"
cd /opt
echo "Run: Clone datacrunch comfy setup"
git clone https://github.com/ddesmond/datacrunch-templates.git
cd /opt/datacrunch-templates
git pull


# rundown
echo "Run: Init"
bash init.sh #> /opt/logs-init.txt

echo "Run: Update pip"
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
pip install --upgrade pip

echo "Run: Deps"
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
bash deps.sh #> /opt/logs-deps.txt


echo "Run: Setup Comfy"
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
cd comfy
bash comfy-setup.sh #> /opt/logs-setup.txt

echo "Run: Setup Comfy nodes"
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
bash comfy-nodes.sh #> /opt/logs-nodes.txt


echo "Setup done!"

echo "Run Comfy app!"
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc
cd /opt/datacrunch-templates
bash run.sh #> /opt/logs-runcomfy.txt