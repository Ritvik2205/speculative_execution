#!/usr/bin/env python3
"""
Inline fixed-vocabulary feature extractor for v50.

56 features (v49 had 55; added calls_attack_fn for caller-context).

Feature groups:
  1. Opcode frequency fractions (25)
  2. Structural pattern counts (15)
  3. Speculative primitive presence (10)
  4. Architecture signal counts (6)
  5. Memory pattern counts (8)
  6. Caller-context (1) — calls function with attack-relevant name
"""

import re
from typing import List
import numpy as np

_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_INDEXED_LOAD  = re.compile(r'\b(ldr|mov[qld]?)\b.*\[.*,.*\]|\b(ldr|movzx|lea)\b.*\[.*\+.*\*', re.I)
_LABEL_OR_DIR  = re.compile(r'^\s*\.|\s*:$|^#|^;')
# Caller-context: call target contains attack-class keyword
_CALL_ATK_RE   = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|'
    r'flush_reload|clearbhb|branch_history|victim_function|'
    r'gadget_[a-z]|cache_set|_rdtsc|_clflush',
    re.I
)

_X86_ONLY = frozenset(['pushq','popq','retq','callq','movq','movl','movb','addq','subq',
                        'leaq','cmpq','testq','jmpq','xorq','andq','orq','salq','sarq',
                        'imulq','idivq','negq','notq'])
_ARM_ONLY  = frozenset(['adrp','stp','ldp','cbz','cbnz','tbz','tbnz','bl','blr','br',
                         'lsl','lsr','asr','ror','madd','msub','udiv','sdiv','csel','cset',
                         'mrs','msr','dsb','dmb','isb'])

_KEY_OPCODES = [
    'nop',
    'ret', 'retq',
    'call', 'callq', 'bl',
    'blr', 'br',
    'cmp', 'cmn', 'test', 'tst',
    'ldr', 'ldp',
    'str', 'stp',
    'movq', 'movl',
    'clflush', 'clflushopt',
    'rdtsc', 'rdtscp',
    'lfence',
    'mfence', 'sfence',
    'verw',
    'movntdqa',
    'adrp',
]

FEATURE_NAMES = None

def _build_feature_names() -> List[str]:
    names = []
    for op in _KEY_OPCODES:
        names.append(f'frac_{op}')
    names += [
        'frac_x86_only',
        'frac_arm_only',
        'frac_indirect',
        'frac_branch',
        'frac_load',
        'frac_store',
    ]
    names += [
        'max_nop_run_norm',
        'call_ret_pair_norm',
        'indexed_load_norm',
        'clflush_load_norm',
        'branch_after_cmp_norm',
        'indirect_then_load_norm',
        'unique_opcode_fraction',
    ]
    names += [
        'has_rdtsc',
        'has_verw',
        'has_movntdqa',
        'has_lfence',
        'has_clflush',
        'has_indirect',
        'has_nop_run_3plus',
        'has_indexed_load',
        'has_call_ret_pair',
        'has_clflush_load',
    ]
    names += [
        'ret_call_ratio',
        'nop_ret_ratio',
        'indirect_cond_ratio',
        'load_store_ratio',
    ]
    # Caller-context feature
    names += [
        'calls_attack_fn',  # any call target matches attack-keyword regex
    ]
    return names


def _get_opcode(line: str) -> str:
    s = line.strip()
    if not s or _LABEL_OR_DIR.match(s) or s.endswith(':'):
        return ''
    parts = s.split()
    if not parts:
        return ''
    op = parts[0].rstrip(':').lower()
    if op.startswith('.') or op.startswith('#') or op.startswith(';'):
        return ''
    return op


