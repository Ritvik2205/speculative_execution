#!/bin/bash
# ---------------------------------------------------------------------------
# Length-controlled oracle-in-the-loop yield run (the "loop for yield" with all
# the adjudicability fixes active): the length-conditioned generator
# (gen/generator_lencond.pt) sampled at --target-len med -- the oracle-
# adjudicable range -- with splice-safety (no stranding CF, ret stripped at
# splice) and the realizer forward-label fix already wired into rl_from_oracle.
# Rejection-sampling fine-tuning then keeps the confirmed leaks.
#
# Expectation vs the old cold base: fewer wasted oracle calls (no retq/garbage
# CF), and gadgets land in the adjudicable length band, so confirmed-leak yield
# per oracle call should rise faster than the pre-fix loop.
#
# PREREQ (one-time): upstream Spectector .sif on SHARED storage ($HOME):
#   GHCR_OWNER=<you> bash oracle/apptainer/publish_spectector_ghcr.sh
#   GHCR_OWNER=<you> SIF_OUT=$HOME/spectector.sif bash oracle/apptainer/pull_spectector.sh
#   export SPECEXEC_SPECTECTOR_SIF=$HOME/spectector.sif
#
# Submit:  sbatch gen/rl_lencond.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=rl_lencond
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

# stage the sif to the compute node's own /disk/scratch (node-local; a login-node
# copy is invisible to the compute node -> apptainer exit 255 -> all unrunnable).
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

GEN="${GEN:-gen/generator_lencond.pt}"
TARGET_LEN="${TARGET_LEN:-med}"
ROUNDS="${ROUNDS:-5}"
K="${K:-60}"
FTLR="${FTLR:-1e-4}"          # fine-tune LR; raise (e.g. 3e-4) to bootstrap harder on V4
# EXTRA_ARGS: appended verbatim to the python call, for opt-in levers that need
# no new sbatch knob, e.g. the pre-oracle filter gate (paper T6):
#   EXTRA_ARGS="--filter-head rank/filter_head_{cls}.pkl --filter-threshold 0.5"
EXTRA_ARGS="${EXTRA_ARGS:-}"

echo "=== length-controlled yield loop: $(date) gen=$GEN target_len=$TARGET_LEN rounds=$ROUNDS k=$K extra='$EXTRA_ARGS' ==="
python3 -u gen/rl_from_oracle.py \
  --gen "$GEN" --class SPECTRE_V1 --class SPECTRE_V4 --arch x86_64 \
  --target-len "$TARGET_LEN" --rounds "$ROUNDS" --k "$K" \
  --out gen/rl_lencond.md --samples-out gen/rl_lencond_samples.jsonl \
  --finetune-lr "$FTLR" $EXTRA_ARGS
echo "=== done: $(date). Per-round yield in gen/rl_lencond.md ==="
