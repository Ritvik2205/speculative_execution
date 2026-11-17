#!/bin/bash
# Ticket 03: one job, does the larger model load, generate and take one LoRA step
# (eval/pairs/lora_smoke.py). Nothing is saved but the log.
#
# 16-bit on a 71 GB H200 slice (default):
#   sbatch --propagate=NONE --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle_lora.tar ~/specexec_jobs/lora_smoke.sbatch
# 4-bit on a 48 GB a6000, only if the first says no:
#   sbatch --propagate=NONE --gres=gpu:nvidia_rtx_a6000:1 --mem=23000 \
#     --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle_lora.tar,EXTRA=--four-bit ~/specexec_jobs/lora_smoke.sbatch
#
# VERIFY=" " skips the sha256 pass (about 11 min) once a job has already checked the files.
# The weights (62 GB, 48 files) are read once from the shared filesystem; nothing is written there.
#SBATCH --job-name=lorasmoke
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:h200_3g.71gb:1
#SBATCH --mem=48000
#SBATCH --time=01:30:00
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%j.out
set -euo pipefail
: "${BUNDLE:?set BUNDLE to the tar file}"
MODEL_DIR="${MODEL_DIR:-$HOME/models/GLM-4.7-Flash}"
MANIFEST="${MANIFEST:-eval/pairs/data/glm_47_flash_manifest.json}"
EXTRA="${EXTRA:-}"
echo "host=$(hostname) job=$SLURM_JOB_ID"
nvidia-smi --query-gpu=name,memory.total,driver_version --format=csv || true
[ -s "$MODEL_DIR/config.json" ] || { echo "no model at $MODEL_DIR" >&2; exit 2; }
SCRATCH="/disk/scratch/${USER}/lorasmoke_${SLURM_JOB_ID}"
mkdir -p "$SCRATCH/repo"
trap 'rm -rf "$SCRATCH"' EXIT
tar -xf "$BUNDLE" -C "$SCRATCH/repo"
cd "$SCRATCH/repo"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate "${CONDA_ENV:-vllm}"
export HF_HUB_OFFLINE=1 TRANSFORMERS_OFFLINE=1 TOKENIZERS_PARALLELISM=false HF_HOME="$SCRATCH/hf"
pip list 2>/dev/null | grep -E '^(transformers|peft|accelerate|bitsandbytes|torch) ' || true
python3 -u -m eval.pairs.lora_smoke --model-dir "$MODEL_DIR" --manifest "$MANIFEST" ${VERIFY:---verify-weights} $EXTRA
