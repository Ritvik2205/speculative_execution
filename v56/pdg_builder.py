#!/usr/bin/env python3
"""
Program Dependency Graph (PDG) Builder — v47

Adds RSB_CHAIN edge type (9th type) to distinguish INCEPTION from RETBLEED:
  RSB_CHAIN: Call → subsequent Return within window
  INCEPTION: many call/ret pairs (RSB stuffing) → dense RSB_CHAIN edges
  RETBLEED: retpoline pattern → sparse or zero RSB_CHAIN edges

All other v46b edge types and node features are unchanged (node dim = 41).
"""

import re
from typing import List, Dict, Tuple, Set, Optional
from dataclasses import dataclass, field
from collections import defaultdict
import numpy as np


# =============================================================================
# CONSTANTS & PATTERNS
# =============================================================================

OPCODE_CATEGORIES = {
    'LOAD': 0,
    'STORE': 1,
    'BRANCH_COND': 2,
    'BRANCH_UNCOND': 3,
    'CALL': 4,
    'CALL_INDIRECT': 5,
    'RET': 6,
    'JUMP_INDIRECT': 7,
    'COMPARE': 8,
    'ARITHMETIC': 9,
    'LOGIC': 10,
    'SHIFT': 11,
    'FENCE': 12,
    'CACHE': 13,
    'TIMING': 14,
    'MOVE': 15,
    'STACK': 16,
    'NOP': 17,
    'OTHER': 18,
}

NUM_OPCODE_CATEGORIES = len(OPCODE_CATEGORIES)

MEM_ACCESS_TYPES = {
    'NONE': 0,
    'STACK': 1,
    'HEAP': 2,
    'INDEXED': 3,
    'INDIRECT': 4,
}

SPEC_FLAGS = {
    'is_serializing': 0,
    'is_cache_probe': 1,
    'is_branch': 2,
    'is_indirect_branch': 3,
    'is_memory_access': 4,
    'is_timing_source': 5,
    'is_secret_source': 6,
    'is_transmitter': 7,
    'is_lfence': 8,
    'is_mfence_or_sfence': 9,
    'is_verw': 10,
    'is_prefetch': 11,
    'is_nontemp_load': 12,
    'is_gather': 13,
}

NUM_SPEC_FLAGS = len(SPEC_FLAGS)

# v47: 9 edge types — RSB_CHAIN added to distinguish INCEPTION vs RETBLEED
EDGE_TYPES = {
    'DATA_DEP': 0,
    'CONTROL_FLOW': 1,
    'SPEC_CONDITIONAL': 2,
    'SPEC_INDIRECT': 3,
    'SPEC_RETURN': 4,
    'MEMORY_ORDER': 5,
    'CACHE_TEMPORAL': 6,
    'FENCE_BOUNDARY': 7,
    'RSB_CHAIN': 8,        # Call → Return within window (RSB fill/consume pair)
                           # Dense in INCEPTION (RSB stuffing); sparse in RETBLEED
}

NUM_EDGE_TYPES = len(EDGE_TYPES)

# Window within which a call can be paired with a ret as RSB_CHAIN.
# RSB stuffing (INCEPTION) uses compact call/ret gadgets typically within 10 instructions.
RSB_PAIR_WINDOW = 15

