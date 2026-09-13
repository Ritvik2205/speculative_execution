#!/usr/bin/env bash
# WSL2 compile script: C sources -> .s assembly files at all compiler/opt combos.
# Run from SpecExec root: bash scripts/wsl_compile.sh
#
# Output: c_vulns/asm_code/<name>_<arch>_<compiler>_<opt>.s
# Then run: python3 scripts/wsl_extract.py  ->  data/enrichment/phase20_wsl.jsonl

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
C_DIR="$ROOT/c_vulns/c_code"
ASM_DIR="$ROOT/c_vulns/asm_code"
mkdir -p "$ASM_DIR"

OPT_LEVELS=(O0 O1 O2 O3 Os)

# x86_64 compilers
X86_COMPILERS=(gcc clang)
# ARM64 cross-compilers
ARM_GCC="aarch64-linux-gnu-gcc"

# ── Compile one file to assembly ─────────────────────────────────────────────
compile_x86() {
    local src="$1" stem="$2" cc="$3" opt="$4"
    local out="$ASM_DIR/${stem}_x86_64_${cc}_${opt}.s"
    $cc -S "-$opt" -fno-inline -march=x86-64 -o "$out" "$src" 2>/dev/null && \
        echo "  OK  $out" || echo "  FAIL $cc -$opt $src"
}

compile_arm64() {
    local src="$1" stem="$2" opt="$3"
    local out="$ASM_DIR/${stem}_arm64_gcc_${opt}.s"
    $ARM_GCC -S "-$opt" -fno-inline -march=armv8-a -o "$out" "$src" 2>/dev/null && \
        echo "  OK  $out" || echo "  FAIL arm64 gcc -$opt $src"
}

compile_arm64_clang() {
    local src="$1" stem="$2" opt="$3"
    local out="$ASM_DIR/${stem}_arm64_clang_${opt}.s"
    clang -S "-$opt" -fno-inline --target=aarch64-linux-gnu -o "$out" "$src" 2>/dev/null && \
        echo "  OK  $out" || echo "  FAIL arm64 clang -$opt $src"
}

# ── Process all C files in c_vulns/c_code/ ───────────────────────────────────
echo "[compile] Source dir: $C_DIR"
echo "[compile] Output dir: $ASM_DIR"
echo ""

shopt -s nullglob
c_files=("$C_DIR"/*.c)
echo "[compile] Found ${#c_files[@]} C files"
echo ""

for src in "${c_files[@]}"; do
    stem="$(basename "$src" .c)"
    echo "=== $stem ==="

    for cc in "${X86_COMPILERS[@]}"; do
        for opt in "${OPT_LEVELS[@]}"; do
            compile_x86 "$src" "$stem" "$cc" "$opt"
        done
    done

    # ARM64 (gcc cross-compiler)
    if command -v "$ARM_GCC" &>/dev/null; then
        for opt in "${OPT_LEVELS[@]}"; do
            compile_arm64 "$src" "$stem" "$opt"
        done
    fi

    # ARM64 (clang with aarch64 target)
    for opt in "${OPT_LEVELS[@]}"; do
        compile_arm64_clang "$src" "$stem" "$opt"
    done
done

echo ""
echo "[compile] Done. Assembly files in $ASM_DIR"
echo "[compile] Next: python3 scripts/wsl_extract.py"
