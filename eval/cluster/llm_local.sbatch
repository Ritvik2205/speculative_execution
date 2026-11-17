#!/bin/bash
# Open-weight language model on the pair benchmark (eval/pairs/score_llm_local.py).
# One array task = one shard of one protocol. Resumable: a shard's ledger is copied in at the
# start and copied back every few minutes and at the end, so a job cut short loses little.
#
# Smoke test first (one task, 24 generations, checks the weights against the publisher's sha256):
#   sbatch --propagate=NONE --array=0 --time=00:45:00 \
#     --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle_llm.tar,PROTOCOL=single,OF=1,TAG=smoke,EXTRA="--limit 24 --verify-weights --sample 30" \
#     ~/specexec_jobs/llm_local.sbatch
# Full run (after the smoke test has been read):
#   sbatch --propagate=NONE --array=0-7%4 \
#     --export=ALL,BUNDLE=$HOME/specexec_jobs/bundle_llm.tar,PROTOCOL=single,OF=8 ~/specexec_jobs/llm_local.sbatch
#
# The weights are read straight from the shared filesystem: four large files read once, which is
# the same load as copying them to scratch first. Everything written goes to node-local scratch.
# The GPU is asked for by name because the model needs about 19 GB at 16-bit, which is more
# than the 11 GB cards and the 18 GB H200 slices have. --mem follows the cluster tip (node
# memory / GPUs in the node, less 1000 MB): 193000 / 8 - 1000.
#SBATCH --job-name=llmpairs
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:nvidia_rtx_a6000:1
#SBATCH --mem=23000
#SBATCH --time=03:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=%x_%A_%a.out
#SBATCH --signal=B:TERM@120
set -euo pipefail
: "${BUNDLE:?set BUNDLE to the tar file}" "${PROTOCOL:?single or choice}" "${OF:?number of shards}"
MODEL_DIR="${MODEL_DIR:-$HOME/models/GLM-Z1-9B-0414}"
TAG="${TAG:-llm_glmz1_9b}"
REPEATS="${REPEATS:-3}"
BACKEND="${BACKEND:-hf}"
EXTRA="${EXTRA:-}"
# EXCLUDE_PUBLIC=1 adds --exclude-public: short words survive a terminal paste that wraps long lines
[ "${EXCLUDE_PUBLIC:-0}" = 1 ] && EXTRA="--exclude-public $EXTRA"
DEST="${DEST:-$HOME/speculative_execution/eval/cluster_out/$TAG}"
NAME="${PROTOCOL}_${SLURM_ARRAY_TASK_ID}of${OF}.jsonl"
echo "host=$(hostname) job=${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID} protocol=$PROTOCOL shard=${SLURM_ARRAY_TASK_ID}/$OF"
nvidia-smi --query-gpu=name,memory.total,driver_version --format=csv || true
[ -s "$MODEL_DIR/config.json" ] || { echo "no model at $MODEL_DIR" >&2; exit 2; }

SCRATCH="/disk/scratch/${USER}/llmpairs_${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
mkdir -p "$SCRATCH/repo" "$DEST"
save() { [ -s "$SCRATCH/$NAME" ] && cp "$SCRATCH/$NAME" "$DEST/$NAME.tmp" && mv "$DEST/$NAME.tmp" "$DEST/$NAME" || true; }
trap 'save; rm -rf "$SCRATCH"' EXIT          # results out, scratch deleted, pass or fail
tar -xf "$BUNDLE" -C "$SCRATCH/repo"
[ -s "$DEST/$NAME" ] && cp "$DEST/$NAME" "$SCRATCH/$NAME"      # resume
cd "$SCRATCH/repo"

source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate "${CONDA_ENV:-specexec}"
export HF_HUB_OFFLINE=1 TRANSFORMERS_OFFLINE=1 TOKENIZERS_PARALLELISM=false
# vLLM: compute nodes have no nvcc, and FlashInfer's top-k/top-p sampler JIT-compiles its kernel
# (fails in startup's dummy run). Our requests all carry seeds, which vLLM 0.33 already routes to
# its native sampler, so turning FlashInfer's sampler off changes no real answer.
export VLLM_USE_FLASHINFER_SAMPLER=0
( trap 'kill "$nap" 2>/dev/null; exit 0' TERM; while :; do sleep "${SAVE_EVERY:-300}" & nap=$!; wait "$nap"; save; done ) &
SAVER=$!
rc=0
python3 -u -m eval.pairs.score_llm_local --protocol "$PROTOCOL" --repeats "$REPEATS" \
    --shard "$SLURM_ARRAY_TASK_ID" --of "$OF" --model-dir "$MODEL_DIR" \
    --ledger "$SCRATCH/$NAME" --backend "$BACKEND" --run $EXTRA &
PY=$!
# two minutes before the time limit Slurm signals this shell: stop the model, then the EXIT trap
# saves the ledger and clears scratch. Resubmitting the same task carries on from the ledger.
trap 'echo "time limit near: stopping"; kill "$PY" "$SAVER" 2>/dev/null; exit 143' TERM
wait "$PY" || rc=$?
kill "$SAVER" 2>/dev/null || true
echo "ledger -> $DEST/$NAME ; rc=$rc"
exit $rc
