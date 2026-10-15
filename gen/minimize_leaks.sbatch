#!/bin/bash
# ---------------------------------------------------------------------------
# Generated-leak minimality (ddmin + Spectector) as a batch job -- paper T7,
# the generated half of tab:min. Delta-debugs each confirmed leak in
# gen/rl_lencond_samples.jsonl down to a 1-minimal body, Spectector deciding
# each candidate. This is oracle-bound (hundreds of Spectector calls per
# gadget), so it is memory/CPU-heavy and must NOT run on the head node.
#
# No GPU: the generator is never loaded; only build_gen_body + the Spectector
# container run. Give it CPUs and wall time instead.
#
# PREREQ (one-time): upstream Spectector .sif on SHARED storage ($HOME):
#   GHCR_OWNER=<you> bash oracle/apptainer/publish_spectector_ghcr.sh
#   GHCR_OWNER=<you> SIF_OUT=$HOME/spectector.sif bash oracle/apptainer/pull_spectector.sh
#   export SPECEXEC_SPECTECTOR_SIF=$HOME/spectector.sif
#
# Submit:  sbatch gen/minimize_leaks.sbatch
#          PER_CLASS=20 sbatch gen/minimize_leaks.sbatch   # fewer gadgets, faster
# ---------------------------------------------------------------------------
#SBATCH --job-name=min_leaks
#SBATCH --partition=Teaching
#SBATCH --mem=16000
#SBATCH --time=12:00:00
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

# stage the sif to the compute node's own /disk/scratch (node-local; a login-
# node copy is invisible to the compute node -> apptainer exit 255 -> every
# candidate reads unrunnable). Same block as rl_lencond.sbatch.
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

SAMPLES="${SAMPLES:-gen/rl_lencond_samples.jsonl}"
PER_CLASS="${PER_CLASS:-40}"

echo "=== generated-leak minimality: $(date) samples=$SAMPLES per_class=$PER_CLASS ==="
python3 -u gen/minimize_leaks.py \
  --samples "$SAMPLES" \
  --class SPECTRE_V1 --class SPECTRE_V4 --per-class "$PER_CLASS" \
  --out _min/generated_min.jsonl --md _min/generated_min.md
echo "=== done: $(date). Table in _min/generated_min.md ==="
