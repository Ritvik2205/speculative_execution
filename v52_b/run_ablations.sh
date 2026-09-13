#!/usr/bin/env bash
# Dropout + split-seed ablations for val-vs-train accuracy diagnosis.
# Requires data/v52b_*.jsonl (run build_dataset.py or bash run.sh once).
#
# Env overrides:
#   SKIP_BUILD=1          — assumed; does not rebuild JSONL
#   ABLATION_EPOCHS=50    — default 50 (raise to 100 to match production)
#   ABLATION_PATIENCE=12
#
set -euo pipefail
cd "$(dirname "$0")"

export SKIP_BUILD=1
EPOCHS="${ABLATION_EPOCHS:-50}"
PATIENCE="${ABLATION_PATIENCE:-12}"

COMMON=(
  python3 -u train_gine_v38.py
  --train-data data/v52b_train.jsonl
  --test-data data/v52b_test.jsonl
  --epochs "$EPOCHS"
  --patience "$PATIENCE"
  --batch-size 32
  --lr 1e-3
  --weight-decay 5e-4
  --lambda-con 0.5
  --temperature 0.07
  --hard-neg-weight 2.0
  --arch-emb-dim 8
  --hidden-dim 128
  --num-layers 3
  --jk-mode cat
  --val-split group
  --val-fraction 0.10
)

run_one() {
  local name="$1"
  shift
  local out="viz_ablation/${name}"
  mkdir -p "$out"
  echo ""
  echo "========== ABLATION: ${name} =========="
  TQDM_DISABLE=1 "${COMMON[@]}" "$@" --output-dir "$out" --viz-dir "$out"
}

mkdir -p viz_ablation

# 1) Baseline dropout + train accuracy in eval mode (dropout off) each epoch
run_one "dropout050_traineval" --dropout 0.5 --log-train-eval-acc --val-split-seed 42

# 2–3) Lower dropout — train/val curves should move closer if regularization was the driver
run_one "dropout030" --dropout 0.3 --val-split-seed 42
run_one "dropout025" --dropout 0.25 --val-split-seed 42

# 4) Different group-val fold — if ranking persists, not a one-off "easy val" split
run_one "dropout050_splitseed43" --dropout 0.5 --val-split-seed 43

echo ""
echo "=== Summary (epoch-1 gaps + final test) ==="
python3 summarize_ablations.py
