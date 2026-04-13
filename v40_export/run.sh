#!/usr/bin/env bash
set -euo pipefail

# v40: GINE v38 architecture trained on the cleaned dataset
# (cross-class mislabel duplicates removed — see dataset_cleaning_report.md)

pip install -q -r requirements.txt

mkdir -p viz_v40_clean

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --data data/combined_v25_clean.jsonl \
  --output-dir viz_v40_clean \
  --viz-dir viz_v40_clean \
  --epochs 100 \
  --patience 20 \
  --hidden-dim 256 \
  --num-layers 4 \
  --jk-mode cat \
  --batch-size 32 \
  --lr 1e-3 \
  --lambda-con 0.5 \
  --temperature 0.07 \
  --hard-neg-weight 2.0

echo ""
echo "=== Results ==="
python3 -c "
import json
m = json.load(open('viz_v40_clean/gine_metrics.json'))
print(f\"v40 clean: {m['test_accuracy']*100:.2f}% (epoch {m['best_epoch']}, {m['total_params']} params)\")
print()
print(f\"{'class':30s} {'prec':>7s} {'rec':>7s} {'f1':>7s} {'sup':>6s}\")
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f\"{k:30s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f} {int(v['support']):6d}\")
"
