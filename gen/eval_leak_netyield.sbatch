#!/bin/bash
# ---------------------------------------------------------------------------
# Step 6 net-yield A/B: does leak-conditioning find MORE real attacks per
# sample than the neutral baseline? Samples mit=leak / unknown / safe for the
# Spectector-adjudicable classes, realizes + adjudicates each, and reports
# net_yield/K (confirmed LEAK per SAMPLE, folding in the realization cost of
# fence-sparse mit=leak gadgets). unknown = neutral baseline, same weights.
#
# Same SIF plumbing as gen/eval_leak_conditioning_oracle.sbatch. Pull on head
# node first. CPU-only.
#   sbatch gen/eval_leak_netyield.sbatch
#   result: gen/leakcond_netyield/leakcond_oracle.json + stdout table
# ---------------------------------------------------------------------------
#SBATCH --job-name=leakcond_netyield
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=08:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out gen/leakcond_netyield

export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
export SPECEXEC_SPECTECTOR_TIMEOUT="${SPECEXEC_SPECTECTOR_TIMEOUT:-30}"
if [ ! -r "$SPECEXEC_SPECTECTOR_SIF" ]; then
  echo "FATAL: Spectector .sif not readable: $SPECEXEC_SPECTECTOR_SIF" >&2; exit 1; fi
_LOCAL="/disk/scratch/$USER/$(basename "$SPECEXEC_SPECTECTOR_SIF")"
if [ "$SPECEXEC_SPECTECTOR_SIF" != "$_LOCAL" ]; then
  mkdir -p "/disk/scratch/$USER"
  if cp -f "$SPECEXEC_SPECTECTOR_SIF" "$_LOCAL" 2>/dev/null; then
    echo "staged sif -> $_LOCAL on $(hostname)"; export SPECEXEC_SPECTECTOR_SIF="$_LOCAL"
  else echo "WARN: could not stage node-local; using shared path" >&2; fi
fi
echo "using sif: $SPECEXEC_SPECTECTOR_SIF on $(hostname)"

echo "=== step-6 net-yield A/B (leak vs unknown vs safe): $(date) ==="
python3 -u gen/eval_leak_conditioning_oracle.py \
  --model gen/generator_leakcond.pt \
  --classes SPECTRE_V4 SPECTRE_V1 \
  --mits leak unknown safe \
  --n 80 \
  --out-dir gen/leakcond_netyield
echo "=== done rc=$? ($(date)) ==="
