#!/bin/bash
# ---------------------------------------------------------------------------
# GINE held-out-ISA test: train on x86_64+arm64 ONLY (v54/data/v54_train.jsonl
# — zero riscv64 records, verified), then score zero-shot on the real-compiled
# riscv64 corpus (spec/data/riscv_loio_corpus.jsonl) with
# eval/gine_riscv_holdout_eval.py.
#
# Slurm job ARRAY: one task per (condition, seed). Index i maps to
#   COND = CONDS[i / nSEEDS],  SEED = SEEDS[i % nSEEDS]
# Default grid = 6 length-matched conditions x 5 seeds = tasks 0-29:
#   sbatch eval/cluster/riscv_holdout.sbatch
# then aggregate once every task has finished (any exit status):
#   sbatch --dependency=afterany:<ARRAY_JOB_ID> eval/cluster/aggregate_riscv_holdout.sbatch
# or both in one line:
#   sbatch --dependency=afterany:$(sbatch --parsable eval/cluster/riscv_holdout.sbatch) \
#          eval/cluster/aggregate_riscv_holdout.sbatch
#
# Subsets: override CONDS/SEEDS and --array to match (n_conds*n_seeds - 1):
#   sbatch --array=0-19 --export=ALL,CONDS="embed drop_nohand canon_nohand canon_both_nohand" \
#          eval/cluster/riscv_holdout.sbatch
# Re-run the grid without overwriting earlier results (new dirs rv_<COND>_specfix_s<SEED>):
#   sbatch --export=ALL,TAG_SUFFIX=_specfix eval/cluster/riscv_holdout.sbatch
# Single run (no array): COND/SEED set explicitly win over the array mapping:
#   sbatch --array=0 --export=ALL,COND=drop,SEED=42 eval/cluster/riscv_holdout.sbatch
#
# Conditions (all on the B1 recipe, eval/run_full_tost.sh "hand" mode):
#   embed              B1 as-is (arch embedding on; riscv row never trained)
#   drop               --arch-mode drop          : no arch signal at all
#   adv                --arch-mode adversarial   : DANN, penalise arch-predictable features
#   drop_nohand        --arch-mode drop --no-handcrafted : also remove the 58 inline
#                      features (43/58 are identically 0 on riscv — x86/arm literals)
#   canon_nohand       learned node features from the ISA-neutral canonical MLM
#                      (spec/mlm_canonical.pt, riscv OOV 7.9% vs 92.7% for the
#                      mlm_large every earlier learned GINE used), no inline hand
#                      features, no arch signal — the generalisation candidate
#   canon_both_nohand  same + the spec-derived PDG node vector alongside
# ---------------------------------------------------------------------------
#SBATCH --job-name=gine_rv
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --time=04:00:00                # len_* conditions train on 3.4x more records
#SBATCH --cpus-per-task=4
#SBATCH --array=0-29
#SBATCH --output=eval/cluster_out/%x_%A_%a.out
#SBATCH --error=eval/cluster_out/%x_%A_%a.err

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
CONDS="${CONDS:-len_embed len_neutral len_neutral_adv len_learned len_learned_adv len_both}"
SEEDS="${SEEDS:-42 1 7 13 21}"
read -r -a _C <<< "$CONDS"
read -r -a _S <<< "$SEEDS"
IDX="${SLURM_ARRAY_TASK_ID:-0}"
if (( IDX >= ${#_C[@]} * ${#_S[@]} )); then
    echo "array index $IDX out of range for ${#_C[@]} conds x ${#_S[@]} seeds — nothing to do"
    exit 0
fi
COND="${COND:-${_C[$(( IDX / ${#_S[@]} ))]}}"
SEED="${SEED:-${_S[$(( IDX % ${#_S[@]} ))]}}"

case "$COND" in
    embed)             EXTRA="" ;;
    drop)              EXTRA="--arch-mode drop" ;;
    adv)               EXTRA="--arch-mode adversarial" ;;
    drop_nohand)       EXTRA="--arch-mode drop --no-handcrafted" ;;
    canon_nohand)      EXTRA="--arch-mode drop --no-handcrafted --node-feature-mode learned --mlm-path spec/mlm_canonical.pt" ;;
    canon_both_nohand) EXTRA="--arch-mode drop --no-handcrafted --node-feature-mode both --mlm-path spec/mlm_canonical.pt" ;;
    # --- length-matched training data (v54/augment_size_multiscale.py with the
    #     held-out-clean mbedTLS filler): benign and attack lengths overlap, and
    #     x86 BENIGN exists. NEUTRAL = only the 9 inline features that fire on
    #     every ISA; NOPs (an x86/arm augmentation artifact) removed.
    len_embed)         TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="" ;;
    len_neutral)       TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="--arch-mode drop --handcrafted-subset neutral --drop-nops" ;;
    len_neutral_adv)   TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="--arch-mode adversarial --handcrafted-subset neutral --drop-nops" ;;
    len_learned)       TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="--arch-mode drop --handcrafted-subset neutral --drop-nops --node-feature-mode learned --mlm-path spec/mlm_neutral.pt --node-drop 0.1" ;;
    len_learned_adv)   TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="--arch-mode adversarial --handcrafted-subset neutral --drop-nops --node-feature-mode learned --mlm-path spec/mlm_neutral.pt --node-drop 0.1" ;;
    len_both)          TRAIN_C=v54/data/v54_train_lenmatch.jsonl; EXTRA="--arch-mode drop --handcrafted-subset neutral --drop-nops --node-feature-mode both --mlm-path spec/mlm_neutral.pt --node-drop 0.1" ;;
    *) echo "unknown condition $COND" >&2; exit 1 ;;
