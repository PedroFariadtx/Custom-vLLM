#!/bin/bash
set -euo pipefail

# Uninstall conflicting FlashAttention packages
pip uninstall -y flash-attn flash_attn 2>/dev/null || true

# Install pinned versions compatible with vLLM 0.10.1.1 (CUDA 12.6)
pip install -U --index-url https://download.pytorch.org/whl/cu126 \
  torch==2.7.1+cu126 \
  torchvision==0.22.1+cu126 \
  torchaudio==2.7.1+cu126

# Install xformers (correct version for vLLM)
pip install -U --index-url https://download.pytorch.org/whl/cu126 xformers==0.0.31

# Install transformers (vLLM requires >=4.55.0)
pip install -U "transformers>=4.55.0"

# Disable FlashAttention/FlashInfer, force XFormers
export VLLM_USE_FLASH_ATTENTION=0
export VLLM_USE_FLASHINFER=0
export VLLM_ATTENTION_BACKEND=XFORMERS

# Serve the Whisper model with vLLM
vllm serve fsicoli/whisper-large-v3-pt-cv19-fleurs \
  --api-key token-abc123 \
  --port 8082 \
  --gpu-memory-utilization 0.2
