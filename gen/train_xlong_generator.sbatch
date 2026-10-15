#!/bin/bash
# ---------------------------------------------------------------------------
# Retrain the length-conditioned generator with the 4-bucket scheme (adds
# <LEN_xlong> for >32-instr gadgets) -- the paper expansion to probe whether
# the SPECTRE_V4 yield climbs past the `long` band (V4 leaks average ~52
# instrs). This is a full generator training run (GPU), so it must not run on
# the head node.
#
# Wraps gen/train_expanded_generator.sh with LENGTH_COND=1 XLONG=1. Writes a
# SEPARATE checkpoint (gen/generator_lencond_x.pt) so the committed 3-bucket
# gen/generator_lencond.pt is untouched.
#
# After it finishes, run the yield loop at the new bucket:
#   TARGET_LEN=xlong GEN=gen/generator_lencond_x.pt sbatch gen/rl_lencond.sbatch
#
# Submit:  sbatch gen/train_xlong_generator.sbatch
#          SMOKE=1 sbatch gen/train_xlong_generator.sbatch   # 1 epoch sanity
# ---------------------------------------------------------------------------
#SBATCH --job-name=gen_xlong
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=24000
#SBATCH --time=08:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

export PY="${PY:-python3}"
export OUT="${OUT:-gen/generator_lencond_x.pt}"
export EPOCHS="${EPOCHS:-20}"
export LENGTH_COND=1
export XLONG=1
# init from the existing length-conditioned checkpoint so the 3 shared buckets
# transfer and only xlong is learned fresh.
export INIT="${INIT:-gen/generator_lencond.pt}"

echo "=== xlong generator retrain: $(date) out=$OUT init=$INIT epochs=$EPOCHS ==="
bash gen/train_expanded_generator.sh
echo "=== done: $(date). Checkpoint $OUT ==="
