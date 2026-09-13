#!/usr/bin/env bash
set -euo pipefail

# v46a: 10-class model (DOWNFALL removed)
#
# Rationale: DOWNFALL training data (698 samples) is dominated by helper/setup
# functions from PoC repos (ptedit, tests, main) — only 22/698 samples actually
# contain gather instructions (vpgatherdd/vgatherdpd). Model learns DOWNFALL from
# non-distinctive support code, causing precision=0.70 (30% false positives).
#
# v46a removes DOWNFALL entirely to:
#   1. Eliminate noise from mislabeled support functions
#   2. Establish clean 10-class baseline for comparison with v46b
#   3. Verify whether DOWNFALL confusion was degrading other class performance
#
# Data:
#   data/v46a_train.jsonl — 8,732 samples, 10 classes (no DOWNFALL)
#   data/v46a_test.jsonl  — 1,781 samples, 10 classes, FROZEN

pip install -q -r requirements.txt

mkdir -p viz_v46a

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v46a_train.jsonl \
  --test-data  data/v46a_test.jsonl \
  --output-dir viz_v46a \
  --viz-dir    viz_v46a \
  --epochs 100 \
  --patience 10 \
  --hidden-dim 128 \
  --num-layers 3 \
  --jk-mode cat \
  --batch-size 32 \
  --lr 1e-3 \
  --weight-decay 5e-4 \
  --dropout 0.5 \
  --lambda-con 0.5 \
  --temperature 0.07 \
  --hard-neg-weight 2.0

echo ""
echo "=== v46a Results (10-class, no DOWNFALL) ==="
python3 -c "
import json
m = json.load(open('viz_v46a/gine_metrics.json'))
print(f\"Accuracy: {m['test_accuracy']*100:.2f}%  (epoch {m['best_epoch']})\")
print(f\"Train: {m.get('train_count','?')}  Test: {m.get('test_count','?')}\")
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
