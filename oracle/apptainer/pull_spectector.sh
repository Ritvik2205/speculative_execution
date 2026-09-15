#!/usr/bin/env bash
# pull_spectector.sh — pull the pinned Spectector image from ghcr.io into a
# local .sif on the cluster. RUN THIS ON THE CLUSTER (a landonia/Teaching
# node with Apptainer). Pulling needs NO root — only building does.
#
# Usage:
#   GHCR_OWNER=<github-username-or-org> bash oracle/apptainer/pull_spectector.sh
#
# Optional:
#   SIF_OUT=/disk/scratch/$USER/spectector.sif   # where to write the .sif
#     (default: $repo_root/oracle/apptainer/spectector.sif — but /disk/scratch
#      is roomier and faster on the cluster; put it there for real runs)
#
# If the ghcr package is PRIVATE, log Apptainer in first (classic PAT with
# read:packages):
#   echo "$GHCR_TOKEN" | apptainer registry login -u <github-username> --password-stdin docker://ghcr.io
# A public package needs no login.
set -euo pipefail

: "${GHCR_OWNER:?set GHCR_OWNER=<github username or org used when publishing>}"
REMOTE="docker://ghcr.io/${GHCR_OWNER}/specdiscover-spectector:pinned"

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$here/../.." && pwd)"
SIF_OUT="${SIF_OUT:-$here/spectector.sif}"

if ! command -v apptainer >/dev/null 2>&1; then
  echo "ERROR: apptainer not found. On the Teaching cluster it is on the" >&2
  echo "       landonia compute nodes — run this from a compute node, not the" >&2
  echo "       head node." >&2
  exit 1
fi

echo "==> pulling ${REMOTE}"
echo "    -> ${SIF_OUT}"
mkdir -p "$(dirname "$SIF_OUT")"
apptainer pull --force "$SIF_OUT" "$REMOTE"

echo ""
echo "==> done. Point the pipeline at it for this shell (and any job that runs"
echo "    the Spectector oracle) with:"
echo ""
echo "    export SPECEXEC_CONTAINER_RUNTIME=apptainer"
echo "    export SPECEXEC_SPECTECTOR_SIF=${SIF_OUT}"
echo ""
echo "    # smoke test the oracle wiring:"
echo "    cd ${repo_root} && python3 -c \"from oracle.spectector_oracle import _container_cmd; print(_container_cmd('$repo_root','/work','echo ok'))\""
