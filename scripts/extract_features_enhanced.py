#!/usr/bin/env python3
import argparse
import json
import re
from pathlib import Path
from collections import Counter

# Try to import networkx for graph features
try:
    import networkx as nx
    HAS_NETWORKX = True
except ImportError:
    HAS_NETWORKX = False

# Try to import sequence encoder
try:
    import pickle
    from sequence_encoder import (
        build_sequence_encoder,
        extract_sequence_embedding,
        tokenize_sequence,
        build_vocab_from_sequences
    )
    HAS_SEQUENCE_ENCODER = True
except ImportError as e:
    HAS_SEQUENCE_ENCODER = False
    print(f"Warning: sequence_encoder not available: {e}")

# Global sequence encoder (lazy initialization)
_SEQUENCE_ENCODER = None
_SEQUENCE_VOCAB_PATH = Path(__file__).parent.parent / "models" / "sequence_vocab.pkl"

# Regex constants for Feature Extraction
ARM64_BRANCH_RE = re.compile(r"\b(b\.(?P<cond>eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD_RE = re.compile(r"\bldr(b|h|sh|sw)?\b", re.IGNORECASE)
ARM64_STORE_RE = re.compile(r"\bstr(b|h|w)?\b", re.IGNORECASE)
ARM64_BARRIER_RES = [
    re.compile(r"\bdsb\b", re.IGNORECASE),
    re.compile(r"\bdmb\b", re.IGNORECASE),
    re.compile(r"\bisb\b", re.IGNORECASE),
    re.compile(r"\bcsdb\b", re.IGNORECASE),
    re.compile(r"hint\s*#0x14", re.IGNORECASE),
]

# Regex for register detection (ARM64 and x86)
REG_ARM_RE = re.compile(r"\b([wx][0-9]{1,2}|sp|lr|fp)\b", re.IGNORECASE)
REG_X86_RE = re.compile(r"\b(%?[re]?[abcd]x|%?[re]?[sd]i|%?[re]?[sb]p|%?r\d+[dwb]?)\b", re.IGNORECASE)

def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            yield json.loads(line)

def is_barrier(line: str) -> bool:
    return any(p.search(line) for p in ARM64_BARRIER_RES)

def opcode_of(line: str) -> str:
    return (line.split()[0].lower() if line else "").strip(",")

def ngrams(tokens, n):
    return ["::".join(tokens[i:i+n]) for i in range(len(tokens) - n + 1)]

def get_simplified_type(op: str) -> str:
    op = op.lower()
    if op == 'nop':
        return None
    if op.startswith('ret'): return 'RET'
    if op.startswith('call'): return 'BRANCH_UNCOND'
    if op.startswith('b.') or op.startswith('cb') or op.startswith('tb'): return 'BRANCH_COND'
    if op in ['b', 'bl', 'br', 'blr']: return 'BRANCH_UNCOND'
    if op.startswith('ldr') or op.startswith('ldp') or op.startswith('ldu'): return 'LOAD'
    if op.startswith('str') or op.startswith('stp') or op.startswith('stur'): return 'STORE'
    if op.startswith('dsb') or op.startswith('dmb') or op.startswith('isb'): return 'BARRIER'
    if op == 'jmp': return 'BRANCH_UNCOND'
    if op.startswith('j'): return 'BRANCH_COND'
    if op.startswith('mov'): return 'MOVE'
    if op in ['lfence', 'mfence', 'sfence']: return 'BARRIER'
    if op == 'clflush': return 'FLUSH'
    if op == 'rdtsc': return 'TIME'
    return 'COMPUTE'

# --- Indirect Branch Detection ---

def is_indirect_branch(line: str) -> bool:
    """
    Check if the instruction is an indirect branch.
    x86: jmp *..., call *...
    ARM64: br ..., blr ...
    """
    line = line.strip().lower()
    opcode = opcode_of(line)
    
    # ARM64
    if opcode in ['br', 'blr']:
        return True
        
    # x86
    # Check for 'jmp' or 'call' followed by '*'
    if opcode in ['jmp', 'call']:
        # Split operands
        parts = line.split(None, 1)
        if len(parts) > 1:
            operands = parts[1]
            if '*' in operands:
                return True
                
    return False


# --- MDS-Specific Feature Detection ---

# Cache flush instructions
CACHE_FLUSH_RE = re.compile(r"\b(clflush|clflushopt|clwb|dc\s+civac|dc\s+cvac)\b", re.IGNORECASE)
# Memory fence instructions
FENCE_RE = re.compile(r"\b(lfence|mfence|sfence|dsb|dmb|isb)\b", re.IGNORECASE)
# Timing instructions
TIMING_RE = re.compile(r"\b(rdtsc|rdtscp|mrs\s+.*cntvct)\b", re.IGNORECASE)
# XOR/EOR clearing pattern (common in MDS gadgets to clear register before sampling)
CLEAR_REG_RE = re.compile(r"\b(xor\s+%?e?ax|eor\s+x0)", re.IGNORECASE)
# Probe array access pattern: shift then load (lsl + ldr or shl + mov)
SHIFT_OPS_RE = re.compile(r"\b(lsl|shl|sal)\b", re.IGNORECASE)

# Pre-compiled regex patterns for performance (moved from functions)
# MDS patterns
MDS_PROBE_RE = re.compile(
    r'(eor|xor).*\n.*'
    r'(ldrb|movb|movzbl).*\n.*'
    r'(lsl|shl|sal).*\n.*'
    r'(ldr|mov)',
    re.IGNORECASE | re.DOTALL
)
VERW_RE = re.compile(r'\bverw\b', re.IGNORECASE)
FILL_BUFFER_RE = re.compile(
    r'(clflush|dc\s+civac).*\n'
    r'.*\n?'
    r'(mfence|dsb).*\n'
    r'.*\n?'
    r'(ldr|mov.*\[)',
    re.IGNORECASE | re.DOTALL
)
LFB_RE = re.compile(
    r'(clflush|clflushopt).*\n'
    r'.*\n?'
    r'(mov|ldr).*\[.*\]',
    re.IGNORECASE | re.DOTALL
)
ZOMBIELOAD_RE = re.compile(r'(zombieload|ridl|fallout|mds_|mlpds)', re.IGNORECASE)
STORE_BUFFER_RE = re.compile(
    r'(str|mov.*,.*\[).*\n'
    r'.*\n?'
    r'(ldr|mov.*\[.*\],)',
    re.IGNORECASE | re.DOTALL
)
BOUNDS_CHECK_MULTILINE_RE = re.compile(r'(cmp|test|subs).*\n.*\b(b\.|j[aeglnz])', re.IGNORECASE)

# SPECTRE_V1 patterns
BOUNDS_CHECK_RE = re.compile(r'(cmp|subs|test).*\n.*b\.(ge|lt|gt|le|hs|lo)', re.IGNORECASE)
LFENCE_RE = re.compile(r'\b(lfence|csdb|dsb\s+sy)\b', re.IGNORECASE)
BOUNDS_CMP_RE = re.compile(
    r'(cmp|test)\s+.*(\$|#)[0-9]+.*\n'
    r'.*\n?'
    r'(jae|jb|jbe|ja|b\.hs|b\.lo|b\.hi|b\.ls)',
    re.IGNORECASE | re.DOTALL
)
ARRAY_LOAD_RE = re.compile(r'(ldr|mov).*\[.*,.*\]', re.IGNORECASE)
X86_ARRAY_LOAD_RE = re.compile(r'(mov|lea).*\(.*,.*,.*\)', re.IGNORECASE)
INDEX_MASK_RE = re.compile(
    r'(and|bic)\s+.*\n'
    r'.*\n?'
    r'(ldr|mov.*\[)',
    re.IGNORECASE | re.DOTALL
)

# BHI patterns
CNTVCT_RE = re.compile(r'mrs\s+.*cntvct', re.IGNORECASE)
DSB_ISB_RE = re.compile(r'dsb.*\n.*isb', re.IGNORECASE | re.DOTALL)

# L1TF patterns
LFENCE_FULL_RE = re.compile(r'\b(lfence|mfence|sfence|dsb\s+sy|dmb\s+sy|csdb)\b', re.IGNORECASE)
TERMINAL_FAULT_RE = re.compile(
    r'(mov|lea|adrp).*\n'
    r'.*\n?'
    r'(ldr|mov.*\[)',
    re.IGNORECASE | re.DOTALL
)
CACHE_TIMING_RE = re.compile(
    r'(clflush|dc\s+civac).*\n'
    r'.*\n?'
    r'(lfence|mfence|dsb|dmb).*\n'
    r'.*\n?'
    r'(rdtsc|mrs.*cntvct)',
    re.IGNORECASE | re.DOTALL
)

# BENIGN patterns
STACK_FRAME_RE = re.compile(r'^.*(push|stp\s+x29|sub\s+sp)', re.IGNORECASE | re.MULTILINE)
EPILOGUE_RE = re.compile(r'(pop|ldp\s+x29|add\s+sp).*\n.*ret', re.IGNORECASE)

# RETBLEED patterns
LEAVE_RET_RE = re.compile(r'(leave|leaveq)\s*\n\s*(ret|retq)', re.IGNORECASE)
RSB_FLUSH_RE = re.compile(
    r'(call|callq|bl)\s+\S+\s*\n'
    r'.*\n?'
    r'(ret|retq)\s*\n'
    r'.*\n?'
    r'(call|callq|bl)',
    re.IGNORECASE | re.DOTALL
)

# INCEPTION patterns
INLINE_ASM_RE = re.compile(r'(inlineasm|__asm__|volatile)', re.IGNORECASE)
INDIRECT_CALL_RE = re.compile(r'(blr|call\s*\*)', re.IGNORECASE)
RETURN_CONTROL_RE = re.compile(
    r'(mov|str).*\[.*sp.*\].*\n'
    r'.*\n?'
    r'.*\n?'
    r'(ret|retq)',
    re.IGNORECASE | re.DOTALL
)


def analyze_mds_patterns(sequence):
    """
    Analyze MDS-specific patterns in the instruction sequence.
    Returns a dictionary of MDS-distinctive features.
    
    NEW: Discriminative features vs SPECTRE_V1:
    - MDS exploits microarchitectural buffers (fill buffer, store buffer)
    - MDS has VERW instruction for buffer clearing
    - MDS has explicit zombieload/RIDL patterns
    - SPECTRE_V1 is about bounds check bypass (different mechanism)
    """
    seq_text = '\n'.join(sequence).lower()
    
    # Initialize features
    feats = {
        'has_cache_flush': 0,
        'has_fence': 0,
        'has_timing': 0,
        'has_clear_before_load': 0,
        'has_shift_then_load': 0,
        'has_flush_fence_load': 0,
        'has_mds_probe_pattern': 0,
        'cache_flush_count': 0,
        'fence_count': 0,
        'mds_gadget_score': 0.0,
        # NEW: Discriminative features vs SPECTRE_V1
        'mds_has_verw': 0,
        'mds_fill_buffer_probe': 0,
        'mds_line_fill_buffer': 0,
        'mds_explicit_zombieload': 0,
        'mds_store_buffer_probe': 0,
        'mds_no_bounds_check': 0,
    }
    
    # Count cache flushes
    flush_matches = CACHE_FLUSH_RE.findall(seq_text)
    feats['cache_flush_count'] = len(flush_matches)
    feats['has_cache_flush'] = 1 if flush_matches else 0
    
    # Count fences
    fence_matches = FENCE_RE.findall(seq_text)
    feats['fence_count'] = len(fence_matches)
    feats['has_fence'] = 1 if fence_matches else 0
    
    # Check for timing measurement
    if TIMING_RE.search(seq_text):
        feats['has_timing'] = 1
    
    # Check for clear-before-load pattern (MDS signature)
    # Pattern: xor/eor followed by load within a few instructions
    for i, line in enumerate(sequence):
        if CLEAR_REG_RE.search(line):
            # Look ahead for a load
            for j in range(i + 1, min(i + 5, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]) or 'mov' in sequence[j].lower():
                    feats['has_clear_before_load'] = 1
                    break
    
    # Check for shift-then-load pattern (MDS probe access)
    for i, line in enumerate(sequence):
        if SHIFT_OPS_RE.search(line):
            # Look ahead for a load
            for j in range(i + 1, min(i + 4, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]):
                    feats['has_shift_then_load'] = 1
                    break
    
    # Check for flush -> fence -> load sequence (MDS core pattern)
    flush_idx = None
    fence_idx = None
    for i, line in enumerate(sequence):
        if CACHE_FLUSH_RE.search(line):
            flush_idx = i
        elif flush_idx is not None and FENCE_RE.search(line):
            fence_idx = i
        elif fence_idx is not None and ARM64_LOAD_RE.search(line):
            if fence_idx > flush_idx and i > fence_idx:
                feats['has_flush_fence_load'] = 1
                break
    
    # MDS probe pattern: eor/xor + ldrb/movb + lsl/shl + ldr/mov
    if MDS_PROBE_RE.search(seq_text):
        feats['has_mds_probe_pattern'] = 1
    
    # NEW: MDS vs SPECTRE_V1 discriminative features
    
    # VERW instruction: used to clear microarchitectural buffers
    if VERW_RE.search(seq_text):
        feats['mds_has_verw'] = 1
    
    # Fill buffer probe: specific pattern for LFB/fill buffer access
    # Pattern: memory access that triggers fill buffer usage
    if FILL_BUFFER_RE.search(seq_text):
        feats['mds_fill_buffer_probe'] = 1
    
    # Line fill buffer pattern: access to recently flushed line
    if LFB_RE.search(seq_text):
        feats['mds_line_fill_buffer'] = 1
    
    # Explicit zombieload pattern: look for zombieload-related function names or comments
    if ZOMBIELOAD_RE.search(seq_text):
        feats['mds_explicit_zombieload'] = 1
    
    # Store buffer probe: store followed by load to same address (store buffer bypass)
    if STORE_BUFFER_RE.search(seq_text):
        feats['mds_store_buffer_probe'] = 1
    
    # No bounds check: MDS doesn't need bounds check (unlike SPECTRE_V1)
    if not BOUNDS_CHECK_MULTILINE_RE.search(seq_text):
        feats['mds_no_bounds_check'] = 1
    
    # Calculate MDS gadget score (higher = more likely MDS)
    score = 0.0
    if feats['has_cache_flush']:
        score += 0.25
    if feats['has_fence']:
        score += 0.1
    if feats['has_clear_before_load']:
        score += 0.2
    if feats['has_shift_then_load']:
        score += 0.15
    if feats['has_flush_fence_load']:
        score += 0.2
    if feats['has_mds_probe_pattern']:
        score += 0.3
    if feats['has_timing']:
        score += 0.1
    # NEW: discriminative features boost MDS score
    if feats['mds_has_verw']:
        score += 0.25
    if feats['mds_fill_buffer_probe']:
        score += 0.2
    if feats['mds_line_fill_buffer']:
        score += 0.15
    if feats['mds_explicit_zombieload']:
        score += 0.3
    if feats['mds_store_buffer_probe']:
        score += 0.15
    if feats['mds_no_bounds_check'] and feats['has_cache_flush']:
        score += 0.1  # MDS with no bounds check is more likely
    
    feats['mds_gadget_score'] = min(1.0, score)
    
    return feats


def analyze_spectre_v1_patterns(sequence):
    """
    Analyze Spectre V1 (bounds check bypass) specific patterns.
    
    NEW: Discriminative features vs L1TF:
    - SPECTRE_V1 has lfence guards (L1TF doesn't)
    - SPECTRE_V1 has explicit bounds check pattern (cmp + jae/jb)
    - SPECTRE_V1 has array index load pattern after branch
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'has_bounds_check': 0,
        'has_cond_branch_then_load': 0,
        'spectre_v1_score': 0.0,
        # NEW: Discriminative features vs L1TF
        'spectre_v1_lfence_guarded': 0,
        'spectre_v1_bounds_cmp_pattern': 0,
        'spectre_v1_array_index_load': 0,
        'spectre_v1_index_masking': 0,
        'spectre_v1_speculation_barrier_missing': 0,
    }
    
    # Look for bounds check pattern: cmp/subs followed by conditional branch
    if BOUNDS_CHECK_RE.search(seq_text):
        feats['has_bounds_check'] = 1
    
    # Look for conditional branch then load
    for i, line in enumerate(sequence):
        opcode = opcode_of(line)
        if opcode.startswith('b.') or opcode.startswith('j') and opcode != 'jmp':
            # Look for load after branch
            for j in range(i + 1, min(i + 6, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]):
                    feats['has_cond_branch_then_load'] = 1
                    break
            if feats['has_cond_branch_then_load']:
                break
    
    # NEW: SPECTRE_V1 vs L1TF discriminative features
    
    # SPECTRE_V1 typically has lfence guard (L1TF doesn't)
    has_lfence = bool(LFENCE_RE.search(seq_text))
    if has_lfence:
        feats['spectre_v1_lfence_guarded'] = 1
    
    # Explicit bounds check pattern: cmp with immediate + jae/jb (unsigned comparison)
    if BOUNDS_CMP_RE.search(seq_text):
        feats['spectre_v1_bounds_cmp_pattern'] = 1
    
    # Array index load: load with register offset (typical array[index] pattern)
    # Pattern: ldr/mov with [base, index, shift] or similar
    if ARRAY_LOAD_RE.search(seq_text) or X86_ARRAY_LOAD_RE.search(seq_text):
        feats['spectre_v1_array_index_load'] = 1
    
    # Index masking pattern: AND to constrain index before load
    if INDEX_MASK_RE.search(seq_text):
        feats['spectre_v1_index_masking'] = 1
    
    # Speculation barrier missing: has bounds check but no lfence after
    if feats['has_bounds_check'] and not has_lfence:
        feats['spectre_v1_speculation_barrier_missing'] = 1
    
    # Calculate SPECTRE_V1 score
    score = 0.0
    if feats['has_bounds_check']:
        score += 0.3
    if feats['has_cond_branch_then_load']:
        score += 0.25
    # NEW: discriminative features
    if feats['spectre_v1_lfence_guarded']:
        score += 0.15
    if feats['spectre_v1_bounds_cmp_pattern']:
        score += 0.2
    if feats['spectre_v1_array_index_load']:
        score += 0.15
    if feats['spectre_v1_index_masking']:
        score += 0.1
    if feats['spectre_v1_speculation_barrier_missing']:
        score += 0.1  # Vulnerable pattern
    
    feats['spectre_v1_score'] = min(1.0, score)
    
    return feats


def analyze_bhi_patterns(sequence):
    """
    Analyze Branch History Injection (BHI) specific patterns.
    
    NEW: Discriminative features vs INCEPTION:
    - BHI specifically trains branch history buffer with repeated branches
    - BHI has explicit timing measurement (mrs CNTVCT_EL0)
    - BHI has mix of conditional and indirect branches for training
    - INCEPTION is more focused on phantom speculation via indirect branches
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'has_multiple_indirect_branches': 0,
        'has_branch_training_loop': 0,
        'indirect_branch_count': 0,
        'bhi_score': 0.0,
        # NEW: Discriminative features vs INCEPTION
        'bhi_history_training_loop': 0,
        'bhi_mixed_branch_types': 0,
        'bhi_explicit_cntvct_timing': 0,
        'bhi_branch_diversity': 0,
        'bhi_repeated_branch_pattern': 0,
        'bhi_has_dsb_isb': 0,
    }
    
    # Count indirect branches
    indirect_count = sum(1 for line in sequence if is_indirect_branch(line))
    feats['indirect_branch_count'] = indirect_count
    feats['has_multiple_indirect_branches'] = 1 if indirect_count >= 2 else 0
    
    # Look for branch training pattern (repeated branch sequences)
    branch_count = sum(1 for line in sequence if opcode_of(line).startswith('b') or opcode_of(line).startswith('j'))
    if branch_count >= 3 and indirect_count >= 1:
        feats['has_branch_training_loop'] = 1
    
    # NEW: BHI vs INCEPTION discriminative features
    
    # History training loop: repeated conditional branches training BHB
    cond_branch_count = sum(1 for line in sequence 
                           if opcode_of(line).startswith('b.') or 
                              opcode_of(line).startswith('cb') or
                              (opcode_of(line).startswith('j') and opcode_of(line) != 'jmp'))
    if cond_branch_count >= 4:
        feats['bhi_history_training_loop'] = 1
    
    # Mixed branch types: both conditional and indirect (BHI training pattern)
    if cond_branch_count >= 2 and indirect_count >= 1:
        feats['bhi_mixed_branch_types'] = 1
    
    # Explicit CNTVCT timing (ARM64 counter): used in BHI for timing measurement
    if CNTVCT_RE.search(seq_text):
        feats['bhi_explicit_cntvct_timing'] = 1
    
    # Branch diversity: count different branch instruction types
    branch_types = set()
    for line in sequence:
        op = opcode_of(line)
        if op.startswith('b') or op.startswith('j') or op.startswith('cb'):
            branch_types.add(op[:3])  # First 3 chars to group similar branches
    feats['bhi_branch_diversity'] = len(branch_types)
    
    # Repeated branch pattern: same branch instruction appearing multiple times
    branch_ops_list = [opcode_of(line) for line in sequence 
                       if opcode_of(line).startswith('b') or opcode_of(line).startswith('j')]
    if len(branch_ops_list) > 0:
        branch_freq = Counter(branch_ops_list)
        if any(count >= 3 for count in branch_freq.values()):
            feats['bhi_repeated_branch_pattern'] = 1
    
    # DSB + ISB pattern: barrier sequence common in BHI gadgets
    if DSB_ISB_RE.search(seq_text):
        feats['bhi_has_dsb_isb'] = 1
    
    # Calculate BHI score
    score = 0.0
    if feats['has_multiple_indirect_branches']:
        score += 0.3
    if feats['has_branch_training_loop']:
        score += 0.2
    if indirect_count >= 3:
        score += 0.1
    # NEW: discriminative features boost BHI score
    if feats['bhi_history_training_loop']:
        score += 0.2
    if feats['bhi_mixed_branch_types']:
        score += 0.15
    if feats['bhi_explicit_cntvct_timing']:
        score += 0.2
    if feats['bhi_branch_diversity'] >= 3:
        score += 0.1
    if feats['bhi_repeated_branch_pattern']:
        score += 0.15
    if feats['bhi_has_dsb_isb']:
        score += 0.1
    
    feats['bhi_score'] = min(1.0, score)
    
    return feats


