.PHONY: help clarisse-up clarisse-down ikea-up ikea-down lara-up lara-down clarisse ikea lara

# Default target
.DEFAULT_GOAL := help

SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo "  make clarisse-up     # Start Clarisse stack (profile: clarisse)"
	@echo "  make clarisse-down   # Stop Clarisse stack (profile: clarisse)"
	@echo "  make ikea-up         # Start IKEA stack (profile: ikea)"
	@echo "  make ikea-down       # Stop IKEA stack (profile: ikea)"
	@echo "  make lara-up         # Start LARA stack (profile: lara)"
	@echo "  make lara-down       # Stop LARA stack (profile: lara)"
	@echo ""
	@echo "Aliases (backwards-compatible):"
	@echo "  make clarisse        # Alias for clarisse-up"
	@echo "  make ikea            # Alias for ikea-up"
	@echo "  make lara            # Alias for lara-up"

## Start main application stack (Clarisse)
clarisse-up:
	docker compose --profile clarisse up -d

## Stop clarisse application stack (Clarisse)
clarisse-down:
	docker compose --profile clarisse down

## Start IKEA stack
ikea-up:
	docker compose --profile ikea up -d

## Stop IKEA stack
ikea-down:
	docker compose --profile ikea down

## Start LARA stack
lara-up:
	docker compose --profile lara up -d

## Stop LARA stack
lara-down:
	docker compose --profile lara down

# Backwards-compatible aliases
clarisse: clarisse-up
ikea: ikea-up
lara: lara-up
