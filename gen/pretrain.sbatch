#!/bin/bash
# ---------------------------------------------------------------------------
# GPU pretrain for the token generator's CondTransformerLM
# (gen/pretrain_encoder.py). generator.train() uses the GPU when one is
# present, so this MUST run on a GPU node -- an interactive login/head node has
# no GPU and would fall back to CPU (intractable on a 100k+ record corpus).
#
# Submit from the repo root:
#   sbatch gen/pretrain.sbatch
#
# Override the corpus / output / epochs via env if needed:
#   CORPUS=gen/data/pretrain_corpus_angha_200k.jsonl OUT=gen/pretrained_angha.pt \
#     EPOCHS=15 sbatch gen/pretrain.sbatch
#
# Confirm the partition actually has GPUs first: `sinfo -o "%P %G"`.
# ---------------------------------------------------------------------------
#SBATCH --job-name=pretrain
#SBATCH --partition=Teaching          # confirm a GPU partition with `sinfo -o "%P %G"`
#SBATCH --gres=gpu:1
#SBATCH --time=08:00:00
#SBATCH --mem=32G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"

if [ -f .venv/bin/activate ]; then
    # shellcheck disable=SC1091
    source .venv/bin/activate
fi

mkdir -p eval/cluster_out

# Default to the 200k AnghaBench subsample (self-contained compilable functions).
# 1.6M is overkill and slow even on GPU; ~200k is a strong pretraining corpus.
CORPUS="${CORPUS:-gen/data/pretrain_corpus_angha_200k.jsonl}"
OUT="${OUT:-gen/pretrained_angha.pt}"
EPOCHS="${EPOCHS:-15}"

echo "host=$(hostname) job=${SLURM_JOB_ID:-?} corpus=$CORPUS out=$OUT epochs=$EPOCHS"
if [ ! -s "$CORPUS" ]; then
    echo "ERROR: corpus $CORPUS missing/empty. Build + subsample first:" >&2
    echo "  sbatch gen/build_corpus.sbatch   # -> gen/data/pretrain_corpus_angha.jsonl" >&2
    echo "  shuf gen/data/pretrain_corpus_angha.jsonl | head -200000 > $CORPUS" >&2
    exit 1
fi

# Fail loudly if we landed on a CPU node -- otherwise the run silently crawls.
python3 -c "import torch; assert torch.cuda.is_available(), 'no GPU on this node -- fix --partition/--gres'; print('cuda:', torch.cuda.get_device_name(0))"

python3 gen/pretrain_encoder.py \
    --corpus "$CORPUS" \
    --epochs "$EPOCHS" \
    --save "$OUT"

echo "done rc=0 -> $OUT"
