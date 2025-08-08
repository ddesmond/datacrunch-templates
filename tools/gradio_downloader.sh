#!/bin/bash
# add gradio app for background model downloads

cd /opt && git clone https://github.com/ddesmond/gradio-downloader.git
cd gradio-downloader && uv pip install -r requirements.txt
cd app

# reparse model downloads
python parse_models_downloads.py /opt/datacrunch-templates/models

# start gradio app
gradio gradio_downloader.py &