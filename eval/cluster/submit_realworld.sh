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
#        (3) re-window Debian benign against THIS pool's own attack rows (R34)
#        (4) build_pools (overlap removal, split_leaks gate, length-KS gate)
#        (5) submit.
# Step 3 needs the cached Debian asm (~/specexec_realworld/debian_asm) and the
# collector outputs (eval/data/realworld_*.jsonl, v54/data/realworld_*_train.jsonl)
# rsynced into $REPO.  If the cache is not on this machine run step 3 where it
# is, commit/rsync v54/data/benign_*_gcc.jsonl, and set SKIP_REWINDOW=1 (the KS
# gate in build_pools still fails the job if the lengths do not match).
#   bash eval/cluster/submit_realworld.sh
# ---------------------------------------------------------------------------
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
POOL_IN="${POOL_IN:-eval/data/revizor_hwlabel_trainpool.jsonl}"
SEEDS="${SEEDS:-1 7 13 21 42}"
BASE=v54/data/v55h_allhw3_train.jsonl
TRAIN=v54/data/rw_train.jsonl
CACHE="${DEBIAN_CACHE:-$HOME/specexec_realworld/debian_asm}"
LENREF="${LENREF:-$HOME/specexec_realworld/rw_attack_lengths.jsonl}"

# (1) hardware inputs
for f in "$POOL_IN" eval/data/revizor_hwlabel_cf_heldout.jsonl; do
  [ -s "$f" ] || { echo "FATAL: $f missing (Task 4 hardware labels)" >&2; exit 1; }
done
# collector outputs
ls eval/data/realworld_*.jsonl >/dev/null 2>&1 || { echo "FATAL: eval/data/realworld_*.jsonl missing" >&2; exit 1; }

# (2) base pool
python3 oracle/revizor/build_hw_joint.py --hw-labels-only "$POOL_IN"
[ -s "$BASE" ] || { echo "FATAL: $BASE not built" >&2; exit 1; }

# (3) re-window Debian benign against the final pool's attack rows
if [ "${SKIP_REWINDOW:-0}" != "1" ]; then
  [ -d "$CACHE" ] || { echo "FATAL: Debian asm cache $CACHE missing (set SKIP_REWINDOW=1 if benign_*.jsonl were already re-windowed)" >&2; exit 1; }
  python3 -m realworld.build_pools --base "$BASE" --out /dev/null --usage-out /dev/null \
      --length-ref-out "$LENREF"
  SCRATCH_EVAL="$(mktemp -d)"     # held-out benign eval rows are not length-matched: keep eval/data untouched
  for arch in amd64 riscv64; do
    python3 -m realworld.benign_debian --arch "$arch" --cc gcc --from-existing \
        --length-ref "$LENREF" --eval-dir "$SCRATCH_EVAL"
  done
  rm -rf "$SCRATCH_EVAL"
fi

# (4) pool + gates (non-zero on split leak or overall length KS > 0.15)
python3 -m realworld.build_pools --base "$BASE" --out "$TRAIN"

# (5) arms
ids=()
for s in $SEEDS; do
  ids+=("$(sbatch --parsable --export=ALL,TAG=rw,SEED=$s,TRAIN=$TRAIN,EXTRA= eval/cluster/train.sbatch)")
  ids+=("$(sbatch --parsable --export=ALL,TAG=rw_memreads,SEED=$s,TRAIN=$TRAIN,EXTRA=--x86-mem-reads eval/cluster/train.sbatch)")
done
dep=$(IFS=:; echo "${ids[*]}")
sbatch --dependency=afterany:"$dep" --export=ALL,SEEDS="$SEEDS" eval/cluster/score_realworld.sbatch
echo "submitted ${#ids[@]} trainings + scoring (afterany:$dep)"
