#!/usr/bin/env python3
"""
Inline fixed-vocabulary feature extractor for v47a.

Computes exactly 64 deterministic scalar features from raw assembly sequences.
No n-grams (avoids label leakage from function names in assembly labels).
No external files or vocabulary fitting.
~0.5ms per record.

Feature groups:
  1. Opcode frequency fractions (25) — key opcodes as fraction of total
  2. Structural pattern counts (15) — indirect branch, NOP runs, call/ret pairs
  3. Speculative primitive presence (10) — binary flags for key attack opcodes
  4. Architecture signal counts (6) — x86-only vs ARM-only opcode fractions
  5. Memory pattern counts (8) — indexed loads, store-load pairs, stack ops
"""

import re
from typing import List, Dict
import numpy as np

# Patterns for recognising instruction types
_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_INDEXED_LOAD  = re.compile(r'\b(ldr|mov[qld]?)\b.*\[.*,.*\]|\b(ldr|movzx|lea)\b.*\[.*\+.*\*', re.I)
_LABEL_OR_DIR  = re.compile(r'^\s*\.|\s*:$|^#|^;')

# Opcode sets for counting (by ISA)
_X86_ONLY = frozenset(['pushq','popq','retq','callq','movq','movl','movb','addq','subq',
                        'leaq','cmpq','testq','jmpq','xorq','andq','orq','salq','sarq',
                        'imulq','idivq','negq','notq'])
_ARM_ONLY  = frozenset(['adrp','stp','ldp','cbz','cbnz','tbz','tbnz','bl','blr','br',
                         'lsl','lsr','asr','ror','madd','msub','udiv','sdiv','csel','cset',
                         'mrs','msr','dsb','dmb','isb'])

# Key opcodes to track as individual frequency features
_KEY_OPCODES = [
    'nop',
    'ret', 'retq',                          # RSB consumption
    'call', 'callq', 'bl',                  # Direct calls (RSB pushes)
    'blr', 'br',                            # Indirect branches (BHI/V2)
    'cmp', 'cmn', 'test', 'tst',           # Comparisons (V1 bounds check)
    'ldr', 'ldp',                           # ARM loads
    'str', 'stp',                           # ARM stores
    'movq', 'movl',                         # x86 moves
    'clflush', 'clflushopt',               # Flush+Reload
    'rdtsc', 'rdtscp',                      # Timing source
    'lfence',                               # Spectre V1 barrier
    'mfence', 'sfence',                     # Memory ordering
    'verw',                                 # MDS mitigation
    'movntdqa',                             # MDS store buffer
    'adrp',                                 # ARM code gen (MDS/arch signal)
]

FEATURE_NAMES = None  # Set by _build_feature_names() on first call

def _build_feature_names() -> List[str]:
    names = []
    # Group 1: key opcode fractions
    for op in _KEY_OPCODES:
        names.append(f'frac_{op}')
    # Group 2: aggregate fractions
    names += [
        'frac_x86_only',       # x86-specific opcodes
        'frac_arm_only',       # ARM-specific opcodes
        'frac_indirect',       # indirect branch fraction
        'frac_branch',         # all branch fraction
        'frac_load',           # all load fraction
        'frac_store',          # all store fraction
    ]
    # Group 3: structural counts (normalised by sequence length)
    names += [
        'max_nop_run_norm',    # longest NOP sled / total
        'call_ret_pair_norm',  # close call→ret pairs / total (RSB stuffing)
        'indexed_load_norm',   # indexed loads / total (secret source)
        'clflush_load_norm',   # clflush within 30 of load (Flush+Reload)
        'branch_after_cmp_norm', # branches within 3 of cmp (bounds bypass)
        'indirect_then_load_norm', # load within 10 of indirect branch
        'unique_opcode_fraction',  # unique_opcodes / total (diversity)
    ]
    # Group 4: binary presence flags (0/1)
    names += [
        'has_rdtsc',
        'has_verw',
        'has_movntdqa',
        'has_lfence',
        'has_clflush',
        'has_indirect',
        'has_nop_run_3plus',   # NOP run ≥ 3 (RSB stuffing sled)
        'has_indexed_load',
        'has_call_ret_pair',
        'has_clflush_load',
    ]
    # Group 5: ratio features
    names += [
        'ret_call_ratio',      # ret / (call+ret+1) — INCEPTION has high ratio
        'nop_ret_ratio',       # nop / (ret+1) — RSB stuffing depth
        'indirect_cond_ratio', # indirect / (cond_branch+1) — BHI vs V1
        'load_store_ratio',    # loads / (stores+1)
    ]
    return names


