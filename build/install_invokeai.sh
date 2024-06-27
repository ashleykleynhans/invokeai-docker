#!/usr/bin/env bash
set -e

# Create and activate venv
mkdir /InvokeAI
cd /InvokeAI
python3 -m venv --system-site-packages venv
source venv/bin/activate

# Install torch and xformers
pip3 install --no-cache-dir torch==${TORCH_VERSION} torchvision torchaudio --index-url ${INDEX_URL}
pip3 install --no-cache-dir xformers==${XFORMERS_VERSION} --index-url ${INDEX_URL}

# Install InvokeAI
pip3 install InvokeAI[xformers]==${INVOKEAI_VERSION} --use-pep517
deactivate