# --- Control Flow Graph (CFG) Feature Extraction ---

def _is_conditional_branch(op):
    """Check if opcode is a conditional branch instruction."""
    return (op.startswith('b.') or
            op in ['cbz', 'cbnz', 'tbz', 'tbnz'] or
            (op.startswith('j') and op not in ['jmp', 'jmpq']))


def build_cfg_for_features(sequence):
    """
    Build a control flow graph from instruction sequence.
    Returns a tuple of (adjacency_list, num_conditional_branches).

    Conditional branches get out-degree=2 (fall-through + taken path marker)
    even though we can't resolve branch targets in assembly windows.
    """
    n = len(sequence)
    adj = {i: [] for i in range(n)}
    num_cond_branches = 0

    for i, line in enumerate(sequence):
        op = opcode_of(line)

        if op in ['ret', 'retq', 'retn']:
            # Return instruction - no successors in this window
            continue
        elif _is_conditional_branch(op):
            # Conditional branch: fall-through + taken (even if target unresolved)
            num_cond_branches += 1
            if i + 1 < n:
                adj[i].append(i + 1)  # Fall-through
            # Mark out-degree=2 by adding a sentinel target (-1) for the taken path
            # This ensures max_out_degree > 1 for conditional branches
            adj[i].append(-1)
        elif op in ['b', 'jmp', 'jmpq']:
            # Unconditional branch - target only (no fall-through)
            adj[i].append(-1)  # Target unknown, but edge exists
        elif op in ['bl', 'call', 'callq']:
            # Call - returns to next instruction
            if i + 1 < n:
                adj[i].append(i + 1)
        else:
            # Normal instruction - sequential
            if i + 1 < n:
                adj[i].append(i + 1)

    return adj, num_cond_branches


