#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
docker buildx build --platform linux/amd64 \
  -t specdiscover-spectector:pinned \
  --load -f Dockerfile.spectector .
