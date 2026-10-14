#!/bin/bash
# ---------------------------------------------------------------------------
# Per-bucket oracle YIELD check for the length-diversity sweep, on the cluster.
# Confirms that longer generated gadgets still LEAK at the same rate, so the
# breadth the length axis buys does not cost yield (closes the paper's
# length-diversity \todo).
#
# WHY THE CLUSTER, NOT A LOCAL MAC: the Spectector image is linux/amd64. On an
# Apple-Silicon (arm64) host Docker runs it under qemu emulation and the x86
# compile + symbolic analysis fail, so EVERY gadget -- including known-leaking
# positive controls -- comes back `unrunnable`. Measured 2026-10-14: 25/30
# unrunnable, 0 leaks locally, vs the cluster's 82%/87% adjudicable for V1/V4.
# The oracle only adjudicates on the x86 cluster nodes.
#
# PREREQ (one-time): publish + pull the UPSTREAM Spectector .sif to SHARED
# storage ($HOME), then export the env var (node-local /disk/scratch is
# per-node and invisible to the compute node, so the copy must live on $HOME):
#   GHCR_OWNER=<you> bash oracle/apptainer/publish_spectector_ghcr.sh
#   GHCR_OWNER=<you> SIF_OUT=$HOME/spectector.sif bash oracle/apptainer/pull_spectector.sh
#   export SPECEXEC_SPECTECTOR_SIF=$HOME/spectector.sif
#
# Submit:  sbatch gen/length_diversity_val.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=ldiv_val
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --time=08:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

export SPECEXEC_CONTAINER_RUNTIME=apptainer
: "${SPECEXEC_SPECTECTOR_SIF:?set it to the upstream Spectector .sif on SHARED storage (see header)}"

# stage the sif onto the compute node's own /disk/scratch (node-local); a
# login-node copy is invisible to the compute node -> apptainer exit 255 ->
# every gadget reads unrunnable in ~2 min (the exact failure the V2 bootstrap
# hit before this staging block was added).
if [ ! -r "$SPECEXEC_SPECTECTOR_SIF" ]; then
  echo "FATAL: SPECEXEC_SPECTECTOR_SIF not readable on $(hostname): $SPECEXEC_SPECTECTOR_SIF" >&2
  exit 1
fi
_LOCAL_SIF="/disk/scratch/$USER/$(basename "$SPECEXEC_SPECTECTOR_SIF")"
if [ "$SPECEXEC_SPECTECTOR_SIF" != "$_LOCAL_SIF" ]; then
  mkdir -p "/disk/scratch/$USER"
  if cp -f "$SPECEXEC_SPECTECTOR_SIF" "$_LOCAL_SIF" 2>/dev/null; then
    echo "staged sif -> $_LOCAL_SIF on $(hostname)"
    export SPECEXEC_SPECTECTOR_SIF="$_LOCAL_SIF"
  else
    echo "WARN: could not stage to node-local scratch; using shared path directly" >&2
  fi
fi
echo "using sif: $SPECEXEC_SPECTECTOR_SIF on $(hostname)"

N="${N:-300}"
CAP="${CAP:-20}"
TEMPS="${TEMPS:-0.8,1.0,1.2}"
BUCKETS="${BUCKETS:-8,16}"

echo "=== length-diversity yield check: $(date) n=$N cap=$CAP ==="
python3 -u gen/length_diversity_sweep.py \
  --class SPECTRE_V1 --class SPECTRE_V4 --arch x86_64 \
  --n "$N" --temps "$TEMPS" --buckets "$BUCKETS" \
  --validate --validate-cap "$CAP" \
  --out gen/length_diversity_val.md \
  --samples-out gen/length_diversity_val_samples.jsonl
echo "=== done: $(date). Per-bucket leak rates in gen/length_diversity_val.md ==="
