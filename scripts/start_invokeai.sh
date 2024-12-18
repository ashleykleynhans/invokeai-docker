#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "INVOKEAI: Starting InvokeAI"
cd /workspace/InvokeAI
source /venv/bin/activate
nohup invokeai-web --root /workspace/InvokeAI > /workspace/logs/invokeai.log 2>&1 &
echo "INVOKEAI: InvokeAI started"
echo "INVOKEAI: Log file: /workspace/logs/invokeai.log"
deactivate
