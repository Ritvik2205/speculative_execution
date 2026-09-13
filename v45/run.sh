#!/usr/bin/env bash
set -euo pipefail

# v45: GINE v38 — PDG representation fixes + anti-overfitting regularization
#
# PDG fixes (root cause of 87% ceiling — Tier 1 bugs):
#   1. CACHE_TEMPORAL broken: prefetch not in CACHE regex → 0.0% edges (now 0.2%)
#      cache_window 5→20: clflush→probe spans function-scope loops, not 5 instrs
#   2. Node features encode category not identity (lfence=mfence in old version)
#      Added 5 opcode-specific spec_flags: is_lfence, is_mfence, is_verw,
#      is_prefetch, is_nontemp_load (node_feat_dim 35→40)
#      Intel spec: lfence stops transient exec; mfence does NOT (Spectre V1 critical)
#   3. verw (MDS trigger) was OTHER category, no special flag → MDS recall 0.65
#
# Regularization fixes (overfitting: train=97.6%, test=88.7%, gap=9%):
#   4. hidden-dim 256→128  (params: 1.77M→~480K)
#   5. num-layers 4→3
#   6. dropout 0.3→0.5
#   7. weight-decay 1e-4→5e-4
#   8. patience 20→10
#   9. Group contamination fixed: leftover test-group records no longer moved to train
#
# Data:
#   data/v44_honest_train.jsonl — 9,430 samples, 11 classes, strict group-disjoint split
#   data/v44_honest_test.jsonl  — 1,972 samples, all 11 classes, FROZEN

pip install -q -r requirements.txt

mkdir -p viz_v45

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v44_honest_train.jsonl \
  --test-data  data/v44_honest_test.jsonl \
  --output-dir viz_v45 \
  --viz-dir    viz_v45 \
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
echo "=== v45 Results ==="
python3 -c "
import json
m = json.load(open('viz_v45/gine_metrics.json'))
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
