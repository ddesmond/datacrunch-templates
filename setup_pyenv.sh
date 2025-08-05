#!/bin/bash

echo "Run: curl pyenv"
# python
curl https://pyenv.run | bash

echo "Run: Setup .bashrc"
echo 'export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"' >> ~/.bashrc

source ~/.bashrc

echo "Run: Eval pyenv"
eval "$(pyenv virtualenv-init -)"


echo "Run: setup python 3.12"
# install 3.12
pyenv install 3.12

echo "Run: Set global python 3.12"
pyenv global 3.12

echo "Run: Verify python version"
# verify
python3 --version

