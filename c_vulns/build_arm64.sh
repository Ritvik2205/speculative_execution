#!/bin/bash

# Build script for ARM64-compatible vulnerability demonstrations
# This script compiles all the ARM64 versions of the Spectre, Meltdown, and other vulnerability demos

echo "Building ARM64-compatible vulnerability demonstrations..."

# Compile Spectre Variant 1
echo "Compiling Spectre Variant 1..."
gcc -O0 spectre_1_arm64.c -o spectre_1_arm64
if [ $? -eq 0 ]; then
    echo "✓ Spectre V1 compiled successfully"
else
    echo "✗ Spectre V1 compilation failed"
fi

# Compile Spectre Variant 2
echo "Compiling Spectre Variant 2..."
gcc -O0 spectre_2_arm64.c -o spectre_2_arm64
if [ $? -eq 0 ]; then
    echo "✓ Spectre V2 compiled successfully"
else
    echo "✗ Spectre V2 compilation failed"
fi

# Compile Meltdown
echo "Compiling Meltdown..."
gcc -O0 meltdown_arm64.c -o meltdown_arm64
if [ $? -eq 0 ]; then
    echo "✓ Meltdown compiled successfully"
else
    echo "✗ Meltdown compilation failed"
fi

# Generate assembly files for analysis
echo "Generating assembly files..."
gcc -O0 -S spectre_1_arm64.c -o spectre_1_arm64.s
gcc -O0 -S spectre_2_arm64.c -o spectre_2_arm64.s
gcc -O0 -S meltdown_arm64.c -o meltdown_arm64.s

echo ""
echo "Build complete! Available executables:"
echo "- spectre_1_arm64    (Spectre Variant 1 - Bounds Check Bypass)"
echo "- spectre_2_arm64    (Spectre Variant 2 - Branch Target Injection)"
echo "- meltdown_arm64     (Meltdown - Rogue Data Cache Load)"
echo ""
echo "Run with: ./<executable_name>"
echo ""
echo "Note: These are educational demonstrations. Modern ARM64 processors"
echo "have mitigations that prevent these attacks from succeeding." 