PATTERNS = {
    'load_arm': re.compile(r'\b(ldr[bhsdq]?|ldp|ldur[bhsdq]?|ldrs[bhw]|ldax?r?|ldnp|ldtr|ldx[pr]?)\b', re.I),
    'load_x86': re.compile(r'\b(mov[qldwb]?|movzx|movsx|movabs|lods[bwdq]?|pop[qldw]?|lea)\b', re.I),

    'store_arm': re.compile(r'\b(str[bhsdq]?|stp|stur[bhsdq]?|stlr|stxr|stnp|sttr)\b', re.I),
    'store_x86': re.compile(r'\b(mov[qldwb]?|movnti|stos[bwdq]?|push[qldw]?)\b', re.I),

    'branch_cond': re.compile(
        r'\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls|mi|pl|vs|vc|al)|'
        r'beq|bne|blt|ble|bgt|bge|bhs|blo|bhi|bls|bmi|bpl|'
        r'cbz|cbnz|tbz|tbnz|'
        r'j[elgnas]|jn?[elgzsa]|j[abp]|jn?[abp]|jo|jno|jc|jnc|js|jns|jp|jnp|jcxz|jecxz|jrcxz)\b', re.I),
    'branch_uncond': re.compile(r'\b(b\s|b$|jmp|jmpq)\b', re.I),

    'call': re.compile(r'\b(bl|call|callq)\b', re.I),
    'ret': re.compile(r'\b(ret|retq|retw|retl)\b', re.I),
    'indirect': re.compile(r'\b(br|blr)\b|\b(jmpq?|callq?)\s*\*|\[x[0-9]+\]', re.I),

    'compare': re.compile(r'\b(cmp|cmn|test|tst|ccmp|ccmn|fcmp)\b', re.I),

    'arithmetic': re.compile(r'\b(add|sub|mul|div|udiv|sdiv|madd|msub|neg|adc|sbc|inc|dec|imul|idiv)\b', re.I),
    'logic': re.compile(r'\b(and|orr|eor|orn|bic|not|xor|or)\b', re.I),
    'shift': re.compile(r'\b(lsl|lsr|asr|ror|shl|shr|sar|rol)\b', re.I),

    'fence': re.compile(r'\b(lfence|mfence|sfence|dsb|dmb|isb|cpuid)\b', re.I),

    'cache': re.compile(r'\b(clflush|clflushopt|clwb|cldemote|prefetcht[012]|prefetchnta|prefetchw|prfm|dc\s+(civac|cvac|cvau|zva|ivac)|invlpg|wbinvd)\b', re.I),

    'timing': re.compile(r'\b(rdtsc|rdtscp|rdpmc|mrs\s+.*cntvct|mrs\s+.*pmccntr)\b', re.I),

    'move': re.compile(r'\b(mov[zskn]?)\b', re.I),

    'stack_op': re.compile(r'\b(push|pop)\b', re.I),

    'stack_access': re.compile(r'\[sp|\[x29|\[fp|%[re]?sp|%[re]?bp|\[%[re]?[sb]p\]', re.I),
    'indexed_access': re.compile(r'\[.*,.*,.*\]|\[.*\+.*\*.*\]|,\s*lsl\s+#|\[x[0-9]+,\s*x[0-9]+', re.I),
    'memory_operand': re.compile(r'\[|\(.*%', re.I),

    'arm_reg': re.compile(r'\b([xwbhsdq][0-9]+|sp|lr|fp|pc|xzr|wzr)\b', re.I),
    'x86_reg': re.compile(r'%([re]?[abcd]x|[re]?[sd]i|[re]?[sb]p|r[0-9]+[dwb]?)', re.I),
}


# =============================================================================
# DATA STRUCTURES
# =============================================================================

@dataclass
class PDGNode:
    id: int
    raw_instruction: str
    opcode: str
    opcode_category: int
    dest_regs: Set[str] = field(default_factory=set)
    src_regs: Set[str] = field(default_factory=set)
    mem_access_type: int = 0
    spec_flags: np.ndarray = field(default_factory=lambda: np.zeros(NUM_SPEC_FLAGS))

    def get_feature_vector(self, num_categories: int = NUM_OPCODE_CATEGORIES) -> np.ndarray:
        opcode_onehot = np.zeros(num_categories)
        opcode_onehot[self.opcode_category] = 1.0
        mem_onehot = np.zeros(5)
        mem_onehot[self.mem_access_type] = 1.0
        num_dest = min(len(self.dest_regs), 3) / 3.0
        num_src = min(len(self.src_regs), 5) / 5.0
        reg_features = np.array([num_dest, num_src])
        # Total: 19 + 5 + 2 + 14 = 40 dims (unchanged from v46b)
        return np.concatenate([opcode_onehot, mem_onehot, reg_features, self.spec_flags])


@dataclass
class PDGEdge:
    src: int
    dst: int
    edge_type: int  # 0-8 (9 types in v47)
    weight: float = 1.0


