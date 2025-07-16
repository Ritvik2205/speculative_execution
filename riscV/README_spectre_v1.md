# Spectre V1 Attack Simulation using RISC-V Emulator

This project demonstrates the Spectre V1 vulnerability using the tinyfive RISC-V emulator. It provides an educational simulation of how speculative execution can be exploited to leak secrets through cache timing side channels.

## Overview

Spectre V1 is a speculative execution vulnerability that exploits branch prediction to access unauthorized memory locations. The attack works in three phases:

1. **Training Phase**: Train the branch predictor to expect a condition to be true
2. **Speculative Execution**: Provide input that makes the branch prediction incorrect, causing speculative execution of the "taken" path
3. **Cache Side Channel**: Measure cache access times to determine which memory was accessed during speculative execution

## Files

- `spectre_v1_riscv.py`: Main simulation script using tinyfive RISC-V emulator
- `requirements.txt`: Python dependencies
- `c_vulns/c_code/spectre_v1.c`: Original x86 implementation for reference

## Installation

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

2. Run the simulation:
```bash
python spectre_v1_riscv.py
```

## How It Works

### Memory Layout
- `0x0000-0x003F`: Public array (16 elements)
- `0x0040-0x0043`: Secret value (ASCII 'S' = 83)
- `0x0100-0x40FF`: Probe array (256 cache lines, 64 bytes each)
- `0x5000-0x5FFF`: RISC-V program code

### Attack Process

1. **Initialize Data Structures**:
   - Public array with known values [0, 1, 2, ..., 15]
   - Secret value (ASCII 'S' = 83)
   - Probe array with 256 cache lines

2. **Training Phase**:
   - Execute victim function 100 times with valid indices (0-15)
   - Branch predictor learns to expect `index < 16` to be true

3. **Attack Phase**:
   - Call victim function with malicious index (16)
   - CPU speculatively executes the "taken" path
   - During speculation, access `public_array[16]` (which is actually the secret)
   - Use the loaded value to access `probe_array[secret * 64]`

4. **Cache Timing Analysis**:
   - Measure access times to all 256 probe array cache lines
   - Fast access indicates cache hit from speculative execution
   - Reveals the secret value that was speculatively accessed

### RISC-V Assembly Code

The victim function implements the vulnerable bounds check:

```assembly
victim_function:
    addi x13, x0, 16        # x13 = 16 (array size)
    bge  x12, x13, fail     # Branch if index >= 16
    
    # Speculative execution path
    slli x14, x12, 2        # x14 = index * 4
    add  x14, x14, x0       # x14 = base_address + offset
    lw   x15, 0(x14)        # Load from public_array[index]
    
    # Cache side channel
    andi x15, x15, 0xFF     # Get lower byte
    slli x16, x15, 6        # x16 = value * 64
    addi x16, x16, 0x100    # x16 = probe_array_base + offset
    lw   x17, 0(x16)        # Access probe_array[value * 64]
    
fail:
    jalr x0, x1, 0          # Return
```

## Expected Output

```
Spectre V1 Attack Simulation using RISC-V Emulator
==================================================
=== Spectre V1 Mechanism Demonstration ===
1. Branch predictor training phase
   - Repeatedly execute branch with same outcome
   - CPU learns to predict the branch will be taken

2. Speculative execution phase
   - Provide input that makes branch prediction incorrect
   - CPU speculatively executes the 'taken' path
   - During speculation, access memory based on out-of-bounds data

3. Cache side channel phase
   - Measure access times to probe array
   - Fast access indicates cache hit from speculative execution
   - Reveals the value that was speculatively accessed

Secret value: 83 (ASCII: 'S')
Public array size: 16
Probe array size: 16384 bytes
Executing Spectre V1 attack...
Program executed successfully

Simulating cache timing analysis...
Analyzing probe array access patterns...
Expected cache line access: probe_array[5312]
Expected leaked value: 83 (ASCII: 'S')

Simulated cache timing results:
Cache line access times (simulated):
  Cache line 0: 156 cycles
  Cache line 1: 134 cycles
  ...
  Cache line 83: 23 cycles (CACHE HIT - LEAKED!)
  ...
  Cache line 255: 178 cycles

SUCCESS: Spectre V1 attack detected access to cache line 83
Leaked secret value: 83 (ASCII: 'S')
```

## Educational Value

This simulation demonstrates:

1. **Branch Prediction**: How CPUs predict branch outcomes for performance
2. **Speculative Execution**: How CPUs execute code before knowing if it's correct
3. **Cache Side Channels**: How timing differences can leak information
4. **Bounds Check Bypass**: How out-of-bounds access can occur during speculation
5. **RISC-V Assembly**: Low-level programming concepts

## Limitations

This is a simplified educational simulation. Real Spectre attacks require:

- Precise timing measurements (nanosecond accuracy)
- Knowledge of cache line sizes and memory layout
- Multiple attack iterations for statistical significance
- Sophisticated timing analysis and noise filtering
- Understanding of CPU microarchitecture details

## Security Implications

Spectre V1 demonstrates why bounds checking alone is insufficient for security. The vulnerability affects:

- Web browsers (JavaScript engines)
- Operating systems
- Virtual machines
- Any code with bounds checks and speculative execution

## Mitigations

Common mitigations include:

- **Spectre v1 mitigations**: Compiler barriers, speculation barriers
- **Bounds checking**: More robust bounds checking techniques
- **Memory layout**: Address space layout randomization (ASLR)
- **Microcode updates**: CPU firmware patches

## References

- [Spectre Attacks: Exploiting Speculative Execution](https://spectreattack.com/spectre.pdf)
- [tinyfive RISC-V Emulator](https://github.com/OpenMachine-ai/tinyfive)
- [RISC-V Specification](https://riscv.org/specifications/) 