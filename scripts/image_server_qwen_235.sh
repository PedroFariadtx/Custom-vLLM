
# Based on this: https://docs.vllm.ai/projects/recipes/en/latest/Qwen/Qwen3-VL.html#configuration-tips
# export VLLM_LOGGING_CONFIG_PATH=/home/dtx/vllm/configs/logging/vllm_logging_vl_model.json
vllm serve Qwen/Qwen3-VL-235B-A22B-Instruct-FP8 \
    --api-key token-abc123 \
    --port 8084 \
    --tensor-parallel-size 4 \
    --max-model-len 128000 \
    --mm-encoder-tp-mode data \
    --mm-processor-cache-gb 0 \
    --enable-expert-parallel \
    --limit-mm-per-prompt.video 0 \
    --async-scheduling \
    --gpu-memory-utilization 0.6 \
    --chat-template-content-format openai
