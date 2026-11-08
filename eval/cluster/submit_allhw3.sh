#!/bin/bash
# ---------------------------------------------------------------------------
# allhw3 / allhw3_mech (plan docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md
# Task 6). Run on the cluster HEAD node after pulling, once Task 4's hardware
# labels are in the repo:
#   eval/data/revizor_hwlabel_trainpool.jsonl   (training-pool variants)
#   eval/data/revizor_hwlabel_cf_heldout.jsonl  (held-out counterfactuals)
# Builds the hardware-labels-only pool (raises on any base shared with an
# evaluation set), then submits 2 arms x 5 seeds through train.sbatch, then the
# scoring job after all of them finish.
#   bash eval/cluster/submit_allhw3.sh
# ---------------------------------------------------------------------------
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
POOL_IN="${POOL_IN:-eval/data/revizor_hwlabel_trainpool.jsonl}"
SEEDS="${SEEDS:-1 7 13 21 42}"
for f in "$POOL_IN" eval/data/revizor_hwlabel_cf_heldout.jsonl eval/data/revizor_hwlabel_nofence_heldout.jsonl; do
  [ -s "$f" ] || { echo "FATAL: $f missing (Task 4 hardware labels)" >&2; exit 1; }
done
python3 oracle/revizor/build_hw_joint.py --hw-labels-only "$POOL_IN"
TRAIN=v54/data/v55h_allhw3_train.jsonl
ids=()
for s in $SEEDS; do
  ids+=("$(sbatch --parsable --export=ALL,TAG=allhw3,SEED=$s,TRAIN=$TRAIN,EXTRA= eval/cluster/train.sbatch)")
  ids+=("$(sbatch --parsable --export=ALL,TAG=allhw3_mech,SEED=$s,TRAIN=$TRAIN,EXTRA=--mech-features eval/cluster/train.sbatch)")
  ids+=("$(sbatch --parsable --export=ALL,TAG=allhw3_memreads,SEED=$s,TRAIN=$TRAIN,EXTRA=--x86-mem-reads eval/cluster/train.sbatch)")
done
dep=$(IFS=:; echo "${ids[*]}")
sbatch --dependency=afterany:"$dep" --export=ALL,SEEDS="$SEEDS" eval/cluster/score_allhw3.sbatch
echo "submitted ${#ids[@]} trainings + scoring (afterany:$dep)"
