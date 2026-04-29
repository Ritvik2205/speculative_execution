#!/usr/bin/env python3
"""
Program Dependency Graph (PDG) Builder for Assembly Code

Creates a multi-relational graph capturing:
1. Data Dependency Edges (RAW - Read After Write): Tracks register def-use chains
2. Control Flow Edges: Sequential fallthrough between consecutive instructions
3. Speculative Conditional Edges: Conditional branch → security-relevant targets in window
4. Speculative Indirect Edges: Indirect branch/call → all targets in window
5. Speculative Return Edges: Return → security-relevant targets in window
6. Memory Ordering Edges: Store-to-load forwarding patterns
7. Cache Temporal Edges: Cache op → subsequent memory access (flush-reload)
8. Fence Boundary Edges: Fence → next instruction (speculation termination)

Node features include:
- Opcode category embedding
- Operand metadata (source/dest registers, memory access types)
- Speculative flags (serializing, cache-probing, branch, etc.)
"""

import re
from typing import List, Dict, Tuple, Set, Optional
from dataclasses import dataclass, field
from collections import defaultdict
import numpy as np


# =============================================================================
# CONSTANTS & PATTERNS
# =============================================================================

# Opcode categories for embedding
OPCODE_CATEGORIES = {
    'LOAD': 0,           # Memory loads
    'STORE': 1,          # Memory stores
    'BRANCH_COND': 2,    # Conditional branches
    'BRANCH_UNCOND': 3,  # Unconditional branches
    'CALL': 4,           # Direct calls
    'CALL_INDIRECT': 5,  # Indirect calls
    'RET': 6,            # Returns
    'JUMP_INDIRECT': 7,  # Indirect jumps
    'COMPARE': 8,        # Comparisons
    'ARITHMETIC': 9,     # Arithmetic operations
    'LOGIC': 10,         # Logical operations
    'SHIFT': 11,         # Shift operations
    'FENCE': 12,         # Memory fences (LFENCE, MFENCE)
    'CACHE': 13,         # Cache operations (CLFLUSH)
    'TIMING': 14,        # Timing (RDTSC)
    'MOVE': 15,          # Register moves
    'STACK': 16,         # Stack operations (PUSH, POP)
    'NOP': 17,           # NOPs
    'OTHER': 18,         # Other instructions
}

NUM_OPCODE_CATEGORIES = len(OPCODE_CATEGORIES)

# Memory access types
MEM_ACCESS_TYPES = {
    'NONE': 0,
    'STACK': 1,
    'HEAP': 2,
    'INDEXED': 3,     # Array-style access
    'INDIRECT': 4,    # Through pointer
}

# Speculative primitive flags
SPEC_FLAGS = {
    'is_serializing': 0,      # LFENCE, MFENCE, CPUID
    'is_cache_probe': 1,      # CLFLUSH, memory load after branch
    'is_branch': 2,           # Any branch
    'is_indirect_branch': 3,  # Indirect branch (BTB target)
    'is_memory_access': 4,    # Any memory operation
    'is_timing_source': 5,    # RDTSC, RDTSCP
    'is_secret_source': 6,    # Potential secret load
    'is_transmitter': 7,      # Cache-based transmitter
}

NUM_SPEC_FLAGS = len(SPEC_FLAGS)

# Edge types for the PDG — 8 semantically distinct types
EDGE_TYPES = {
    'DATA_DEP': 0,           # Register def-use chains (RAW)
    'CONTROL_FLOW': 1,       # Sequential fallthrough between consecutive instructions
    'SPEC_CONDITIONAL': 2,   # Conditional branch → security-relevant targets in window
    'SPEC_INDIRECT': 3,      # Indirect branch/call → all targets in window
    'SPEC_RETURN': 4,        # Return → security-relevant targets in window
    'MEMORY_ORDER': 5,       # Store → Load ordering (same base register)
    'CACHE_TEMPORAL': 6,     # Cache op → subsequent memory access
    'FENCE_BOUNDARY': 7,     # Fence → next instruction (speculation termination)
}

