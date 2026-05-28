#!/usr/bin/env bash
# Boilerplate strip ablation: train twice on the same v53 JSONL (strip on vs --no-strip).
# Outputs: viz_v53_ablation/strip_on/ and viz_v53_ablation/strip_off/
#
# Env:
#   SKIP_BUILD=1           — do not run build_dataset.py
#   ABLATION_EPOCHS=100    — override training epochs (default 100)
#   ABLATION_PATIENCE=12  — override early-stop patience (default 12)
#
set -euo pipefail
cd "$(dirname "$0")"

EPOCHS="${ABLATION_EPOCHS:-100}"
PATIENCE="${ABLATION_PATIENCE:-12}"

pip install -q -r requirements.txt

mkdir -p data viz_v53_ablation

if [[ "${SKIP_BUILD:-0}" != "1" ]]; then
  python3 build_dataset.py
else
  echo "[ablation] SKIP_BUILD=1 — using existing data/v53_{train,test}.jsonl"
fi

TRAIN_ARGS=(
  python3 -u train_gine_v38.py
  --train-data data/v53_train.jsonl
  --test-data  data/v53_test.jsonl
  --epochs "$EPOCHS"
  --patience "$PATIENCE"
  --hidden-dim 128
  --num-layers 3
  --jk-mode cat
  --batch-size 32
  --lr 1e-3
  --weight-decay 5e-4
  --dropout 0.5
  --lambda-con 0.5
  --temperature 0.07
  --hard-neg-weight 2.0
  --arch-emb-dim 8
  --val-split group
  --val-fraction 0.10
)

run_strip_on() {
  local out="viz_v53_ablation/strip_on"
  mkdir -p "$out"
  echo ""
  echo "========== ABLATION: strip_boilerplate ON (default) =========="
  TQDM_DISABLE=1 "${TRAIN_ARGS[@]}" --output-dir "$out" --viz-dir "$out"
}

run_strip_off() {
  local out="viz_v53_ablation/strip_off"
  mkdir -p "$out"
  echo ""
  echo "========== ABLATION: strip_boilerplate OFF (--no-strip) =========="
  TQDM_DISABLE=1 "${TRAIN_ARGS[@]}" --no-strip --output-dir "$out" --viz-dir "$out"
}

run_strip_on
run_strip_off

echo ""
echo "=== Strip ablation summary ==="
python3 summarize_strip_ablation.py
