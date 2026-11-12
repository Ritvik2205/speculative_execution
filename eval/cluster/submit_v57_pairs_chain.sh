#!/bin/bash
# Resubmission of eval/cluster/submit_v57_pairs.sh after 20 simultaneous jobs failed at
# `import torch` (libtorch_cpu.so: failed to map segment) on 2026-11-12.
# Cause: the head-node shell has ulimit -v 512000 and Slurm propagates submit-shell limits
# (PropagateResourceLimits=ALL), so the job could not map the 436 MB library. Hence
# --propagate=NONE.
# Other differences: at most LANES jobs run at once (each lane is a dependency chain);
# PYTHONHASHSEED fixed for training and scoring; the reproduce check tolerates 5 of 1,033
# test items (0.005) and prints the difference it saw.
# Run from the repo root on the head node. Only sbatch is executed here.
set -euo pipefail
SEEDS="${SEEDS:-0 1 2 3 4 5 6 7 8 9}"
LANES="${LANES:-4}"
TRAIN=v57/data/v57_leak_train.jsonl
TEST=v57/data/v57_leak_test.jsonl
declare -a prev
i=0
for s in $SEEDS; do
  for arm in plain cfg; do
    extra=""; [ "$arm" = cfg ] && extra="--cfg-control-edges"
    cmd="export PYTHONHASHSEED=0 && python3 -u v54/train_gine_v38.py --train-data $TRAIN --test-data $TEST \
--use-spec-builder --seed $s --output-dir \$OUT --viz-dir \$OUT --epochs 60 --patience 10 \
--hidden-dim 128 --num-layers 3 --jk-mode cat --batch-size 32 --lr 1e-3 $extra \
&& python3 -u eval/pairs/score_gine.py --checkpoint \$OUT/gine_best.pt \
--train-data $TRAIN --test-data $TEST --out \$OUT/pair_scores.jsonl --acc-tol 0.005"
    lane=$((i % LANES)); dep=""
    [ -n "${prev[$lane]:-}" ] && dep="--dependency=afterany:${prev[$lane]}"
    id=$(sbatch --parsable --propagate=NONE $dep --export=ALL,TAG="v57_${arm}",SEED="$s",CMD="$cmd" eval/cluster/train.sbatch)
    prev[$lane]=$id
    echo "lane $lane  v57_${arm} s$s  job $id"
    i=$((i + 1))
  done
done
