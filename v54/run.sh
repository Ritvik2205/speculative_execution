#!/usr/bin/env bash
set -euo pipefail

# v54: External data augmentation from verified public datasets
#
# Changes from v53 (92.33%):
#   1. SPECTRE_RSB training set +66% (190 → 316) from Google SafeSide ret2spec demos.
#   2. SPECTRE_V2 training set +17% (355 → 414) from SafeSide BTB demos.
#   3. SPECTRE_V1 training set +7% (182 → 195) from Spectector benchmarks.
#   4. Test set LOCKED — identical to v53 (1942 records) for direct comparison.
#
# External sources (all public, verified):
#   - Google SafeSide (BSD-3-Clause / GPLv2): hardware-confirmed PoCs
#     compiled with Apple Clang at O0/O1/O2/O3 for x86_64 and arm64.
#   - Spectector benchmarks (MIT): formally verified Spectre-V1 assembly
#     from Intel icc, gcc, and Clang across 15 Kocher variants.
#
# Architecture UNCHANGED from v53: GINE v38, 9 edge types, 41 node dims,
#   56 inline features, gated virtual node, JK-Cat readout.

pip install -q -r requirements.txt

mkdir -p viz_v54 data

# Regenerate data if needed
if [ ! -f data/v54_train.jsonl ]; then
  python3 build_dataset.py
fi

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v54_train.jsonl \
  --test-data  data/v54_test.jsonl \
  --output-dir viz_v54 \
  --viz-dir    viz_v54 \
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
  --arch-emb-dim 8

echo ""
echo "=== v54 Results (external data augmentation) ==="
python3 -c "
import json
m = json.load(open('viz_v54/gine_metrics.json'))
print(f'Test accuracy: {m[\"test_accuracy\"]*100:.2f}%  (best epoch {m[\"best_epoch\"]})')
print(f'Best val acc:  {m.get(\"best_val_acc\",0)*100:.2f}%')
print(f'Train: {m.get(\"train_count\",\"?\")}  Val: {m.get(\"val_count\",\"?\")}  Test: {m.get(\"test_count\",\"?\")}')
print()
print(f'{\"class\":40s} {\"prec\":>7s} {\"rec\":>7s} {\"f1\":>7s} {\"sup\":>6s}')
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f'{k:40s} {v[\"precision\"]:7.4f} {v[\"recall\"]:7.4f} {v[\"f1-score\"]:7.4f} {int(v[\"support\"]):6d}')
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and k in ('macro avg', 'weighted avg'):
        print(f'{k:40s} {v[\"precision\"]:7.4f} {v[\"recall\"]:7.4f} {v[\"f1-score\"]:7.4f}')
"
