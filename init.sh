#!/bin/bash
# OS
apt update -y
apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev libffi-dev liblzma-dev tk-dev \
libncurses5-dev libncursesw5-dev libgdbm-dev libc6-dev ninja-build make

apt install -y plocate nano screen zip curl wget busybox

# python
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"' >> ~/.bashrc

source ~/.bashrc

eval "$(pyenv virtualenv-init -)"


# install 3.12
pyenv install 3.12
pyenv global 3.12

# verify
python3 --version