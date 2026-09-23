#!/bin/bash
# ---------------------------------------------------------------------------
# Fine-tune the class-conditioned generator from a pretrained checkpoint.
# Defaults to the LOW-LR re-test of the supervisor's hypothesis (pretraining
# looked null because the 3e-3 fine-tune LR overwrote the pretrained weights).
#
#   sbatch gen/finetune.sbatch                       # 1e-4 from pretrained_angha.pt
#   LR=3e-4 SAVE=gen/generator_pretrained_lr3e4.pt sbatch gen/finetune.sbatch
#
# Overridable via env: INIT, LR, SAVE, EPOCHS.
# Uses the GPU when the node has one (generator.train auto-detects); CPU works
# too (5,532 records is small).
# ---------------------------------------------------------------------------
#SBATCH --job-name=gen_finetune
#SBATCH --partition=Teaching          # confirm with `sinfo -o "%P %G"`
#SBATCH --gres=gpu:1
#SBATCH --time=04:00:00
#SBATCH --mem=32G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

INIT="${INIT:-gen/pretrained_angha.pt}"
LR="${LR:-1e-4}"
SAVE="${SAVE:-gen/generator_pretrained.pt}"
EPOCHS="${EPOCHS:-15}"

if [ ! -s "$INIT" ]; then
    echo "ERROR: pretrained checkpoint $INIT missing -- run gen/pretrain.sbatch first" >&2
    exit 1
fi
echo "host=$(hostname) job=${SLURM_JOB_ID:-?} init=$INIT lr=$LR save=$SAVE epochs=$EPOCHS"
python3 -c "import torch; print('cuda:', torch.cuda.is_available())"

python3 gen/train_generator.py --init-from "$INIT" --lr "$LR" --epochs "$EPOCHS" --save "$SAVE"
echo "done rc=0 -> $SAVE"
