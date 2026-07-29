#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
docker buildx build --platform linux/arm64 \
  -t specdiscover-spectector:pinned \
  --load -f Dockerfile.spectector .
