#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
cd /workspace/InvokeAI
source /venv/bin/activate
nohup invokeai-web --root /workspace/InvokeAI > /workspace/logs/invokeai.log 2>&1 &
