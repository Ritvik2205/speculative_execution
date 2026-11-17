#!/bin/bash
# Ticket 06, graph-model arms: train GINE on the v57 leak/safe task plus the version-2 injected
# pairs, then score each checkpoint on the released pairs and on version-2 val and test.
#
#   labels    pairs added as LEAK / SAFE records          (spec section 4, arm 2)
#   pairwise  margin between the two sides of each pair   (arm 3)
#   plain     no pairs: rescoring of the existing v57_plain checkpoints, no training
#
# Data files come from `python3 -m eval.pairs.train_gine_pairs` (run on the laptop, rsynced).
# Run from the repo root on the head node. Only sbatch is executed here.
#   SEEDS="0" bash eval/cluster/submit_v2_pairs.sh          # smoke: one seed per arm
#   ARMS="plain" bash eval/cluster/submit_v2_pairs.sh       # baseline rescoring only
set -euo pipefail
SEEDS="${SEEDS:-0 1 2 3 4 5 6 7 8 9}"
ARMS="${ARMS:-labels pairwise plain}"
LANES="${LANES:-4}"
V57=v57/data/v57_leak_train.jsonl
TEST=v57/data/v57_leak_test.jsonl
V2=eval/pairs/data/v2
PAIRS="$(ls eval/pairs/data/pairs_*.jsonl | tr '\n' ' ') $V2/pairs_injected2_val_renamed.jsonl $V2/pairs_injected2_test_renamed.jsonl"
for f in "$V57" "$TEST" "$V2/gine_train_labels.jsonl" "$V2/gine_train_pairs.jsonl" $PAIRS; do
  [ -s "$f" ] || { echo "missing $f" >&2; exit 1; }
done
fit="--test-data $TEST --use-spec-builder --output-dir \$OUT --viz-dir \$OUT --epochs 60 --patience 10 \
--hidden-dim 128 --num-layers 3 --jk-mode cat --batch-size 32 --lr 1e-3"
declare -a prev
i=0
for s in $SEEDS; do
  for arm in $ARMS; do
    score="python3 -u eval/pairs/score_gine.py --train-data $V57 --test-data $TEST --acc-tol 0.005 --pairs $PAIRS"
    case "$arm" in
      labels)   cmd="python3 -u v54/train_gine_v38.py --train-data $V2/gine_train_labels.jsonl --seed $s $fit \
&& $score --checkpoint \$OUT/gine_best.pt --out \$OUT/pair_scores.jsonl" ;;
      pairwise) cmd="python3 -u v54/train_gine_v38.py --train-data $V57 --pair-data $V2/gine_train_pairs.jsonl --seed $s $fit \
&& $score --checkpoint \$OUT/gine_best.pt --out \$OUT/pair_scores.jsonl" ;;
      plain)    src="\$HOME/speculative_execution/eval/cluster_out/v57_plain_s$s"
                cmd="$score --checkpoint $src/gine_best.pt --metrics $src/gine_metrics.json --out \$OUT/pair_scores.jsonl" ;;
      *) echo "unknown arm $arm" >&2; exit 1 ;;
    esac
    lane=$((i % LANES)); dep=""
    [ -n "${prev[$lane]:-}" ] && dep="--dependency=afterany:${prev[$lane]}"
    id=$(sbatch --parsable --propagate=NONE $dep --export=ALL,TAG="v2_${arm}",SEED="$s",CMD="export PYTHONHASHSEED=0 && $cmd" eval/cluster/train.sbatch)
    prev[$lane]=$id
    echo "lane $lane  v2_${arm} s$s  job $id"
    i=$((i + 1))
  done
done
