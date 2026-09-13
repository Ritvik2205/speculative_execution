#!/usr/bin/env bash
# Resumable InvisiSpec gem5 build. Docker RUN layers are all-or-nothing, and
# something on this host kills the build container every ~15-20 min
# regardless of scons -j level; a killed RUN layer discards all progress.
# This script instead runs scons against a HOST-persisted copy of the source
# tree, so SCons's own incremental dependency tracking lets each retry
# continue from where the last one died, no matter how many kills it takes.
set -euo pipefail
cd "$(dirname "$0")"

SRC_HOST="${SPECDISCOVER_INVISISPEC_SRC:-$HOME/invisispec-src}"
TARGET=build/X86_MESI_Two_Level/gem5.opt
PREP_IMAGE=specdiscover-invisispec-prep:pinned
FINAL_IMAGE=specdiscover-invisispec:pinned

echo "== step 1: build/refresh the prep image (toolchain + patched source) =="
docker buildx build --platform linux/amd64 -t "$PREP_IMAGE" --load -f Dockerfile.invisispec .

if [ ! -d "$SRC_HOST/site_scons" ]; then
  echo "== step 2: seed host-persisted source tree at $SRC_HOST (one-time) =="
  mkdir -p "$SRC_HOST"
  docker run --rm -v "$SRC_HOST:/hostout" "$PREP_IMAGE" bash -c "cp -a /opt/InvisiSpec/. /hostout/"
  sudo chown -R "$(id -u):$(id -g)" "$SRC_HOST" 2>/dev/null || true
else
  echo "== step 2: host-persisted source tree already seeded at $SRC_HOST, skipping =="
fi

# gem5 SE-mode fakes uname() with a hardcoded "3.0.0" kernel release, which is
# below glibc 2.27's (this toolchain's) minimum ABI requirement -- every
# statically-linked test binary aborts at startup with "FATAL: kernel too
# old" before any simulation happens. Bump it once; idempotent.
KREL_FILE="$SRC_HOST/src/arch/x86/linux/process.cc"
if grep -q 'strcpy(name->release, "3.0.0")' "$KREL_FILE" 2>/dev/null; then
  echo "== patching hardcoded guest kernel release 3.0.0 -> 4.15.0 (see process.cc) =="
  sed -i 's/strcpy(name->release, "3.0.0")/strcpy(name->release, "4.15.0")/' "$KREL_FILE"
fi

echo "== step 3: incremental scons build (resumable across kills) =="
# Always invoke scons -- it's SCons's own dependency tracking (not a crude
# file-exists check) that decides what needs rebuilding, so this is a fast
# no-op when nothing changed and a correct incremental rebuild when a source
# file (e.g. a post-hoc patch) changed after gem5.opt already existed.
docker run --rm -v "$SRC_HOST:/opt/InvisiSpec" -w /opt/InvisiSpec "$PREP_IMAGE" \
  python2.7 /usr/bin/scons "$TARGET" -j1 --ignore-style

echo "== step 4: package the compiled tree into the final pinned image =="
if [ -f "$SRC_HOST/$TARGET" ]; then
  TMP_CTX=$(mktemp -d)
  cat > "$TMP_CTX/Dockerfile" <<'EOF'
FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
# python2.7-dev (not just python2.7): gem5.opt is linked against
# libpython2.7.so.1.0 (gem5 embeds a Python interpreter for its config
# system) which the bare `python2.7` package alone doesn't pull in.
# build-essential: oracle/validators/invisispec_validator.py compiles the
# PoC (`x86_64-linux-gnu-gcc -O0 -static ...`) in the SAME container as it
# runs gem5, so this image needs a working compiler + static libc, not just
# the gem5 runtime.
RUN apt-get update && apt-get install -y \
    python2.7-dev zlib1g-dev libprotobuf-dev libgoogle-perftools-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
COPY invisispec /opt/InvisiSpec
WORKDIR /work
EOF
  # Copy only what invisispec_validator.py needs at runtime (the compiled
  # binary + configs/example/se.py + its imports), not build intermediates,
  # to keep the final image small and this copy step fast.
  mkdir -p "$TMP_CTX/invisispec"
  cp -a "$SRC_HOST/build" "$TMP_CTX/invisispec/build"
  cp -a "$SRC_HOST/configs" "$TMP_CTX/invisispec/configs"
  docker buildx build --platform linux/amd64 -t "$FINAL_IMAGE" --load -f "$TMP_CTX/Dockerfile" "$TMP_CTX"
  rm -rf "$TMP_CTX"
  echo "== DONE: $FINAL_IMAGE built =="
else
  echo "== NOT DONE YET: $TARGET missing, rerun this script to resume =="
  exit 1
fi
