#!/bin/bash
# Run the adopted baseline (embed, NO handcrafted) on the cluster, 5 seeds,
# keeping the checkpoints. Same config as the W3 grid's w3_embed_off cell.
# Usage (on icf, repo root): bash eval/cluster/submit_baseline.sh
set -euo pipefail
cd "$(dirname "$0")/../.."
for s in 42 1 7 13 21; do
  sbatch --export=ALL,TAG=baseline_nohand,SEED="$s",EXTRA="--no-handcrafted",TRAIN="v54/data/v55h_train.jsonl" \
    eval/cluster/train.sbatch
done
echo "submitted 5 baseline_nohand seeds. Watch: squeue -u \$USER"
echo "checkpoints land in eval/cluster_out/baseline_nohand_s*/ ; pull with rsync."
