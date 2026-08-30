#!/usr/bin/env bash
# Fetch the upstream RISC-V speculative-execution PoCs that
# spec/harvest_real_riscv.py compiles. The repos are third-party and are NOT
# vendored into this repository; this script reproduces the working tree.
#
# Pinned to the commits the harvest was validated against, so a later upstream
# change cannot silently alter the validation set.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p vendor_riscv && cd vendor_riscv

clone() {  # repo  dir  commit
  if [ ! -d "$2" ]; then git clone -q "https://github.com/$1" "$2"; fi
  git -C "$2" fetch -q --depth 50 origin "$3" 2>/dev/null || true
  git -C "$2" checkout -q "$3" 2>/dev/null || \
    echo "WARN: could not pin $2 to $3 — harvest may differ from the recorded run"
}

clone riscv-boom/boom-attacks boom-attacks da91a3c45cb2ebb7cd2a9255a9d0dadd35799ef4
clone cispa/Security-RISC     Security-RISC HEAD

# The bare-metal riscv64-elf toolchain ships no libc headers, and we only ever
# compile with -S (never link), so declarations are enough. See
# spec/riscv_stub_include/README for why this does not perturb the gadget code.
ln -sfn ../spec/riscv_stub_include stub_include
echo "ready — now run: python3 spec/harvest_real_riscv.py --apply"
