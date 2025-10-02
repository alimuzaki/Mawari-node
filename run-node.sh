#!/bin/bash

# --- CONFIG ---
# Ganti dengan wallet address kamu sendiri
OWNER_ADDRESS=0x123abc  

# Mawari docker image
MNTESTNET_IMAGE=us-east4-docker.pkg.dev/mawarinetwork-dev/mwr-net-d-car-uses4-public/mnt-client:latest

# --- SETUP ---
echo "📦 Membuat folder cache..."
mkdir -p ~/mawari

echo "🚀 Menjalankan Mawari Guardian Node..."
docker run --pull always -v ~/mawari:/app/cache -e OWNERS_ALLOWLIST=$OWNER_ADDRESS $MNTESTNET_IMAGE