NUM_EDGE_TYPES = len(EDGE_TYPES)

# Pre-compiled regex patterns
PATTERNS = {
    # Loads
    'load_arm': re.compile(r'\b(ldr[bhsdq]?|ldp|ldur[bhsdq]?|ldrs[bhw]|ldax?r?|ldnp|ldtr|ldx[pr]?)\b', re.I),
    'load_x86': re.compile(r'\b(mov[qldwb]?|movzx|movsx|movabs|lods[bwdq]?|pop[qldw]?|lea)\b', re.I),

    # Stores
    'store_arm': re.compile(r'\b(str[bhsdq]?|stp|stur[bhsdq]?|stlr|stxr|stnp|sttr)\b', re.I),
    'store_x86': re.compile(r'\b(mov[qldwb]?|movnti|stos[bwdq]?|push[qldw]?)\b', re.I),

    # Branches
    'branch_cond': re.compile(
        r'\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls|mi|pl|vs|vc|al)|'
        r'beq|bne|blt|ble|bgt|bge|bhs|blo|bhi|bls|bmi|bpl|'
        r'cbz|cbnz|tbz|tbnz|'
        r'j[elgnas]|jn?[elgzsa]|j[abp]|jn?[abp]|jo|jno|jc|jnc|js|jns|jp|jnp|jcxz|jecxz|jrcxz)\b', re.I),
    'branch_uncond': re.compile(r'\b(b\s|b$|jmp|jmpq)\b', re.I),

    # Calls and returns
    'call': re.compile(r'\b(bl|call|callq)\b', re.I),
    'ret': re.compile(r'\b(ret|retq|retw|retl)\b', re.I),
    'indirect': re.compile(r'\b(br|blr)\b|\b(jmpq?|callq?)\s*\*|\[x[0-9]+\]', re.I),

    # Comparisons
    'compare': re.compile(r'\b(cmp|cmn|test|tst|ccmp|ccmn|fcmp)\b', re.I),

    # Arithmetic/Logic
    'arithmetic': re.compile(r'\b(add|sub|mul|div|udiv|sdiv|madd|msub|neg|adc|sbc|inc|dec|imul|idiv)\b', re.I),
    'logic': re.compile(r'\b(and|orr|eor|orn|bic|not|xor|or)\b', re.I),
    'shift': re.compile(r'\b(lsl|lsr|asr|ror|shl|shr|sar|rol)\b', re.I),

    # Fences
    'fence': re.compile(r'\b(lfence|mfence|sfence|dsb|dmb|isb|cpuid)\b', re.I),

    # Cache
    'cache': re.compile(r'\b(clflush|clflushopt|clwb|cldemote|dc\s+(civac|cvac|cvau|zva|ivac)|invlpg|wbinvd)\b', re.I),

    # Timing
    'timing': re.compile(r'\b(rdtsc|rdtscp|rdpmc|mrs\s+.*cntvct|mrs\s+.*pmccntr)\b', re.I),

    # Moves
    'move': re.compile(r'\b(mov[zskn]?)\b', re.I),

    # Stack
    'stack_op': re.compile(r'\b(push|pop)\b', re.I),

    # Memory patterns
    'stack_access': re.compile(r'\[sp|\[x29|\[fp|%[re]?sp|%[re]?bp|\[%[re]?[sb]p\]', re.I),
    'indexed_access': re.compile(r'\[.*,.*,.*\]|\[.*\+.*\*.*\]|,\s*lsl\s+#|\[x[0-9]+,\s*x[0-9]+', re.I),
    'memory_operand': re.compile(r'\[|\(.*%', re.I),

    # Registers
    'arm_reg': re.compile(r'\b([xwbhsdq][0-9]+|sp|lr|fp|pc|xzr|wzr)\b', re.I),
    'x86_reg': re.compile(r'%([re]?[abcd]x|[re]?[sd]i|[re]?[sb]p|r[0-9]+[dwb]?)', re.I),
}


