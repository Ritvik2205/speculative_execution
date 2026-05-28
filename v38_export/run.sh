#!/bin/bash
# V38: GINE with boilerplate stripping + edge-type scaling + positional encoding
# Baseline: v35 at 93.89% accuracy

python -u train_gine_v38.py \
    --data data/combined_v25_real_benign.jsonl \
    --output-dir viz_v38_gine_stripped \
    --viz-dir viz_v38_gine_stripped \
    --hidden-dim 256 \
    --num-layers 4 \
    --jk-mode cat \
    --batch-size 32 \
    --lr 0.001 \
    --weight-decay 0.0001 \
    --dropout 0.3 \
    --lambda-con 0.5 \
    --temperature 0.07 \
    --hard-neg-weight 2.0 \
    --grad-accum 2 \
    --epochs 100 \
    --patience 20
