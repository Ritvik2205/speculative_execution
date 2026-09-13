#!/usr/bin/env bash
# Canonical NEW BASELINE recipe (adopted 2026-09-10): embed arch-mode, NO
# handcrafted features, spec-builder graphs, on the de-shortcut train set.
# This config beat the old hand-fused model on every axis at 5 seeds
# (see eval/robustness_baseline_nohand.md) and closes the arm64 gap — the
# hand-feature branch was an x86-biased crutch. Use this for all new training.
set -euo pipefail
cd "$(dirname "$0")/../.."
SEED="${1:-42}"
TQDM_DISABLE=1 python3 -u v54/train_gine_v38.py \
  --train-data v54/data/v55h_train.jsonl \
  --test-data  v54/data/v54_test.jsonl \
  --use-spec-builder \
  --no-handcrafted \
  --seed "$SEED" \
  --output-dir eval/baseline_nohand/s"$SEED" \
  --viz-dir    eval/baseline_nohand/s"$SEED" \
  --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
  --batch-size 32 --lr 1e-3
# NOTE: --arch-mode defaults to embed (DANN adversarial backfired — do not use it).
