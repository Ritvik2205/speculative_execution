#!/bin/bash
# ---------------------------------------------------------------------------
# Leakage-controlled generalisation of the LOCKED model's recipe, on current
# code. Group-splits v54/data/v54_train_lenmatch_v4s.jsonl (no base gadget on
# both sides) and retrains the locked configuration -- learned neutral-MLM node
# features, adversarial arch head, 9 neutral inline features, drop-nops -- for
# each seed, then scores the held-out side. Answers the reviewer question the
# paper's random-split headline invites.
#
# Optimisation-level hold-out is deliberately NOT run: the lenmatch data has no
# `opt` field (verified), so there is no O3 to hold out. eval/group_holdout_locked.py
# refuses it rather than fake it; see its docstring.
#
# Submit:  sbatch eval/cluster/group_holdout_locked.sbatch
# Result:  eval/group_holdout_locked/summary.json + the job .out
# ---------------------------------------------------------------------------
#SBATCH --job-name=gine_ghl
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --time=06:00:00          # 5 retrains on the 3.4x-larger lenmatch pool
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

SEEDS="${SEEDS:-42 1 7 13 21}"
echo "=== group-holdout (locked recipe): $(date) seeds=$SEEDS ==="
# shellcheck disable=SC2086
python3 -u eval/group_holdout_locked.py --seeds $SEEDS
echo "=== done: $(date); summary at eval/group_holdout_locked/summary.json ==="
