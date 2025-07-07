#!/bin/bash

set -e  # Stop execution on error

echo "Updating package list..."
apt update

echo "Installing Docker and related tools..."
apt install -y \
       	docker.io \
	docker-compose-v2 \
	docker-buildx

echo "Enabling and starting Docker service..."
systemctl enable --now docker

echo "Pulling nginx:1.28.0 image..."
docker pull nginx:1.28.0

echo "Pulling mysql:8 image..."
docker pull mysql:8

echo "Installation and image pulling completed."

