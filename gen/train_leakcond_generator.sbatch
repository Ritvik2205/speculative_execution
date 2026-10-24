#!/bin/bash
# ---------------------------------------------------------------------------
# Train the leak-conditioned generator (spec A+B). Stages the 821-record HW
# fence-variant set from origin/hw-label-variants, assembles the leak-cond
# corpus (gen/build_leakcond_corpus.py), and trains with --leak-cond so the
# model can be sampled with mit=leak (unmitigated) vs mit=safe (mitigated).
#
# Compute node has NO network, so the remote ref must already be fetched on the
# head node:
#   (head)  cd $HOME/speculative_execution && git pull -q origin cluster \
#           && git fetch -q origin hw-label-variants
#   (then)  sbatch gen/train_leakcond_generator.sbatch
#
# Output: gen/generator_leakcond.pt  (+ train_generator's class hit-rate check)
#         gen/data/leakcond_corpus_{train,heldout}.jsonl
#
# First run trains FROM SCRATCH (clean, no vocab-mapping surprises from the
# pretrained checkpoint's smaller vocab). init-from is a later refinement.
# ---------------------------------------------------------------------------
#SBATCH --job-name=gen_leakcond
#SBATCH --partition=Teaching
#SBATCH --mem=16000
#SBATCH --time=03:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out gen/data

# Stage the 821-record variant set (in-tree cluster copy is a stale 806).
STAGED="gen/data/_variants_821.jsonl"
if ! git show origin/hw-label-variants:eval/data/revizor_hwlabel_variants.jsonl > "$STAGED" 2>/dev/null; then
  echo "FATAL: origin/hw-label-variants not fetched. On the head node run:" >&2
  echo "  git fetch origin hw-label-variants" >&2
  exit 1
fi
echo "staged variants: $(grep -c . "$STAGED")"

echo "=== assemble leak-cond corpus: $(date) ==="
# HW-only corpus: train_generator loads v54 as its base and appends this via
# --extra-train, so including v54 here would double-load it. train_generator
# stamps the base v54 rows' mit (BENIGN->safe, attack->unknown) under --leak-cond.
python3 -u gen/build_leakcond_corpus.py \
  --variants "$STAGED" \
  --pool gen/data/hw_generator_pool.jsonl \
  --no-v54 \
  --out-train gen/data/leakcond_corpus_train.jsonl \
  --out-test  gen/data/leakcond_corpus_heldout.jsonl || exit 1

echo "=== train leak-cond generator: $(date) ==="
# train_generator reads its corpus from --extra-train appended to its base; here
# we pass the assembled corpus as the training set via --extra-train and rely on
# the per-record `mit` field. --leak-cond activates the <MIT_*> tokens.
python3 -u gen/train_generator.py \
  --leak-cond --length-cond \
  --extra-train gen/data/leakcond_corpus_train.jsonl \
  --epochs 20 \
  --save gen/generator_leakcond.pt
rc=$?
echo "=== done rc=$rc ($(date)) ==="
exit $rc
