#!/bin/bash

# export VLLM_LOGGING_CONFIG_PATH=/home/dtx/vllm/configs/logging/vllm_logging_qwen235B.json
vllm serve Qwen/Qwen3-235B-A22B-Thinking-2507-FP8 \
    --tensor-parallel-size 4 \
    --gpu-memory-utilization 0.95 \
    --max-model-len 16384 \
    --enable-auto-tool-choice \
    --reasoning-parser deepseek_r1 \
    --tool-call-parser hermes \
    --enable-prefix-caching \
    --enable-expert-parallel \
    --api-key "token-abc123" \
    --port 8091
