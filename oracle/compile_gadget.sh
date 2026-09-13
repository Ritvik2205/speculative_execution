#!/usr/bin/env bash
set -euo pipefail
SRC="$1"; OUT="$2"; CC="${3:-gcc}"
mkdir -p "$(dirname "$OUT")"
# gadgets #include "utils.c"; -I the c_code dir; enable LINE print; static for SE mode
"$CC" -O0 -static -DGEM5_ORACLE -I /work/c_vulns/c_code "$SRC" -o "$OUT"
