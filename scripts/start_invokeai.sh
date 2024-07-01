#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "Starting InvokeAI"
cd /workspace/InvokeAI
source /venv/bin/activate
nohup invokeai-web > /workspace/logs/invokeai.log 2>&1 &
echo "InvokeAI started"
echo "Log file: /workspace/logs/invokeai.log"
deactivate
