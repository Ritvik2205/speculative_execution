#!/bin/bash
# ---------------------------------------------------------------------------
# Re-measure riscv64 generator runnability through the QEMU RV64GC backend
# (gen/precheck.py RiscvQemuRunner), to move `executes` off the 0.02 wall.
#
# WHY this exists: riscv64 executes at 0.02 NOT because of faulting loads but
# because Unicorn decodes only ~RV64I and raises UC_ERR_INSN_INVALID on the
# M/A/C/Zicbom forms clang (RV64GC) emits (176/180 fault_insn, 0 fault_mem;
# gen/RISCV_FUNCTIONAL_ORACLE_SPEC.md). The fix is already in code
# (RiscvQemuRunner, fail-open when qemu/linker absent). This job just needs the
# tooling present + a riscv-capable generator, then re-runs the same 60/class
# protocol that produced the 0.02.
#
# FAIL-LOUD (not fail-open): the whole point is to exercise QEMU, so if the
# tooling or a riscv-capable checkpoint is missing we STOP rather than silently
# re-measuring 0.02 under the Unicorn fallback.
#
# Prereqs (operator, once): install qemu-user + a riscv static linker in the
# specexec env, e.g.
#   conda install -n specexec -c conda-forge qemu   # provides qemu-riscv64(-static)
#   # and a riscv linker: clang+ld.lld (llvm) OR riscv64-linux-gnu-gcc (binutils)
# Pick a checkpoint whose vocab has riscv64 (the default generator.pt does NOT;
# the riscv-corpus one does):
#   sbatch --export=ALL,GEN=gen/generator_expanded.pt gen/isa_runnability_riscv_qemu.sbatch
#
# Result: gen/isa_runnability_riscv.md (new column, backend qemu-riscv64).
# Pass bar: riscv64 executes >= ~0.4 (the extension-illegal wall gone).
# ---------------------------------------------------------------------------
#SBATCH --job-name=isa_riscv_qemu
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out

GEN="${GEN:-gen/generator_expanded.pt}"
N="${N:-60}"
echo "=== riscv64 runnability via QEMU: $(date) gen=$GEN n=$N ==="

# --- guard 1: QEMU backend tooling must be present (else fail-open -> 0.02) ---
python3 - "$GEN" <<'PY'
import sys
sys.path.insert(0, "gen"); sys.path.insert(0, "spec"); sys.path.insert(0, ".")
from precheck import _find_qemu_riscv, _find_riscv_cc
qemu, cc = _find_qemu_riscv(), _find_riscv_cc()
print(f"qemu-riscv64={qemu!r}  riscv-linker={cc!r}")
if not (qemu and cc):
    sys.exit("FATAL: QEMU RV64GC backend unavailable (install qemu-user + a riscv "
             "static linker in specexec); refusing to re-measure 0.02 under Unicorn.")
# --- guard 2: the checkpoint must have riscv64 in its vocab ---
from generator import CondTransformerLM
m = CondTransformerLM.load(sys.argv[1])
archs = list(getattr(m.vocab, "archs", []))
print("checkpoint archs:", archs)
if "riscv64" not in archs:
    sys.exit(f"FATAL: {sys.argv[1]} vocab has no riscv64 (archs={archs}); "
             "use a riscv-corpus-retrained generator.")
PY
rc=$?
[ "$rc" -eq 0 ] || { echo "guard failed (rc=$rc) -- see FATAL above" >&2; exit "$rc"; }

# --- run the same per-class protocol that produced the 0.02 number ---
python3 -u gen/isa_runnability.py --gen "$GEN" --archs riscv64 --n "$N" \
  --arch-purity assembler \
  --out gen/isa_runnability_riscv.md --json-out gen/isa_runnability_riscv.json
echo "=== done rc=$? ($(date)). See gen/isa_runnability_riscv.md (backend qemu-riscv64) ==="