@dataclass
class PDG:
    nodes: List[PDGNode]
    edges: List[PDGEdge]
    num_edge_types: int = NUM_EDGE_TYPES

    _edges_by_type: Dict[int, List[Tuple[int, int]]] = field(default_factory=dict)

    def __post_init__(self):
        self._edges_by_type = defaultdict(list)
        for edge in self.edges:
            self._edges_by_type[edge.edge_type].append((edge.src, edge.dst))

    def get_edge_index_and_type(self, max_nodes: int) -> Tuple[np.ndarray, np.ndarray]:
        n = min(len(self.nodes), max_nodes)
        valid_edges = [(e.src, e.dst, e.edge_type) for e in self.edges
                       if e.src < n and e.dst < n]
        if not valid_edges:
            return np.zeros((2, 0), dtype=np.int64), np.zeros(0, dtype=np.int64)
        srcs, dsts, etypes = zip(*valid_edges)
        return np.array([srcs, dsts], dtype=np.int64), np.array(etypes, dtype=np.int64)

    def get_edge_weights(self, max_nodes: int) -> np.ndarray:
        n = min(len(self.nodes), max_nodes)
        weights = [e.weight for e in self.edges if e.src < n and e.dst < n]
        return np.array(weights, dtype=np.float32) if weights else np.zeros(0, dtype=np.float32)

    def get_node_features(self, max_nodes: int) -> np.ndarray:
        n = min(len(self.nodes), max_nodes)
        feature_dim = 40  # 19+5+2+14 (unchanged from v46b)
        features = np.zeros((max_nodes, feature_dim), dtype=np.float32)
        for i, node in enumerate(self.nodes[:n]):
            features[i] = node.get_feature_vector()
        return features

    def topological_order(self) -> List[int]:
        n = len(self.nodes)
        if n == 0:
            return []
        adj = defaultdict(list)
        in_degree = [0] * n
        for edge in self.edges:
            if edge.src < n and edge.dst < n:
                adj[edge.src].append(edge.dst)
                in_degree[edge.dst] += 1
        queue = [i for i in range(n) if in_degree[i] == 0]
        order = []
        while queue:
            node = queue.pop(0)
            order.append(node)
            for neighbor in adj[node]:
                in_degree[neighbor] -= 1
                if in_degree[neighbor] == 0:
                    queue.append(neighbor)
        if len(order) != n:
            return list(range(n))
        return order


# =============================================================================
# PDG BUILDER
# =============================================================================

def _is_security_relevant(node: PDGNode) -> bool:
    sf = node.spec_flags
    return (sf[SPEC_FLAGS['is_memory_access']] > 0 or
            sf[SPEC_FLAGS['is_secret_source']] > 0 or
            sf[SPEC_FLAGS['is_transmitter']] > 0 or
            sf[SPEC_FLAGS['is_cache_probe']] > 0 or
            sf[SPEC_FLAGS['is_timing_source']] > 0)


