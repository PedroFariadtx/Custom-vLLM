VLLM_LOGGING_CONFIG_PATH=/home/dtx/vllm/configs/logging/vllm_logging_whisper.json
vllm serve fsicoli/whisper-large-v3-pt-cv19-fleurs \
  --port 8082 \
  --tensor_parallel_size=4 \
  --gpu-memory-utilization 0.2
