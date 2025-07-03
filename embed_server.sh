
until vllm serve Qwen/Qwen3-Embedding-0.6B --port 8083 --gpu-memory-utilization 0.1; do
  echo "vLLM serve failed to start, retrying in 5 seconds..."
  sleep 5
done
