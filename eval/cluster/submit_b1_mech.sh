#!/bin/bash
# ---------------------------------------------------------------------------
# In-distribution regression for the mechanism features (plan
# 2026-11-02-mechanism-vs-shape, Task 7 step 1). Same config as the paper's B1
# (rv_embed_specfix_s*: v54_train/v54_test, spec builder, embed, 60 ep,
# patience 10) plus --mech-features, 5 seeds. Needs no hardware labels.
# Compare against B1 95.62 +/- 0.67 with eval/equivalence_tost.py.
#   bash eval/cluster/submit_b1_mech.sh
# results: eval/cluster_out/b1_mech_s<seed>/gine_metrics.json
# ---------------------------------------------------------------------------
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
for s in ${SEEDS:-1 7 13 21 42}; do
  sbatch --export=ALL,TAG=b1_mech,SEED=$s,TRAIN=v54/data/v54_train.jsonl,EXTRA=--mech-features \
    eval/cluster/train.sbatch
done
