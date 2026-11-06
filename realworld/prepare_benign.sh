#!/bin/bash
# ---------------------------------------------------------------------------
# LAPTOP step (needs Docker + the Debian asm cache): build the Debian benign
# TRAIN files with window lengths drawn from the attack-length histogram of the
# real-world pool's own attack rows (R23/R34/R36/R38).  Run, commit the
# regenerated v54/data/benign_*_gcc.jsonl + skipped_benign_*.jsonl, push, THEN
# run eval/cluster/submit_realworld.sh on the cluster.
#
#   bash realworld/prepare_benign.sh            # all 4 cells
#   CELLS="amd64" bash realworld/prepare_benign.sh   # amd64/gcc only (done 2026-11-06)
#
# Length reference = non-BENIGN rows of REF_BASE (the allhw pool has the same
# synthetic base + hardware positives as allhw3; point REF_BASE at
# v54/data/v55h_allhw3_train.jsonl once it exists), after overlap removal and
# plus the realworld_*_train.jsonl attack rows -- exactly what build_pools sees.
#   amd64   -> x86_64 attack rows
#   riscv64 -> riscv64 + arm64 attack rows (riscv attack rows alone are only 6; arm64 is
#              the closest idiomatic proxy -- inspect the KS line before trusting it)
# NOTE: the skip log is rewritten for the processed packages only; re-add the old build_dep/timeout
# lines of uncached packages (git diff) before committing.
# Held-out eval windows (25-45) are NOT touched: eval windows go to a scratch dir.
# Cells = {amd64,riscv64} x {gcc,clang}; only gcc is used by the pool (build_pools globs
# benign_x86_64_* / benign_riscv64_*; clang cells would also be picked up, so default is gcc only).
# ---------------------------------------------------------------------------
set -euo pipefail
cd "$(dirname "$0")/.."
REF_BASE="${REF_BASE:-v54/data/v55h_allhw_train.jsonl}"
SNAPSHOT="${SNAPSHOT:-trixie}"            # must equal the snapshot recorded in the cache (snapshot.txt)
CACHE="${DEBIAN_CACHE:-$HOME/specexec_realworld/debian_asm}"
CELLS="${CELLS:-amd64 riscv64}"
CC="${CC_LIST:-gcc}"
REFDIR="$(mktemp -d)"; SCRATCH_EVAL="$(mktemp -d)"
trap 'rm -rf "$REFDIR" "$SCRATCH_EVAL"' EXIT
for arch in $CELLS; do
  case "$arch" in
    amd64)   rarch="x86_64"; ARCHES="x86_64" ;;
    riscv64) rarch="riscv64"; ARCHES="riscv64 arm64" ;;
    *) echo "unknown cell $arch" >&2; exit 1 ;;
  esac
  python3 -m realworld.build_pools --base "$REF_BASE" --out /dev/null --usage-out /dev/null \
      --length-ref-out "$REFDIR/ref_$arch.jsonl" --length-ref-arch $ARCHES
  for cc in $CC; do
    # only cells already in the cache unless REBUILD=1 (a cache miss means a multi-minute Docker cross-build
    # that previously failed for coreutils/curl/...; those failures stay recorded in the skip log)
    only=()
    if [ "${REBUILD:-0}" != "1" ]; then
      for d in "$CACHE"/*-"$arch"-"$cc"; do [ -f "$d/version.txt" ] && only+=("$(basename "$d" -"$arch"-"$cc")"); done
      [ ${#only[@]} -gt 0 ] || { echo "no cached $arch/$cc cells under $CACHE: run with REBUILD=1 (Docker)" >&2; continue; }
      onlyargs=(--only "${only[@]}")
    else
      onlyargs=()
    fi
    python3 -u -m realworld.benign_debian --arch "$arch" --cc "$cc" --snapshot "$SNAPSHOT" --from-existing \
        --cache "$CACHE" --length-ref "$REFDIR/ref_$arch.jsonl" --eval-dir "$SCRATCH_EVAL" ${onlyargs[@]+"${onlyargs[@]}"}
  done
done
echo "done. Review: git diff --stat v54/data; python3 -m realworld.build_pools --base \$REF_BASE --out /dev/null --usage-out /dev/null"
