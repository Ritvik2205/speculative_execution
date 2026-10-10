#!/bin/bash
# ---------------------------------------------------------------------------
# SPECTRE_V2 adjudicability under Spectector-Combined (`-v 2`), sharded over
# the generated V2 bodies already in oracle/build/ (see oracle/run_v2_combined.py).
#
#   sbatch oracle/v2_combined.sbatch
#   # once all tasks finish:
#   sbatch --dependency=afterok:<jobid> --job-name=v2c_agg \
#     --output=eval/cluster_out/%x_%j.out \
#     --wrap="cd $HOME/speculative_execution && python3 oracle/run_v2_combined.py summarize"
#
# Smoke first: sbatch --array=0 --export=ALL,LIMIT=3 oracle/v2_combined.sbatch
# CPU-only. The combined .sif must be on SHARED storage, never /disk/scratch:
#   COMBINED=1 GHCR_OWNER=<you> SIF_OUT=$REPO/oracle/apptainer/spectector-combined.sif \
#     bash oracle/apptainer/pull_spectector.sh
# ---------------------------------------------------------------------------
#SBATCH --job-name=v2c
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --array=0-9
#SBATCH --time=04:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=24G
#SBATCH --output=eval/cluster_out/%x_%A_%a.out
#SBATCH --error=eval/cluster_out/%x_%A_%a.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_COMBINED_SIF="${SPECEXEC_SPECTECTOR_COMBINED_SIF:-$REPO/oracle/apptainer/spectector-combined.sif}"
if [ ! -e "$SPECEXEC_SPECTECTOR_COMBINED_SIF" ]; then
    echo "ERROR: SIF not found at $SPECEXEC_SPECTECTOR_COMBINED_SIF (SHARED storage, not /disk/scratch)." >&2
    exit 1
fi

python3 oracle/run_v2_combined.py run \
    --shard "$SLURM_ARRAY_TASK_ID" --nshards "${NSHARDS:-10}" \
    --workers "$SLURM_CPUS_PER_TASK" --limit "${LIMIT:-0}" \
    --window "${WINDOW:-50}" \
    --results-dir "${RESULTS_DIR:-eval/v2_combined}"
