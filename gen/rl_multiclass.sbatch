#!/bin/bash
# ---------------------------------------------------------------------------
# Phase 1 (docs/GENERATION_EXTENSION_PLAN.md): run the oracle-RL loop for the
# x86 symbolic-oracle attack classes beyond SPECTRE_V1, each multi-seed, then
# aggregate per-class yield + diversity + adjudicable fraction.
#
#   sbatch gen/rl_multiclass.sbatch
#   # once all tasks finish:
#   sbatch --dependency=afterok:<jobid> --job-name=rl_mc_agg \
#     --output=eval/cluster_out/%x_%j.out \
#     --wrap="cd $HOME/speculative_execution && source .venv/bin/activate && python3 gen/aggregate_rl_multiclass.py"
#
# CLASSES x SEEDS tasks. SPECTRE_V1 is included as the known-good reference.
# V2/V4/RETBLEED are only PARTIALLY adjudicable by Spectector -- the aggregator
# reports the adjudicable fraction so a partial class isn't unfairly scored.
# CPU-only; needs the Apptainer Spectector .sif on SHARED storage (home/repo),
# never /disk/scratch (node-local).
# ---------------------------------------------------------------------------
#SBATCH --job-name=rl_mc
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --array=0-11
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

export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
if [ ! -e "$SPECEXEC_SPECTECTOR_SIF" ]; then
    echo "ERROR: SIF not found at $SPECEXEC_SPECTECTOR_SIF (SHARED storage, not /disk/scratch)." >&2
    echo "  SIF_OUT=$REPO/oracle/apptainer/spectector.sif GHCR_OWNER=<you> bash oracle/apptainer/pull_spectector.sh" >&2
    exit 1
fi

# The generator to sample from (base by default; override to compare a
# pretrained/3-arch checkpoint). Must know the classes below (all 10 are in vocab).
GEN="${GEN:-gen/generator.pt}"
[ -s "$GEN" ] || { echo "ERROR: generator $GEN missing" >&2; exit 1; }

CLASSES=(SPECTRE_V1 SPECTRE_V2 SPECTRE_V4 RETBLEED)
SEEDS=(1 2 3)
NSEEDS=${#SEEDS[@]}
id=$SLURM_ARRAY_TASK_ID
CLS=${CLASSES[$(( id / NSEEDS ))]}
SEED=${SEEDS[$(( id % NSEEDS ))]}
RUNDIR="gen/rl_mc/${CLS}_s${SEED}"
mkdir -p "$RUNDIR"

echo "task=$id class=$CLS seed=$SEED gen=$GEN -> $RUNDIR"
python3 gen/rl_from_oracle.py \
    --gen "$GEN" --arch x86_64 --class "$CLS" --rounds 5 --k 40 --seed "$SEED" \
    --out "$RUNDIR/yield.md" \
    --samples-out "$RUNDIR/samples.jsonl"
echo "done rc=0 -> $RUNDIR"