class PDGBuilder:
    """
    v47 PDG builder — adds RSB_CHAIN as the 9th edge type.

    RSB_CHAIN semantics (LIFO matching):
      When a RET is encountered, the most recent pending CALL within
      RSB_PAIR_WINDOW instructions is matched and a RSB_CHAIN edge is added.
      INCEPTION (RSB stuffing) produces many such pairs.
      RETBLEED (retpoline underflow) has 0-1 such pairs per function.
    """

    def __init__(self, speculative_window: int = 10):
        self.speculative_window = speculative_window
        self.cache_window = 20
        # RSB pairing window as an instance attr (default = module global, so
        # default behavior is unchanged) — lets subclasses source it from a spec.
        self.rsb_pair_window = RSB_PAIR_WINDOW

    def build(self, sequence: List[str]) -> PDG:
        nodes = []
        edges = []

        reg_defs: Dict[str, List[Tuple[int, int]]] = defaultdict(list)
        pending_spec: List[Tuple[int, int, str]] = []
        pending_stores: Dict[str, List[Tuple[int, int]]] = defaultdict(list)
        pending_cache_ops: List[Tuple[int, int]] = []
        fence_pending: Optional[int] = None

        # RSB_CHAIN tracking: stack of (call_node_id, remaining_window)
        # Represents pending calls whose RSB entry hasn't been consumed yet.
        pending_calls_rsb: List[Tuple[int, int]] = []

        for i, instr in enumerate(sequence):
            instr = instr.strip()
            if not instr or instr.endswith(':') or instr.startswith('.'):
                continue

            node = self._create_node(i, instr, len(nodes))
            if node is None:
                continue

            node_id = len(nodes)
            nodes.append(node)
            category = node.opcode_category

            # CONTROL_FLOW
            if node_id > 0:
                edges.append(PDGEdge(src=node_id - 1, dst=node_id,
                                     edge_type=EDGE_TYPES['CONTROL_FLOW'], weight=1.0))

            # FENCE_BOUNDARY
            if fence_pending is not None:
                edges.append(PDGEdge(src=fence_pending, dst=node_id,
                                     edge_type=EDGE_TYPES['FENCE_BOUNDARY'], weight=1.0))
                fence_pending = None

            # DATA_DEP
            for src_reg in node.src_regs:
                if src_reg in reg_defs:
                    for def_node_id, _ in reg_defs[src_reg][-3:]:
                        edges.append(PDGEdge(src=def_node_id, dst=node_id,
                                             edge_type=EDGE_TYPES['DATA_DEP'], weight=1.0))
            for dest_reg in node.dest_regs:
                reg_defs[dest_reg].append((node_id, i))
                if len(reg_defs[dest_reg]) > 5:
                    reg_defs[dest_reg] = reg_defs[dest_reg][-5:]

            # FENCE terminates all speculative windows
            if category == OPCODE_CATEGORIES['FENCE']:
                pending_spec.clear()
                fence_pending = node_id

            # SPECULATIVE edges (types 2/3/4)
            new_pending_spec = []
            for src_id, remaining, spec_type in pending_spec:
                if remaining > 0:
                    decay = 1.0 / (self.speculative_window - remaining + 1)
                    spec_weight = decay
                    if node.spec_flags[SPEC_FLAGS['is_memory_access']]:
                        spec_weight = decay * 2.0
                    if node.spec_flags[SPEC_FLAGS['is_secret_source']]:
                        spec_weight = decay * 3.0
                    if node.spec_flags[SPEC_FLAGS['is_transmitter']]:
                        spec_weight = decay * 3.0
                    if node.spec_flags[SPEC_FLAGS['is_timing_source']]:
                        spec_weight = decay * 2.5
                    if node.spec_flags[SPEC_FLAGS['is_cache_probe']]:
                        spec_weight = decay * 2.5
                    if spec_type == 'SPEC_INDIRECT' or _is_security_relevant(node):
                        edges.append(PDGEdge(src=src_id, dst=node_id,
                                             edge_type=EDGE_TYPES[spec_type],
                                             weight=min(spec_weight, 3.0)))
                    new_pending_spec.append((src_id, remaining - 1, spec_type))
            pending_spec = new_pending_spec

            if category == OPCODE_CATEGORIES['BRANCH_COND']:
                pending_spec.append((node_id, self.speculative_window, 'SPEC_CONDITIONAL'))
            elif category in (OPCODE_CATEGORIES['CALL_INDIRECT'],
                              OPCODE_CATEGORIES['JUMP_INDIRECT']):
                pending_spec.append((node_id, self.speculative_window, 'SPEC_INDIRECT'))
            elif category == OPCODE_CATEGORIES['RET']:
                pending_spec.append((node_id, self.speculative_window, 'SPEC_RETURN'))

            # RSB_CHAIN: CALL pushes onto RSB stack; RET pops most recent entry (LIFO)
            if category in (OPCODE_CATEGORIES['CALL'], OPCODE_CATEGORIES['CALL_INDIRECT']):
                pending_calls_rsb.append((node_id, self.rsb_pair_window))
            elif category == OPCODE_CATEGORIES['RET']:
                # Decay all pending calls; match the most recent live one
                pending_calls_rsb = [(cid, rem - 1) for cid, rem in pending_calls_rsb if rem > 1]
                if pending_calls_rsb:
                    call_id, _ = pending_calls_rsb[-1]  # LIFO: most recent call
                    pending_calls_rsb = pending_calls_rsb[:-1]
                    edges.append(PDGEdge(src=call_id, dst=node_id,
                                         edge_type=EDGE_TYPES['RSB_CHAIN'], weight=1.0))
            else:
                # Decay RSB pending calls on non-call/ret instructions
                pending_calls_rsb = [(cid, rem - 1) for cid, rem in pending_calls_rsb if rem > 1]

            # MEMORY_ORDER
            is_store = category == OPCODE_CATEGORIES['STORE']
            is_load = category == OPCODE_CATEGORIES['LOAD']
            if is_store:
                base_regs = node.src_regs if node.src_regs else {'_mem_'}
                for reg in base_regs:
                    pending_stores[reg].append((node_id, i))
                    if len(pending_stores[reg]) > 3:
                        pending_stores[reg] = pending_stores[reg][-3:]
            if is_load:
                load_regs = node.src_regs if node.src_regs else {'_mem_'}
                for reg in load_regs:
                    if reg in pending_stores:
                        for store_id, _ in pending_stores[reg][-2:]:
                            edges.append(PDGEdge(src=store_id, dst=node_id,
                                                 edge_type=EDGE_TYPES['MEMORY_ORDER'], weight=1.0))

            # CACHE_TEMPORAL
            new_pending_cache = []
            for cache_id, remaining in pending_cache_ops:
                if remaining > 0:
                    if is_load or category == OPCODE_CATEGORIES['TIMING']:
                        edges.append(PDGEdge(src=cache_id, dst=node_id,
                                             edge_type=EDGE_TYPES['CACHE_TEMPORAL'], weight=1.5))
                    new_pending_cache.append((cache_id, remaining - 1))
            pending_cache_ops = new_pending_cache
            if category == OPCODE_CATEGORIES['CACHE']:
                pending_cache_ops.append((node_id, self.cache_window))

        return PDG(nodes=nodes, edges=edges)

    def _create_node(self, position: int, instr: str, node_id: int) -> Optional[PDGNode]:
        parts = instr.split()
        if not parts:
            return None
        opcode = parts[0].rstrip(':').lower()
        category = self._classify_opcode(instr)
        dest_regs, src_regs = self._extract_registers(instr, category)
        mem_type = self._get_memory_access_type(instr)
        spec_flags = self._compute_spec_flags(instr, category, mem_type)
        return PDGNode(id=node_id, raw_instruction=instr, opcode=opcode,
                       opcode_category=category, dest_regs=dest_regs, src_regs=src_regs,
                       mem_access_type=mem_type, spec_flags=spec_flags)

    def _classify_opcode(self, instr: str) -> int:
        if PATTERNS['fence'].search(instr):
            return OPCODE_CATEGORIES['FENCE']
        if PATTERNS['cache'].search(instr):
            return OPCODE_CATEGORIES['CACHE']
        if PATTERNS['timing'].search(instr):
            return OPCODE_CATEGORIES['TIMING']
        if PATTERNS['ret'].search(instr):
            return OPCODE_CATEGORIES['RET']
        is_indirect = bool(PATTERNS['indirect'].search(instr))
        if PATTERNS['call'].search(instr):
            return OPCODE_CATEGORIES['CALL_INDIRECT'] if is_indirect else OPCODE_CATEGORIES['CALL']
        if is_indirect and re.search(r'\b(jmpq?|br)\b', instr, re.I):
            return OPCODE_CATEGORIES['JUMP_INDIRECT']
        if PATTERNS['branch_cond'].search(instr):
            return OPCODE_CATEGORIES['BRANCH_COND']
        if PATTERNS['branch_uncond'].search(instr):
            return OPCODE_CATEGORIES['BRANCH_UNCOND']
        if PATTERNS['compare'].search(instr):
            return OPCODE_CATEGORIES['COMPARE']
        if PATTERNS['stack_op'].search(instr):
            return OPCODE_CATEGORIES['STACK']
        has_mem = bool(PATTERNS['memory_operand'].search(instr))
        if has_mem:
            if PATTERNS['store_arm'].search(instr) or PATTERNS['store_x86'].search(instr):
                if 'push' in instr.lower():
                    return OPCODE_CATEGORIES['STACK']
                return OPCODE_CATEGORIES['STORE']
            if PATTERNS['load_arm'].search(instr) or PATTERNS['load_x86'].search(instr):
                if 'pop' in instr.lower():
                    return OPCODE_CATEGORIES['STACK']
                return OPCODE_CATEGORIES['LOAD']
        if PATTERNS['move'].search(instr):
            return OPCODE_CATEGORIES['MOVE']
        if PATTERNS['arithmetic'].search(instr):
            return OPCODE_CATEGORIES['ARITHMETIC']
        if PATTERNS['logic'].search(instr):
            return OPCODE_CATEGORIES['LOGIC']
        if PATTERNS['shift'].search(instr):
            return OPCODE_CATEGORIES['SHIFT']
        if 'nop' in instr.lower():
            return OPCODE_CATEGORIES['NOP']
        return OPCODE_CATEGORIES['OTHER']

    def _extract_registers(self, instr: str, category: int) -> Tuple[Set[str], Set[str]]:
        dest_regs = set()
        src_regs = set()
        arm_regs = [r.lower() for r in PATTERNS['arm_reg'].findall(instr)]
        x86_regs = [r.lower() for r in PATTERNS['x86_reg'].findall(instr)]
        all_regs = arm_regs + x86_regs
        if not all_regs:
            return dest_regs, src_regs
        is_all_source = category in [
            OPCODE_CATEGORIES['STORE'], OPCODE_CATEGORIES['COMPARE'],
            OPCODE_CATEGORIES['BRANCH_COND'], OPCODE_CATEGORIES['BRANCH_UNCOND'],
            OPCODE_CATEGORIES['CALL'], OPCODE_CATEGORIES['CALL_INDIRECT'],
        ]
        if is_all_source:
            src_regs = set(all_regs)
        else:
            if len(all_regs) > 0:
                dest_regs.add(all_regs[0])
            if len(all_regs) > 1:
                src_regs = set(all_regs[1:])
        return dest_regs, src_regs

    def _get_memory_access_type(self, instr: str) -> int:
        if not PATTERNS['memory_operand'].search(instr):
            return MEM_ACCESS_TYPES['NONE']
        if PATTERNS['stack_access'].search(instr):
            return MEM_ACCESS_TYPES['STACK']
        if PATTERNS['indexed_access'].search(instr):
            return MEM_ACCESS_TYPES['INDEXED']
        if PATTERNS['indirect'].search(instr):
            return MEM_ACCESS_TYPES['INDIRECT']
        return MEM_ACCESS_TYPES['HEAP']

    def _compute_spec_flags(self, instr: str, category: int, mem_type: int) -> np.ndarray:
        flags = np.zeros(NUM_SPEC_FLAGS, dtype=np.float32)
        instr_l = instr.lower().strip()
        opcode = instr_l.split()[0] if instr_l.split() else ''

        if category == OPCODE_CATEGORIES['FENCE'] or 'cpuid' in instr_l:
            flags[SPEC_FLAGS['is_serializing']] = 1.0
        if category == OPCODE_CATEGORIES['CACHE']:
            flags[SPEC_FLAGS['is_cache_probe']] = 1.0
        if category in [OPCODE_CATEGORIES['BRANCH_COND'], OPCODE_CATEGORIES['BRANCH_UNCOND'],
                        OPCODE_CATEGORIES['CALL'], OPCODE_CATEGORIES['CALL_INDIRECT'],
                        OPCODE_CATEGORIES['JUMP_INDIRECT'], OPCODE_CATEGORIES['RET']]:
            flags[SPEC_FLAGS['is_branch']] = 1.0
        if category in [OPCODE_CATEGORIES['CALL_INDIRECT'], OPCODE_CATEGORIES['JUMP_INDIRECT']]:
            flags[SPEC_FLAGS['is_indirect_branch']] = 1.0
        if category in [OPCODE_CATEGORIES['LOAD'], OPCODE_CATEGORIES['STORE'],
                        OPCODE_CATEGORIES['STACK']]:
            flags[SPEC_FLAGS['is_memory_access']] = 1.0
        if category == OPCODE_CATEGORIES['TIMING']:
            flags[SPEC_FLAGS['is_timing_source']] = 1.0
        if category == OPCODE_CATEGORIES['LOAD'] and mem_type == MEM_ACCESS_TYPES['INDEXED']:
            flags[SPEC_FLAGS['is_secret_source']] = 1.0
        if category == OPCODE_CATEGORIES['LOAD'] and mem_type in [MEM_ACCESS_TYPES['INDEXED'],
                                                                    MEM_ACCESS_TYPES['INDIRECT']]:
            flags[SPEC_FLAGS['is_transmitter']] = 1.0

        if opcode in ('lfence',) or re.match(r'^lfence', opcode):
            flags[SPEC_FLAGS['is_lfence']] = 1.0
        if opcode in ('mfence', 'sfence') or re.match(r'^(dsb|dmb|isb)', opcode):
            flags[SPEC_FLAGS['is_mfence_or_sfence']] = 1.0
        if opcode in ('verw',):
            flags[SPEC_FLAGS['is_verw']] = 1.0
        if re.match(r'^prefetch', opcode) or opcode in ('prfm',):
            flags[SPEC_FLAGS['is_prefetch']] = 1.0
        if opcode in ('movntdqa',):
            flags[SPEC_FLAGS['is_nontemp_load']] = 1.0
        if re.match(r'^v[pg]?gather', opcode) or re.match(r'^vpgather', opcode):
            flags[SPEC_FLAGS['is_gather']] = 1.0

        return flags