def compute_inline_features(sequence: List[str]) -> np.ndarray:
    global FEATURE_NAMES
    if FEATURE_NAMES is None:
        FEATURE_NAMES = _build_feature_names()

    opcodes = []
    raw_lines = []
    call_targets = []
    for line in sequence:
        op = _get_opcode(line)
        if op:
            opcodes.append(op)
            raw_lines.append(line.strip())
            # Collect call targets for caller-context feature
            if op in ('bl', 'call', 'callq', 'blr'):
                parts = line.strip().split()
                if len(parts) > 1:
                    call_targets.append(parts[1])

    N = max(len(opcodes), 1)
    opset = set(opcodes)
    op_counts = {}
    for op in opcodes:
        op_counts[op] = op_counts.get(op, 0) + 1

    feats = np.zeros(len(FEATURE_NAMES), dtype=np.float32)
    idx = 0

    for op in _KEY_OPCODES:
        feats[idx] = op_counts.get(op, 0) / N
        idx += 1

    x86_count = sum(op_counts.get(op, 0) for op in _X86_ONLY)
    arm_count  = sum(op_counts.get(op, 0) for op in _ARM_ONLY)

    indirect_count = sum(1 for line in raw_lines if _INDIRECT_PAT.search(line))
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

    feats[idx] = x86_count / N;     idx += 1
    feats[idx] = arm_count / N;     idx += 1
    feats[idx] = indirect_count / N; idx += 1
    feats[idx] = branch_total / N;   idx += 1
    feats[idx] = load_total / N;     idx += 1
    feats[idx] = store_total / N;    idx += 1

    max_nop_run = 0
    cur_nop_run = 0
    for op in opcodes:
        if op == 'nop':
            cur_nop_run += 1
            max_nop_run = max(max_nop_run, cur_nop_run)
        else:
            cur_nop_run = 0
    feats[idx] = max_nop_run / N; idx += 1

    call_ret_pairs = 0
    pending_calls = []
    for i, op in enumerate(opcodes):
        if op in ('call', 'callq', 'bl', 'blr'):
            pending_calls.append(i)
        elif op in ('ret', 'retq'):
            pending_calls = [c for c in pending_calls if i - c <= 10]
            if pending_calls:
                call_ret_pairs += 1
                pending_calls = pending_calls[:-1]
    feats[idx] = call_ret_pairs / N; idx += 1

    indexed_loads = sum(1 for line in raw_lines if _INDEXED_LOAD.search(line))
    feats[idx] = indexed_loads / N; idx += 1

    clflush_load_count = 0
    pending_flushes = []
    for i, op in enumerate(opcodes):
        if op in ('clflush', 'clflushopt', 'prfm'):
            pending_flushes.append(i)
        pending_flushes = [f for f in pending_flushes if i - f <= 30]
        if op in ('ldr', 'ldp', 'movq', 'movl') and pending_flushes:
            clflush_load_count += 1
    feats[idx] = clflush_load_count / N; idx += 1

    cmp_positions = [i for i, op in enumerate(opcodes) if op in ('cmp','cmn','test','tst')]
    branch_positions = set(i for i, op in enumerate(opcodes)
                           if op in ('je','jne','jl','jle','jg','jge','jz','jnz',
                                     'b.eq','b.ne','b.lt','b.le','b.gt','b.ge',
                                     'cbz','cbnz','tbz','tbnz'))
    bac = sum(1 for cp in cmp_positions
              if any((cp+1) <= bp <= (cp+3) for bp in branch_positions))
    feats[idx] = bac / N; idx += 1

    indirect_positions = [i for i, line in enumerate(raw_lines)
                          if _INDIRECT_PAT.search(line)]
    load_positions = set(i for i, op in enumerate(opcodes)
                         if op in ('ldr','ldp','movq','movl','movzx'))
    ind_load = sum(1 for ip in indirect_positions
                   if any((ip+1) <= lp <= (ip+10) for lp in load_positions))
    feats[idx] = ind_load / N; idx += 1

    feats[idx] = len(set(opcodes)) / N; idx += 1

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

    ret_count  = op_counts.get('ret', 0) + op_counts.get('retq', 0)
    call_count = op_counts.get('call', 0) + op_counts.get('callq', 0) + op_counts.get('bl', 0)
    cond_br    = len(cmp_positions)

    feats[idx] = ret_count / max(call_count + ret_count, 1); idx += 1
    feats[idx] = op_counts.get('nop', 0) / max(ret_count + 1, 1); idx += 1
    feats[idx] = indirect_count / max(cond_br + 1, 1); idx += 1
    feats[idx] = load_total / max(store_total + 1, 1); idx += 1

    # Caller-context: 1.0 if any call target matches attack-keyword regex
    feats[idx] = 1.0 if any(_CALL_ATK_RE.search(t) for t in call_targets) else 0.0; idx += 1

    assert idx == len(FEATURE_NAMES), f"Feature count mismatch: {idx} != {len(FEATURE_NAMES)}"
    return feats


def get_feature_names() -> List[str]:
    global FEATURE_NAMES
    if FEATURE_NAMES is None:
        FEATURE_NAMES = _build_feature_names()
    return FEATURE_NAMES


if __name__ == '__main__':
    FEATURE_NAMES = _build_feature_names()
    print(f'Feature count: {len(FEATURE_NAMES)}')

    # Test: caller with attack-relevant call target
    test_seq = [
        'sub sp, sp, #32',
        'stp x29, x30, [sp, #16]',
        'bl _branch_history_conditioner_bhi',  # calls BHI function → signal
        'nop',
        'blr x9',
        'ldr x0, [x1, x2, lsl #3]',
        'ret',
    ]
    f = compute_inline_features(test_seq)
    print(f'Output dim: {f.shape[0]}  calls_attack_fn={f[-1]:.0f}  has_indirect={f[get_feature_names().index("has_indirect")]:.0f}')