# =============================================================================
# DATA STRUCTURES
# =============================================================================

@dataclass
class PDGNode:
    """A node in the Program Dependency Graph"""
    id: int
    raw_instruction: str
    opcode: str
    opcode_category: int

    # Operand information
    dest_regs: Set[str] = field(default_factory=set)   # Registers written
    src_regs: Set[str] = field(default_factory=set)    # Registers read
    mem_access_type: int = 0

    # Speculative flags (8 binary flags)
    spec_flags: np.ndarray = field(default_factory=lambda: np.zeros(NUM_SPEC_FLAGS))

    def get_feature_vector(self, num_categories: int = NUM_OPCODE_CATEGORIES) -> np.ndarray:
        """Get the node feature vector"""
        # One-hot opcode category (19 dims)
        opcode_onehot = np.zeros(num_categories)
        opcode_onehot[self.opcode_category] = 1.0

        # Memory access type (5 dims)
        mem_onehot = np.zeros(5)
        mem_onehot[self.mem_access_type] = 1.0

        # Num registers (2 dims, normalized)
        num_dest = min(len(self.dest_regs), 3) / 3.0
        num_src = min(len(self.src_regs), 5) / 5.0
        reg_features = np.array([num_dest, num_src])

        # Speculative flags (8 dims)
        spec_features = self.spec_flags

        # Total: 19 + 5 + 2 + 8 = 34 dims
        return np.concatenate([opcode_onehot, mem_onehot, reg_features, spec_features])


@dataclass
class PDGEdge:
    """An edge in the Program Dependency Graph"""
    src: int
    dst: int
    edge_type: int  # 0-7 (see EDGE_TYPES)
    weight: float = 1.0


