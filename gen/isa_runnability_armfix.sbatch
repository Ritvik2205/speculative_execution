#!/bin/bash
# ---------------------------------------------------------------------------
# Measure the arm64 assemble-rate LIFT from the inline validity-gate fix
# (gen/realize.py _assembles now fires for arm64, commit 18a5d029). CPU-only;
# re-samples generator.pt for x86_64 + arm64 and recomputes per-ISA validity.
#
# Two masks, each to a distinct output so nothing committed is clobbered:
#   off       -> isa_runnability_armfix_off.md   (isolates the realize gate:
#                no sampling mask, so the gate is the ONLY arm filter -- the
#                cleanest before/after vs the committed isa_runnability_off.md)
#   assembler -> isa_runnability_armfix.md        (production default)
# x86_64 must stay byte-identical to its committed numbers (the fix is a no-op
# on x86); arm64 assembles should rise from ~0.77 (off) toward x86's ~1.00.
#
# Needs llvm-mc + unicorn + an aarch64-capable clang in the specexec env (all
# present where the committed isa_runnability*.md were generated).
#
# Submit:  sbatch gen/isa_runnability_armfix.sbatch
# After:   diff the arm64 rows of isa_runnability_armfix_off.md vs the committed
#          isa_runnability_off.md; x86_64 rows should be unchanged.
# ---------------------------------------------------------------------------
#SBATCH --job-name=isa_armfix
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out

N="${N:-40}"
echo "=== isa_runnability arm-fix lift: $(date) n=$N ==="
command -v clang && clang --print-targets 2>/dev/null | grep -i aarch64 \
  || echo "WARN: clang lacks aarch64 backend -> arm gate fails open, no lift expected"

for mask in off assembler; do
  case "$mask" in
    off)       out="gen/isa_runnability_armfix_off.md" ;;
    assembler) out="gen/isa_runnability_armfix.md" ;;
  esac
  echo "--- mask=$mask -> $out ---"
  python3 -u gen/isa_runnability.py \
    --gen gen/generator.pt --archs x86_64 arm64 --n "$N" --seed 0 \
    --arch-purity "$mask" \
    --out "$out" --json-out "${out%.md}.json"
done
echo "=== done: $(date). Compare arm64 rows vs committed isa_runnability_off.md ==="
