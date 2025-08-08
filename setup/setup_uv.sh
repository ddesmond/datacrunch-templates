#!/bin/bash

echo "Run: Setup UV"
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "Run: Setup UV .bashrc PATH"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