esac
TRAIN="${TRAIN:-${TRAIN_C:-v54/data/v54_train.jsonl}}"
TEST="${TEST:-v54/data/v54_test.jsonl}"
RISCV="${RISCV:-spec/data/riscv_loio_corpus.jsonl}"
TAG="rv_${COND}${TAG_SUFFIX:-}"   # e.g. TAG_SUFFIX=_specfix keeps earlier runs' results

echo "host=$(hostname) job=${SLURM_JOB_ID:-?} cond=$COND seed=$SEED extra='$EXTRA' train=$TRAIN"
nvidia-smi --query-gpu=name,memory.total --format=csv || true

# Run in place from the existing checkout — no copy to node-local scratch
# (copying the whole repo per task stalled for >1h with 20 tasks in flight).
# Each task writes only to its own eval/cluster_out/rv_<COND>_s<SEED>/.
cd "$REPO"

source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

# Guard: the whole experiment is void if the train file has any riscv64.
python3 - "$TRAIN" <<'EOF'
import json, sys
n = sum(1 for l in open(sys.argv[1]) if l.strip() and json.loads(l).get("arch") == "riscv64")
if n:
    sys.exit(f"ABORT: {sys.argv[1]} contains {n} riscv64 records — not a held-out-ISA run")
print(f"[guard] {sys.argv[1]}: 0 riscv64 records")
EOF

OUT="eval/cluster_out/${TAG}_s${SEED}"
mkdir -p "$OUT"

TQDM_DISABLE=1 python3 -u v54/train_gine_v38.py \
    --train-data "$TRAIN" --test-data "$TEST" \
    --use-spec-builder --seed "$SEED" \
    --output-dir "$OUT" --viz-dir "$OUT" \
    --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
    --batch-size 32 --lr 1e-3 $EXTRA

TQDM_DISABLE=1 python3 -u eval/gine_riscv_holdout_eval.py \
    --ckpt "$OUT/gine_best.pt" --records "$RISCV" --window-len auto \
    --out "$OUT/riscv_holdout.json"

echo "results -> $REPO/$OUT"
echo "done cond=$COND seed=$SEED rc=0"
