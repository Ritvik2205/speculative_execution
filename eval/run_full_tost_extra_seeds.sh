#!/usr/bin/env bash
# Extends eval/full_tost/ with 5 new seeds (100 7654 8 88 999) for hand+both
# modes only (learned-only skipped: not needed for the SPECTRE_V2 paired/
# Bonferroni recheck, saves half the compute). Same invocation as
# eval/run_full_tost.sh, just a different seed list and mode subset.
set -uo pipefail
cd "$(dirname "$0")/../v54"

SEEDS=(100 7654 8 88 999)
MODES=(hand both)
MLM="../spec/mlm_large.pt"
OUT="../eval/full_tost"
mkdir -p "$OUT"
TSV="$OUT/results_extra_seeds.tsv"
: > "$TSV"

for mode in "${MODES[@]}"; do
  extra=""
  if [ "$mode" != "hand" ]; then extra="--node-feature-mode $mode --mlm-path $MLM"; fi
  for sd in "${SEEDS[@]}"; do
    log="$OUT/${mode}_s${sd}.log"
    echo "=== training $mode seed $sd ==="
    TQDM_DISABLE=1 /Users/ritvikgupta/SpecExec/.venv_fix/bin/python3 -u train_gine_v38.py \
      --train-data data/v54_train.jsonl --test-data data/v54_test.jsonl \
      --output-dir "$OUT/viz_${mode}_s${sd}" --viz-dir "$OUT/viz_${mode}_s${sd}" \
      --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --use-spec-builder --seed "$sd" $extra \
      > "$log" 2>&1
    acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
    f1=$(grep -E "macro avg" "$log" | tail -1 | awk '{print $5}')
    echo -e "${mode}\t${sd}\t${acc}\t${f1}" | tee -a "$TSV"
  done
done
echo "DONE -> $TSV"
