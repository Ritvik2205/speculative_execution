#!/bin/bash
# Script to compile generated variants with correct architecture flags

SRC_DIR="c_vulns/c_code/generated_variants"
OUT_DIR="c_vulns/asm_code"
mkdir -p "$OUT_DIR"

for f in "$SRC_DIR"/*.c; do
    [ -e "$f" ] || continue
    base=$(basename "$f" .c)
    
    # Determine architecture from filename
    if [[ "$base" == *"x86_64"* ]]; then
        ARCH="x86_64"
    elif [[ "$base" == *"arm64"* ]]; then
        ARCH="arm64"
    else
        # Fallback or skip? Let's assume host arch (arm64 on this machine)
        ARCH="arm64"
    fi

    # Compiler variants
    # Note: On macOS, 'gcc' is often an alias for 'clang'.
    # We try both if available, or just clang.
    
    # CLANG
    if command -v clang >/dev/null; then
        for opt in O0 O1 O2 O3; do
            # Skip if compilation fails (expected for cross-arch inline asm if system headers missing, but -arch usually works for basic stuff)
            clang -arch "$ARCH" -S -O${opt#O} "$f" -o "$OUT_DIR/${base}_clang_${opt}.s" 2>/dev/null || echo "Failed clang $base $opt ($ARCH)"
        done
    fi
    
    # GCC (if it's a real gcc, it might fail with -arch. If it's clang, it works)
    # We will just use 'gcc' command and hope it behaves like clang on macOS or is a cross compiler.
    # Actually, let's just use clang for everything on macOS to avoid confusion, 
    # but label it differently if we want "diversity" (though it's fake diversity if it's same binary).
    # Real gcc for arm64/x86 might not be installed.
    # Let's try running 'gcc' with -arch, if it fails, we ignore.
    if command -v gcc >/dev/null; then
         for opt in O0 O1 O2 O3; do
            gcc -arch "$ARCH" -S -O${opt#O} "$f" -o "$OUT_DIR/${base}_gcc_${opt}.s" 2>/dev/null || echo "Failed gcc $base $opt ($ARCH)"
        done
    fi
done
