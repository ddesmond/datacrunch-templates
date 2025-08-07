#!/bin/bash

# written by ddesmond / Aleks Katunar
# RUN THIS FROM CLI OR DATACRUNCH DASHBOARD as a script!

echo "----------------------------------"
echo "Setup work ENVS"
# SYSTEM
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIP_ROOT_USER_ACTION=ignore

echo "----------------------------------"
echo "Setting up Comfy!"
cd /opt
echo "Run: Clone datacrunch comfy setup"
git clone https://github.com/ddesmond/datacrunch-templates.git
cd /opt/datacrunch-templates
git pull

echo "----------------------------------"
# rundown
echo "Run: Init"
source init.sh #> /opt/logs-init.txt

echo "----------------------------------"
echo "Run: Setup Pyenv 3.12"
source setup_pyenv.sh #> /opt/logs-init.txt

source ~/.bashrc

echo "----------------------------------"
echo "Run: Eval pyenv and set global"
eval "$(pyenv init -)"
pyenv global 3.12

echo "----------------------------------"
echo "Run: Update pip"
pip install --upgrade pip

echo "----------------------------------"
echo "Run: UV"
source setup_uv.sh
source ~/.bashrc
source $HOME/.local/bin/env

echo "----------------------------------"
echo "Run: Deps"
source deps.sh #> /opt/logs-deps.txt

echo "----------------------------------"
echo "Run: Setup Comfy"
cd /opt/datacrunch-templates/comfy
source comfy-setup.sh #> /opt/logs-setup.txt

echo "----------------------------------"
echo "Run: Setup Comfy nodes"
cd /opt/datacrunch-templates/comfy
source comfy-nodes.sh #> /opt/logs-nodes.txt

echo "----------------------------------"
echo "Setup done!"
echo "----------------------------------"


echo "Run Comfy app!"
cd /opt/datacrunch-templates
source run.sh #> /opt/logs-runcomfy.txt