#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

IMAGE=specdiscover-spectector:pinned

if docker buildx version >/dev/null 2>&1; then
  docker buildx build --platform linux/amd64 \
    -t "$IMAGE" \
    --load -f Dockerfile.spectector .
  exit 0
fi

# Ubuntu's docker.io package ships only the docker-trust CLI plugin, so buildx
# can be absent. Docker 26+ removed the classic builder, making BuildKit (i.e.
# buildx) mandatory -- there is no fallback there. Older clients can still use
# the classic builder, which always targets the host arch, so the original
# --platform linux/amd64 is a no-op on an amd64 host.
client_major="$(docker version --format '{{.Client.Version}}' 2>/dev/null | cut -d. -f1 || true)"
if [[ -z "$client_major" || "$client_major" -ge 26 ]]; then
  echo "ERROR: 'docker buildx' is unavailable and this Docker client (${client_major:-unknown}.x)" >&2
  echo "       has no classic builder. Install the buildx plugin:" >&2
  echo "           sudo apt install docker-buildx" >&2
  echo "       then re-run this script." >&2
  exit 1
fi

arch="$(uname -m)"
case "$arch" in
  x86_64|amd64) ;;
  *)
    echo "ERROR: host arch '$arch' is not amd64 and 'docker buildx' is unavailable." >&2
    echo "Spectector's pinned z3 is x86-64 only. Either:" >&2
    echo "    sudo apt install docker-buildx   # then re-run this script" >&2
    echo "  or build the image on an amd64 host." >&2
    exit 1
    ;;
esac
docker build -t "$IMAGE" -f Dockerfile.spectector .
