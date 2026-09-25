#!/bin/bash
# ---------------------------------------------------------------------------
# Aggregate every eval/cluster_out/rv_<COND>_s<SEED>/riscv_holdout.json written
# by eval/cluster/riscv_holdout.sbatch into eval/gine_riscv_holdout.md.
# Submit with a dependency on the array job so it runs after all tasks:
#   sbatch --dependency=afterany:<ARRAY_JOB_ID> eval/cluster/aggregate_riscv_holdout.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=gine_rv_agg
#SBATCH --partition=Teaching
#SBATCH --mem=4000
#SBATCH --time=00:15:00
#SBATCH --cpus-per-task=1
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
python3 eval/aggregate_gine_riscv_holdout.py
python3 eval/aggregate_v4_family.py
