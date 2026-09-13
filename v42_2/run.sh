#!/usr/bin/env bash
set -euo pipefail

# v42: GINE v38 architecture with academically honest evaluation
#
# Fixes vs v40 (96.71% contaminated):
#   1. Sequence-level deduplication: 69,395 → 27,328 unique sequences
#   2. Group-aware split: no source file appears in both train and test
#   3. Zero exact-sequence overlap, zero group overlap between splits
#
# Data:
#   data/v42_train_enriched.jsonl — 295,112 enriched training sequences (base + phases 1-5)
#   data/v25_honest_test.jsonl    — 6,042   unique test sequences (36 held-out source groups, FROZEN)

pip install -q -r requirements.txt

mkdir -p viz_v42_honest

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v42_train_enriched.jsonl \
  --test-data  data/v25_honest_test.jsonl \
  --output-dir viz_v42_honest \
  --viz-dir    viz_v42_honest \
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
echo "=== v42 Honest Results ==="
python3 -c "
import json
m = json.load(open('viz_v42_honest/gine_metrics.json'))
print(f\"Accuracy: {m['test_accuracy']*100:.2f}%  (epoch {m['best_epoch']})\")
print(f\"Split:    {m.get('split_mode','?')}\")
print(f\"Train: {m.get('train_count','?')}  Test: {m.get('test_count','?')}\")
print()
print(f\"{'class':35s} {'prec':>7s} {'rec':>7s} {'f1':>7s} {'sup':>6s}\")
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f\"{k:35s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f} {int(v['support']):6d}\")
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and k in ('macro avg', 'weighted avg'):
        print(f\"{k:35s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f}\")
"
