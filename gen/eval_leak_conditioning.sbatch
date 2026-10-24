#!/bin/bash
# Structural gate for the leak-cond token (step 5a): does <MIT_*> move output?
# CPU-only, ~1600 short samples. No oracle (that's 5b). Pull on head node first.
#   sbatch gen/eval_leak_conditioning.sbatch
#   result: gen/leakcond_eval/leakcond_eval.json + stdout table
#SBATCH --job-name=leakcond_eval
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=00:30:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out gen/leakcond_eval
echo "=== leak-cond structural gate: $(date) ==="
python3 -u gen/eval_leak_conditioning.py --model gen/generator_leakcond.pt --n 200
echo "=== done rc=$? ($(date)) ==="
