#!/usr/bin/env bash
# Multi-seed re-verification for the dataflow_taint fix (SPECDISCOVER_VERIFICATION_GAPS.md
# G6 follow-up). Same convention as eval/run_full_tost.sh: 5 seeds, hand features,
# --use-spec-builder (dataflow_taint now applied automatically inside
# SpecBackedPDGBuilder.build()). Trains on the cleaned (post-G11-fix) locked data.
set -uo pipefail
cd "$(dirname "$0")/../v54"

SEEDS=(42 1 7 13 21)
OUT="../eval/dataflow_taint_multiseed"
mkdir -p "$OUT"
TSV="$OUT/results.tsv"
: > "$TSV"

for sd in "${SEEDS[@]}"; do
  log="$OUT/s${sd}.log"
  TQDM_DISABLE=1 python3 -u train_gine_v38.py \
    --train-data data/v54_train.jsonl --test-data data/v54_test.jsonl \
    --output-dir "$OUT/viz_s${sd}" --viz-dir "$OUT/viz_s${sd}" \
    --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
    --batch-size 32 --lr 1e-3 --use-spec-builder --seed "$sd" \
    > "$log" 2>&1
  acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
  # classification_report "macro avg" row columns: precision recall f1-score support
  # -> $4 is RECALL, not F1 (see G12, SPECDISCOVER_VERIFICATION_GAPS.md). f1-score is $5.
  f1=$(grep -E "macro avg" "$log" | tail -1 | awk '{print $5}')
  echo -e "dataflow_taint\t${sd}\t${acc}\t${f1}" | tee -a "$TSV"
done
echo "DONE -> $TSV"
