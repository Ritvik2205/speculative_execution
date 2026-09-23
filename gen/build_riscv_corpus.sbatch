#!/bin/bash
# ---------------------------------------------------------------------------
# A1: harvest the idiomatic riscv64 ATTACK corpus from the project's portable C
# and run the per-class idiomaticity (bigram) gate. Needs a riscv64 gcc on the
# node (the cluster has it; the Mac head node is not where this runs).
#
#   sbatch gen/build_riscv_corpus.sbatch          # dry-run report + --apply
#
# Writes spec/data/riscv_cvulns_batch.jsonl (consumed by eval/loio_multiseed.sbatch).
# ---------------------------------------------------------------------------
#SBATCH --job-name=riscv_corpus
#SBATCH --partition=Teaching          # confirm with `sinfo`; CPU-only
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err

set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
[ -f .venv/bin/activate ] && source .venv/bin/activate
mkdir -p eval/cluster_out

if ! command -v riscv64-elf-gcc >/dev/null 2>&1 \
   && ! command -v riscv64-linux-gnu-gcc >/dev/null 2>&1 \
   && ! command -v riscv64-unknown-elf-gcc >/dev/null 2>&1; then
    echo "ERROR: no riscv64 gcc on PATH (need riscv64-elf-gcc / riscv64-linux-gnu-gcc)." >&2
    echo "  Load the toolchain module or install it, then resubmit." >&2
    exit 1
fi

echo "host=$(hostname) job=${SLURM_JOB_ID:-?} -- dry run then --apply"
python3 gen/build_riscv_attack_corpus.py
echo "--- applying ---"
python3 gen/build_riscv_attack_corpus.py --apply
echo "done rc=0 -> spec/data/riscv_cvulns_batch.jsonl"
