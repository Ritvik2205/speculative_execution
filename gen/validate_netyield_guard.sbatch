#!/bin/bash
# Guard + validate the net-yield relax (follow-up B). Spectector .sif required.
# Policies A/B'd: discard (status quo) / naive (unsound) / guarded (strip-and-
# rerun differential). Controls: positive anchor must LEAK, fenced anchor SAFE.
#   sbatch gen/validate_netyield_guard.sbatch
#   result: gen/leakcond_guard/guard_validation.json + summary
#SBATCH --job-name=guard_val
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=06:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out gen/leakcond_guard
export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
export SPECEXEC_SPECTECTOR_TIMEOUT="${SPECEXEC_SPECTECTOR_TIMEOUT:-30}"
[ -r "$SPECEXEC_SPECTECTOR_SIF" ] || { echo "FATAL: sif not readable $SPECEXEC_SPECTECTOR_SIF" >&2; exit 1; }
_LOCAL="/disk/scratch/$USER/$(basename "$SPECEXEC_SPECTECTOR_SIF")"
if [ "$SPECEXEC_SPECTECTOR_SIF" != "$_LOCAL" ]; then mkdir -p "/disk/scratch/$USER"
  cp -f "$SPECEXEC_SPECTECTOR_SIF" "$_LOCAL" 2>/dev/null && export SPECEXEC_SPECTECTOR_SIF="$_LOCAL" && echo "staged -> $_LOCAL"; fi
echo "using sif: $SPECEXEC_SPECTECTOR_SIF"
echo "=== guard validation: $(date) ==="
python3 -u gen/validate_netyield_guard.py --model gen/generator_leakcond.pt --classes SPECTRE_V4 SPECTRE_V1 --n 60
echo "=== done rc=$? ($(date)) ==="