def build_dfg_for_features(sequence):
    """
    Build a data flow graph based on register def-use chains.
    Returns adjacency list mapping producer index to consumer indices.
    """
    # Track last definition of each register
    last_def = {}  # reg -> instruction index
    dfg = {i: [] for i in range(len(sequence))}
    
    for i, line in enumerate(sequence):
        op = opcode_of(line)
        if not op or op.endswith(':'):
            continue
            
        # Extract registers
        regs = set(REG_ARM_RE.findall(line)) | set(REG_X86_RE.findall(line))
        regs = {r.lower().replace('%', '') for r in regs}
        
        # Check for uses (add DFG edges from last def)
        for reg in regs:
            if reg in last_def:
                producer = last_def[reg]
                dfg[producer].append(i)
        
        # Update definitions (heuristic: first operand is usually dest for most ops)
        operands = parse_operands(line)
        if operands and op not in ['cmp', 'test', 'str', 'stp', 'push']:
            dest_regs = get_regs_in_string(operands[0])
            for reg in dest_regs:
                last_def[reg] = i
    
    return dfg


def analyze_graph_features(sequence):
    """
    Extract graph-theoretic features from CFG and DFG.
    These features capture structural properties of the code.
    """
    feats = {
        'cfg_num_edges': 0,
        'cfg_num_back_edges': 0,
        'cfg_max_out_degree': 0,
        'cfg_has_branch': 0,
        'cfg_branch_ratio': 0.0,
        'cfg_cyclomatic_complexity': 1,  # V(G) = E - N + 2P
        'dfg_num_edges': 0,
        'dfg_max_chain_length': 0,
        'dfg_avg_out_degree': 0.0,
        'dfg_has_long_chain': 0,
        'graph_density': 0.0,
    }

    n = len(sequence)
    if n == 0:
        return feats

    # Build CFG (now returns adjacency + conditional branch count)
    cfg, num_cond_branches = build_cfg_for_features(sequence)

    # CFG metrics — count real edges (exclude sentinel -1 targets)
    cfg_edges = sum(1 for targets in cfg.values() for t in targets if t >= 0)
    feats['cfg_num_edges'] = cfg_edges

    # Count back edges (loops) - edge i->j where j <= i and j >= 0
    back_edges = 0
    for src, targets in cfg.items():
        for tgt in targets:
            if tgt >= 0 and tgt <= src:
                back_edges += 1
    feats['cfg_num_back_edges'] = back_edges

    # Max out-degree (branching factor) — include sentinel targets
    max_out = max(len(targets) for targets in cfg.values()) if cfg else 0
    feats['cfg_max_out_degree'] = max_out
    feats['cfg_has_branch'] = 1 if num_cond_branches > 0 else 0

    # Branch ratio — fraction of instructions that are conditional branches
    feats['cfg_branch_ratio'] = num_cond_branches / n if n > 0 else 0.0

    # Cyclomatic complexity: M = num_conditional_branches + 1
    # (standard approximation for incomplete CFGs without resolved targets)
    feats['cfg_cyclomatic_complexity'] = num_cond_branches + 1
    
    # Build DFG
    dfg = build_dfg_for_features(sequence)
    
    # DFG metrics
    dfg_edges = sum(len(targets) for targets in dfg.values())
    feats['dfg_num_edges'] = dfg_edges
    
    # Find longest def-use chain using BFS/DFS
    def find_longest_chain(adj):
        max_len = 0
        for start in adj:
            visited = set()
            stack = [(start, 0)]
            while stack:
                node, depth = stack.pop()
                if node in visited:
                    continue
                visited.add(node)
                max_len = max(max_len, depth)
                for neighbor in adj.get(node, []):
                    if neighbor not in visited:
                        stack.append((neighbor, depth + 1))
        return max_len
    
    chain_len = find_longest_chain(dfg)
    feats['dfg_max_chain_length'] = chain_len
    feats['dfg_has_long_chain'] = 1 if chain_len >= 4 else 0
    
    # Average out-degree
    out_degrees = [len(targets) for targets in dfg.values()]
    feats['dfg_avg_out_degree'] = sum(out_degrees) / len(out_degrees) if out_degrees else 0.0
    
    # Graph density: E / (N * (N-1)) for directed graph
    max_edges = n * (n - 1) if n > 1 else 1
    total_edges = cfg_edges + dfg_edges
    feats['graph_density'] = total_edges / max_edges if max_edges > 0 else 0.0
    
    return feats


# --- L1TF-Specific Feature Detection ---

# L1TF exploits speculative execution after terminal page fault
# Key patterns: cache flush/reload, timing measurement, PTE manipulation hints
INVLPG_RE = re.compile(r"\b(invlpg|tlbi)\b", re.IGNORECASE)  # TLB invalidation
PAGE_FAULT_HINTS_RE = re.compile(r"\b(ud2|int\s+3|int\s+14|brk)\b", re.IGNORECASE)  # Fault triggers
PTE_MANIPULATION_RE = re.compile(r"\b(invlpg|clflush|wbinvd|tlbi)\b", re.IGNORECASE)

