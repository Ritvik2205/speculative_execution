#!/bin/bash
# Final aggregation job — runs after all training (afterok dependency, set by
# run_everything.sh). Converts the real V4 gadgets and writes all result tables.
#SBATCH --job-name=gine_agg
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1                # a GPU makes the ~24 scoring passes quick
#SBATCH --mem=16000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%j.out
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec

# (re)build the real-V4 held-out from the committed Revizor gadgets (idempotent)
python3 oracle/revizor/convert_v4_gadgets.py || echo "[agg] converter skipped/failed (non-fatal)"

# score every checkpoint + write W3_grid.md / W4_ablation.md / real_v4.md
python3 eval/cluster/aggregate_results.py

echo "[agg] result tables in eval/cluster_out/:"
ls -1 eval/cluster_out/*.md 2>/dev/null || true
