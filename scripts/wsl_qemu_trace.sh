#!/usr/bin/env bash
# wsl_qemu_trace.sh — compile attack C sources to ARM64 executables,
# run under QEMU with instruction tracing, collect traces.
#
# Prerequisites (WSL2, Ubuntu):
#   sudo apt install qemu-user-static gcc-aarch64-linux-gnu python3
#
# Output: c_vulns/traces/<stem>_arm64_<cc>_<opt>_<run>.trace
# Then run: python3 scripts/wsl_trace_extract.py
#
# Why traces instead of static .s:
#   Same C file compiled to .s gives N functions.
#   Dynamic trace gives the ACTUAL instruction path for a given input.
#   Different inputs to victim function = different speculative gadget activations
#   = more diverse, distinct sequences for training.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
C_DIR="$ROOT/c_vulns/c_code"
BIN_DIR="$ROOT/c_vulns/binaries"
TRACE_DIR="$ROOT/c_vulns/traces"
mkdir -p "$BIN_DIR" "$TRACE_DIR"

# Check for qemu-aarch64-static
if ! command -v qemu-aarch64-static &>/dev/null; then
    echo "[qemu] qemu-aarch64-static not found. Install with:"
    echo "       sudo apt install qemu-user-static"
    exit 1
fi

ARM_GCC="aarch64-linux-gnu-gcc"
OPT_LEVELS=(O0 O1 O2 O3 Os)

compile_arm64_exe() {
    local src="$1" stem="$2" opt="$3"
    local out="$BIN_DIR/${stem}_arm64_gcc_${opt}"
    # -static: embed libc so qemu-user can run without sysroot
    $ARM_GCC "-$opt" -fno-inline -march=armv8-a -static \
        -o "$out" "$src" 2>/dev/null && \
        echo "  EXE $out" || echo "  SKIP (compile fail) $stem gcc $opt"
}

run_trace() {
    local bin="$1" out="$2"
    # in_asm: dump translated instruction blocks
    # cpu: dump CPU state at each translation block
    # Limit execution to 5 seconds (some PoCs loop forever)
    timeout 5s qemu-aarch64-static -d in_asm -D "$out" "$bin" \
        >/dev/null 2>/dev/null || true  # ignore exit codes (SIGTERM from timeout is ok)
}

echo "[qemu] Compiling ARM64 executables..."
shopt -s nullglob
c_files=("$C_DIR"/*.c)
for src in "${c_files[@]}"; do
    stem="$(basename "$src" .c)"
    echo "=== $stem ==="
    for opt in "${OPT_LEVELS[@]}"; do
        compile_arm64_exe "$src" "$stem" "$opt"
    done
done

echo ""
echo "[qemu] Running QEMU instruction traces..."
bin_files=("$BIN_DIR"/*_arm64_gcc_*)
for bin in "${bin_files[@]}"; do
    bname="$(basename "$bin")"
    trace_out="$TRACE_DIR/${bname}.trace"
    if [[ -f "$trace_out" ]]; then
        echo "  SKIP (exists) $bname"
        continue
    fi
    echo "  TRACE $bname"
    run_trace "$bin" "$trace_out"
done

echo ""
echo "[qemu] Traces in $TRACE_DIR"
echo "[qemu] Next: python3 scripts/wsl_trace_extract.py"
