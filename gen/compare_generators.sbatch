#!/bin/bash
# ---------------------------------------------------------------------------
# G2 diagnostic: base vs pretrained generator on the SAME prompt, run 3x, no RL
# (the supervisor's test to isolate whether pretraining hurts generation
# quality independent of the RL loop's yield saturation).
#
#   sbatch gen/compare_generators.sbatch                 # metrics only
#   REALIZE=1 sbatch gen/compare_generators.sbatch       # also count realize-rate
#
# Overridable: A, B, CLASS, ARCH, N, SEEDS, REALIZE. CPU-only, no oracle.
# ---------------------------------------------------------------------------
#SBATCH --job-name=gen_ab
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

A="${A:-gen/generator.pt}"
B="${B:-gen/generator_pretrained.pt}"
CLASS="${CLASS:-SPECTRE_V1}"
ARCH="${ARCH:-x86_64}"
N="${N:-40}"
SEEDS="${SEEDS:-1 2 3}"
for f in "$A" "$B"; do
    [ -s "$f" ] || { echo "ERROR: generator $f missing" >&2; exit 1; }
done

REALIZE_FLAG=""
[ "${REALIZE:-0}" = "1" ] && REALIZE_FLAG="--realize"

echo "host=$(hostname) A=$A B=$B class=$CLASS arch=$ARCH n=$N seeds=$SEEDS realize=${REALIZE:-0}"
python3 gen/compare_generators.py --a "$A" --b "$B" \
    --class "$CLASS" --arch "$ARCH" --n "$N" --seeds $SEEDS $REALIZE_FLAG \
    --out gen/generator_ab.md
echo "done rc=0 -> gen/generator_ab.md"