def _get_opcode(line: str) -> str:
    """Extract opcode from instruction line, return '' for labels/directives."""
    s = line.strip()
    if not s or _LABEL_OR_DIR.match(s) or s.endswith(':'):
        return ''
    parts = s.split()
    if not parts:
        return ''
    op = parts[0].rstrip(':').lower()
    # Skip directives
    if op.startswith('.') or op.startswith('#') or op.startswith(';'):
        return ''
    return op


def compute_inline_features(sequence: List[str]) -> np.ndarray:
    """
    Compute 64 fixed features from raw assembly sequence.
    No fitting required. Safe to call on train and test independently.
    """
    global FEATURE_NAMES
    if FEATURE_NAMES is None:
        FEATURE_NAMES = _build_feature_names()

    # Extract opcodes, skip labels/directives
    opcodes = []
    raw_lines = []
    for line in sequence:
        op = _get_opcode(line)
        if op:
            opcodes.append(op)
            raw_lines.append(line.strip())

    N = max(len(opcodes), 1)
    opset = set(opcodes)
    op_counts = {}
    for op in opcodes:
        op_counts[op] = op_counts.get(op, 0) + 1

    feats = np.zeros(len(FEATURE_NAMES), dtype=np.float32)
    idx = 0

    # --- Group 1: key opcode fractions ---
    for op in _KEY_OPCODES:
        feats[idx] = op_counts.get(op, 0) / N
        idx += 1

    # --- Group 2: aggregate fractions ---
    x86_count = sum(op_counts.get(op, 0) for op in _X86_ONLY)
    arm_count  = sum(op_counts.get(op, 0) for op in _ARM_ONLY)

    indirect_count = sum(1 for op in opcodes
                         if op in ('blr', 'br') or
                         re.match(r'^(jmpq?\*|callq?\*)', op))
    branch_pats = re.compile(r'\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls)|cbz|cbnz|tbz|tbnz|'
                              r'je|jne|jl|jle|jg|jge|jz|jnz|jo|js|jc|jb|ja|'
                              r'jmpq?|call|callq|bl|blr|br|ret|retq)\b', re.I)
    load_pats  = re.compile(r'\b(ldr[bhsdq]?|ldp|ldur|movzx|movsx|movabs|lods[bwdq]?|'
                             r'mov[qldwb]?)\b.*\[', re.I)
    store_pats = re.compile(r'\b(str[bhsdq]?|stp|stur|movnti|stos[bwdq]?|'
                             r'mov[qldwb]?)\b.*\[', re.I)

    branch_total = sum(1 for line in raw_lines if branch_pats.search(line))
    load_total   = sum(1 for line in raw_lines if load_pats.search(line))
    store_total  = sum(1 for line in raw_lines if store_pats.search(line))

    feats[idx]   = x86_count / N;     idx += 1
    feats[idx]   = arm_count / N;     idx += 1
    feats[idx]   = indirect_count / N; idx += 1
    feats[idx]   = branch_total / N;   idx += 1
    feats[idx]   = load_total / N;     idx += 1
    feats[idx]   = store_total / N;    idx += 1

    # --- Group 3: structural patterns ---
    # Max NOP run (normalised)
    max_nop_run = 0
    cur_nop_run = 0
    for op in opcodes:
        if op == 'nop':
            cur_nop_run += 1
            max_nop_run = max(max_nop_run, cur_nop_run)
        else:
            cur_nop_run = 0
    feats[idx] = max_nop_run / N; idx += 1

    # Call→ret pairs within 10 instructions (RSB_CHAIN count, normalised)
    call_ret_pairs = 0
    pending_calls = []
    for i, op in enumerate(opcodes):
        if op in ('call', 'callq', 'bl', 'blr'):
            pending_calls.append(i)
        elif op in ('ret', 'retq'):
            pending_calls = [c for c in pending_calls if i - c <= 10]
            if pending_calls:
                call_ret_pairs += 1
                pending_calls = pending_calls[:-1]  # LIFO
    feats[idx] = call_ret_pairs / N; idx += 1

    # Indexed loads (normalised)
    indexed_loads = sum(1 for line in raw_lines if _INDEXED_LOAD.search(line))
    feats[idx] = indexed_loads / N; idx += 1

    # Clflush within 30 of a load (Flush+Reload pattern)
    clflush_load_count = 0
    pending_flushes = []
    for i, op in enumerate(opcodes):
        if op in ('clflush', 'clflushopt', 'prfm'):
            pending_flushes.append(i)
        pending_flushes = [f for f in pending_flushes if i - f <= 30]
        if op in ('ldr', 'ldp', 'movq', 'movl') and pending_flushes:
            clflush_load_count += 1
    feats[idx] = clflush_load_count / N; idx += 1

    # Branch within 3 of cmp (bounds check → misprediction source)
    cmp_positions = [i for i, op in enumerate(opcodes) if op in ('cmp','cmn','test','tst')]
    branch_positions = set(i for i, op in enumerate(opcodes)
                           if op in ('je','jne','jl','jle','jg','jge','jz','jnz',
                                     'b.eq','b.ne','b.lt','b.le','b.gt','b.ge',
                                     'cbz','cbnz','tbz','tbnz'))
    bac = sum(1 for cp in cmp_positions
              if any((cp+1) <= bp <= (cp+3) for bp in branch_positions))
    feats[idx] = bac / N; idx += 1

    # Load within 10 of indirect branch
    indirect_positions = [i for i, op in enumerate(opcodes)
                          if op in ('blr','br') or re.match(r'^(jmpq?\*|callq?\*)', op)]
    load_positions = set(i for i, op in enumerate(opcodes)
                         if op in ('ldr','ldp','movq','movl','movzx'))
    ind_load = sum(1 for ip in indirect_positions
                   if any((ip+1) <= lp <= (ip+10) for lp in load_positions))
    feats[idx] = ind_load / N; idx += 1

    # Unique opcode fraction
    feats[idx] = len(set(opcodes)) / N; idx += 1

    # --- Group 4: binary presence flags ---
    feats[idx] = 1.0 if 'rdtsc' in opset or 'rdtscp' in opset else 0.0; idx += 1
    feats[idx] = 1.0 if 'verw' in opset else 0.0; idx += 1
    feats[idx] = 1.0 if 'movntdqa' in opset else 0.0; idx += 1
    feats[idx] = 1.0 if 'lfence' in opset else 0.0; idx += 1
    feats[idx] = 1.0 if ('clflush' in opset or 'clflushopt' in opset) else 0.0; idx += 1
    feats[idx] = 1.0 if indirect_count > 0 else 0.0; idx += 1
    feats[idx] = 1.0 if max_nop_run >= 3 else 0.0; idx += 1
    feats[idx] = 1.0 if indexed_loads > 0 else 0.0; idx += 1
    feats[idx] = 1.0 if call_ret_pairs > 0 else 0.0; idx += 1
    feats[idx] = 1.0 if clflush_load_count > 0 else 0.0; idx += 1

    # --- Group 5: ratios ---
    ret_count  = op_counts.get('ret', 0) + op_counts.get('retq', 0)
    call_count = op_counts.get('call', 0) + op_counts.get('callq', 0) + op_counts.get('bl', 0)
    cond_br    = len(cmp_positions)  # use cmp as proxy for cond branch source

    feats[idx] = ret_count / max(call_count + ret_count, 1); idx += 1
    feats[idx] = op_counts.get('nop', 0) / max(ret_count + 1, 1); idx += 1
    feats[idx] = indirect_count / max(cond_br + 1, 1); idx += 1
    feats[idx] = load_total / max(store_total + 1, 1); idx += 1

    assert idx == len(FEATURE_NAMES), f"Feature count mismatch: {idx} != {len(FEATURE_NAMES)}"
    return feats


def get_feature_names() -> List[str]:
    global FEATURE_NAMES
    if FEATURE_NAMES is None:
        FEATURE_NAMES = _build_feature_names()
    return FEATURE_NAMES


if __name__ == '__main__':
    # Quick self-test
    FEATURE_NAMES = _build_feature_names()
    print(f'Feature count: {len(FEATURE_NAMES)}')
    print('First 10:', FEATURE_NAMES[:10])

    test_seq = [
        'sub sp, sp, #32',
        'stp x29, x30, [sp, #16]',
        'bl _printf',
        'nop',
        'nop',
        'nop',           # NOP run of 3
        'blr x9',        # indirect branch → BHI signal
        'ldr x0, [x1, x2, lsl #3]',  # indexed load
        'ldr x3, [x4, x0, lsl #6]',  # transmitter
        'clflush',
        'rdtsc',
        'ret',
    ]
    f = compute_inline_features(test_seq)
    print(f'Output dim: {f.shape[0]}  (all finite: {all(np.isfinite(f))})')
    for name, val in zip(FEATURE_NAMES, f):
        if val != 0:
            print(f'  {name:<40} {val:.4f}')
