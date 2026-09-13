#!/usr/bin/env bash
# Full-model (not proxy) multi-seed TOST driver: trains the real v54 GINE for
# hand / learned / both node features over several seeds, using the B1 spec
# builder + scaled MLM, and collects final test accuracy per run into a TSV.
# Aggregate + TOST via eval/full_tost_aggregate.py.
set -uo pipefail
cd "$(dirname "$0")/../v54"

SEEDS=(42 1 7 13 21)
MODES=(hand learned both)
MLM="../spec/mlm_large.pt"
OUT="../eval/full_tost"
mkdir -p "$OUT"
TSV="$OUT/results.tsv"
: > "$TSV"

for mode in "${MODES[@]}"; do
  extra=""
  if [ "$mode" != "hand" ]; then extra="--node-feature-mode $mode --mlm-path $MLM"; fi
  for sd in "${SEEDS[@]}"; do
    log="$OUT/${mode}_s${sd}.log"
    TQDM_DISABLE=1 python3 -u train_gine_v38.py \
      --train-data data/v54_train.jsonl --test-data data/v54_test.jsonl \
      --output-dir "$OUT/viz_${mode}_s${sd}" --viz-dir "$OUT/viz_${mode}_s${sd}" \
      --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --use-spec-builder --seed "$sd" $extra \
      > "$log" 2>&1
    acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
    # classification_report "macro avg" row columns: precision recall f1-score support
    # -> $4 is RECALL, not F1. Was $4 (bug, found + fixed in G12); f1-score is $5.
    f1=$(grep -E "macro avg" "$log" | tail -1 | awk '{print $5}')
    echo -e "${mode}\t${sd}\t${acc}\t${f1}" | tee -a "$TSV"
  done
done
echo "DONE -> $TSV"
python3 ../eval/full_tost_aggregate.py "$TSV"
