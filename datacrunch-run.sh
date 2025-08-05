#!/bin/bash

echo "Setup work ENVS"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"



echo "Setting up Comfy!"

cd /opt

echo "Run: Clone datacrunch comfy setup"
git clone https://github.com/ddesmond/datacrunch-templates.git
cd /opt/datacrunch-templates
git pull


# rundown
echo "Run: Init"
bash init.sh > /opt/logs-init.txt

echo "Run: Pyenv"
bash setup_pyenv.sh
eval "$(pyenv virtualenv-init -)"
source ~/.bashrc

echo "Run: Deps"
bash deps.sh > /opt/logs-deps.txt

echo "Run: Comfy"
cd comfy
bash comfy-setup.sh > /opt/logs-setup.txt
bash comfy-nodes.sh > /opt/logs-nodes.txt


echo "Setup done!"

echo "Run Comfy"
cd /opt/datacrunch-templates
bash run.sh > /opt/logs-runcomfy.txt