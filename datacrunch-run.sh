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
source init.sh #> /opt/logs-init.txt

echo "Run: Update pip"
pip install --upgrade pip

echo "Run: Deps"
source deps.sh #> /opt/logs-deps.txt


echo "Run: Setup Comfy"
cd comfy
source comfy-setup.sh #> /opt/logs-setup.txt

echo "Run: Setup Comfy nodes"
source comfy-nodes.sh #> /opt/logs-nodes.txt


echo "Setup done!"

echo "Run Comfy app!"
cd /opt/datacrunch-templates
source run.sh #> /opt/logs-runcomfy.txt