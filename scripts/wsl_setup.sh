#!/usr/bin/env bash
# WSL2 setup: install compilers needed for attack sequence generation.
# Run once on the WSL machine: bash wsl_setup.sh

set -euo pipefail

echo "[setup] Updating apt..."
sudo apt-get update -qq

echo "[setup] Installing gcc, clang, cross-compilers..."
sudo apt-get install -y \
    gcc \
    clang \
    gcc-aarch64-linux-gnu \
    binutils-aarch64-linux-gnu \
    python3 \
    python3-pip \
    git \
    build-essential

echo "[setup] Checking compiler versions..."
gcc --version | head -1
clang --version | head -1
aarch64-linux-gnu-gcc --version | head -1

echo "[setup] Done. Run wsl_compile.sh next."
