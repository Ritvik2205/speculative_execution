#!/usr/bin/env bash
set -euo pipefail

# v47a: 10-class (no DOWNFALL) + inline handcrafted features restored
#
# Root causes fixed:
#   1. MISSING HANDCRAFTED FEATURES: v44+ extraction pipeline never ran
#      extract_features_enhanced.py → `features` dict was empty for all records.
#      The dual-path feature_encoder was receiving zero padding (dead branch).
#      Fix: inline_features.py computes 55 fixed discriminative features from
#      raw assembly at dataset load time (0.13ms/record, no label leakage).
#
#   2. DOWNFALL removed: test set DOWNFALL (191 samples, all real PoC) doesn't
#      generalise from synthetic gather gadgets. Remove until real data available.
#
# inline_features.py (55 features, no n-grams):
#   - Key opcode fractions (nop, ret, blr, cmp, clflush, rdtsc, lfence, verw, ...)
#   - Structural patterns (max NOP run, call/ret pairs, indexed loads, clflush→load)
#   - Binary presence flags (has_indirect, has_verw, has_lfence, ...)
#   - Ratio features (ret/call ratio, nop/ret ratio, indirect/cond branch ratio)

pip install -q -r requirements.txt

mkdir -p viz_v47a

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v47a_train.jsonl \
  --test-data  data/v47a_test.jsonl \
  --output-dir viz_v47a \
  --viz-dir    viz_v47a \
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
  --hard-neg-weight 2.0 \
  --arch-emb-dim 8

echo ""
echo "=== v47a Results (10-class, no DOWNFALL) ==="
python3 -c "
import json
m = json.load(open('viz_v47a/gine_metrics.json'))
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
print()
print('Edge scales:')
for k, v in sorted(m['final_edge_type_scales'].items()):
    print(f'  {k:<25} {v:.4f}')
"
