#!/bin/bash
# ---------------------------------------------------------------------------
# Multi-seed oracle-RL: {baseline, pretrained} x {3 seeds} = 6 runs, as a Slurm
# array, to put CIs on the pretrained-vs-baseline comparison (a single run's
# yield saturates and can't carry the claim).
#
#   sbatch gen/rl_multiseed.sbatch
#   # then, once all 6 finish:
#   python3 gen/aggregate_rl_multiseed.py     # -> gen/rl_multiseed.md
#
# Needs the Spectector oracle (symbolic, no GPU): Apptainer + the pulled .sif.
# CPU-only is fine -- the per-round fine-tunes are tiny (<40 records).
#
# array 0-2 -> baseline (gen/generator.pt) seeds 1,2,3
# array 3-5 -> pretrained (gen/generator_pretrained.pt) seeds 1,2,3
# ---------------------------------------------------------------------------
#SBATCH --job-name=rl_ms
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --array=0-5
#SBATCH --time=04:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --output=eval/cluster_out/%x_%A_%a.out
#SBATCH --error=eval/cluster_out/%x_%A_%a.err

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

# Spectector oracle via Apptainer (override SIF if elsewhere).
export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-/disk/scratch/$USER/spectector.sif}"
if [ ! -e "$SPECEXEC_SPECTECTOR_SIF" ]; then
    echo "ERROR: SIF not found at $SPECEXEC_SPECTECTOR_SIF -- pull it first:" >&2
    echo "  GHCR_OWNER=<you> bash oracle/apptainer/pull_spectector.sh" >&2
    exit 1
fi

SEEDS=(1 2 3)
id=$SLURM_ARRAY_TASK_ID
if [ "$id" -lt 3 ]; then
    ARM=baseline;   GEN=gen/generator.pt
else
    ARM=pretrained; GEN=gen/generator_pretrained.pt
fi
SEED=${SEEDS[$(( id % 3 ))]}
RUNDIR="gen/rl_ms/${ARM}_s${SEED}"
mkdir -p "$RUNDIR"

if [ ! -s "$GEN" ]; then
    echo "ERROR: generator $GEN missing (fine-tune it first)" >&2
    exit 1
fi

echo "task=$id arm=$ARM seed=$SEED gen=$GEN -> $RUNDIR"
python3 gen/rl_from_oracle.py \
    --gen "$GEN" --arch x86_64 --rounds 5 --k 40 --seed "$SEED" \
    --out "$RUNDIR/yield.md" \
    --samples-out "$RUNDIR/samples.jsonl"

echo "done rc=0 -> $RUNDIR"
