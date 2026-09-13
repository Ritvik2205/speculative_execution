#!/usr/bin/env bash
set -euo pipefail

# v46b: 11-class model with gather-aware PDG + synthetic DOWNFALL (gather-only) data
#
# Root cause of DOWNFALL F1=0.81, precision=0.70:
#   - 698 train samples but only 22/698 contain gather instructions (vpgatherdd/vgatherdpd)
#   - 676 samples are helper/setup functions (ptedit, tests, main) with no gather
#   - Model learned DOWNFALL from non-distinctive support code → 30% false positives
#
# v46b fixes:
#   1. is_gather spec_flag added to PDG node features (dim 40→41)
#      When the model sees vpgatherdd, node now has is_gather=1 — a unique signal
#      for DOWNFALL that no other class triggers
#   2. phase12 synthetic data: 800 C templates (8 gather variants × 5 index patterns
#      × 5 contexts × 4 opt levels), each file = one gather function
#      → all extracted functions contain vpgatherdd/vgatherdpd
#   3. Dataset rebuilt with phase12 data, group-aware split preserved
#
# Data:
#   data/v46b_train.jsonl — 11 classes, gather-specific DOWNFALL
#   data/v46b_test.jsonl  — FROZEN (same test set as v45, DOWNFALL not augmented)

pip install -q -r requirements.txt

mkdir -p viz_v46b

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v46b_train.jsonl \
  --test-data  data/v46b_test.jsonl \
  --output-dir viz_v46b \
  --viz-dir    viz_v46b \
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
echo "=== v46b Results (11-class, gather-aware DOWNFALL) ==="
python3 -c "
import json
m = json.load(open('viz_v46b/gine_metrics.json'))
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
