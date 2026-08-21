#!/usr/bin/env bash
set -euo pipefail

# v56: Phase 4 of SPECDISCOVER_LEARNED_FEATURES_PLAN.md — diff-gated learned
# node features. Same GINE v38 stack, same locked v54 data/split, same
# --use-spec-builder recipe as the "current best" checkpoint (viz_v54_spec,
# 96.14%±1.59 over 5 seeds per project memory). The ONLY change vs that
# recipe: --node-feature-mode diff_gated_both instead of hand — per-node MLM
# embeddings (spec/mlm_large.pt) are soft-gated (floor 0.15, not hard-zeroed)
# by class_diff_features.node_gate_scores before concatenation with the
# existing 40-dim hand node features, so the graph gets an explicit signal
# for "this instruction doesn't match the class's benign representative and
# isn't a near-duplicate of an already-flagged instruction" on top of what
# it already had.
#
# This is a single-seed smoke/sanity run. For the real multi-seed comparison
# against hand / learned / both, use eval/run_v56_multiseed.sh (designed to
# also run on a second machine — see SPECDISCOVER_LEARNED_FEATURES_PLAN.md's
# Phase 4 multi-machine seed-gathering plan).

mkdir -p viz_v56

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data ../v54/data/v54_train.jsonl \
  --test-data  ../v54/data/v54_test.jsonl \
  --output-dir viz_v56 \
  --viz-dir    viz_v56 \
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
  --arch-emb-dim 8 \
  --use-spec-builder \
  --node-feature-mode diff_gated_both \
  --mlm-path ../spec/mlm_large.pt \
  --seed 42

echo ""
echo "=== v56 Results (diff-gated learned node features) ==="
python3 -c "
import json
m = json.load(open('viz_v56/gine_metrics.json'))
print(f'Test accuracy: {m[\"test_accuracy\"]*100:.2f}%  (best epoch {m[\"best_epoch\"]})')
print(f'Best val acc:  {m.get(\"best_val_acc\",0)*100:.2f}%')
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f'{k:40s} rec={v[\"recall\"]:.3f}  prec={v[\"precision\"]:.3f}  f1={v[\"f1-score\"]:.3f}')
"
