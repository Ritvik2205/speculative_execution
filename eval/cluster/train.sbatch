#!/bin/bash
# ---------------------------------------------------------------------------
# One GINE training run on the Edinburgh Informatics teaching cluster (Slurm).
# Stages data to node-local /disk/scratch, trains on a GPU, copies results back.
#
# Submit with env vars, e.g.:
#   sbatch --export=ALL,TAG=embed_on,SEED=42,EXTRA="" eval/cluster/train.sbatch
#   sbatch --export=ALL,TAG=memedge,SEED=42,EXTRA="--mem-order-edges" eval/cluster/train.sbatch
#
# Adjust PARTITION below after running `sinfo` — the docs list several names
# (Teaching / Standard / Short / LongJobs / Teach-LongJobs); use a real one.
# ---------------------------------------------------------------------------
#SBATCH --job-name=gine
#SBATCH --partition=Teaching          # confirmed real (default*); 2080 Ti fits GINE.
                                       # For the generator pretrain use a big-mem node:
                                       #   --partition=ICF-Free --gres=gpu:a40:1  (or l40s / h200)
#SBATCH --gres=gpu:1                   # one GPU (any type on Teaching)
#SBATCH --mem=16000                    # 16 GB RAM
#SBATCH --time=02:00:00                # 2h wall limit (a run is ~10-20 min on GPU)
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%j.out             # <jobname>_<jobid>.out in submit dir

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"   # where you cloned/rsynced the repo
TAG="${TAG:?set TAG, e.g. embed_on}"
SEED="${SEED:-0}"                              # used by the default (train_gine) path
EXTRA="${EXTRA:-}"                              # extra train_gine_v38 flags
TRAIN="${TRAIN:-v54/data/v55h_train.jsonl}"
TEST="${TEST:-v54/data/v54_test.jsonl}"
# CMD: optional full command to run instead of the default train_gine_v38 line
# (used for W5 leave-one-ISA-out and W6 pretrain). $OUT is exported for it to
# write into; anything it leaves under $OUT is copied back to the repo.
CMD="${CMD:-}"

echo "host=$(hostname) job=$SLURM_JOB_ID tag=$TAG seed=$SEED extra='$EXTRA'"
nvidia-smi --query-gpu=name,memory.total --format=csv || true

# ---- stage code+data to node-local scratch (distributed FS is slow) --------
SCRATCH="/disk/scratch/${USER}/gine_${SLURM_JOB_ID}"
mkdir -p "$SCRATCH"
rsync -a --exclude '.git' "$REPO/" "$SCRATCH/repo/"
cd "$SCRATCH/repo"

# ---- environment -----------------------------------------------------------
# Expects a conda env named 'specexec' created once (see eval/cluster/README.md).
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

OUT="eval/cluster_out/${TAG}_s${SEED}"
mkdir -p "$OUT"
export OUT

if [ -n "$CMD" ]; then
  echo "[cmd] $CMD"
  TQDM_DISABLE=1 bash -c "$CMD"
else
  TQDM_DISABLE=1 python3 -u v54/train_gine_v38.py \
    --train-data "$TRAIN" --test-data "$TEST" \
    --use-spec-builder --seed "$SEED" \
    --output-dir "$OUT" --viz-dir "$OUT" \
    --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
    --batch-size 32 --lr 1e-3 $EXTRA
fi

# ---- copy results back to the (persistent) distributed filesystem ----------
DEST="$REPO/eval/cluster_out/${TAG}_s${SEED}"
mkdir -p "$DEST"
rsync -a "$OUT/" "$DEST/"
echo "results -> $DEST"

# ---- clean node-local scratch (it is not backed up and gets cleared) -------
rm -rf "$SCRATCH"
echo "done tag=$TAG seed=$SEED rc=0"
