#!/bin/bash
# Array job that stages ONE file (a tar of the code and data) to node-local scratch, instead of
# rsyncing the repository tree from the shared filesystem. The cluster tips
# (https://computing.help.inf.ed.ac.uk/cluster-tips) ask for exactly this: bundle small files,
# work on scratch, copy results back at the end, delete scratch when finished, use array jobs
# with a throttle. train.sbatch copied ~25,000 small files per job once hw/ was added.
#
#   sbatch --propagate=NONE --array=0-21%4 --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle.tar,TASKS=$HOME/specexec_jobs/tasks.tsv eval/cluster/array_bundle.sbatch
#
# TASKS: one line per array index, tab-separated: TAG <tab> SEED <tab> command.
# The command runs in the unpacked tree with $OUT exported; what it leaves in $OUT is copied to
# $REPO/eval/cluster_out/<TAG>_s<SEED>/.
#SBATCH --job-name=gine
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%A_%a.out
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
: "${BUNDLE:?set BUNDLE to the tar file}" "${TASKS:?set TASKS to the task list}"
IFS=$'\t' read -r TAG SEED CMD < <(sed -n "$((SLURM_ARRAY_TASK_ID + 1))p" "$TASKS")
[ -n "${CMD:-}" ] || { echo "no task on line $((SLURM_ARRAY_TASK_ID + 1)) of $TASKS" >&2; exit 2; }
echo "host=$(hostname) job=${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID} tag=$TAG seed=$SEED"
nvidia-smi --query-gpu=name,memory.total --format=csv || true

SCRATCH="/disk/scratch/${USER}/gine_${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
trap 'rm -rf "$SCRATCH"' EXIT            # scratch is deleted whether the task passes or fails
mkdir -p "$SCRATCH/repo"
cp "$BUNDLE" "$SCRATCH/bundle.tar"
tar -xf "$SCRATCH/bundle.tar" -C "$SCRATCH/repo"
rm "$SCRATCH/bundle.tar"
cd "$SCRATCH/repo"

source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
export OUT="eval/cluster_out/${TAG}_s${SEED}"
mkdir -p "$OUT"
echo "[cmd] $CMD"
rc=0
TQDM_DISABLE=1 bash -c "$CMD" || rc=$?

DEST="$REPO/eval/cluster_out/${TAG}_s${SEED}"
mkdir -p "$DEST"
rsync -a "$OUT/" "$DEST/"
echo "results -> $DEST ; done tag=$TAG seed=$SEED rc=$rc"
exit $rc
