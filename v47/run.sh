#!/usr/bin/env bash
set -euo pipefail

# v47: 11-class model with four confused-pair fixes
#
# Changes from v46b (86.xx% on 11 classes):
#
# Fix 1 — Attention readout:
#   Replaces sum pooling. Security-critical nodes (high SPEC_* flags) receive
#   higher attention → 5-instruction exploit gadget not diluted by boilerplate.
#
# Fix 2 — Global graph features (5-dim):
#   nop_fraction, indirect_fraction, ret_fraction, verw_fraction, movntdqa_fraction
#   Computed from raw sequence, no leakage. Directly encodes:
#     INCEPTION NOP sled signal (13% vs 5% in RETBLEED)
#     MDS verw/movntdqa presence
#
# Fix 3 — Architecture embedding (8-dim):
#   Conditions classifier on ISA (x86_64/arm64/arm32/riscv).
#   Fixes MDS↔RETBLEED confusion: MDS is 59% ARM, RETBLEED is 66% x86.
#
# Fix 4 — RSB_CHAIN edge type (9th edge type):
#   Connects call→ret pairs within 15-instruction window (LIFO RSB semantics).
#   INCEPTION (RSB stuffing): many pairs → dense RSB_CHAIN.
#   RETBLEED (RSB underflow): 0-1 pairs → sparse RSB_CHAIN.
#
# Fix 5 — Phase13 BHI synthetic data:
#   400 new BHI records with explicit indirect branch instructions.
#   Previously 6/512 BHI samples had indirect branches; now meaningfully more.
#
# Hard negative contrastive pairs updated:
#   SPECTRE_V1↔BHI, INCEPTION↔BHI, MDS↔RETBLEED, INCEPTION↔RETBLEED (new)
#   + existing pairs from v46b
#
# Data:
#   data/v47_train.jsonl — 11 classes, gather DOWNFALL + indirect BHI
#   data/v47_test.jsonl  — FROZEN (same as v46b/v45)

pip install -q -r requirements.txt

mkdir -p viz_v47

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v47_train.jsonl \
  --test-data  data/v47_test.jsonl \
  --output-dir viz_v47 \
  --viz-dir    viz_v47 \
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
echo "=== v47 Results (11-class, all four confused-pair fixes) ==="
python3 -c "
import json
m = json.load(open('viz_v47/gine_metrics.json'))
print(f\"Accuracy: {m['test_accuracy']*100:.2f}%  (epoch {m['best_epoch']})\")
print(f\"Train: {m.get('train_count','?')}  Test: {m.get('test_count','?')}\")
print(f\"Edge types: {m.get('num_edge_types','?')}  Node dim: {m.get('node_feat_dim','?')}\")
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
