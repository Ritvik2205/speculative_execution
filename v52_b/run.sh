#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# v52_b: reproducible dataset build (SHA-256 dedup) + group-aware train/val split.
# Optional: SKIP_BUILD=1 to reuse existing data/v52b_*.jsonl

pip install -q -r requirements.txt

mkdir -p data viz_v52b

if [[ "${SKIP_BUILD:-0}" != "1" ]]; then
  python3 build_dataset.py
else
  echo "[run.sh] SKIP_BUILD=1 — using existing data/v52b_train.jsonl and data/v52b_test.jsonl"
fi

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v52b_train.jsonl \
  --test-data  data/v52b_test.jsonl \
  --output-dir viz_v52b \
  --viz-dir    viz_v52b \
  --epochs 100 \
  --patience 12 \
  --hidden-dim 128 \
  --num-layers 3 \
  --jk-mode cat \
  --batch-size 32 \
  --lr 1e-3 \
  --weight-decay 5e-4 \
  --dropout 0.5 \
  --lambda-con 0.5 \
  --temperature 0.07 \
  --hard-neg-weight 2.0 \
  --arch-emb-dim 8 \
  --val-split group \
  --val-fraction 0.10

echo ""
echo "=== v52_b Results (group-aware val; locked test; SHA dedup) ==="
python3 -c "
import json
m = json.load(open('viz_v52b/gine_metrics.json'))
print(f\"Test accuracy: {m['test_accuracy']*100:.2f}%  (best epoch {m['best_epoch']})\")
print(f\"Best val acc:  {m.get('best_val_acc',0)*100:.2f}%\")
print(f\"Val protocol:  {m.get('val_split_protocol', '?')}\")
print(f\"Split mode:    {m.get('split_mode', '?')}\")
print(f\"Train: {m.get('train_count','?')}  Val: {m.get('val_count','?')}  Test: {m.get('test_count','?')}\")
print()
print(f\"{'class':40s} {'prec':>7s} {'rec':>7s} {'f1':>7s} {'sup':>6s}\")
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f} {int(v['support']):6d}\")
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and k in ('macro avg', 'weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f}\")
"
