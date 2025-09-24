#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SEEDS_DIR="$PROJECT_ROOT/data/seeds/c"
OUT_DIR="$PROJECT_ROOT/data/asm"

mkdir -p "$OUT_DIR/vuln" "$OUT_DIR/benign"

# Discover available compilers
compilers=()
if command -v clang >/dev/null 2>&1; then compilers+=(clang); fi
if command -v gcc >/dev/null 2>&1; then compilers+=(gcc); fi
if [ ${#compilers[@]} -eq 0 ]; then
  echo "No C compilers found (clang/gcc). Install Xcode Command Line Tools or GCC." >&2
  exit 1
fi

# Detect host architecture for macOS portability
ARCH="$(uname -m)"  # e.g., arm64 or x86_64
ARCH_FLAG=""
case "$ARCH" in
  arm64) ARCH_FLAG="-arch arm64" ;;
  x86_64) ARCH_FLAG="-arch x86_64" ;;
  *) ARCH_FLAG="" ;;
esac

opt_levels=(0 1 2 3)

build_one() {
  local label="$1"   # vuln or benign
  local src="$2"
  local base
  base="$(basename "$src" .c)"
  for cc in "${compilers[@]}"; do
    for o in "${opt_levels[@]}"; do
      local out="$OUT_DIR/$label/${base}_${cc}_O${o}_${ARCH}.s"
      echo "[build] $cc -O$o $src -> $out"
      "$cc" $ARCH_FLAG -std=c11 -O"$o" -fno-plt -fno-pic -S -o "$out" "$src" || {
        echo "Failed: $cc -O$o $src" >&2
        return 1
      }
    done
  done
}

shopt -s nullglob
for src in "$SEEDS_DIR"/vuln/*.c; do build_one vuln "$src"; done
for src in "$SEEDS_DIR"/benign/*.c; do build_one benign "$src"; done
shopt -u nullglob

echo "Assembly written to: $OUT_DIR"



