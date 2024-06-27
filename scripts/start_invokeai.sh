#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "Starting InvokeAI"
VENV_PATH=$(cat /workspace/InvokeAI/venv_path)
source ${VENV_PATH}/bin/activate
cd /workspace/InvokeAI
source venv/bin/activate
nohup invokeai-web > /workspace/logs/invokeai.log 2>&1 &
echo "InvokeAI started"
echo "Log file: /workspace/logs/invokeai.log"
deactivate
