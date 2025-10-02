#!/bin/bash

# --- CONFIG ---
# Ganti dengan wallet address kamu sendiri
OWNER_ADDRESS=0x2A43e378993A82A166811D8d99b2824218f59c81

# Mawari docker image
MNTESTNET_IMAGE=us-east4-docker.pkg.dev/mawarinetwork-dev/mwr-net-d-car-uses4-public/mnt-client:latest

# --- SETUP ---
echo "📦 Membuat folder cache..."
mkdir -p ~/mawari

echo "🚀 Menjalankan Mawari Guardian Node..."
docker run --pull always -v ~/mawari:/app/cache -e OWNERS_ALLOWLIST=$OWNER_ADDRESS $MNTESTNET_IMAGE
