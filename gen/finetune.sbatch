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
# RISCV=1 folds the idiomatic riscv64 gadgets into the training pool so the
# generator can emit riscv64 (adds --extra-train). Default off = x86/arm only.
EXTRA=""
if [ "${RISCV:-0}" = "1" ]; then
    EXTRA="--extra-train spec/data/riscv_cvulns_batch.jsonl spec/data/riscv_benign_train.jsonl"
    for f in spec/data/riscv_cvulns_batch.jsonl spec/data/riscv_benign_train.jsonl; do
        [ -s "$f" ] || { echo "ERROR: RISCV=1 but $f missing -- run gen/build_riscv_corpus.sbatch first" >&2; exit 1; }
    done
fi

if [ ! -s "$INIT" ]; then
    echo "ERROR: pretrained checkpoint $INIT missing -- run gen/pretrain.sbatch first" >&2
    exit 1
fi
echo "host=$(hostname) job=${SLURM_JOB_ID:-?} init=$INIT lr=$LR save=$SAVE epochs=$EPOCHS riscv=${RISCV:-0}"
python3 -c "import torch; print('cuda:', torch.cuda.is_available())"

python3 gen/train_generator.py --init-from "$INIT" --lr "$LR" --epochs "$EPOCHS" --save "$SAVE" $EXTRA
echo "done rc=0 -> $SAVE"
