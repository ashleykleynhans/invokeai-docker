#!/usr/bin/env bash
set -e

git clone https://github.com/ashleykleynhans/civitai-downloader.git
cd civitai-downloader
git checkout tags/${CIVITAI_DOWNLOADER_VERSION}
cp download.py /usr/local/bin/download-model
chmod +x /usr/local/bin/download-model
cd ..
rm -rf civitai-downloader
