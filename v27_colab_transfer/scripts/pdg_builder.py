#!/usr/bin/env python3
"""
Program Dependency Graph (PDG) Builder for Assembly Code

Creates a multi-relational graph capturing:
1. Data Dependency Edges (RAW - Read After Write): Tracks register def-use chains
2. Control Dependency Edges: Links branches to instructions in speculative window

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
    'indirect': re.compile(r'\b(br|blr)\b|\bjmp\s*\*|\bcall\s*\*|\[x[0-9]+\]', re.I),
    
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
    edge_type: int  # 0 = data dependency, 1 = control dependency
    weight: float = 1.0


@dataclass
class PDG:
    """Complete Program Dependency Graph"""
    nodes: List[PDGNode]
    edges: List[PDGEdge]
    
    # Quick lookups
    data_edges: List[Tuple[int, int]] = field(default_factory=list)
    control_edges: List[Tuple[int, int]] = field(default_factory=list)
    
    def __post_init__(self):
        for edge in self.edges:
            if edge.edge_type == 0:
                self.data_edges.append((edge.src, edge.dst))
            else:
                self.control_edges.append((edge.src, edge.dst))
    
    def get_adjacency_matrices(self, max_nodes: int) -> Tuple[np.ndarray, np.ndarray]:
        """Get separate adjacency matrices for data and control edges"""
        n = min(len(self.nodes), max_nodes)
        adj_data = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        adj_control = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        
        for edge in self.edges:
            if edge.src < n and edge.dst < n:
                if edge.edge_type == 0:
                    adj_data[edge.src, edge.dst] = edge.weight
                else:
                    adj_control[edge.src, edge.dst] = edge.weight
        
        return adj_data, adj_control
    
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

class PDGBuilder:
    """
    Builds Program Dependency Graphs from assembly instruction sequences.
    
    Captures:
    1. Data dependencies (RAW - Read After Write)
    2. Control dependencies (branch -> speculative window)
    """
    
    def __init__(self, speculative_window: int = 10):
        """
        Args:
            speculative_window: Number of instructions after branch that are control-dependent
        """
        self.speculative_window = speculative_window
    
    def build(self, sequence: List[str]) -> PDG:
        """Build PDG from instruction sequence"""
        nodes = []
        edges = []
        
        # Track register definitions for data dependencies
        # Maps register -> list of (node_id, position) that define it
        reg_defs: Dict[str, List[Tuple[int, int]]] = defaultdict(list)
        
        # Track pending branches for control dependencies
        pending_branches: List[Tuple[int, int]] = []  # (branch_node_id, remaining_window)
        
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
            
            # Add data dependency edges (RAW)
            for src_reg in node.src_regs:
                if src_reg in reg_defs:
                    # Connect to most recent definition
                    for def_node_id, _ in reg_defs[src_reg][-3:]:  # Last 3 defs
                        edges.append(PDGEdge(
                            src=def_node_id,
                            dst=node_id,
                            edge_type=0,  # Data dependency
                            weight=1.0
                        ))
            
            # Update register definitions
            for dest_reg in node.dest_regs:
                reg_defs[dest_reg].append((node_id, i))
                # Keep only recent definitions
                if len(reg_defs[dest_reg]) > 5:
                    reg_defs[dest_reg] = reg_defs[dest_reg][-5:]
            
            # Add control dependency edges from pending branches
            new_pending = []
            for branch_id, remaining in pending_branches:
                if remaining > 0:
                    edges.append(PDGEdge(
                        src=branch_id,
                        dst=node_id,
                        edge_type=1,  # Control dependency
                        weight=1.0 / (self.speculative_window - remaining + 1)  # Decay
                    ))
                    new_pending.append((branch_id, remaining - 1))
            pending_branches = new_pending
            
            # If this is a branch, add to pending for control dependencies
            if node.spec_flags[SPEC_FLAGS['is_branch']]:
                pending_branches.append((node_id, self.speculative_window))
        
        return PDG(nodes=nodes, edges=edges)
    
    def _create_node(self, position: int, instr: str, node_id: int) -> Optional[PDGNode]:
        """Create a PDG node from an instruction"""
        instr_lower = instr.lower()
        
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
        
        if is_indirect and ('jmp' in instr.lower() or 'br ' in instr.lower()):
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
        # Spectre V1 pattern
        [
            "cmp x0, x1",           # Compare bounds
            "b.ge .L1",             # Conditional branch
            "ldr x2, [x3, x0, lsl #3]",  # Indexed load (secret)
            "ldr x4, [x5, x2, lsl #6]",  # Cache probe (transmit)
        ],
        # L1TF pattern
        [
            "dc civac, x0",         # Cache invalidate
            "ldr x1, [x0]",         # Load (terminal fault)
            "mrs x2, cntvct_el0",   # Timing
        ],
        # Retbleed pattern
        [
            "bl func",              # Call
            "add x0, x0, #1",       # Some compute
            "ret",                  # Return (mispredicted)
        ],
    ]
    
    builder = PDGBuilder(speculative_window=5)
    
    for i, seq in enumerate(test_sequences):
        print(f"\n=== Test {i+1} ===")
        print("Instructions:", seq)
        
        pdg = builder.build(seq)
        print(f"Nodes: {len(pdg.nodes)}")
        
        for node in pdg.nodes:
            print(f"  {node.id}: [{OPCODE_CATEGORIES}] {node.opcode} | "
                  f"dest={node.dest_regs} src={node.src_regs} | "
                  f"spec={node.spec_flags.nonzero()[0].tolist()}")
        
        print(f"Data edges: {pdg.data_edges}")
        print(f"Control edges: {pdg.control_edges}")
        print(f"Topological order: {pdg.topological_order()}")
        
        # Test feature extraction
        features = pdg.get_node_features(max_nodes=10)
        print(f"Feature shape: {features.shape}")
