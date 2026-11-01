#!/bin/bash
#SBATCH --job-name=eval_filters
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
cd "$HOME/speculative_execution"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
echo "=== V4 filter eval (incl pairwise row): $(date) ==="
python3 -u rank/eval_v4_filter.py
echo "=== V2 filter eval: $(date) ==="
python3 -u rank/eval_v2_filter.py || echo "(V2 eval skipped/placeholder)"
echo "=== done rc=$? ==="	
