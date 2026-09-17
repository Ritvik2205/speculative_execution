#!/bin/bash
# ---------------------------------------------------------------------------
# Compile-half of gen/build_pretrain_corpus_from_c.py (the --from-local step,
# no internet needed -- the C sources must already be staged locally, e.g.
# via --stage-only + rsync from a head node with internet, see that script's
# docstring).
#
# Submit from the repo root (the #SBATCH --output/--error paths below are
# relative to the submission directory):
#   sbatch gen/build_corpus.sbatch
#
# Safe to re-submit after a timeout or preemption: --resume makes the job
# pick up where it left off (skips sources already recorded in the .done
# sidecar, keeps + dedups against records already written) instead of
# restarting the whole compile from scratch.
#
# Adjust --partition below after running `sinfo` -- Teaching is a reasonable
# default for a CPU-only compile job on the Informatics teaching cluster.
# ---------------------------------------------------------------------------
#SBATCH --job-name=build_corpus
#SBATCH --partition=Teaching           # confirm with `sinfo`; CPU-only, no --gres needed
#SBATCH --time=08:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"   # where you cloned/rsynced the repo
cd "$REPO"

mkdir -p eval/cluster_out

echo "host=$(hostname) job=$SLURM_JOB_ID cpus=$SLURM_CPUS_PER_TASK"

python3 gen/build_pretrain_corpus_from_c.py \
    --from-local gen/data/c_sources \
    --out gen/data/pretrain_corpus_fromC.jsonl \
    --min-instr 10 --max-instr 512 \
    --workers "$SLURM_CPUS_PER_TASK" \
    --resume

echo "done rc=0"
