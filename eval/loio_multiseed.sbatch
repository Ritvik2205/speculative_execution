#!/bin/bash
# ---------------------------------------------------------------------------
# Paper-ready, multi-seed leave-one-ISA-out (riscv64 held out) run: 5 RF
# seeds x 3 feature tiers (hand-58, spec-42, cand-impurity), whole-sequence
# and --windowed, then aggregated into per-class recall + benign-FP-rate +
# macro-F1 with 95% CIs (eval/aggregate_loio_multiseed.py -> eval/loio_multiseed.md).
#
# Run AFTER harvesting the riscv64 attack corpus this eval consumes:
#   python3 gen/build_riscv_attack_corpus.py --apply
#     -> spec/data/riscv_cvulns_batch.jsonl
#
# Then:
#   sbatch eval/loio_multiseed.sbatch
#   # once it finishes:
#   python3 eval/aggregate_loio_multiseed.py     # (also run automatically below)
#
# CPU-only -- RandomForestClassifier fits, no GPU needed. Confirm the
# partition actually exists/is CPU-friendly with `sinfo` before submitting;
# Teaching is what every other CPU-only sbatch in this repo uses
# (gen/rl_multiseed.sbatch, gen/build_corpus.sbatch) -- swap if `sinfo` says
# otherwise on your cluster.
# ---------------------------------------------------------------------------
#SBATCH --job-name=loio_ms
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only, no --gres needed
#SBATCH --time=08:00:00          # ~11 min/seed whole-seq on M-series; windowed slower
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
# Same conda env as eval/cluster/train.sbatch (see eval/cluster/README.md);
# the repo .venv on the cluster lacks matplotlib (imported via train_gine_v38).
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out

RISCV_ATTACK="spec/data/riscv_cvulns_batch.jsonl"
RISCV_BENIGN="spec/data/riscv_benign_train.jsonl"
RISCV_CORPUS="spec/data/riscv_loio_corpus.jsonl"
if [ ! -s "$RISCV_ATTACK" ]; then
    echo "ERROR: $RISCV_ATTACK missing or empty -- run first:" >&2
    echo "  python3 gen/build_riscv_attack_corpus.py --apply" >&2
    exit 1
fi
# Combine idiomatic riscv ATTACK + BENIGN so the held-out set has both classes:
# without BENIGN, benign_fp_rate is unmeasurable (the attack corpus alone has no
# negatives). riscv_benign_train.jsonl is 240 real-compiled (idiomatic) BENIGN
# records with the same {label,arch,sequence,group} shape.
if [ -s "$RISCV_BENIGN" ]; then
    cat "$RISCV_ATTACK" "$RISCV_BENIGN" > "$RISCV_CORPUS"
    echo "[loio] combined riscv corpus: $(wc -l < "$RISCV_ATTACK") attack + $(wc -l < "$RISCV_BENIGN") benign -> $RISCV_CORPUS"
else
    echo "WARNING: $RISCV_BENIGN missing -- running attack-only; benign-FP will be n/a" >&2
    cp "$RISCV_ATTACK" "$RISCV_CORPUS"
fi

SEEDS="42 1 7 13 21"

echo "[loio] whole-sequence run -> eval/loio_metrics.json"
python3 eval/leave_one_isa_out.py \
    --idiomatic --riscv-path "$RISCV_CORPUS" \
    --seeds $SEEDS \
    --metrics-out eval/loio_metrics.json \
    --confusion-out eval/loio_confusion.txt

echo "[loio] --windowed run -> eval/loio_metrics_windowed.json"
python3 eval/leave_one_isa_out.py \
    --idiomatic --riscv-path "$RISCV_CORPUS" \
    --seeds $SEEDS --windowed \
    --metrics-out eval/loio_metrics_windowed.json \
    --confusion-out eval/loio_confusion_windowed.txt

echo "[loio] aggregating (whole-sequence) -> eval/loio_multiseed.md"
python3 eval/aggregate_loio_multiseed.py \
    --metrics-in eval/loio_metrics.json \
    --out eval/loio_multiseed.md

echo "[loio] aggregating (windowed) -> eval/loio_multiseed_windowed.md"
python3 eval/aggregate_loio_multiseed.py \
    --metrics-in eval/loio_metrics_windowed.json \
    --out eval/loio_multiseed_windowed.md

echo "[loio] done -> eval/loio_multiseed.md eval/loio_multiseed_windowed.md"
