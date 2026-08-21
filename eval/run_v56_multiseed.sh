#!/usr/bin/env bash
# run_v56_multiseed.sh — Phase 4 multi-seed comparison: hand / learned / both /
# diff_gated_both node-feature modes, all with --use-spec-builder (matching
# the "current best" recipe), on the locked v54 data/split. Same convention
# as eval/run_full_tost.sh and eval/run_dataflow_taint_multiseed.sh.
#
# This is the FULL run (4 modes x N seeds) — expensive. Designed to be
# splittable across machines: pass a MODES/SEEDS subset via env vars to run
# a partial shard on a second machine, then merge results.tsv files (they're
# just appended rows, safe to `cat` together) before running
# eval/full_tost_aggregate.py or eval/analyze_g11_multiseed.py-style analysis
# on the combined file. See SPECDISCOVER_LEARNED_FEATURES_PLAN.md, Phase 4
# multi-machine seed-gathering plan, for the sharding convention.
#
# Usage:
#   ./eval/run_v56_multiseed.sh                       # all modes, all seeds
#   MODES="diff_gated_both" SEEDS="99 123 55 88 7000" ./eval/run_v56_multiseed.sh
set -uo pipefail
cd "$(dirname "$0")/../v56"

SEEDS=(${SEEDS:-42 1 7 13 21})
MODES=(${MODES:-hand learned both diff_gated_both})
MLM="../spec/mlm_large.pt"
OUT="../eval/v56_multiseed"
mkdir -p "$OUT"
TSV="$OUT/results.tsv"
: > "$TSV.$$"  # per-invocation temp, so parallel/sharded runs don't clobber each other

for mode in "${MODES[@]}"; do
  extra="--use-spec-builder"
  if [ "$mode" != "hand" ]; then extra="$extra --node-feature-mode $mode --mlm-path $MLM"; fi
  for sd in "${SEEDS[@]}"; do
    log="$OUT/${mode}_s${sd}.log"
    TQDM_DISABLE=1 python3 -u train_gine_v38.py \
      --train-data ../v54/data/v54_train.jsonl --test-data ../v54/data/v54_test.jsonl \
      --output-dir "$OUT/viz_${mode}_s${sd}" --viz-dir "$OUT/viz_${mode}_s${sd}" \
      --epochs 100 --patience 12 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --weight-decay 5e-4 --dropout 0.5 \
      --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0 --arch-emb-dim 8 \
      --seed "$sd" $extra \
      > "$log" 2>&1
    acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
    # macro avg row: precision recall f1-score support -> $5 is f1-score (see G12 bug note
    # in eval/run_full_tost.sh — $4 is recall, do not use it here).
    f1=$(grep -E "macro avg" "$log" | tail -1 | awk '{print $5}')
    spectre_v2_rec=$(grep -E "SPECTRE_V2 " "$log" | tail -1 | awk '{print $3}')
    l1tf_rec=$(grep -E "L1TF " "$log" | tail -1 | awk '{print $3}')
    echo -e "${mode}\t${sd}\t${acc}\t${f1}\t${spectre_v2_rec}\t${l1tf_rec}" | tee -a "$TSV.$$"
  done
done
cat "$TSV.$$" >> "$TSV"
rm "$TSV.$$"
echo "DONE -> $TSV"
