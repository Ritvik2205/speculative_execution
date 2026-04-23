#!/usr/bin/env bash
set -euo pipefail

# v44: GINE v38 with function-level sequences, new attack classes, kernel gadgets
#
# Dataset fixes vs v43 (59% accuracy):
#   1. Function-level sequences: whole functions instead of 20-instruction windows
#   2. New attack classes: SPECTRE_RSB (CVE-2018-15572), DOWNFALL (CVE-2022-40982)
#   3. Phase 8: Linux kernel CVE gadget functions (real-world diversity)
#   4. Augmentation capped at 1 attempt/transform (was 5, prevented generalization)
#   5. MAX_NODES 64->256, MAX_EDGES 512->2048 (supports full function graphs)
#   6. 11 classes: BENIGN + 8 original + SPECTRE_RSB + DOWNFALL
#
# Data:
#   data/v44_train_enriched.jsonl — enriched training (base + phases 1,2,4,5,7,8)
#   data/v44_honest_test.jsonl    — held-out test (20% of source groups, FROZEN)

pip install -q -r requirements.txt

mkdir -p viz_v44

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v44_train_enriched.jsonl \
  --test-data  data/v44_honest_test.jsonl \
  --output-dir viz_v44 \
  --viz-dir    viz_v44 \
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
echo "=== v44 Results ==="
python3 -c "
import json
m = json.load(open('viz_v44/gine_metrics.json'))
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
