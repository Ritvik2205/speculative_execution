#!/usr/bin/env bash
set -euo pipefail

# v42: GINE v38 architecture with academically honest evaluation
# - Sequence-level deduplication (27,328 unique seqs vs 69,395 inflated records)
# - Group-aware train/test split (no source file spans both splits)
# - Zero exact-sequence overlap, zero group overlap
# Run scripts/create_honest_split.py first to generate the split files.

pip install -q -r requirements.txt

mkdir -p viz_v42_honest

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data ../data/v25_honest_train.jsonl \
  --test-data  ../data/v25_honest_test.jsonl \
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
print(f\"v42 honest split: {m['test_accuracy']*100:.2f}% (epoch {m['best_epoch']})\")
print(f\"Split mode: {m.get('split_mode','?')}\")
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
