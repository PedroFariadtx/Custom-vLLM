until vllm serve fsicoli/whisper-large-v3-pt-cv19-fleurs \
 --api-key token-abc123 \
 --port 8082 \
 --disable-log-requests \
 --gpu-memory-utilization 0.2 \
 --tokenizer-mode slow; do
  echo "vLLM serve failed to start, retrying in 5 seconds..."
  sleep 5
done
