#!/bin/bash
# ---------------------------------------------------------------------------
# Step 5b: oracle-grounded leak-cond eval. Samples mit=leak vs mit=safe for the
# Spectector-adjudicable classes (SPECTRE_V1, SPECTRE_V4), realizes each into
# the RL loop's victim template, and adjudicates with the real Spectector .sif.
# Reports leak_rate(mit=leak) - leak_rate(mit=safe) with Wilson intervals.
# CPU-only. Spectector .sif must be on SHARED storage ($HOME/repo); the job
# stages it to the compute node's /disk/scratch (node-local, or apptainer
# exits 255). Pull on the head node first.
#
#   (head)  cd $HOME/speculative_execution && git pull -q origin cluster
#           # if not already: SIF_OUT=$REPO/oracle/apptainer/spectector.sif \
#           #   GHCR_OWNER=<you> bash oracle/apptainer/pull_spectector.sh
#   (then)  sbatch gen/eval_leak_conditioning_oracle.sbatch
#   result: gen/leakcond_eval/leakcond_oracle.json + stdout table
# ---------------------------------------------------------------------------
#SBATCH --job-name=leakcond_oracle
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=06:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out gen/leakcond_eval

export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
# real leak adjudicates in ~8s; cap runaway speculative victims at 30s
export SPECEXEC_SPECTECTOR_TIMEOUT="${SPECEXEC_SPECTECTOR_TIMEOUT:-30}"
if [ ! -r "$SPECEXEC_SPECTECTOR_SIF" ]; then
  echo "FATAL: Spectector .sif not readable: $SPECEXEC_SPECTECTOR_SIF (put it on SHARED storage)." >&2
  echo "  SIF_OUT=$REPO/oracle/apptainer/spectector.sif GHCR_OWNER=<you> bash oracle/apptainer/pull_spectector.sh" >&2
  exit 1
fi
# stage onto the compute node's local disk (shared /disk/scratch is per-node)
_LOCAL="/disk/scratch/$USER/$(basename "$SPECEXEC_SPECTECTOR_SIF")"
if [ "$SPECEXEC_SPECTECTOR_SIF" != "$_LOCAL" ]; then
  mkdir -p "/disk/scratch/$USER"
  if cp -f "$SPECEXEC_SPECTECTOR_SIF" "$_LOCAL" 2>/dev/null; then
    echo "staged sif -> $_LOCAL on $(hostname)"; export SPECEXEC_SPECTECTOR_SIF="$_LOCAL"
  else echo "WARN: could not stage to node-local; using shared path" >&2; fi
fi
echo "using sif: $SPECEXEC_SPECTECTOR_SIF on $(hostname)"

echo "=== 5b oracle leak-cond eval: $(date) ==="
python3 -u gen/eval_leak_conditioning_oracle.py \
  --model gen/generator_leakcond.pt --classes SPECTRE_V1 SPECTRE_V4 --n 60
echo "=== done rc=$? ($(date)) ==="
