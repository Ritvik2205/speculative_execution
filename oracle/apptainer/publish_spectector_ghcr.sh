#!/usr/bin/env bash
# publish_spectector_ghcr.sh — build the pinned Spectector image and push it
# to GitHub Container Registry (ghcr.io) so a no-root machine (the Teaching/
# ICF cluster) can `apptainer pull` it. RUN THIS ON A MACHINE WITH DOCKER +
# ROOT (this Mac / the i5 box) — building a container needs root, pulling
# does not.
#
# Prereqs (one time):
#   1. A GitHub Personal Access Token (classic) with the `write:packages`
#      scope. Store it, then log Docker into ghcr.io:
#        echo "$GHCR_TOKEN" | docker login ghcr.io -u <github-username> --password-stdin
#   2. That's it — this script builds, tags, and pushes.
#
# Usage:
#   GHCR_OWNER=<github-username-or-org> bash oracle/apptainer/publish_spectector_ghcr.sh
#
# After it succeeds the image is at:
#   ghcr.io/<GHCR_OWNER>/specdiscover-spectector:pinned
# By default packages you push are PRIVATE. Either make it public in the
# GitHub UI (Packages -> the package -> Package settings -> Change visibility),
# or keep it private and log Apptainer in on the cluster (the pull script
# explains how).
set -euo pipefail

: "${GHCR_OWNER:?set GHCR_OWNER=<your github username or org>}"
# ghcr.io repository paths must be lowercase (Docker reference rules).
GHCR_OWNER="$(printf '%s' "$GHCR_OWNER" | tr '[:upper:]' '[:lower:]')"
LOCAL_IMAGE="specdiscover-spectector:pinned"
REMOTE_IMAGE="ghcr.io/${GHCR_OWNER}/specdiscover-spectector:pinned"

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
docker_dir="$(cd "$here/../docker" && pwd)"

echo "==> building ${LOCAL_IMAGE} (linux/amd64) via oracle/docker/build_spectector.sh"
# build_spectector.sh already forces --platform linux/amd64 so the pushed
# image runs natively on the cluster's x86_64 nodes (no emulation).
( cd "$docker_dir" && bash build_spectector.sh )

echo "==> tagging  ${LOCAL_IMAGE} -> ${REMOTE_IMAGE}"
docker tag "$LOCAL_IMAGE" "$REMOTE_IMAGE"

echo "==> pushing  ${REMOTE_IMAGE}"
if ! docker push "$REMOTE_IMAGE"; then
  echo "" >&2
  echo "push failed — are you logged in? Run:" >&2
  echo "  echo \"\$GHCR_TOKEN\" | docker login ghcr.io -u ${GHCR_OWNER} --password-stdin" >&2
  exit 1
fi

echo ""
echo "==> done. On the cluster, pull it with:"
echo "    GHCR_OWNER=${GHCR_OWNER} bash oracle/apptainer/pull_spectector.sh"
