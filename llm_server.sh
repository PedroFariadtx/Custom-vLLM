until vllm serve neuralmagic-ent/Llama-3.3-70B-Instruct-quantized.w8a8 \
  --api-key token-abc123 \
  --port 8081 \
  --enable-auto-tool-choice \
  --tool-call-parser llama3_json \
  --chat-template tool_chat_template_llama3.1_json.jinja \
  --max_model_len 16000 \
  --enable-prefix-caching \
  --enable-chunked-prefill \
  --max_num_batched_tokens 8192 \
  --gpu_memory_utilization 0.75 \
  --disable-log-requests \
  --tool-parser-plugin custom_llama_tool_parser.py; do
  echo "vLLM serve failed to start, retrying in 5 seconds..."
  sleep 5
done
