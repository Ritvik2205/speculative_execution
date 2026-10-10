#!/bin/bash
# ---------------------------------------------------------------------------
# V2 oracle-labelled bootstrapping on the cluster. Generate SPECTRE_V2 gadgets,
# label each with Spectector-Combined (-v 2) -- which, unlike upstream, can
# adjudicate ~82% of them -- keep the confirmed leaks, and fine-tune on them.
# This is the scalable "reliable training data" source for V2: the loop
# manufactures hardware/oracle-confirmed examples instead of relying on the
# ~0 runnable V2 PoCs in the corpus.
#
# WHY THE CLUSTER: the combined analysis OOMs on heavyweight victims in a
# local 12 GiB VM (see Dockerfile.spectector_combined_pinned); the cluster
# nodes have the headroom, and this is where the V2 adjudicability rate was
# measured.
#
# PREREQ: publish + pull the combined .sif first (one-time):
#   # on a machine with docker:  GHCR_OWNER=<you> COMBINED=1 bash oracle/apptainer/publish_spectector_ghcr.sh
#   # on the cluster:            GHCR_OWNER=<you> COMBINED=1 SIF_OUT=/disk/scratch/$USER/spectector-combined.sif bash oracle/apptainer/pull_spectector.sh
#
# Submit:  sbatch gen/rl_v2_bootstrap.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=rl_v2
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=24000           # the combined analysis is memory-hungry
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
: "${SPECEXEC_SPECTECTOR_COMBINED_SIF:?set it to the pulled combined .sif (see header)}"

ROUNDS="${ROUNDS:-5}"
K="${K:-60}"
GEN="${GEN:-gen/generator_expanded.pt}"   # prefer the hw+riscv-expanded generator
[ -s "$GEN" ] || GEN=gen/generator.pt

echo "=== V2 oracle-labelled bootstrap: $(date) gen=$GEN rounds=$ROUNDS k=$K ==="
python3 -u gen/rl_from_oracle.py \
  --gen "$GEN" --class SPECTRE_V2 --arch x86_64 \
  --combined-oracle --rounds "$ROUNDS" --k "$K" \
  --out gen/rl_v2_bootstrap.md \
  --samples-out gen/rl_v2_bootstrap_samples.jsonl \
  --finetune-lr 1e-4
echo "=== done: $(date). Adjudicated yield + kept leaks in gen/rl_v2_bootstrap.md ==="
