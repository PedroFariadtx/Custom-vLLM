
until vllm serve intfloat/multilingual-e5-large-instruct --port 8081 --gpu-memory-utilization 0.1; do
  echo "vLLM serve failed to start, retrying in 5 seconds..."
  sleep 5
done
