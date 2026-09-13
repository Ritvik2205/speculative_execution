#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
docker buildx build --platform linux/amd64 \
  --build-arg GEM5_TAG=v24.0.0.0 \
  -t specdiscover-gem5:pinned \
  --load .
