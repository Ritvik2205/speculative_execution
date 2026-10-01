#!/bin/bash
#SBATCH --job-name=relabel_signal
#SBATCH --partition=Teaching
#SBATCH --time=08:00:00
#SBATCH --mem=8000
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
# For every existing RL samples.jsonl, re-run the Spectector oracle on each
# realized_asm gadget and write samples_signal.jsonl with the "signal" field.
# (Spectector via Apptainer; .sif on shared storage — see oracle/apptainer/.)
for d in gen/rl_ms/*/; do
  python3 gen/relabel_signal.py --samples "$d/samples.jsonl" \
      --out "$d/samples_signal.jsonl" || echo "[relabel] skipped $d"
done