def analyze_l1tf_patterns(sequence):
    """
    Analyze L1TF (L1 Terminal Fault) specific patterns.
    L1TF exploits speculative execution with unmapped/invalid PTEs.
    
    Key patterns:
    - FLUSH+RELOAD cache side channel
    - TLB/page table invalidation followed by access
    - Timing measurements around memory access
    - Cache line flush followed by memory access
    
    NEW: Discriminative features vs SPECTRE_V1:
    - L1TF has NO lfence before speculative loads (unlike SPECTRE_V1)
    - L1TF specifically targets terminal page faults
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'l1tf_has_flush_reload': 0,
        'l1tf_has_tlb_invalidation': 0,
        'l1tf_has_pte_manipulation': 0,
        'l1tf_has_fault_trigger': 0,
        'l1tf_has_timing_around_load': 0,
        'l1tf_flush_then_access': 0,
        'l1tf_cache_timing_pattern': 0,
        'l1tf_score': 0.0,
        # NEW: Discriminative features vs SPECTRE_V1
        'l1tf_no_fence_before_load': 0,
        'l1tf_terminal_fault_setup': 0,
        'l1tf_unmapped_access_pattern': 0,
        'l1tf_speculative_window_no_guard': 0,
    }
    
    # Check for TLB invalidation instructions
    if INVLPG_RE.search(seq_text):
        feats['l1tf_has_tlb_invalidation'] = 1
    
    # Check for PTE manipulation hints
    if PTE_MANIPULATION_RE.search(seq_text):
        feats['l1tf_has_pte_manipulation'] = 1
    
    # Check for fault triggers (ud2, int 3, brk)
    if PAGE_FAULT_HINTS_RE.search(seq_text):
        feats['l1tf_has_fault_trigger'] = 1
    
    # FLUSH + RELOAD pattern: clflush followed by timing + load
    flush_idx = None
    timing_idx = None
    for i, line in enumerate(sequence):
        if CACHE_FLUSH_RE.search(line):
            flush_idx = i
        elif flush_idx is not None and TIMING_RE.search(line):
            timing_idx = i
        elif timing_idx is not None and ARM64_LOAD_RE.search(line):
            if timing_idx > flush_idx and i > timing_idx:
                feats['l1tf_has_flush_reload'] = 1
                break
    
    # Flush then access (simpler pattern)
    for i, line in enumerate(sequence):
        if CACHE_FLUSH_RE.search(line):
            # Look for load within next few instructions
            for j in range(i + 1, min(i + 8, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]):
                    feats['l1tf_flush_then_access'] = 1
                    break
            if feats['l1tf_flush_then_access']:
                break
    
    # Timing around load: rdtsc -> load -> rdtsc
    timing_before_load = False
    for i, line in enumerate(sequence):
        if TIMING_RE.search(line):
            # Look for load followed by another timing
            for j in range(i + 1, min(i + 6, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]):
                    for k in range(j + 1, min(j + 6, len(sequence))):
                        if TIMING_RE.search(sequence[k]):
                            feats['l1tf_has_timing_around_load'] = 1
                            break
                    break
    
    # Cache timing pattern: specific sequence for cache probing
    if CACHE_TIMING_RE.search(seq_text):
        feats['l1tf_cache_timing_pattern'] = 1
    
    # NEW: L1TF vs SPECTRE_V1 discriminative features
    
    # L1TF has NO fence before speculative load (unlike SPECTRE_V1 which uses lfence)
    has_fence = bool(LFENCE_FULL_RE.search(seq_text))
    has_load = bool(ARM64_LOAD_RE.search(seq_text))
    if has_load and not has_fence:
        feats['l1tf_no_fence_before_load'] = 1
    
    # Terminal fault setup: access pattern suggesting unmapped memory
    # Look for patterns like: mov to address, then access that triggers fault
    if TERMINAL_FAULT_RE.search(seq_text) and feats['l1tf_has_fault_trigger']:
        feats['l1tf_terminal_fault_setup'] = 1
    
    # Unmapped access pattern: flush followed by access without bounds check
    # L1TF doesn't need bounds check (it's about PTE not index)
    has_bounds_cmp = bool(re.search(r'(cmp|test|subs).*\n.*\b(b\.|j[aeglnz])', seq_text, re.IGNORECASE))
    if feats['l1tf_flush_then_access'] and not has_bounds_cmp:
        feats['l1tf_unmapped_access_pattern'] = 1
    
    # Speculative window without guard: timing measurement without lfence protection
    if feats['l1tf_has_timing_around_load'] and not has_fence:
        feats['l1tf_speculative_window_no_guard'] = 1
    
    # Calculate L1TF score
    score = 0.0
    if feats['l1tf_has_flush_reload']:
        score += 0.35
    if feats['l1tf_has_tlb_invalidation']:
        score += 0.25
    if feats['l1tf_has_pte_manipulation']:
        score += 0.15
    if feats['l1tf_flush_then_access']:
        score += 0.2
    if feats['l1tf_has_timing_around_load']:
        score += 0.25
    if feats['l1tf_cache_timing_pattern']:
        score += 0.3
    if feats['l1tf_has_fault_trigger']:
        score += 0.1
    # NEW: discriminative features boost L1TF score
    if feats['l1tf_no_fence_before_load']:
        score += 0.15
    if feats['l1tf_terminal_fault_setup']:
        score += 0.2
    if feats['l1tf_unmapped_access_pattern']:
        score += 0.15
    if feats['l1tf_speculative_window_no_guard']:
        score += 0.1
    
    feats['l1tf_score'] = min(1.0, score)
    
    return feats


# --- BENIGN Code Counter-Features ---

def analyze_benign_patterns(sequence):
    """
    Analyze patterns typical of benign/normal code.
    These features help distinguish regular code from attack gadgets.
    
    Key indicators of benign code:
    - Simple, balanced control flow
    - Stack-focused memory access (typical function patterns)
    - No timing/cache manipulation
    - Regular function prologue/epilogue patterns
    - Absence of speculation attack primitives
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'benign_simple_control_flow': 0,
        'benign_stack_frame_pattern': 0,
        'benign_balanced_push_pop': 0,
        'benign_no_timing_ops': 1,  # Default to 1, set to 0 if found
        'benign_no_cache_ops': 1,   # Default to 1, set to 0 if found
        'benign_no_indirect_branch': 1,
        'benign_pure_arithmetic': 0,
        'benign_loop_pattern': 0,
        'benign_function_call_pattern': 0,
        'benign_score': 0.0,
    }
    
    # Count instruction types
    load_count = sum(1 for line in sequence if ARM64_LOAD_RE.search(line))
    store_count = sum(1 for line in sequence if ARM64_STORE_RE.search(line))
    push_count = len(PUSH_INSTR_RE.findall(seq_text))
    pop_count = len(POP_INSTR_RE.findall(seq_text))
    call_count = len(CALL_INSTR_RE.findall(seq_text))
    ret_count = len(RET_INSTR_RE.findall(seq_text))
    
    # Check for timing operations (absence = benign)
    if TIMING_RE.search(seq_text):
        feats['benign_no_timing_ops'] = 0
    
    # Check for cache operations (absence = benign)
    if CACHE_FLUSH_RE.search(seq_text):
        feats['benign_no_cache_ops'] = 0
    
    # Check for indirect branches (absence = benign)
    if any(is_indirect_branch(line) for line in sequence):
        feats['benign_no_indirect_branch'] = 0
    
    # Simple control flow: 0-1 branches, no complex patterns
    branch_count = sum(1 for line in sequence 
                       if opcode_of(line).startswith('b.') or 
                          opcode_of(line).startswith('j') or
                          opcode_of(line).startswith('cb'))
    if branch_count <= 2 and not any(is_indirect_branch(line) for line in sequence):
        feats['benign_simple_control_flow'] = 1
    
    # Balanced push/pop (typical function patterns)
    if push_count > 0 and abs(push_count - pop_count) <= 1:
        feats['benign_balanced_push_pop'] = 1
    
    # Stack frame pattern: push/stp at start, pop/ldp at end
    if STACK_FRAME_RE.search(seq_text):
        # Check for corresponding epilogue
        if EPILOGUE_RE.search(seq_text):
            feats['benign_stack_frame_pattern'] = 1
    
    # Pure arithmetic: mostly add/sub/mul/shift with no memory side effects
    arith_ops = ['add', 'sub', 'mul', 'and', 'orr', 'eor', 'lsl', 'lsr', 'asr', 
                 'xor', 'shl', 'shr', 'inc', 'dec', 'neg', 'not', 'imul']
    arith_count = sum(1 for line in sequence if opcode_of(line) in arith_ops)
    total_ops = len([l for l in sequence if opcode_of(l) and not opcode_of(l).endswith(':')])
    if total_ops > 0 and arith_count / total_ops > 0.6:
        feats['benign_pure_arithmetic'] = 1
    
    # Loop pattern: conditional branch backward (simple loop)
    for i, line in enumerate(sequence):
        opcode = opcode_of(line)
        if opcode.startswith('b.') or opcode.startswith('cb'):
            # Check if branch target might be backward (label reference)
            if any(char.isalpha() for char in line.split()[-1] if len(line.split()) > 1):
                feats['benign_loop_pattern'] = 1
                break
    
    # Function call pattern: call followed by using return value
    for i, line in enumerate(sequence):
        if CALL_INSTR_RE.search(line):
            # Look for use of return register (x0, rax, eax) after call
            for j in range(i + 1, min(i + 4, len(sequence))):
                if re.search(r'\b(x0|rax|eax)\b', sequence[j], re.IGNORECASE):
                    feats['benign_function_call_pattern'] = 1
                    break
    
    # Calculate benign score
    score = 0.0
    score += feats['benign_simple_control_flow'] * 0.15
    score += feats['benign_stack_frame_pattern'] * 0.2
    score += feats['benign_balanced_push_pop'] * 0.1
    score += feats['benign_no_timing_ops'] * 0.2
    score += feats['benign_no_cache_ops'] * 0.15
    score += feats['benign_no_indirect_branch'] * 0.1
    score += feats['benign_pure_arithmetic'] * 0.1
    score += feats['benign_loop_pattern'] * 0.05
    score += feats['benign_function_call_pattern'] * 0.1
    
    # Penalty for attack-like patterns
    if len(CACHE_FLUSH_RE.findall(seq_text)) > 0:
        score -= 0.3
    if TIMING_RE.search(seq_text):
        score -= 0.25
    
    feats['benign_score'] = max(0.0, min(1.0, score))
    
    return feats


