#!/bin/bash
# ---------------------------------------------------------------------------
# Real-world retrain arms (plan 2026-11-05-real-world-data, Task 7).
#   rw           allhw3 recipe on the real-world pool
#   rw_memreads  same + --x86-mem-reads
# 2 arms x 5 seeds through train.sbatch, then score_realworld.sbatch (CPU,
# afterany) over the new arms plus every existing checkpoint (H0 baseline).
#
# Order: (1) hardware inputs present (fail like submit_allhw3.sh)
#        (2) build_hw_joint --hw-labels-only -> v55h_allhw3_train.jsonl
#        (3) Debian benign train files present (re-windowed on the LAPTOP, R38:
#            bash realworld/prepare_benign.sh, committed and pushed).  This script
#            does NOT re-window unless REWINDOW=1 (needs the asm cache + Docker).
#        (4) build_pools (overlap removal, split_leaks gate, per-arch length-KS
#            gate; --allow-length-gap arm64: that gap is pre-existing in every old pool)
#        (5) submit.
#   bash eval/cluster/submit_realworld.sh
#
# INTERIM=1: do not wait for the i5 training-pool labels.  Base = the existing
#   v54/data/v55h_allhw_train.jsonl (synthetic base + hardware positives, no
#   hardware-labelled variants); steps (1)-(2) skipped; arms rw_interim /
#   rw_interim_memreads on v54/data/rw_interim_train.jsonl.  Numbers are interim:
#   the paper headline comes from the non-interim run on allhw3.
#   INTERIM=1 bash eval/cluster/submit_realworld.sh
# DRY_RUN=1: print the sbatch commands instead of submitting.
# ---------------------------------------------------------------------------
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
POOL_IN="${POOL_IN:-eval/data/revizor_hwlabel_trainpool.jsonl}"
SEEDS="${SEEDS:-1 7 13 21 42}"
if [ "${INTERIM:-0}" = "1" ]; then
  BASE=v54/data/v55h_allhw_train.jsonl
  TRAIN=v54/data/rw_interim_train.jsonl
  PREFIX=rw_interim
else
  BASE=v54/data/v55h_allhw3_train.jsonl
  TRAIN=v54/data/rw_train.jsonl
  PREFIX=rw
fi
SB=sbatch
[ "${DRY_RUN:-0}" = "1" ] && SB="echo sbatch"

# collector outputs
ls eval/data/realworld_*.jsonl >/dev/null 2>&1 || { echo "FATAL: eval/data/realworld_*.jsonl missing" >&2; exit 1; }
if [ "${INTERIM:-0}" != "1" ]; then
  # (1) hardware inputs
  for f in "$POOL_IN" eval/data/revizor_hwlabel_cf_heldout.jsonl; do
    [ -s "$f" ] || { echo "FATAL: $f missing (Task 4 hardware labels; INTERIM=1 runs without them)" >&2; exit 1; }
  done
  # (2) base pool
  python3 oracle/revizor/build_hw_joint.py --hw-labels-only "$POOL_IN"
fi
[ -s "$BASE" ] || { echo "FATAL: $BASE not built" >&2; exit 1; }
echo "base pool: $BASE -> $TRAIN, arms ${PREFIX}, ${PREFIX}_memreads"

# (3) Debian benign train files (prepared on the laptop)
found=0
for arch in x86_64 riscv64; do
  fs=$(ls v54/data/benign_${arch}_*.jsonl 2>/dev/null || true)
  if [ -n "$fs" ]; then echo "benign train ($arch): $(echo $fs | tr '\n' ' ')"; found=$((found+1))
  elif [ "$arch" = x86_64 ]; then echo "FATAL: no v54/data/benign_x86_64_*.jsonl (run realworld/prepare_benign.sh on the laptop, commit, push)" >&2; exit 1
  else echo "WARNING: no v54/data/benign_riscv64_*.jsonl: pool has no riscv64 Debian benign" >&2; fi
done
if [ "${REWINDOW:-0}" = "1" ]; then       # opt-in: needs ~/specexec_realworld/debian_asm and Docker
  CACHE="${DEBIAN_CACHE:-$HOME/specexec_realworld/debian_asm}"
  [ -d "$CACHE" ] || { echo "FATAL: Debian asm cache $CACHE missing" >&2; exit 1; }
  REF_BASE="$BASE" DEBIAN_CACHE="$CACHE" bash realworld/prepare_benign.sh
fi

# (4) pool + gates (non-zero on split leak or per-arch length KS > 0.15 (arm64 allowed))
python3 -m realworld.build_pools --base "$BASE" --out "$TRAIN" --allow-length-gap arm64

# (5) arms
ids=()
for s in $SEEDS; do
  ids+=("$($SB --parsable --export=ALL,TAG=$PREFIX,SEED=$s,TRAIN=$TRAIN,EXTRA= eval/cluster/train.sbatch)")
  ids+=("$($SB --parsable --export=ALL,TAG=${PREFIX}_memreads,SEED=$s,TRAIN=$TRAIN,EXTRA=--x86-mem-reads eval/cluster/train.sbatch)")
done
dep=$(IFS=:; echo "${ids[*]}")
$SB --dependency=afterany:"$dep" --export=ALL,SEEDS="$SEEDS",RW_PREFIX=$PREFIX,RW_TRAIN=$TRAIN eval/cluster/score_realworld.sbatch
echo "submitted ${#ids[@]} trainings + scoring (afterany:$dep)"
