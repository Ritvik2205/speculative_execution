#!/bin/bash
# ---------------------------------------------------------------------------
# G3: RL fine-tuning with BENIGN discrimination (--finetune-with-benign) --
# the post-training set gets both attack (LEAK) and benign (SAFE-verdict, re-
# labelled BENIGN) shapes so the generator learns what NOT to generate.
#
#   sbatch gen/rl_benign.sbatch
#   GEN=gen/generator.pt sbatch gen/rl_benign.sbatch     # baseline generator instead
#
# Needs the Spectector oracle via Apptainer on a SHARED-path .sif (home/repo),
# never /disk/scratch (node-local). CPU-only.
# ---------------------------------------------------------------------------
#SBATCH --job-name=rl_benign
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --time=04:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
if [ ! -e "$SPECEXEC_SPECTECTOR_SIF" ]; then
    echo "ERROR: SIF not found at $SPECEXEC_SPECTECTOR_SIF (must be on SHARED storage," >&2
    echo "  not /disk/scratch which is node-local). Pull it:" >&2
    echo "  SIF_OUT=$REPO/oracle/apptainer/spectector.sif GHCR_OWNER=<you> bash oracle/apptainer/pull_spectector.sh" >&2
    exit 1
fi

GEN="${GEN:-gen/generator_pretrained.pt}"
SEED="${SEED:-1}"
[ -s "$GEN" ] || { echo "ERROR: generator $GEN missing" >&2; exit 1; }

echo "host=$(hostname) gen=$GEN seed=$SEED (finetune-with-benign)"
python3 gen/rl_from_oracle.py --gen "$GEN" --arch x86_64 --rounds 5 --k 40 \
    --seed "$SEED" --finetune-with-benign \
    --samples-out gen/rl_samples_benign.jsonl --out gen/rl_yield_benign.md
python3 gen/analyze_rl_diversity.py \
    --samples gen/rl_samples_benign.jsonl --out gen/rl_diversity_benign.md
echo "done rc=0 -> gen/rl_yield_benign.md gen/rl_diversity_benign.md"
