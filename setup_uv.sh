#!/bin/bash

echo "Run: Setup UV"
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "Run: Setup .bashrc"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

