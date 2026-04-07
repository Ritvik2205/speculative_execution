#!/usr/bin/env python3
"""
Generate synthetic x86_64 benign assembly samples.

This script generates benign x86_64 assembly code patterns that:
1. Are clearly benign (no speculative execution patterns)
2. Match the instruction patterns found in real benign code
3. Use common x86_64 patterns: function prologues, arithmetic, loops, etc.

This is a temporary solution until we can compile real x86_64 benign code.
"""

import argparse
import json
import random
from pathlib import Path
from typing import List


def log(msg: str):
    print(msg, flush=True)


# Benign x86_64 code templates - common patterns that are clearly not vulnerable
FUNCTION_PROLOGUE = [
    "pushq\t%rbp",
    "movq\t%rsp, %rbp",
]

FUNCTION_EPILOGUE = [
    "popq\t%rbp",
    "retq",
]

# Common arithmetic patterns
ARITHMETIC_PATTERNS = [
    ["addl\t${imm}, %eax", "movl\t%eax, ({reg})"],
    ["subl\t${imm}, %ecx", "testl\t%ecx, %ecx"],
    ["imull\t${imm}, %edx", "movl\t%edx, ({reg})"],
    ["xorl\t%eax, %eax", "incl\t%eax"],
    ["shll\t${shift}, %ebx", "orl\t${imm}, %ebx"],
    ["andl\t${mask}, %esi", "cmpl\t${imm}, %esi"],
    ["shlq\t${shift}, %rax", "orq\t%rbx, %rax"],
    ["movl\t({reg}), %eax", "addl\t${imm}, %eax", "movl\t%eax, ({reg})"],
]

# Simple loop patterns (without speculative hazards)
LOOP_PATTERNS = [
    ["movl\t${count}, %ecx", ".loop_{id}:", "decl\t%ecx", "jnz\t.loop_{id}"],
    ["xorl\t%edi, %edi", ".L{id}:", "incl\t%edi", "cmpl\t${count}, %edi", "jl\t.L{id}"],
]

# Memory access patterns (simple, no timing)
MEMORY_PATTERNS = [
    ["movq\t{offset}(%rbp), %rax", "movq\t%rax, {offset2}(%rbp)"],
    ["leaq\t{offset}(%rdi), %rax", "movq\t%rax, (%rsi)"],
    ["movl\t(%rdi), %eax", "movl\t%eax, (%rsi)"],
    ["movq\t(%rsp), %rax", "pushq\t%rax", "popq\t%rbx"],
]

# Function call patterns (standard calling convention)
CALL_PATTERNS = [
    ["movq\t%rdi, %rsi", "callq\t_helper", "testl\t%eax, %eax"],
    ["pushq\t%rbx", "callq\t_function", "popq\t%rbx"],
    ["leaq\t.LC{id}(%rip), %rdi", "callq\t_puts"],
]

# Stack frame patterns
STACK_PATTERNS = [
    ["subq\t${size}, %rsp", "movq\t%rdi, -8(%rbp)", "movq\t%rsi, -16(%rbp)"],
    ["pushq\t%rbx", "pushq\t%r12", "pushq\t%r13"],
    ["movq\t-8(%rbp), %rax", "movq\t-16(%rbp), %rdx"],
]

# Conditional patterns (simple, no speculation)
CONDITIONAL_PATTERNS = [
    ["cmpl\t${imm}, %eax", "jge\t.L{id}", "movl\t${imm2}, %eax", ".L{id}:"],
    ["testq\t%rdi, %rdi", "je\t.ret_{id}", "movl\t(%rdi), %eax", ".ret_{id}:"],
]

# String operation patterns
STRING_PATTERNS = [
    ["movq\t${len}, %rcx", "rep stosb"],
    ["movq\t${len}, %rcx", "rep movsb"],
]

# Floating point patterns
FP_PATTERNS = [
    ["movsd\t(%rdi), %xmm0", "addsd\t(%rsi), %xmm0", "movsd\t%xmm0, (%rdx)"],
    ["cvtsi2sd\t%eax, %xmm0", "mulsd\t%xmm1, %xmm0"],
]

