VLLM_LOGGING_CONFIG_PATH=/home/dtx/vllm/configs/logging/vllm_logging_whisper.json
vllm serve openai/whisper-large-v3 \
  --port 8084 \
  --tensor_parallel_size=4 \
  --gpu-memory-utilization 0.1
