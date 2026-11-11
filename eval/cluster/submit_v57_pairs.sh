#!/bin/bash
# Train GINE on the v57 leak/safe task and score every checkpoint on the pair
# benchmark (eval/pairs). Two arms x 10 paired seeds = 20 jobs, ~15 min each.
#
#   plain   data-dependence + sequential edges (the B1 recipe)
#   cfg     the same plus branch-target edges (--cfg-control-edges)
#
# Run from the repo root on the cluster head node, after `git pull`:
#   bash eval/cluster/submit_v57_pairs.sh            # all 20
#   SEEDS="0" bash eval/cluster/submit_v57_pairs.sh  # smoke: 2 jobs
#
# Each job leaves eval/cluster_out/v57_<arm>_s<seed>/{gine_best.pt,gine_metrics.json,
# pair_scores.jsonl}. Collect on the laptop with:
#   python3 -m eval.pairs.score --scores \
#     $(for f in eval/cluster_out/v57_*_s*/pair_scores.jsonl; do \
#         a=$(basename $(dirname $f)); echo "GINE-${a%_s*}@${a##*_s}=$f"; done)
set -euo pipefail
SEEDS="${SEEDS:-0 1 2 3 4 5 6 7 8 9}"
TRAIN=v57/data/v57_leak_train.jsonl
TEST=v57/data/v57_leak_test.jsonl
for f in "$TRAIN" "$TEST" eval/pairs/data/pairs_hw.jsonl; do
  [ -s "$f" ] || { echo "missing $f" >&2; exit 1; }
done
for arm in plain cfg; do
  extra=""; [ "$arm" = cfg ] && extra="--cfg-control-edges"
  for s in $SEEDS; do
    cmd="python3 -u v54/train_gine_v38.py --train-data $TRAIN --test-data $TEST \
--use-spec-builder --seed $s --output-dir \$OUT --viz-dir \$OUT --epochs 60 --patience 10 \
--hidden-dim 128 --num-layers 3 --jk-mode cat --batch-size 32 --lr 1e-3 $extra \
&& python3 -u eval/pairs/score_gine.py --checkpoint \$OUT/gine_best.pt \
--train-data $TRAIN --test-data $TEST --out \$OUT/pair_scores.jsonl"
    sbatch --export=ALL,TAG="v57_${arm}",SEED="$s",CMD="$cmd" eval/cluster/train.sbatch
  done
done
