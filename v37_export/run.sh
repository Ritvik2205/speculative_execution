#!/bin/bash
# V37: Hierarchical GINE (Coarse-to-Fine + DropEdge + Curriculum Learning)
# Baseline: v35 at 93.89% accuracy

python -u train_hierarchical_gine_v37.py \
    --data data/combined_v25_real_benign.jsonl \
    --output-dir viz_v37_hierarchical_gine \
    --viz-dir viz_v37_hierarchical_gine \
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
    --coarse-weight 0.3 \
    --drop-edge-rate 0.15 \
    --epochs 120 \
    --patience 25