ALL_PATTERNS = [
    ARITHMETIC_PATTERNS,
    LOOP_PATTERNS,
    MEMORY_PATTERNS,
    CALL_PATTERNS,
    STACK_PATTERNS,
    CONDITIONAL_PATTERNS,
    STRING_PATTERNS,
    FP_PATTERNS,
]

# Registers for substitution
REGS_64 = ['%rax', '%rbx', '%rcx', '%rdx', '%rsi', '%rdi', '%r8', '%r9', '%r10', '%r11', '%r12']
REGS_32 = ['%eax', '%ebx', '%ecx', '%edx', '%esi', '%edi', '%r8d', '%r9d']


def substitute_template(lines: List[str], sample_id: int) -> List[str]:
    """Substitute template placeholders with concrete values."""
    result = []
    for line in lines:
        line = line.replace('{id}', str(sample_id))
        line = line.replace('{imm}', str(random.randint(1, 255)))
        line = line.replace('{imm2}', str(random.randint(1, 100)))
        line = line.replace('{shift}', str(random.randint(1, 4)))
        line = line.replace('{mask}', hex(random.randint(0xFF, 0xFFFF)))
        line = line.replace('{count}', str(random.randint(10, 100)))
        line = line.replace('{offset}', str(random.randint(1, 8) * -8))
        line = line.replace('{offset2}', str(random.randint(1, 8) * -8))
        line = line.replace('{size}', str(random.randint(2, 16) * 8))
        line = line.replace('{len}', str(random.randint(8, 64)))
        line = line.replace('{reg}', random.choice(REGS_64))
        result.append(line)
    return result


def generate_benign_sequence(sample_id: int, min_len: int = 15, max_len: int = 35) -> List[str]:
    """Generate a benign x86_64 instruction sequence."""
    sequence = []
    
    # Sometimes start with prologue
    if random.random() < 0.5:
        sequence.extend(FUNCTION_PROLOGUE)
    
    # Add random benign patterns
    target_len = random.randint(min_len, max_len)
    
    while len(sequence) < target_len - 2:
        pattern_group = random.choice(ALL_PATTERNS)
        pattern = random.choice(pattern_group)
        lines = substitute_template(pattern, sample_id)
        sequence.extend(lines)
    
    # Sometimes end with epilogue
    if random.random() < 0.5:
        sequence.extend(FUNCTION_EPILOGUE)
    
    return sequence[:max_len]


def main():
    parser = argparse.ArgumentParser(description="Generate synthetic x86_64 benign samples")
    parser.add_argument("--output", type=Path, default=Path("data/benign_samples_x86_64_synthetic.jsonl"))
    parser.add_argument("--num-samples", type=int, default=10000)
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()
    
    random.seed(args.seed)
    
    log("=" * 60)
    log("GENERATE SYNTHETIC X86_64 BENIGN SAMPLES")
    log("=" * 60)
    log(f"Output: {args.output}")
    log(f"Number of samples: {args.num_samples}")
    
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    samples = []
    for i in range(args.num_samples):
        sequence = generate_benign_sequence(sample_id=i)
        
        sample = {
            'sequence': sequence,
            'source_file': f'synthetic_benign_{i}.s',
            'arch': 'x86_64',
            'label': 'BENIGN',
            'vuln_label': 'BENIGN',
            'group': 'synthetic_x86_64_benign',
            'window_size': len(sequence),
        }
        samples.append(sample)
        
        if (i + 1) % 2000 == 0:
            log(f"  Generated {i+1}/{args.num_samples} samples")
    
    # Write output
    log(f"\nWriting {len(samples)} samples to {args.output}...")
    with open(args.output, 'w') as f:
        for sample in samples:
            f.write(json.dumps(sample) + '\n')
    
    # Summary
    log("\n" + "=" * 60)
    log("SUMMARY")
    log("=" * 60)
    log(f"Total x86_64 benign samples: {len(samples)}")
    log(f"Average sequence length: {sum(len(s['sequence']) for s in samples) / len(samples):.1f}")
    log(f"\nOutput: {args.output}")
    log("=" * 60)


if __name__ == "__main__":
    main()