# --- RETBLEED-Specific Feature Detection ---

# Patterns for RETBLEED (RSB underflow / Branch Type Confusion)
RET_INSTR_RE = re.compile(r"\b(ret|retq|retn)\b", re.IGNORECASE)
CALL_INSTR_RE = re.compile(r"\b(call|callq|bl)\b", re.IGNORECASE)
LEAVE_INSTR_RE = re.compile(r"\b(leave|leaveq)\b", re.IGNORECASE)
PUSH_INSTR_RE = re.compile(r"\b(push|pushq|stp)\b", re.IGNORECASE)
POP_INSTR_RE = re.compile(r"\b(pop|popq|ldp)\b", re.IGNORECASE)


def analyze_retbleed_patterns(sequence):
    """
    Analyze RETBLEED-specific patterns in the instruction sequence.
    RETBLEED exploits Return Stack Buffer (RSB) underflow to redirect
    speculative execution via mispredicted return instructions.
    
    Key patterns:
    - Multiple ret instructions
    - Deep call chains (recursive calls)
    - leave + ret sequences
    - RSB manipulation patterns
    
    NEW: Discriminative features vs INCEPTION:
    - RETBLEED is about RSB underflow (many calls, then ret misprediction)
    - INCEPTION is about phantom speculation via indirect branches
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'ret_count': 0,
        'call_count': 0,
        'has_leave_ret_pattern': 0,
        'has_recursive_call_hint': 0,
        'has_deep_call_pattern': 0,
        'has_rsb_manipulation': 0,
        'call_ret_ratio': 0.0,
        'push_pop_imbalance': 0,
        'retbleed_score': 0.0,
        # NEW: Discriminative features vs INCEPTION
        'retbleed_call_chain_depth': 0,
        'retbleed_unbalanced_ret': 0,
        'retbleed_rsb_flush_pattern': 0,
        'retbleed_ret_after_many_calls': 0,
        'retbleed_no_indirect_branch': 0,
    }
    
    # Count ret instructions
    ret_matches = RET_INSTR_RE.findall(seq_text)
    feats['ret_count'] = len(ret_matches)
    
    # Count call instructions
    call_matches = CALL_INSTR_RE.findall(seq_text)
    feats['call_count'] = len(call_matches)
    
    # Calculate call/ret ratio (RSB balance indicator)
    if feats['ret_count'] > 0:
        feats['call_ret_ratio'] = feats['call_count'] / feats['ret_count']
    
    # Check for leave + ret pattern (common in function epilogues being exploited)
    if LEAVE_RET_RE.search(seq_text):
        feats['has_leave_ret_pattern'] = 1
    
    # Check for recursive call pattern (call to same or nearby label)
    # Look for patterns like: call <label> ... <label>: ... call <label>
    # Simplified: multiple calls to the same target within the window
    call_targets = []
    for line in sequence:
        if CALL_INSTR_RE.search(line):
            parts = line.strip().split()
            if len(parts) > 1:
                target = parts[-1].strip()
                call_targets.append(target)
    
    # If we see the same call target multiple times, hint at recursive pattern
    if len(call_targets) > 1:
        target_counts = Counter(call_targets)
        if any(count > 1 for count in target_counts.values()):
            feats['has_recursive_call_hint'] = 1
    
    # Deep call pattern: multiple sequential calls (RSB filling)
    consecutive_calls = 0
    max_consecutive_calls = 0
    for line in sequence:
        if CALL_INSTR_RE.search(line):
            consecutive_calls += 1
            max_consecutive_calls = max(max_consecutive_calls, consecutive_calls)
        else:
            consecutive_calls = 0
    
    if max_consecutive_calls >= 2:
        feats['has_deep_call_pattern'] = 1
    
    # Push/pop imbalance (RSB manipulation)
    push_count = len(PUSH_INSTR_RE.findall(seq_text))
    pop_count = len(POP_INSTR_RE.findall(seq_text))
    feats['push_pop_imbalance'] = abs(push_count - pop_count)
    
    # RSB manipulation: multiple rets without corresponding calls
    if feats['ret_count'] > feats['call_count'] and feats['ret_count'] >= 2:
        feats['has_rsb_manipulation'] = 1
    
    # Also check for call + ret sequences that could deplete RSB
    call_ret_pairs = 0
    for i, line in enumerate(sequence):
        if CALL_INSTR_RE.search(line):
            # Look for ret within next few instructions
            for j in range(i + 1, min(i + 5, len(sequence))):
                if RET_INSTR_RE.search(sequence[j]):
                    call_ret_pairs += 1
                    break
    
    if call_ret_pairs >= 2:
        feats['has_rsb_manipulation'] = 1
    
    # NEW: RETBLEED vs INCEPTION discriminative features
    
    # Call chain depth: count consecutive calls before any ret
    call_chain = 0
    max_call_chain = 0
    for line in sequence:
        if CALL_INSTR_RE.search(line):
            call_chain += 1
            max_call_chain = max(max_call_chain, call_chain)
        elif RET_INSTR_RE.search(line):
            call_chain = 0  # Reset on ret
    feats['retbleed_call_chain_depth'] = max_call_chain
    
    # Unbalanced ret: ret without matching call in this window
    if feats['ret_count'] > feats['call_count']:
        feats['retbleed_unbalanced_ret'] = 1
    
    # RSB flush pattern: call; ret; call sequence (depletes RSB)
    if RSB_FLUSH_RE.search(seq_text):
        feats['retbleed_rsb_flush_pattern'] = 1
    
    # Ret after many calls: classic RSB underflow setup
    if feats['call_count'] >= 3 and feats['ret_count'] >= 1:
        feats['retbleed_ret_after_many_calls'] = 1
    
    # No indirect branch: RETBLEED uses ret, not indirect branches (unlike INCEPTION)
    has_indirect = any(is_indirect_branch(line) for line in sequence)
    if not has_indirect:
        feats['retbleed_no_indirect_branch'] = 1
    
    # Calculate RETBLEED score
    score = 0.0
    
    # Multiple rets is a strong signal
    if feats['ret_count'] >= 2:
        score += 0.25
    elif feats['ret_count'] >= 1:
        score += 0.1
    
    # leave + ret pattern
    if feats['has_leave_ret_pattern']:
        score += 0.2
    
    # Recursive/deep call patterns (RSB depletion)
    if feats['has_recursive_call_hint']:
        score += 0.2
    if feats['has_deep_call_pattern']:
        score += 0.15
    
    # RSB manipulation
    if feats['has_rsb_manipulation']:
        score += 0.25
    
    # Push/pop imbalance suggests stack manipulation
    if feats['push_pop_imbalance'] >= 2:
        score += 0.1
    
    # Multiple calls followed by a single ret is classic RSB underflow setup
    if feats['call_count'] >= 3 and feats['ret_count'] >= 1:
        score += 0.15
    
    # NEW: discriminative features boost RETBLEED score
    if feats['retbleed_call_chain_depth'] >= 3:
        score += 0.15
    if feats['retbleed_unbalanced_ret']:
        score += 0.1
    if feats['retbleed_rsb_flush_pattern']:
        score += 0.15
    if feats['retbleed_no_indirect_branch'] and feats['ret_count'] >= 1:
        score += 0.1  # RETBLEED uses ret, not indirect branches
    
    feats['retbleed_score'] = min(1.0, score)
    
    return feats


# --- INCEPTION-Specific Feature Detection ---

def analyze_inception_patterns(sequence):
    """
    Analyze INCEPTION-specific patterns in the instruction sequence.
    INCEPTION exploits phantom speculation via indirect branches and
    Branch Target Buffer (BTB) misprediction.
    
    Key patterns:
    - Indirect branches (br, blr, jmp *reg)
    - BTB pollution/training patterns
    - Inline assembly speculation windows
    - Return-based misdirection with controlled RSP
    
    Discriminative features vs RETBLEED:
    - INCEPTION uses indirect branches (br, blr, jmp *reg)
    - RETBLEED uses return instructions (ret)
    """
    seq_text = '\n'.join(sequence).lower()
    
    feats = {
        'inception_indirect_branch_count': 0,
        'inception_btb_pollution': 0,
        'inception_phantom_window': 0,
        'inception_call_target_mismatch': 0,
        'inception_return_target_control': 0,
        'inception_speculative_store': 0,
        'inception_has_inline_asm': 0,
        'inception_score': 0.0,
    }
    
    # Count indirect branches (the core of INCEPTION)
    indirect_count = sum(1 for line in sequence if is_indirect_branch(line))
    feats['inception_indirect_branch_count'] = indirect_count
    
    # BTB pollution: multiple indirect branches training the BTB
    if indirect_count >= 2:
        feats['inception_btb_pollution'] = 1
    
    # Inline assembly markers suggest speculation window
    if INLINE_ASM_RE.search(seq_text):
        feats['inception_has_inline_asm'] = 1
    
    # Phantom speculation window: indirect branch followed by speculative instructions
    for i, line in enumerate(sequence):
        if is_indirect_branch(line):
            # Look for memory access after indirect branch (speculation)
            for j in range(i + 1, min(i + 6, len(sequence))):
                if ARM64_LOAD_RE.search(sequence[j]) or ARM64_STORE_RE.search(sequence[j]):
                    feats['inception_phantom_window'] = 1
                    break
            if feats['inception_phantom_window']:
                break
    
    # Call target mismatch: indirect call where target could be controlled
    if INDIRECT_CALL_RE.search(seq_text):
        # Check for register loading before the call
        for i, line in enumerate(sequence):
            if INDIRECT_CALL_RE.search(line):
                # Look for register setup before
                for j in range(max(0, i - 4), i):
                    if re.search(r'(mov|ldr|adrp|lea)', sequence[j], re.IGNORECASE):
                        feats['inception_call_target_mismatch'] = 1
                        break
    
    # Return target control: manipulation of return address on stack
    # Pattern: mov/str to stack pointer area followed by ret
    if RETURN_CONTROL_RE.search(seq_text):
        feats['inception_return_target_control'] = 1
    
    # Speculative store: store in speculation window (can leak data)
    for i, line in enumerate(sequence):
        if is_indirect_branch(line):
            for j in range(i + 1, min(i + 4, len(sequence))):
                if ARM64_STORE_RE.search(sequence[j]):
                    feats['inception_speculative_store'] = 1
                    break
    
    # Calculate INCEPTION score
    score = 0.0
    
    # Indirect branches are the core signal
    if feats['inception_indirect_branch_count'] >= 2:
        score += 0.3
    elif feats['inception_indirect_branch_count'] >= 1:
        score += 0.15
    
    if feats['inception_btb_pollution']:
        score += 0.2
    if feats['inception_phantom_window']:
        score += 0.25
    if feats['inception_call_target_mismatch']:
        score += 0.15
    if feats['inception_return_target_control']:
        score += 0.2
    if feats['inception_speculative_store']:
        score += 0.15
    if feats['inception_has_inline_asm']:
        score += 0.1
    
    feats['inception_score'] = min(1.0, score)
    
    return feats


# --- Mutual Exclusion Scores for Confused Pairs ---

def compute_mutual_exclusion_scores(feats: dict) -> dict:
    """
    Compute disambiguation scores for commonly confused vulnerability pairs.
    These scores help the classifier distinguish between similar attack types.
    
    Pairs addressed:
    1. L1TF vs SPECTRE_V1
    2. RETBLEED vs INCEPTION
    3. SPECTRE_V1 vs MDS
    4. INCEPTION vs BHI
    
    Each score is a signed value where:
    - Positive = more likely first class
    - Negative = more likely second class
    - Near zero = ambiguous
    """
    scores = {}
    
    # 1. L1TF vs SPECTRE_V1 score
    # L1TF: no fence, terminal fault, unmapped access
    # SPECTRE_V1: lfence guard, bounds check, array index
    l1tf_signals = (
        feats.get('l1tf_no_fence_before_load', 0) * 2.0 +
        feats.get('l1tf_terminal_fault_setup', 0) * 1.5 +
        feats.get('l1tf_unmapped_access_pattern', 0) * 1.5 +
        feats.get('l1tf_has_tlb_invalidation', 0) * 2.0 +
        feats.get('l1tf_has_pte_manipulation', 0) * 1.5
    )
    spectre_v1_signals = (
        feats.get('spectre_v1_lfence_guarded', 0) * 2.0 +
        feats.get('spectre_v1_bounds_cmp_pattern', 0) * 2.0 +
        feats.get('spectre_v1_array_index_load', 0) * 1.5 +
        feats.get('spectre_v1_index_masking', 0) * 1.0 +
        feats.get('has_bounds_check', 0) * 1.5
    )
    scores['l1tf_vs_spectre_v1_score'] = l1tf_signals - spectre_v1_signals
    
    # 2. RETBLEED vs INCEPTION score
    # RETBLEED: RSB underflow, ret-focused, no indirect branches
    # INCEPTION: indirect branches, BTB pollution, phantom speculation
    retbleed_signals = (
        feats.get('retbleed_unbalanced_ret', 0) * 2.0 +
        feats.get('retbleed_rsb_flush_pattern', 0) * 2.0 +
        feats.get('retbleed_call_chain_depth', 0) * 0.5 +
        feats.get('retbleed_no_indirect_branch', 0) * 1.5 +
        feats.get('has_leave_ret_pattern', 0) * 1.5 +
        feats.get('ret_count', 0) * 0.3
    )
    inception_signals = (
        feats.get('inception_indirect_branch_count', 0) * 1.0 +
        feats.get('inception_btb_pollution', 0) * 2.0 +
        feats.get('inception_phantom_window', 0) * 2.0 +
        feats.get('inception_call_target_mismatch', 0) * 1.5 +
        feats.get('inception_return_target_control', 0) * 1.5
    )
    scores['retbleed_vs_inception_score'] = retbleed_signals - inception_signals
    
    # 3. SPECTRE_V1 vs MDS score
    # SPECTRE_V1: bounds bypass, array access
    # MDS: buffer exploitation, zombieload, VERW
    spectre_v1_for_mds = (
        feats.get('has_bounds_check', 0) * 2.0 +
        feats.get('spectre_v1_bounds_cmp_pattern', 0) * 2.0 +
        feats.get('spectre_v1_array_index_load', 0) * 1.5 +
        feats.get('spectre_v1_index_masking', 0) * 1.5
    )
    mds_signals = (
        feats.get('mds_has_verw', 0) * 3.0 +
        feats.get('mds_fill_buffer_probe', 0) * 2.0 +
        feats.get('mds_explicit_zombieload', 0) * 3.0 +
        feats.get('mds_line_fill_buffer', 0) * 1.5 +
        feats.get('mds_store_buffer_probe', 0) * 1.5 +
        feats.get('has_mds_probe_pattern', 0) * 2.0
    )
    scores['spectre_v1_vs_mds_score'] = spectre_v1_for_mds - mds_signals
    
    # 4. INCEPTION vs BHI score
    # INCEPTION: indirect branch focused, phantom speculation
    # BHI: branch history training, mixed branches, CNTVCT timing
    inception_for_bhi = (
        feats.get('inception_indirect_branch_count', 0) * 0.5 +
        feats.get('inception_phantom_window', 0) * 2.0 +
        feats.get('inception_speculative_store', 0) * 1.5 +
        feats.get('inception_return_target_control', 0) * 2.0
    )
    bhi_signals = (
        feats.get('bhi_history_training_loop', 0) * 2.0 +
        feats.get('bhi_mixed_branch_types', 0) * 2.0 +
        feats.get('bhi_explicit_cntvct_timing', 0) * 3.0 +
        feats.get('bhi_repeated_branch_pattern', 0) * 1.5 +
        feats.get('bhi_has_dsb_isb', 0) * 1.5 +
        feats.get('bhi_branch_diversity', 0) * 0.3
    )
    scores['inception_vs_bhi_score'] = inception_for_bhi - bhi_signals
    
    # Normalized versions (0-1 range using sigmoid-like transform)
    import math
    def normalize_score(x, scale=3.0):
        return 1.0 / (1.0 + math.exp(-x / scale))
    
    scores['l1tf_vs_spectre_v1_norm'] = normalize_score(scores['l1tf_vs_spectre_v1_score'])
    scores['retbleed_vs_inception_norm'] = normalize_score(scores['retbleed_vs_inception_score'])
    scores['spectre_v1_vs_mds_norm'] = normalize_score(scores['spectre_v1_vs_mds_score'])
    scores['inception_vs_bhi_norm'] = normalize_score(scores['inception_vs_bhi_score'])
    
    return scores


# --- New Dependency Analysis Logic ---

def parse_operands(line):
    """
    Simple heuristic to split operands.
    Assumes format: 'opcode op1, op2, op3'
    """
    parts = line.strip().split(None, 1)
    if len(parts) < 2:
        return []
    operands_str = parts[1]
    # Split by comma, ignoring commas inside brackets if possible (simple split for now)
    # Better: split by comma
    ops = [o.strip() for o in operands_str.split(',')]
    return ops

def get_regs_in_string(s, arch='unknown'):
    """Extract registers from a string."""
    regs = set()
    # Try ARM patterns
    for m in REG_ARM_RE.finditer(s):
        regs.add(m.group(1).lower())
    # Try x86 patterns
    for m in REG_X86_RE.finditer(s):
        clean = m.group(1).lower().replace('%', '')
        regs.add(clean)
    return list(regs)

def analyze_dependencies(sequence):
    """
    Analyze data dependencies in the instruction sequence.
    Returns a dictionary of dependency features.
    """
    # definitions: reg -> (instruction_index, type)
    # type: 'LOAD', 'ARITH', 'OTHER'
    defs = {}
    
    feat_dep_load_load = 0
    feat_dep_arith_load = 0
    feat_dep_distances = []
    
    for i, line in enumerate(sequence):
        opcode = opcode_of(line)
        if opcode == 'nop' or opcode.endswith(':'):
            continue
            
        # Determine operation type
        op_type = 'OTHER'
        if opcode.startswith('ldr') or opcode.startswith('ldp') or (opcode.startswith('mov') and '[' in line):
            op_type = 'LOAD'
        elif opcode in ['add', 'sub', 'mul', 'lsl', 'lsr', 'and', 'orr', 'eor', 'xor', 'inc', 'dec', 'shl', 'shr']:
            op_type = 'ARITH'
            
        operands = parse_operands(line)
        
        # Heuristic for Dest vs Source
        # ARM/x86 usually: Op Dest, Src1, Src2 ...
        # Stores are: Str Src, [Dest]  (Dest is memory address, so it's a register USE)
        # CMP is: Cmp Src1, Src2 (Both uses)
        
        uses = []
        new_defs = []
        
        if opcode.startswith('str') or opcode.startswith('stp') or opcode == 'cmp':
            # All operands are effectively USES (stores write to memory, not register defs)
            for op in operands:
                uses.extend(get_regs_in_string(op))
        elif opcode.startswith('b') or opcode.startswith('j') or opcode.startswith('ret'):
             # Branches use operands
             for op in operands:
                uses.extend(get_regs_in_string(op))
        else:
            # Assume 1st operand is Dest (Def), others are Src (Uses)
            # e.g. 'add x0, x1, x2' -> Def x0, Use x1, x2
            # e.g. 'ldr x0, [x1]' -> Def x0, Use x1
            if len(operands) > 0:
                # Special case: Memory operands in first position?
                # x86: mov [rax], rbx -> Store (caught above if opcode classification is perfect, but 'mov' is tricky)
                if '[' in operands[0] and ('mov' in opcode):
                    # Moving TO memory -> Store-like behavior
                    uses.extend(get_regs_in_string(operands[0]))
                    if len(operands) > 1:
                         uses.extend(get_regs_in_string(operands[1]))
                else:
                    new_defs.extend(get_regs_in_string(operands[0]))
                    for op in operands[1:]:
                        uses.extend(get_regs_in_string(op))
                        
        # --- Analyze Uses ---
        for reg in uses:
            if reg in defs:
                def_idx, def_type = defs[reg]
                dist = i - def_idx
                feat_dep_distances.append(dist)
                
                # Check specific dependency chains
                if op_type == 'LOAD':
                    # We are a LOAD instruction using a register defined previously
                    if def_type == 'LOAD':
                        feat_dep_load_load += 1 # Pointer chasing
                    elif def_type == 'ARITH':
                        feat_dep_arith_load += 1 # Calculated address
                        
        # --- Update Defs ---
        for reg in new_defs:
            defs[reg] = (i, op_type)
            
    # Aggregate stats
    avg_dist = sum(feat_dep_distances) / len(feat_dep_distances) if feat_dep_distances else -1
    
    # Calculate Max Chain Length (Approximation using graph traversal on defs map would be better, 
    # but for now we track max depth seen during linear scan)
    # We can track depth per register in defs: defs[reg] = (idx, type, depth)
    
    return {
        "dep_load_to_load": feat_dep_load_load,
        "dep_arith_to_load": feat_dep_arith_load,
        "dep_avg_distance": avg_dist,
        "dep_count": len(feat_dep_distances)
    }

def analyze_memory_semantics(sequence):
    """
    Analyze memory access patterns and addressing modes.
    """
    stack_regs = {'sp', 'rsp', 'rbp', 'esp', 'ebp'}
    
    feat_mem_stack = 0
    feat_mem_complex = 0
    feat_store_load_hazard = 0
    
    # Track base registers used by recent stores (to detect Store->Load forwarding candidates)
    # Store recent store base regs: {reg: index}
    recent_stores = {}
    
    mem_ops_total = 0
    
    for i, line in enumerate(sequence):
        opcode = opcode_of(line)
        if opcode == 'nop' or opcode.endswith(':'):
            continue
            
        # Is it a memory op?
        is_load = ARM64_LOAD_RE.search(line) or (opcode.startswith('mov') and '[' in line and line.strip().split(',')[1].strip().startswith('['))
        is_store = ARM64_STORE_RE.search(line) or (opcode.startswith('mov') and '[' in line and line.strip().split(',')[0].strip().startswith('['))
        
        if not (is_load or is_store):
            continue
            
        mem_ops_total += 1
        
        # Extract content inside [...]
        # Heuristic: Find [...]
        m = re.search(r"\[(.*?)\]", line)
        if m:
            content = m.group(1)
            # Check for stack pointer
            regs_in_addr = get_regs_in_string(content)
            if any(r in stack_regs for r in regs_in_addr):
                feat_mem_stack += 1
                
            # Check for complex addressing (more than 1 register or math)
            # ARM64: [x0, x1] or [x0, #8]
            # x86: [rax + rbx]
            if len(regs_in_addr) > 1 or '+' in content or '*' in content:
                feat_mem_complex += 1
            
            # Base register (heuristic: first register found)
            base_reg = regs_in_addr[0] if regs_in_addr else None
            
            if base_reg:
                if is_store:
                    recent_stores[base_reg] = i
                elif is_load:
                    if base_reg in recent_stores:
                        # Check distance (heuristic: within 10 instructions)
                        if i - recent_stores[base_reg] < 10:
                            feat_store_load_hazard += 1

    return {
        "mem_stack_accesses": feat_mem_stack,
        "mem_complex_addressing": feat_mem_complex,
        "mem_store_load_hazard": feat_store_load_hazard,
        "mem_stack_ratio": (feat_mem_stack / mem_ops_total) if mem_ops_total > 0 else 0.0
    }


def _get_sequence_encoder():
    """Lazy initialization of sequence encoder."""
    global _SEQUENCE_ENCODER
    
    if not HAS_SEQUENCE_ENCODER:
        return None
    
    if _SEQUENCE_ENCODER is None:
        # Try to load vocabulary
        vocab_path = _SEQUENCE_VOCAB_PATH
        if vocab_path.exists():
            try:
                _SEQUENCE_ENCODER = build_sequence_encoder(
                    vocab_path=vocab_path,
                    encoder_type="simple",
                    embedding_dim=64
                )
            except Exception as e:
                print(f"Warning: Failed to load sequence encoder: {e}")
                return None
        else:
            # No vocabulary yet - return None (will skip sequence features)
            return None
    
    return _SEQUENCE_ENCODER


def compute_base_structural_features(sequence, opcodes):
    """Compute base structural features that were previously provided by
    enhanced_gadget_extractor.py. These features are essential for
    distinguishing BENIGN from vulnerability classes."""
    import math

    n = len(opcodes)
    if n == 0:
        return {}

    feats = {}

    # Basic counts
    feats['num_instructions'] = n
    feats['unique_opcodes'] = len(set(opcodes))
    feats['opcode_diversity'] = feats['unique_opcodes'] / n

    # Opcode entropy (Shannon)
    op_counts = Counter(opcodes)
    total = sum(op_counts.values())
    entropy = 0.0
    for cnt in op_counts.values():
        p = cnt / total
        if p > 0:
            entropy -= p * math.log2(p)
    feats['opcode_entropy'] = entropy

    # Operand analysis
    operand_counts = []
    all_operands = []
    for line in sequence:
        parts = line.strip().split(None, 1)
        if len(parts) > 1:
            ops = [o.strip() for o in parts[1].split(',')]
            operand_counts.append(len(ops))
            all_operands.extend(ops)
        else:
            operand_counts.append(0)
    feats['avg_operand_count'] = sum(operand_counts) / n if n > 0 else 0
    feats['max_operand_count'] = max(operand_counts) if operand_counts else 0

    # Operand entropy
    op_dist = Counter(all_operands)
    op_total = sum(op_dist.values())
    op_entropy = 0.0
    if op_total > 0:
        for cnt in op_dist.values():
            p = cnt / op_total
            if p > 0:
                op_entropy -= p * math.log2(p)
    feats['operand_entropy'] = op_entropy

    # Instruction type counts
    arithmetic_ops = {'add', 'sub', 'mul', 'div', 'adc', 'sbc', 'madd', 'msub',
                      'udiv', 'sdiv', 'imul', 'idiv', 'inc', 'dec', 'neg',
                      'and', 'orr', 'eor', 'orn', 'bic', 'mvn',
                      'lsl', 'lsr', 'asr', 'ror', 'shl', 'shr', 'sal', 'sar',
                      'xor', 'or', 'not'}
    branch_ops = {'b', 'bl', 'br', 'blr', 'ret', 'jmp', 'call', 'retq', 'callq'}
    cond_branch_pats = [re.compile(r'^b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le)$', re.I),
                        re.compile(r'^cb(n?z)$', re.I),
                        re.compile(r'^tb(n?z)$', re.I),
                        re.compile(r'^j[a-z]{1,3}$', re.I)]  # x86 jcc

    arith_count = sum(1 for op in opcodes if op in arithmetic_ops)
    mem_count = sum(1 for line in sequence if '[' in line and ']' in line)
    branch_count = sum(1 for op in opcodes if op in branch_ops or
                       any(p.match(op) for p in cond_branch_pats))
    cond_branch_count = sum(1 for op in opcodes if any(p.match(op) for p in cond_branch_pats))
    ret_count = sum(1 for op in opcodes if op in ('ret', 'retq'))

    feats['arithmetic_count'] = arith_count
    feats['arithmetic_density'] = arith_count / n
    feats['memory_access_count'] = mem_count
    feats['memory_density'] = mem_count / n
    feats['branch_count'] = branch_count
    feats['branch_density'] = branch_count / n
    feats['branch_factor'] = branch_count / n
    feats['has_conditional_branch'] = 1 if cond_branch_count > 0 else 0
    feats['has_return_instruction'] = 1 if ret_count > 0 else 0

    # Binary feature flags
    feats['has_timing_instruction'] = 1 if any(
        op in ('rdtsc', 'rdtscp') or op.startswith('mrs') for op in opcodes) else 0
    feats['has_speculation_barrier'] = 1 if any(
        op in ('lfence', 'mfence', 'dsb', 'dmb', 'isb', 'csdb') for op in opcodes) else 0
    feats['has_cache_instruction'] = 1 if any(
        op in ('clflush', 'clflushopt', 'clwb', 'dc', 'ic') for op in opcodes) else 0
    feats['has_stack_manipulation'] = 1 if any(
        op in ('push', 'pop', 'stp', 'ldp') or 'sp' in line.lower()
        for op, line in zip(opcodes, sequence)) else 0
    feats['has_privileged_access'] = 1 if any(
        op in ('msr', 'mrs', 'wrmsr', 'rdmsr', 'in', 'out') for op in opcodes) else 0
    feats['has_exception_handling'] = 1 if any(
        op in ('svc', 'hvc', 'smc', 'int', 'syscall', 'iret') for op in opcodes) else 0
    feats['has_page_table_access'] = 1 if any(
        'tlb' in op or 'at ' in line.lower() for op, line in zip(opcodes, sequence)) else 0
    feats['has_l1_cache_interaction'] = 1 if any(
        op in ('clflush', 'clflushopt', 'dc', 'prefetch', 'prfm') for op in opcodes) else 0
    feats['has_register_computation'] = 1 if any(
        op in ('adr', 'adrp', 'lea') for op in opcodes) else 0
    feats['branch_target_computed'] = 1 if any(
        op in ('br', 'blr') or (op in ('jmp', 'call') and '*' in line)
        for op, line in zip(opcodes, sequence)) else 0

    # Register reuse
    all_regs = set()
    reg_uses = 0
    for line in sequence:
        regs = REG_ARM_RE.findall(line) + REG_X86_RE.findall(line)
        for r in regs:
            r_low = r.lower().lstrip('%')
            if r_low in all_regs:
                reg_uses += 1
            all_regs.add(r_low)
    feats['register_reuse_factor'] = reg_uses / n if n > 0 else 0
    feats['hash_diversity'] = len(all_regs)

    # Dependent loads: two loads within 5 instructions of each other
    load_indices = [i for i, op in enumerate(opcodes) if op.startswith('ldr') or op in ('mov',) and '[' in sequence[i]]
    has_dep_load = 0
    for i in range(len(load_indices) - 1):
        if load_indices[i + 1] - load_indices[i] <= 5:
            has_dep_load = 1
            break
    feats['has_dependent_load'] = has_dep_load

    # Memory access after branch
    has_mem_after_branch = 0
    for i, op in enumerate(opcodes):
        if op in branch_ops or any(p.match(op) for p in cond_branch_pats):
            for j in range(i + 1, min(i + 6, n)):
                if '[' in sequence[j] and ']' in sequence[j]:
                    has_mem_after_branch = 1
                    break
            if has_mem_after_branch:
                break
    feats['memory_access_after_branch'] = has_mem_after_branch

    # Branch history pollution (multiple conditional branches in sequence)
    feats['has_branch_history_pollution'] = 1 if cond_branch_count >= 3 else 0

    # Cyclomatic complexity approximation
    feats['cyclomatic_complexity'] = cond_branch_count + 1

    # Max path length and dominance depth (simple approximation from linear scan)
    # Without a real CFG, approximate as longest sequence between branches
    branch_positions = [i for i, op in enumerate(opcodes)
                        if op in branch_ops or any(p.match(op) for p in cond_branch_pats)]
    if branch_positions:
        segments = [branch_positions[0]] + [
            branch_positions[i + 1] - branch_positions[i]
            for i in range(len(branch_positions) - 1)
        ] + [n - branch_positions[-1]]
        feats['max_path_length'] = max(segments)
        feats['dominance_depth'] = len(branch_positions)
    else:
        feats['max_path_length'] = n
        feats['dominance_depth'] = 0

    # Strongly connected components (approximation: 1 unless there are back-edges)
    feats['strongly_connected_components'] = 1

    return feats


def extract_features_enhanced(rec: dict) -> dict:
    raw_seq = rec.get("sequence", [])
    # Use original sequence for dependency analysis (context matters)
    # But filter NOPs for structural features
    seq_no_nop = [l for l in raw_seq if opcode_of(l) != 'nop']
    
    # 1. Standard Features (Reusing logic)
    feats = {}
    tokens = [opcode_of(l) for l in seq_no_nop if l]
    
    feats["op_trace"] = " ".join(tokens)
    
    struc_tokens = []
    for t in tokens:
        st = get_simplified_type(t)
        if st: struc_tokens.append(st)
    feats["struc_trace"] = " ".join(struc_tokens)
    
    for n in (1, 2, 3):
        counts = Counter(ngrams(tokens, n))
        for k, v in counts.items():
            feats[f"ng_{n}:{k}"] = int(v)
            
    # Operand categories
    feats["num_mem_ops"] = sum(1 for l in seq_no_nop if "[" in l and "]" in l)
    feats["num_store_ops"] = sum(1 for l in seq_no_nop if ARM64_STORE_RE.search(l))
    feats["num_load_ops"] = sum(1 for l in seq_no_nop if ARM64_LOAD_RE.search(l))
    feats["num_reg_tokens"] = sum(len(re.findall(r"\b[wx][0-9]+\b", l)) for l in seq_no_nop)
    
    # Branch info
    branch_types = Counter()
    for l in seq_no_nop:
        m = ARM64_BRANCH_RE.search(l)
        if m: branch_types[m.group("cond").lower()] += 1
    for cond, v in branch_types.items():
        feats[f"branch_{cond}"] = int(v)
    feats["num_branches"] = int(sum(branch_types.values()))
    feats["window_length"] = int(len(tokens))
    
    # 2. New Dependency Features
    dep_feats = analyze_dependencies(raw_seq) # Analyze raw sequence for accurate distance
    feats.update(dep_feats)
    
    # 3. Memory Semantics
    mem_feats = analyze_memory_semantics(raw_seq)
    feats.update(mem_feats)
    
    # 4. Indirect Branch Features
    num_indirect = sum(1 for l in seq_no_nop if is_indirect_branch(l))
    feats["num_indirect_branches"] = num_indirect
    feats["has_indirect_branch"] = 1 if num_indirect > 0 else 0
    
    # 5. MDS-Specific Features (NEW)
    mds_feats = analyze_mds_patterns(raw_seq)
    feats.update(mds_feats)
    
    # 6. Spectre V1 Features (NEW)
    spectre_v1_feats = analyze_spectre_v1_patterns(raw_seq)
    feats.update(spectre_v1_feats)
    
    # 7. BHI Features (NEW)
    bhi_feats = analyze_bhi_patterns(raw_seq)
    feats.update(bhi_feats)
    
    # 8. RETBLEED Features (NEW)
    retbleed_feats = analyze_retbleed_patterns(raw_seq)
    feats.update(retbleed_feats)
    
    # 8b. INCEPTION Features (NEW)
    inception_feats = analyze_inception_patterns(raw_seq)
    feats.update(inception_feats)
    
    # 9. L1TF Features (NEW)
    l1tf_feats = analyze_l1tf_patterns(raw_seq)
    feats.update(l1tf_feats)
    
    # 10. BENIGN Counter-Features (NEW)
    benign_feats = analyze_benign_patterns(raw_seq)
    feats.update(benign_feats)
    
    # 10b. Mutual Exclusion Scores (NEW v22)
    # Compute disambiguation scores for commonly confused pairs
    mutual_exclusion_feats = compute_mutual_exclusion_scores(feats)
    feats.update(mutual_exclusion_feats)
    
    # 11. Graph-based Features (CFG + DFG)
    graph_feats = analyze_graph_features(raw_seq)
    feats.update(graph_feats)
    
    # 12. Sequence Embedding Features (NEW - captures long-range dependencies)
    encoder = _get_sequence_encoder()
    if encoder is not None and raw_seq:
        try:
            seq_emb_feats = extract_sequence_embedding(raw_seq, encoder, feature_prefix="seq_emb")
            feats.update(seq_emb_feats)
        except Exception as e:
            # Silently fail if sequence encoding fails (e.g., vocabulary mismatch)
            pass
    
    # 12b. Base structural features (previously from enhanced_gadget_extractor.py,
    # needed when the input record has no pre-existing features)
    base_feats = compute_base_structural_features(seq_no_nop, tokens)
    for k, v in base_feats.items():
        if k not in feats:  # Don't override already-computed features
            feats[k] = v

    # 13. Carry over basic (pre-existing features override computed ones)
    basic = rec.get("features", {})
    for k, v in basic.items():
        if isinstance(v, (int, float, bool)):
            feats[k] = int(v) if isinstance(v, bool) else v

    return feats

def canonical_id_from_source(path: str) -> str:
    name = Path(path).name
    for marker in ("_clang_", "_gcc_"):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit(".", 1)[0]

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, required=True)
    ap.add_argument("--out", dest="out", type=Path, required=True)
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    count = 0
    with args.out.open("w") as fout:
        for rec in load_jsonl(args.inp):
            feats = extract_features_enhanced(rec)
            
            # Metadata handling
            label = rec.get("vuln_label")
            if not label or label == "UNKNOWN":
                 label = rec.get("label", "unknown")
            
            grp = rec.get("group")
            src = rec.get("source_file", "unknown")
            
            if not grp or grp == "unknown" or grp == "github_negatives":
                if "github" in src.lower() or "repos/" in src:
                    grp = src
                else:
                    grp = Path(src).stem
            
            out = {
                "id": f"{canonical_id_from_source(src)}:{count}",
                "label": label,
                "arch": rec.get("arch", "unknown"),
                "features": feats,
                "group": grp,
                "confidence": rec.get("confidence", 0.0),
                "weight": rec.get("weight", 1.0)
            }
            fout.write(json.dumps(out) + "\n")
            count += 1
    print(f"Wrote {count} enhanced feature records to {args.out}")

if __name__ == "__main__":
    main()
