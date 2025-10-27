export OPENAI_API_KEY=token-abc123
vllm bench serve --backend openai --base-url http://localhost:8081 --model neuralmagic-ent/Llama-3.3-70B-Instruct-quantized.w8a8 --dataset-name random --seed 12345