@dataclass
class PDG:
    """Complete Program Dependency Graph"""
    nodes: List[PDGNode]
    edges: List[PDGEdge]
    num_edge_types: int = NUM_EDGE_TYPES

    # Quick lookups by edge type
    _edges_by_type: Dict[int, List[Tuple[int, int]]] = field(default_factory=dict)

    def __post_init__(self):
        self._edges_by_type = defaultdict(list)
        for edge in self.edges:
            self._edges_by_type[edge.edge_type].append((edge.src, edge.dst))

    @property
    def data_edges(self) -> List[Tuple[int, int]]:
        return self._edges_by_type.get(EDGE_TYPES['DATA_DEP'], [])

    @property
    def control_edges(self) -> List[Tuple[int, int]]:
        return self._edges_by_type.get(EDGE_TYPES['CONTROL_FLOW'], [])

    @property
    def speculative_edges(self) -> List[Tuple[int, int]]:
        """All speculative edges (conditional + indirect + return)."""
        return (self._edges_by_type.get(EDGE_TYPES['SPEC_CONDITIONAL'], []) +
                self._edges_by_type.get(EDGE_TYPES['SPEC_INDIRECT'], []) +
                self._edges_by_type.get(EDGE_TYPES['SPEC_RETURN'], []))

    @property
    def memory_edges(self) -> List[Tuple[int, int]]:
        return self._edges_by_type.get(EDGE_TYPES['MEMORY_ORDER'], [])

    @property
    def cache_temporal_edges(self) -> List[Tuple[int, int]]:
        return self._edges_by_type.get(EDGE_TYPES['CACHE_TEMPORAL'], [])

    @property
    def fence_boundary_edges(self) -> List[Tuple[int, int]]:
        return self._edges_by_type.get(EDGE_TYPES['FENCE_BOUNDARY'], [])

    def get_adjacency_matrices(self, max_nodes: int) -> Tuple[np.ndarray, np.ndarray]:
        """Get separate adjacency matrices for data and control edges (legacy 2-type API)"""
        n = min(len(self.nodes), max_nodes)
        adj_data = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        adj_control = np.zeros((max_nodes, max_nodes), dtype=np.float32)

        for edge in self.edges:
            if edge.src < n and edge.dst < n:
                if edge.edge_type == EDGE_TYPES['DATA_DEP']:
                    adj_data[edge.src, edge.dst] = edge.weight
                else:
                    adj_control[edge.src, edge.dst] = edge.weight

        return adj_data, adj_control

    def get_adjacency_matrices_all(self, max_nodes: int) -> List[np.ndarray]:
        """Get separate adjacency matrices for all edge types"""
        n = min(len(self.nodes), max_nodes)
        adjs = [np.zeros((max_nodes, max_nodes), dtype=np.float32) for _ in range(NUM_EDGE_TYPES)]

        for edge in self.edges:
            if edge.src < n and edge.dst < n and edge.edge_type < NUM_EDGE_TYPES:
                adjs[edge.edge_type][edge.src, edge.dst] = edge.weight

        return adjs

    def get_edge_index_and_type(self, max_nodes: int) -> Tuple[np.ndarray, np.ndarray]:
        """Get COO-format edge index and edge type arrays for GNN input.

        Returns:
            edge_index: [2, num_edges] array of (src, dst) pairs
            edge_type: [num_edges] array of edge type indices
        """
        n = min(len(self.nodes), max_nodes)
        valid_edges = [(e.src, e.dst, e.edge_type) for e in self.edges
                       if e.src < n and e.dst < n]

        if not valid_edges:
            return np.zeros((2, 0), dtype=np.int64), np.zeros(0, dtype=np.int64)

        srcs, dsts, etypes = zip(*valid_edges)
        edge_index = np.array([srcs, dsts], dtype=np.int64)
        edge_type = np.array(etypes, dtype=np.int64)
        return edge_index, edge_type

    def get_edge_weights(self, max_nodes: int) -> np.ndarray:
        """Get edge weight array matching edge_index ordering."""
        n = min(len(self.nodes), max_nodes)
        weights = [e.weight for e in self.edges if e.src < n and e.dst < n]
        return np.array(weights, dtype=np.float32) if weights else np.zeros(0, dtype=np.float32)

    def get_node_features(self, max_nodes: int) -> np.ndarray:
        """Get node feature matrix"""
        n = min(len(self.nodes), max_nodes)
        feature_dim = 34  # From PDGNode.get_feature_vector()
        features = np.zeros((max_nodes, feature_dim), dtype=np.float32)

        for i, node in enumerate(self.nodes[:n]):
            features[i] = node.get_feature_vector()

        return features

    def topological_order(self) -> List[int]:
        """Get topological order of nodes (or sequential if cyclic)"""
        n = len(self.nodes)
        if n == 0:
            return []

        # Build adjacency list
        adj = defaultdict(list)
        in_degree = [0] * n

        for edge in self.edges:
            if edge.src < n and edge.dst < n:
                adj[edge.src].append(edge.dst)
                in_degree[edge.dst] += 1

        # Kahn's algorithm
        queue = [i for i in range(n) if in_degree[i] == 0]
        order = []

        while queue:
            node = queue.pop(0)
            order.append(node)
            for neighbor in adj[node]:
                in_degree[neighbor] -= 1
                if in_degree[neighbor] == 0:
                    queue.append(neighbor)

        # If cyclic, fall back to sequential order
        if len(order) != n:
            return list(range(n))

        return order


# =============================================================================
# PDG BUILDER
# =============================================================================

def _is_security_relevant(node: PDGNode) -> bool:
    """Check if a node is security-relevant for speculative edge targeting.

    Returns True for instructions that are meaningful in a transient execution
    window: memory accesses, secret loads, transmitters, cache probes, timing.
    """
    sf = node.spec_flags
    return (sf[SPEC_FLAGS['is_memory_access']] > 0 or
            sf[SPEC_FLAGS['is_secret_source']] > 0 or
            sf[SPEC_FLAGS['is_transmitter']] > 0 or
            sf[SPEC_FLAGS['is_cache_probe']] > 0 or
            sf[SPEC_FLAGS['is_timing_source']] > 0)


