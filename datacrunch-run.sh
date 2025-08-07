#!/bin/bash

echo "Setup work ENVS"
# SYSTEM
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
source init.sh #> /opt/logs-init.txt

echo "Run: Setup Pyenv 3.12"
source setup_pyenv.sh #> /opt/logs-init.txt

source ~/.bashrc

echo "Run: Eval pyenv and set global"
eval "$(pyenv init -)"
pyenv global 3.12


echo "Run: Update pip"
pip install --upgrade pip

echo "Run: UV"
curl -LsSf https://astral.sh/uv/install.sh | sh     # or source setup_uv.sh

echo "Run: Deps"
source deps.sh #> /opt/logs-deps.txt


echo "Run: Setup Comfy"
cd /opt/datacrunch-templates/comfy
source comfy-setup.sh #> /opt/logs-setup.txt

echo "Run: Setup Comfy nodes"
cd /opt/datacrunch-templates/comfy
source comfy-nodes.sh #> /opt/logs-nodes.txt


echo "Setup done!"

echo "Run Comfy app!"
cd /opt/datacrunch-templates
source run.sh #> /opt/logs-runcomfy.txt