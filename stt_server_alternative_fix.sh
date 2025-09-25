#!/usr/bin/env bash

pip uninstall -y flash-attn flash_attn_2_cuda || true

# force the right wheel channel
pip install --force-reinstall --no-cache-dir \
  --index-url https://download.pytorch.org/whl/cu126 \
  "torch==2.7.1+cu126" "torchvision==0.22.1+cu126" "torchaudio==2.7.1+cu126"

# xformers version vLLM 0.10.1.1 expects
pip install --force-reinstall --no-cache-dir \
  --index-url https://download.pytorch.org/whl/cu126 \
  "xformers==0.0.31"

# transformers needs to be >= 4.55 for this vLLM
pip install -U "transformers>=4.55"

export VLLM_USE_FLASH_ATTENTION=0
export VLLM_USE_FLASHINFER=0
export VLLM_ATTENTION_BACKEND=XFORMERS

trap 'echo "Interrupted, exiting"; exit 130' INT

until vllm serve fsicoli/whisper-large-v3-pt-cv19-fleurs \
  --api-key token-abc123 \
  --port 8082 \
  --gpu-memory-utilization 0.2; do
  echo "vLLM serve failed to start, retrying in 5 seconds..."
  sleep 5
done
