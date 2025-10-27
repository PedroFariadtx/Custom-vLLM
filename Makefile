.PHONY: help clarisse-up clarisse-down qwen-vl-up qwen-vl-down clarisse qwen-vl

# Default target
.DEFAULT_GOAL := help

SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo "  make clarisse-up     # Start Clarisse stack (profile: clarisse)"
	@echo "  make clarisse-down   # Stop Clarisse stack (profile: clarisse)"
	@echo "  make qwen-vl-up      # Start Qwen VL stack (profile: qwen-vl)"
	@echo "  make qwen-vl-down    # Stop Qwen VL stack (profile: qwen-vl)"
	@echo ""
	@echo "Aliases (backwards-compatible):"
	@echo "  make clarisse        # Alias for clarisse-up"
	@echo "  make qwen-vl         # Alias for qwen-vl-up"

## Start main application stack (Clarisse)
clarisse-up:
	docker compose --profile clarisse up -d

## Stop clarisse application stack (Clarisse)
clarisse-down:
	docker compose --profile clarisse down

## Start Qwen VL stack
qwen-vl-up:
	docker compose --profile qwen-vl up -d

## Stop Qwen VL stack
qwen-vl-down:
	docker compose --profile qwen-vl down

# Backwards-compatible aliases
clarisse: clarisse-up
qwen-vl: qwen-vl-up
