#!/bin/bash
# add gradio app for background model downloads

cd /opt && git clone https://github.com/ddesmond/gradio-downloader.git
cd gradio-downloader && pip install -r requirements.txt
cd app

gradio gradio_downloader.py