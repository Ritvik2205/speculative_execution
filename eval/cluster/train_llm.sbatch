#!/bin/bash
# Ticket 06, language-model arms (eval/pairs/train_llm.py). One job = one arm, seeds in sequence,
# so the 30-50 minute load from the shared filesystem is paid once per job.
#
#   sbatch --propagate=NONE --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle_train.tar,ARGS="--arm lora --seeds 0" \
#     ~/specexec_jobs/train_llm.sbatch
#
# Score files are written straight to $HOME/specexec_jobs/train_llm_<job>/ (small, one per seed),
# so a job that runs out of time keeps the seeds it finished.
#SBATCH --job-name=trainllm
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:h200_3g.71gb:1
#SBATCH --mem=48000
#SBATCH --time=04:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%j.out
set -euo pipefail
: "${BUNDLE:?set BUNDLE to the tar file}" "${ARGS:?set ARGS, e.g. --arm lora --seeds 0}"
MODEL_DIR="${MODEL_DIR:-$HOME/models/GLM-4.7-Flash}"
echo "host=$(hostname) job=$SLURM_JOB_ID args=$ARGS"
nvidia-smi --query-gpu=name,memory.total --format=csv || true
[ -s "$MODEL_DIR/config.json" ] || { echo "no model at $MODEL_DIR" >&2; exit 2; }
SCRATCH="/disk/scratch/${USER}/trainllm_${SLURM_JOB_ID}"
KEEP="$HOME/specexec_jobs/train_llm_${SLURM_JOB_ID}"
mkdir -p "$SCRATCH/repo" "$KEEP"
trap 'rm -rf "$SCRATCH"' EXIT
tar -xf "$BUNDLE" -C "$SCRATCH/repo"
cd "$SCRATCH/repo"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate "${CONDA_ENV:-vllm}"
export HF_HUB_OFFLINE=1 TRANSFORMERS_OFFLINE=1 TOKENIZERS_PARALLELISM=false HF_HOME="$SCRATCH/hf"
python3 -u -m eval.pairs.train_llm --model-dir "$MODEL_DIR" --out-dir "$KEEP" $ARGS