class PDGBuilder:
    """
    Builds Program Dependency Graphs from assembly instruction sequences.

    Captures 8 edge types:
    1. DATA_DEP (0): Register def-use chains (RAW - Read After Write)
    2. CONTROL_FLOW (1): Sequential fallthrough between consecutive instructions
    3. SPEC_CONDITIONAL (2): Conditional branch → security-relevant targets in window
    4. SPEC_INDIRECT (3): Indirect branch/call → all targets in window
    5. SPEC_RETURN (4): Return → security-relevant targets in window
    6. MEMORY_ORDER (5): Store → Load ordering on same base register
    7. CACHE_TEMPORAL (6): Cache op → subsequent memory access
    8. FENCE_BOUNDARY (7): Fence → next instruction (speculation termination)

    Key behavioral rules:
    - Direct calls (bl, callq) create NO speculative edges (normal control flow)
    - Unconditional direct branches (jmp, b) create NO speculative edges (resolved at decode)
    - Fences (lfence, dsb) TERMINATE all pending speculative windows
    - Conditional/return spec edges only connect to security-relevant targets
    - Indirect spec edges connect to ALL targets (attacker-controlled destination)
    """

    def __init__(self, speculative_window: int = 10):
        self.speculative_window = speculative_window
        self.cache_window = 5  # Window for cache op → load edges

    def build(self, sequence: List[str]) -> PDG:
        """Build PDG from instruction sequence with 8 edge types."""
        nodes = []
        edges = []

        # Track register definitions for data dependencies
        reg_defs: Dict[str, List[Tuple[int, int]]] = defaultdict(list)

        # Track pending speculative sources: (source_node_id, remaining_window, edge_type_key)
        pending_spec: List[Tuple[int, int, str]] = []

        # Track store instructions for memory ordering edges
        pending_stores: Dict[str, List[Tuple[int, int]]] = defaultdict(list)

        # Track cache ops for cache temporal edges: (cache_node_id, remaining_window)
        pending_cache_ops: List[Tuple[int, int]] = []

        # Track pending fence for fence boundary edge
        fence_pending: Optional[int] = None

        for i, instr in enumerate(sequence):
            instr = instr.strip()
            if not instr or instr.endswith(':') or instr.startswith('.'):
                continue

            # Create node
            node = self._create_node(i, instr, len(nodes))
            if node is None:
                continue

            node_id = len(nodes)
            nodes.append(node)

            category = node.opcode_category

            # --- Edge type 1: CONTROL_FLOW (sequential fallthrough) ---
            if node_id > 0:
                edges.append(PDGEdge(
                    src=node_id - 1,
                    dst=node_id,
                    edge_type=EDGE_TYPES['CONTROL_FLOW'],
                    weight=1.0,
                ))

            # --- Edge type 7: FENCE_BOUNDARY (connect fence to next instruction) ---
            if fence_pending is not None:
                edges.append(PDGEdge(
                    src=fence_pending,
                    dst=node_id,
                    edge_type=EDGE_TYPES['FENCE_BOUNDARY'],
                    weight=1.0,
                ))
                fence_pending = None

            # --- Edge type 0: DATA_DEP (register def-use chains) ---
            for src_reg in node.src_regs:
                if src_reg in reg_defs:
                    for def_node_id, _ in reg_defs[src_reg][-3:]:  # Last 3 defs
                        edges.append(PDGEdge(
                            src=def_node_id,
                            dst=node_id,
                            edge_type=EDGE_TYPES['DATA_DEP'],
                            weight=1.0,
                        ))

            # Update register definitions
            for dest_reg in node.dest_regs:
                reg_defs[dest_reg].append((node_id, i))
                if len(reg_defs[dest_reg]) > 5:
                    reg_defs[dest_reg] = reg_defs[dest_reg][-5:]

            # --- Check if this is a fence (terminates speculation) ---
            if category == OPCODE_CATEGORIES['FENCE']:
                # Fences terminate ALL pending speculative windows
                pending_spec.clear()
                fence_pending = node_id

            # --- Edge types 2/3/4: SPECULATIVE edges (type-specific) ---
            # Process pending speculative sources
            new_pending_spec = []
            for src_id, remaining, spec_type in pending_spec:
                if remaining > 0:
                    # Decay weight based on distance from branch
                    decay = 1.0 / (self.speculative_window - remaining + 1)

                    # Vulnerability-aware weighting for the target
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

                    # SPEC_INDIRECT: connect to ALL instructions (attacker controls target)
                    # SPEC_CONDITIONAL/SPEC_RETURN: connect ONLY to security-relevant targets
                    if spec_type == 'SPEC_INDIRECT' or _is_security_relevant(node):
                        edges.append(PDGEdge(
                            src=src_id,
                            dst=node_id,
                            edge_type=EDGE_TYPES[spec_type],
                            weight=min(spec_weight, 3.0),
                        ))

                    new_pending_spec.append((src_id, remaining - 1, spec_type))
            pending_spec = new_pending_spec

            # Determine if this instruction starts a new speculative window
            # Only certain branch types create speculative edges:
            if category == OPCODE_CATEGORIES['BRANCH_COND']:
                # Conditional branches can be mispredicted (Spectre V1, BHI)
                pending_spec.append((node_id, self.speculative_window, 'SPEC_CONDITIONAL'))
            elif category in (OPCODE_CATEGORIES['CALL_INDIRECT'],
                              OPCODE_CATEGORIES['JUMP_INDIRECT']):
                # Indirect branches: attacker can poison BTB (Spectre V2, BHI)
                pending_spec.append((node_id, self.speculative_window, 'SPEC_INDIRECT'))
            elif category == OPCODE_CATEGORIES['RET']:
                # Returns: RSB can be poisoned (Retbleed, Inception)
                pending_spec.append((node_id, self.speculative_window, 'SPEC_RETURN'))
            # Direct calls (CALL) and unconditional branches (BRANCH_UNCOND):
            # NO speculative edges — these are normal control flow.

            # --- Edge type 5: MEMORY_ORDER (store → load on same base register) ---
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
                            edges.append(PDGEdge(
                                src=store_id,
                                dst=node_id,
                                edge_type=EDGE_TYPES['MEMORY_ORDER'],
                                weight=1.0,
                            ))

            # --- Edge type 6: CACHE_TEMPORAL (cache op → subsequent load) ---
            # Process pending cache ops
            new_pending_cache = []
            for cache_id, remaining in pending_cache_ops:
                if remaining > 0:
                    if is_load or category == OPCODE_CATEGORIES['TIMING']:
                        edges.append(PDGEdge(
                            src=cache_id,
                            dst=node_id,
                            edge_type=EDGE_TYPES['CACHE_TEMPORAL'],
                            weight=1.5,
                        ))
                    new_pending_cache.append((cache_id, remaining - 1))
            pending_cache_ops = new_pending_cache

            # If this is a cache op, start tracking for cache temporal edges
            if category == OPCODE_CATEGORIES['CACHE']:
                pending_cache_ops.append((node_id, self.cache_window))

        return PDG(nodes=nodes, edges=edges)

    def _create_node(self, position: int, instr: str, node_id: int) -> Optional[PDGNode]:
        """Create a PDG node from an instruction"""
        # Extract opcode
        parts = instr.split()
        if not parts:
            return None
        opcode = parts[0].rstrip(':').lower()

        # Classify opcode category
        category = self._classify_opcode(instr)

        # Extract registers
        dest_regs, src_regs = self._extract_registers(instr, category)

        # Determine memory access type
        mem_type = self._get_memory_access_type(instr)

        # Compute speculative flags
        spec_flags = self._compute_spec_flags(instr, category, mem_type)

        return PDGNode(
            id=node_id,
            raw_instruction=instr,
            opcode=opcode,
            opcode_category=category,
            dest_regs=dest_regs,
            src_regs=src_regs,
            mem_access_type=mem_type,
            spec_flags=spec_flags,
        )

    def _classify_opcode(self, instr: str) -> int:
        """Classify instruction into opcode category"""
        # Check patterns in priority order
        if PATTERNS['fence'].search(instr):
            return OPCODE_CATEGORIES['FENCE']
        if PATTERNS['cache'].search(instr):
            return OPCODE_CATEGORIES['CACHE']
        if PATTERNS['timing'].search(instr):
            return OPCODE_CATEGORIES['TIMING']
        if PATTERNS['ret'].search(instr):
            return OPCODE_CATEGORIES['RET']

        # Indirect checks before regular branch/call
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

        # Memory operations - check for memory operand
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
        """Extract destination and source registers"""
        dest_regs = set()
        src_regs = set()

        # Find all registers
        arm_regs = [r.lower() for r in PATTERNS['arm_reg'].findall(instr)]
        x86_regs = [r.lower() for r in PATTERNS['x86_reg'].findall(instr)]
        all_regs = arm_regs + x86_regs

        if not all_regs:
            return dest_regs, src_regs

        # Heuristic: First register is dest for most instructions
        # Exceptions: stores, compares, branches (all sources)
        is_all_source = category in [
            OPCODE_CATEGORIES['STORE'],
            OPCODE_CATEGORIES['COMPARE'],
            OPCODE_CATEGORIES['BRANCH_COND'],
            OPCODE_CATEGORIES['BRANCH_UNCOND'],
            OPCODE_CATEGORIES['CALL'],
            OPCODE_CATEGORIES['CALL_INDIRECT'],
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
        """Determine memory access type"""
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
        """Compute speculative primitive flags"""
        flags = np.zeros(NUM_SPEC_FLAGS, dtype=np.float32)

        # Serializing instructions
        if category == OPCODE_CATEGORIES['FENCE'] or 'cpuid' in instr.lower():
            flags[SPEC_FLAGS['is_serializing']] = 1.0

        # Cache probing
        if category == OPCODE_CATEGORIES['CACHE']:
            flags[SPEC_FLAGS['is_cache_probe']] = 1.0

        # Branch instructions
        if category in [OPCODE_CATEGORIES['BRANCH_COND'], OPCODE_CATEGORIES['BRANCH_UNCOND'],
                       OPCODE_CATEGORIES['CALL'], OPCODE_CATEGORIES['CALL_INDIRECT'],
                       OPCODE_CATEGORIES['JUMP_INDIRECT'], OPCODE_CATEGORIES['RET']]:
            flags[SPEC_FLAGS['is_branch']] = 1.0

        # Indirect branches
        if category in [OPCODE_CATEGORIES['CALL_INDIRECT'], OPCODE_CATEGORIES['JUMP_INDIRECT']]:
            flags[SPEC_FLAGS['is_indirect_branch']] = 1.0

        # Memory access
        if category in [OPCODE_CATEGORIES['LOAD'], OPCODE_CATEGORIES['STORE'], OPCODE_CATEGORIES['STACK']]:
            flags[SPEC_FLAGS['is_memory_access']] = 1.0

        # Timing source
        if category == OPCODE_CATEGORIES['TIMING']:
            flags[SPEC_FLAGS['is_timing_source']] = 1.0

        # Secret source (indexed loads are suspicious)
        if category == OPCODE_CATEGORIES['LOAD'] and mem_type == MEM_ACCESS_TYPES['INDEXED']:
            flags[SPEC_FLAGS['is_secret_source']] = 1.0

        # Transmitter (load after potential secret, approximated by indexed access)
        if category == OPCODE_CATEGORIES['LOAD'] and mem_type in [MEM_ACCESS_TYPES['INDEXED'], MEM_ACCESS_TYPES['INDIRECT']]:
            flags[SPEC_FLAGS['is_transmitter']] = 1.0

        return flags


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    # Test sequences representing different attack types
    test_sequences = [
        ("Spectre V1 (should have SPEC_CONDITIONAL)", [
            "cmp x0, x1",                 # Compare bounds
            "b.ge .L1",                   # Conditional branch (misprediction source)
            "ldr x2, [x3, x0, lsl #3]",  # Indexed load (secret) - security-relevant
            "ldr x4, [x5, x2, lsl #6]",  # Cache probe (transmit) - security-relevant
        ]),
        ("Spectre V2 (should have SPEC_INDIRECT)", [
            "mov x9, x0",                # Load target address
            "br x9",                      # Indirect branch (BTB poisoned)
            "ldr x2, [x3]",              # Any instruction in gadget
            "add x4, x5, x2",            # Compute
        ]),
        ("L1TF (should have CACHE_TEMPORAL)", [
            "dc civac, x0",         # Cache invalidate
            "ldr x1, [x0]",         # Load (terminal fault)
            "mrs x2, cntvct_el0",   # Timing
        ]),
        ("MDS (should have CACHE_TEMPORAL + FENCE_BOUNDARY)", [
            "dsb sy",               # Fence (barrier)
            "dc civac, x0",         # Cache flush
            "ldr x1, [x0]",         # Load from flushed line
            "ldr x2, [x3, x1]",    # Dependent load (transmitter)
        ]),
        ("Retbleed (should have SPEC_RETURN)", [
            "bl func",              # Call (NO speculative edges)
            "add x0, x0, #1",       # Some compute
            "ret",                  # Return (mispredicted → SPEC_RETURN)
            "ldr x1, [x2]",        # Speculative load after ret
        ]),
        ("Benign with direct call (should have NO speculative edges)", [
            "bl _printf",           # Direct call - NO spec edges
            "mov x0, #0",           # Regular move
            "bl _exit",             # Direct call - NO spec edges
        ]),
        ("Fence terminates speculation", [
            "b.ge .L1",             # Conditional branch → starts SPEC_CONDITIONAL window
            "ldr x1, [x0]",        # Load (would be speculative target)
            "lfence",              # Fence → terminates speculation + FENCE_BOUNDARY edge
            "ldr x2, [x3]",        # Load AFTER fence (should NOT get speculative edge)
        ]),
    ]

    EDGE_TYPE_NAMES = {v: k for k, v in EDGE_TYPES.items()}

    builder = PDGBuilder(speculative_window=5)

    for name, seq in test_sequences:
        print(f"\n=== {name} ===")
        print("Instructions:", seq)

        pdg = builder.build(seq)
        print(f"Nodes: {len(pdg.nodes)}, Edges: {len(pdg.edges)}")

        for node in pdg.nodes:
            cat_name = [k for k, v in OPCODE_CATEGORIES.items() if v == node.opcode_category][0]
            flags = [k for k, v in SPEC_FLAGS.items() if node.spec_flags[v] > 0]
            print(f"  {node.id}: {cat_name:15s} {node.opcode:10s} | "
                  f"dest={node.dest_regs} src={node.src_regs} | flags={flags}")

        print(f"Edges by type:")
        for etype_name, etype_id in sorted(EDGE_TYPES.items(), key=lambda x: x[1]):
            elist = pdg._edges_by_type.get(etype_id, [])
            if elist:
                print(f"  {etype_name:20s}: {elist}")

        # Test API
        ei, et = pdg.get_edge_index_and_type(max_nodes=10)
        ew = pdg.get_edge_weights(max_nodes=10)
        print(f"  Edge index shape: {ei.shape}, Edge types: {et.tolist()}")
        print(f"  Edge weights: {ew.tolist()}")
