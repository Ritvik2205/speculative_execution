#!/usr/bin/env python3
"""
Semantic Graph Builder for Assembly Code

Converts instruction sequences into semantic computation graphs (DAGs) that
capture data flow dependencies and control flow structure.

Key improvements over previous approaches:
1. Semantic node types (not raw opcodes) - LOAD, STORE, BRANCH, etc.
2. True graph connectivity based on data dependencies
3. Attack pattern detection as graph motifs
4. Memory location tracking for store-load dependencies
"""

import re
from typing import List, Dict, Tuple, Set, Optional
from dataclasses import dataclass, field
from collections import defaultdict
import numpy as np


# =============================================================================
# SEMANTIC NODE TYPES
# =============================================================================

class NodeType:
    """Semantic instruction categories"""
    LOAD = 'LOAD'           # Memory read
    STORE = 'STORE'         # Memory write
    LOAD_INDEXED = 'LOAD_INDEXED'  # Array-style indexed load (arr[i])
    LOAD_STACK = 'LOAD_STACK'      # Stack load
    STORE_STACK = 'STORE_STACK'    # Stack store
    BRANCH_COND = 'BRANCH_COND'    # Conditional branch
    BRANCH_UNCOND = 'BRANCH_UNCOND'  # Unconditional branch
    CALL = 'CALL'           # Direct call
    CALL_INDIRECT = 'CALL_INDIRECT'  # Indirect call (call *reg)
    RET = 'RET'             # Return
    JUMP_INDIRECT = 'JUMP_INDIRECT'  # Indirect jump (jmp *reg)
    COMPARE = 'COMPARE'     # Comparison (cmp, test, tst)
    COMPUTE = 'COMPUTE'     # Arithmetic/logic
    FENCE = 'FENCE'         # Memory barrier (lfence, mfence, dsb)
    CACHE_OP = 'CACHE_OP'   # Cache operation (clflush, dc civac)
    TIMING = 'TIMING'       # Timing measurement (rdtsc)
    NOP = 'NOP'             # No operation
    UNKNOWN = 'UNKNOWN'     # Unknown instruction


class EdgeType:
    """Edge types in the semantic graph"""
    SEQUENTIAL = 'SEQ'      # Next instruction in sequence
    DATA_DEP = 'DATA'       # Data dependency (def-use)
    CONTROL = 'CTRL'        # Control flow (branch target)
    MEMORY_DEP = 'MEM'      # Memory dependency (store-load)


@dataclass
class SemanticNode:
    """A node in the semantic graph"""
    id: int
    node_type: str
    raw_instruction: str
    # Semantic attributes
    reads_memory: bool = False
    writes_memory: bool = False
    is_indirect: bool = False
    uses_stack: bool = False
    uses_index: bool = False
    # Data flow tracking
    defs: Set[str] = field(default_factory=set)  # Registers/locations defined
    uses: Set[str] = field(default_factory=set)  # Registers/locations used
    memory_addr: Optional[str] = None  # Memory address pattern


@dataclass 
class SemanticEdge:
    """An edge in the semantic graph"""
    src: int  # Source node ID
    dst: int  # Destination node ID
    edge_type: str


@dataclass
class SemanticGraph:
    """Complete semantic graph representation"""
    nodes: List[SemanticNode]
    edges: List[SemanticEdge]
    # Adjacency list for efficient traversal
    adjacency: Dict[int, List[Tuple[int, str]]] = field(default_factory=dict)
    
    def __post_init__(self):
        # Build adjacency list
        self.adjacency = defaultdict(list)
        for edge in self.edges:
            self.adjacency[edge.src].append((edge.dst, edge.edge_type))


# =============================================================================
# INSTRUCTION CLASSIFICATION
# =============================================================================

# Pre-compiled regex patterns for efficiency
LOAD_PATTERNS = re.compile(
    r'\b(ldr|ldp|ldur|ldrb|ldrh|ldrsb|ldrsh|ldrsw|ldrex|ldadd|ldclr|ldset|'
    r'mov[zsk]?|movz|movk|movn|'  # ARM moves that can load
    r'ld[1-4]|ldnp|ldtr|ldxr|ldar|'  # ARM SIMD/atomic loads
    r'vldr|vld[1-4])\b',  # ARM NEON loads
    re.IGNORECASE
)

STORE_PATTERNS = re.compile(
    r'\b(str|stp|stur|strb|strh|stlr|stxr|stlxr|'
    r'st[1-4]|stnp|sttr|'  # ARM stores
    r'vstr|vst[1-4])\b',  # ARM NEON stores
    re.IGNORECASE
)

X86_LOAD_PATTERNS = re.compile(
    r'\b(mov[qld]?|movzx|movsx|movabs|'
    r'lods|lodsb|lodsw|lodsd|lodsq|'
    r'pop|'  # Stack load
    r'vmov|vpbroadcast|vbroadcast|'  # AVX
    r'lea)\b',  # Load effective address
    re.IGNORECASE
)

X86_STORE_PATTERNS = re.compile(
    r'\b(mov[qld]?|movnti|'
    r'stos|stosb|stosw|stosd|stosq|'
    r'push|'  # Stack store
    r'vmov)\b',
    re.IGNORECASE
)

BRANCH_COND_PATTERNS = re.compile(
    r'\b(b\.(eq|ne|lt|le|gt|ge|hs|lo|hi|ls|mi|pl|vs|vc|al)|'  # ARM conditional
    r'beq|bne|blt|ble|bgt|bge|bhs|blo|bhi|bls|bmi|bpl|'  # ARM
    r'cbz|cbnz|tbz|tbnz|'  # ARM compare-branch
    r'j[elgnas]|jn?[elgzsa]|j[abp]|jn?[abp]|jo|jno|jc|jnc|js|jns|jp|jnp|jcxz|jecxz|jrcxz)\b',  # x86
    re.IGNORECASE
)

BRANCH_UNCOND_PATTERNS = re.compile(
    r'\b(b\s|b$|jmp|jmpq)\b',
    re.IGNORECASE
)

CALL_PATTERNS = re.compile(
    r'\b(bl|call|callq)\b',
    re.IGNORECASE
)

INDIRECT_BRANCH_PATTERNS = re.compile(
    r'\b(br|blr|ret|'  # ARM indirect
    r'jmp\s*\*|call\s*\*)\b|'  # x86 indirect
    r'\[x[0-9]+\]|'  # ARM register indirect addressing
    r'\*%[re]?[abcd]x|\*%r[0-9]+',  # x86 indirect through register
    re.IGNORECASE
)

RET_PATTERNS = re.compile(
    r'\b(ret|retq|retw|retl)\b',
    re.IGNORECASE
)

COMPARE_PATTERNS = re.compile(
    r'\b(cmp|cmn|test|tst|ccmp|ccmn|fcmp)\b',
    re.IGNORECASE
)

FENCE_PATTERNS = re.compile(
    r'\b(lfence|mfence|sfence|dsb|dmb|isb)\b',
    re.IGNORECASE
)

CACHE_PATTERNS = re.compile(
    r'\b(clflush|clflushopt|clwb|cldemote|'
    r'dc\s+(civac|cvac|cvau|zva|ivac)|'  # ARM data cache
    r'ic\s+(ivau|iallu)|'  # ARM instruction cache
    r'invlpg|wbinvd|invd)\b',
    re.IGNORECASE
)

TIMING_PATTERNS = re.compile(
    r'\b(rdtsc|rdtscp|rdpmc|'
    r'mrs\s+.*cntvct|mrs\s+.*pmccntr)\b',  # ARM timing
    re.IGNORECASE
)

NOP_PATTERNS = re.compile(
    r'\b(nop|hint\s+#0)\b',
    re.IGNORECASE
)

ARITHMETIC_PATTERNS = re.compile(
    r'\b(add|sub|mul|div|udiv|sdiv|madd|msub|'
    r'and|orr|eor|orn|bic|'  # Logical
    r'lsl|lsr|asr|ror|'  # Shift
    r'adc|sbc|neg|mvn|'  # Other arithmetic
    r'inc|dec|imul|idiv|shl|shr|sar|rol|ror|'  # x86
    r'fadd|fsub|fmul|fdiv|'  # Float
    r'vadd|vsub|vmul|vdiv)\b',  # SIMD
    re.IGNORECASE
)

# Stack access patterns
STACK_ACCESS_PATTERN = re.compile(
    r'\[sp|sp,|\[x29|x29,|\[fp|fp,|'  # ARM stack
    r'%[re]?sp|%[re]?bp|\[%[re]?sp\]|\[%[re]?bp\]',  # x86 stack
    re.IGNORECASE
)

# Indexed access pattern (array-like)
INDEXED_ACCESS_PATTERN = re.compile(
    r'\[.*,.*,.*\]|'  # ARM indexed [base, index, scale]
    r'\[.*\+.*\*.*\]|'  # x86 indexed [base+index*scale]
    r',\s*lsl\s+#|'  # ARM shift for indexing
    r'\[x[0-9]+,\s*x[0-9]+',  # ARM [base, index]
    re.IGNORECASE
)

# Register patterns
ARM_REG_PATTERN = re.compile(r'\b([xwbhsdq][0-9]+|sp|lr|fp|pc|xzr|wzr)\b', re.IGNORECASE)
X86_REG_PATTERN = re.compile(r'%([re]?[abcd]x|[re]?[sd]i|[re]?[sb]p|r[0-9]+[dwb]?)', re.IGNORECASE)


def classify_instruction(instr: str) -> Tuple[str, Dict]:
    """
    Classify an instruction into semantic type with attributes.
    
    Returns:
        (node_type, attributes_dict)
    """
    instr_lower = instr.lower().strip()
    
    # Skip labels and directives
    if instr_lower.endswith(':') or instr_lower.startswith('.'):
        return NodeType.NOP, {}
    
    attrs = {
        'reads_memory': False,
        'writes_memory': False,
        'is_indirect': False,
        'uses_stack': bool(STACK_ACCESS_PATTERN.search(instr)),
        'uses_index': bool(INDEXED_ACCESS_PATTERN.search(instr)),
    }
    
    # Check for indirect patterns first (highest priority for security)
    is_indirect = bool(INDIRECT_BRANCH_PATTERNS.search(instr))
    attrs['is_indirect'] = is_indirect
    
    # Return instructions
    if RET_PATTERNS.search(instr):
        return NodeType.RET, attrs
    
    # Indirect jump/call (before regular branch check)
    if is_indirect and (CALL_PATTERNS.search(instr) or 'blr' in instr_lower):
        return NodeType.CALL_INDIRECT, attrs
    
    if is_indirect and ('br ' in instr_lower or 'jmp' in instr_lower):
        return NodeType.JUMP_INDIRECT, attrs
    
    # Regular calls
    if CALL_PATTERNS.search(instr):
        return NodeType.CALL, attrs
    
    # Conditional branches
    if BRANCH_COND_PATTERNS.search(instr):
        return NodeType.BRANCH_COND, attrs
    
    # Unconditional branches
    if BRANCH_UNCOND_PATTERNS.search(instr):
        return NodeType.BRANCH_UNCOND, attrs
    
    # Fences (memory barriers)
    if FENCE_PATTERNS.search(instr):
        return NodeType.FENCE, attrs
    
    # Cache operations
    if CACHE_PATTERNS.search(instr):
        return NodeType.CACHE_OP, attrs
    
    # Timing operations
    if TIMING_PATTERNS.search(instr):
        return NodeType.TIMING, attrs
    
    # Comparisons
    if COMPARE_PATTERNS.search(instr):
        return NodeType.COMPARE, attrs
    
    # NOPs
    if NOP_PATTERNS.search(instr):
        return NodeType.NOP, attrs
    
    # Memory operations - need to check for memory operand presence
    has_memory_operand = '[' in instr or ('(' in instr and '%' in instr)
    
    # Determine if load or store based on instruction and operand position
    # ARM: ldr dest, [src] -> load; str src, [dest] -> store
    # x86: mov src, dest with memory
    
    if STORE_PATTERNS.search(instr) or X86_STORE_PATTERNS.search(instr):
        if has_memory_operand or 'push' in instr_lower:
            attrs['writes_memory'] = True
            if attrs['uses_stack']:
                return NodeType.STORE_STACK, attrs
            return NodeType.STORE, attrs
    
    if LOAD_PATTERNS.search(instr) or X86_LOAD_PATTERNS.search(instr):
        if has_memory_operand or 'pop' in instr_lower:
            attrs['reads_memory'] = True
            if attrs['uses_stack']:
                return NodeType.LOAD_STACK, attrs
            if attrs['uses_index']:
                return NodeType.LOAD_INDEXED, attrs
            return NodeType.LOAD, attrs
    
    # General arithmetic/compute
    if ARITHMETIC_PATTERNS.search(instr):
        return NodeType.COMPUTE, attrs
    
    # Default to COMPUTE for anything else that looks like an instruction
    if any(c.isalpha() for c in instr):
        return NodeType.COMPUTE, attrs
    
    return NodeType.UNKNOWN, attrs


def extract_registers(instr: str) -> Tuple[Set[str], Set[str]]:
    """
    Extract defined and used registers from an instruction.
    
    Returns:
        (defs_set, uses_set)
    """
    # Simple heuristic: first operand is usually dest (def), rest are sources (uses)
    # This is architecture-dependent but works as approximation
    
    defs = set()
    uses = set()
    
    # Find all registers
    arm_regs = ARM_REG_PATTERN.findall(instr)
    x86_regs = X86_REG_PATTERN.findall(instr)
    all_regs = [r.lower() for r in arm_regs + x86_regs]
    
    if not all_regs:
        return defs, uses
    
    # Simple heuristic: first register is dest (defined), rest are used
    # Exception: store instructions define memory, not the first register
    instr_lower = instr.lower()
    
    is_store = STORE_PATTERNS.search(instr) or X86_STORE_PATTERNS.search(instr)
    is_cmp = COMPARE_PATTERNS.search(instr)
    is_branch = BRANCH_COND_PATTERNS.search(instr) or BRANCH_UNCOND_PATTERNS.search(instr)
    
    if is_store or is_cmp or is_branch:
        # All registers are used (sources)
        uses = set(all_regs)
    else:
        # First is dest, rest are sources
        if len(all_regs) > 0:
            defs.add(all_regs[0])
        if len(all_regs) > 1:
            uses = set(all_regs[1:])
    
    return defs, uses


def extract_memory_address(instr: str) -> Optional[str]:
    """
    Extract a normalized memory address pattern from instruction.
    
    Returns a normalized string representing the memory location,
    or None if no memory access.
    """
    # Extract ARM-style [base, offset] or x86-style (base, index, scale)
    
    # ARM: [x0], [x0, #8], [sp, x1]
    arm_mem = re.search(r'\[([\w,\s#+-]+)\]', instr)
    if arm_mem:
        content = arm_mem.group(1).lower()
        # Normalize: keep base register, mark stack
        if 'sp' in content or 'x29' in content or 'fp' in content:
            return 'STACK'
        # Extract base register
        base = re.search(r'x[0-9]+|w[0-9]+', content)
        if base:
            return f'MEM_{base.group(0)}'
        return 'MEM_UNKNOWN'
    
    # x86: (%rsp), 8(%rbp), (%rax,%rbx,4)
    x86_mem = re.search(r'(-?[0-9]*)\(([^)]+)\)', instr)
    if x86_mem:
        offset, content = x86_mem.groups()
        content = content.lower()
        if 'sp' in content or 'bp' in content:
            return 'STACK'
        base = re.search(r'%[re]?[abcd]x|%r[0-9]+', content)
        if base:
            return f'MEM_{base.group(0)}'
        return 'MEM_UNKNOWN'
    
    return None


# =============================================================================
# GRAPH BUILDER
# =============================================================================

class SemanticGraphBuilder:
    """
    Builds semantic computation graphs from instruction sequences.
    
    Key features:
    1. Semantic node types (not raw opcodes)
    2. Data dependency edges (register def-use chains)
    3. Memory dependency edges (store-load to same location)
    4. Control flow edges (branches)
    5. Sequential edges for instruction order
    """
    
    def __init__(self, include_sequential: bool = True, max_def_distance: int = 10):
        """
        Args:
            include_sequential: Include SEQ edges between consecutive instructions
            max_def_distance: Max distance to look back for def-use chains
        """
        self.include_sequential = include_sequential
        self.max_def_distance = max_def_distance
    
    def build_graph(self, sequence: List[str]) -> SemanticGraph:
        """
        Build a semantic graph from an instruction sequence.
        
        Args:
            sequence: List of assembly instruction strings
            
        Returns:
            SemanticGraph with nodes and edges
        """
        nodes = []
        edges = []
        
        # Track last definition of each register for def-use chains
        last_def: Dict[str, int] = {}  # register -> node_id
        
        # Track memory locations for store-load dependencies
        memory_writes: Dict[str, List[int]] = defaultdict(list)  # addr_pattern -> [node_ids]
        
        for i, instr in enumerate(sequence):
            # Skip empty lines
            if not instr.strip():
                continue
            
            # Classify instruction
            node_type, attrs = classify_instruction(instr)
            
            # Skip NOPs and UNKNOWNs for cleaner graphs
            if node_type in (NodeType.NOP, NodeType.UNKNOWN):
                continue
            
            # Extract register usage
            defs, uses = extract_registers(instr)
            
            # Extract memory address
            mem_addr = extract_memory_address(instr)
            
            # Create node
            node = SemanticNode(
                id=len(nodes),
                node_type=node_type,
                raw_instruction=instr.strip(),
                reads_memory=attrs.get('reads_memory', False),
                writes_memory=attrs.get('writes_memory', False),
                is_indirect=attrs.get('is_indirect', False),
                uses_stack=attrs.get('uses_stack', False),
                uses_index=attrs.get('uses_index', False),
                defs=defs,
                uses=uses,
                memory_addr=mem_addr,
            )
            nodes.append(node)
            
            node_id = node.id
            
            # Add sequential edge from previous node
            if self.include_sequential and node_id > 0:
                edges.append(SemanticEdge(
                    src=node_id - 1,
                    dst=node_id,
                    edge_type=EdgeType.SEQUENTIAL
                ))
            
            # Add data dependency edges (def-use chains)
            for used_reg in uses:
                if used_reg in last_def:
                    def_node = last_def[used_reg]
                    # Only add if within distance limit
                    if node_id - def_node <= self.max_def_distance:
                        edges.append(SemanticEdge(
                            src=def_node,
                            dst=node_id,
                            edge_type=EdgeType.DATA_DEP
                        ))
            
            # Update last definition
            for def_reg in defs:
                last_def[def_reg] = node_id
            
            # Add memory dependency edges (store-load)
            if node.reads_memory and mem_addr:
                # Check for previous stores to same location
                for store_node in memory_writes.get(mem_addr, []):
                    if node_id - store_node <= self.max_def_distance:
                        edges.append(SemanticEdge(
                            src=store_node,
                            dst=node_id,
                            edge_type=EdgeType.MEMORY_DEP
                        ))
            
            if node.writes_memory and mem_addr:
                memory_writes[mem_addr].append(node_id)
        
        return SemanticGraph(nodes=nodes, edges=edges)
    
    def to_adjacency_matrix(self, graph: SemanticGraph, 
                           max_nodes: int = 128) -> Tuple[np.ndarray, np.ndarray]:
        """
        Convert graph to adjacency matrix and node feature matrix.
        
        Returns:
            (adjacency_matrix, node_features)
        """
        n_nodes = min(len(graph.nodes), max_nodes)
        
        # Node features: one-hot node type + attributes
        # Node types: 16 types + 5 binary attributes = 21 features per node
        node_types = [
            NodeType.LOAD, NodeType.STORE, NodeType.LOAD_INDEXED, 
            NodeType.LOAD_STACK, NodeType.STORE_STACK,
            NodeType.BRANCH_COND, NodeType.BRANCH_UNCOND,
            NodeType.CALL, NodeType.CALL_INDIRECT, NodeType.RET,
            NodeType.JUMP_INDIRECT, NodeType.COMPARE, NodeType.COMPUTE,
            NodeType.FENCE, NodeType.CACHE_OP, NodeType.TIMING
        ]
        type_to_idx = {t: i for i, t in enumerate(node_types)}
        
        n_type_features = len(node_types)
        n_attr_features = 5  # reads_memory, writes_memory, is_indirect, uses_stack, uses_index
        n_features = n_type_features + n_attr_features
        
        node_features = np.zeros((max_nodes, n_features), dtype=np.float32)
        adjacency = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        
        for i, node in enumerate(graph.nodes[:max_nodes]):
            # One-hot node type
            type_idx = type_to_idx.get(node.node_type, n_type_features - 1)
            node_features[i, type_idx] = 1.0
            
            # Binary attributes
            node_features[i, n_type_features] = float(node.reads_memory)
            node_features[i, n_type_features + 1] = float(node.writes_memory)
            node_features[i, n_type_features + 2] = float(node.is_indirect)
            node_features[i, n_type_features + 3] = float(node.uses_stack)
            node_features[i, n_type_features + 4] = float(node.uses_index)
        
        # Build adjacency matrix
        for edge in graph.edges:
            if edge.src < max_nodes and edge.dst < max_nodes:
                adjacency[edge.src, edge.dst] = 1.0
                # Make undirected for message passing
                adjacency[edge.dst, edge.src] = 1.0
        
        return adjacency, node_features


# =============================================================================
# ATTACK PATTERN DETECTOR
# =============================================================================

class AttackPatternDetector:
    """
    Detects attack-specific patterns in semantic graphs.
    
    Based on the fundamental attack signatures from ATTACK_DIFFERENTIATORS.md
    """
    
    def __init__(self):
        # Define attack signatures as sequences of node types
        self.patterns = {
            'SPECTRE_V1': [
                # COMPARE → BRANCH → LOAD[indexed] → LOAD (bounds check bypass)
                ([NodeType.COMPARE, NodeType.BRANCH_COND], 'compare_branch'),
                ([NodeType.BRANCH_COND, NodeType.LOAD_INDEXED], 'branch_load_indexed'),
                ([NodeType.LOAD_INDEXED, NodeType.LOAD], 'indexed_then_load'),
            ],
            'SPECTRE_V2': [
                # Indirect branch (trainable target)
                ([NodeType.CALL_INDIRECT], 'indirect_call'),
                ([NodeType.JUMP_INDIRECT], 'indirect_jump'),
            ],
            'SPECTRE_V4': [
                # STORE → LOAD to same location (speculative store bypass)
                ([NodeType.STORE, NodeType.LOAD], 'store_load_pair'),
                ([NodeType.STORE_STACK, NodeType.LOAD_STACK], 'stack_store_load'),
            ],
            'L1TF': [
                # CACHE_OP → LOAD (cache manipulation before access)
                ([NodeType.CACHE_OP], 'cache_op'),
                ([NodeType.CACHE_OP, NodeType.LOAD], 'cache_then_load'),
            ],
            'MDS': [
                # FENCE; FENCE pattern
                ([NodeType.FENCE, NodeType.FENCE], 'double_fence'),
                ([NodeType.FENCE], 'single_fence'),
            ],
            'RETBLEED': [
                # CALL → ... → RET (RSB misprediction)
                ([NodeType.CALL, NodeType.RET], 'call_ret'),
                ([NodeType.RET], 'has_ret'),
            ],
            'INCEPTION': [
                # Multiple indirect branches (BTB pollution)
                ([NodeType.CALL_INDIRECT, NodeType.CALL_INDIRECT], 'multiple_indirect'),
                ([NodeType.JUMP_INDIRECT, NodeType.CALL_INDIRECT], 'mixed_indirect'),
            ],
            'BHI': [
                # High branch density (history training)
                ([NodeType.BRANCH_COND, NodeType.BRANCH_COND], 'branch_chain'),
                ([NodeType.BRANCH_COND, NodeType.BRANCH_UNCOND], 'mixed_branches'),
            ],
        }
    
    def detect_patterns(self, graph: SemanticGraph) -> Dict[str, float]:
        """
        Detect attack patterns in a semantic graph.
        
        Returns:
            Dictionary of pattern_name -> count/score
        """
        results = defaultdict(float)
        
        node_types = [node.node_type for node in graph.nodes]
        n = len(node_types)
        
        if n == 0:
            return dict(results)
        
        # Count node type frequencies
        type_counts = defaultdict(int)
        for nt in node_types:
            type_counts[nt] += 1
        
        # Compute density metrics
        results['total_nodes'] = n
        results['load_count'] = type_counts[NodeType.LOAD] + type_counts[NodeType.LOAD_INDEXED] + type_counts[NodeType.LOAD_STACK]
        results['store_count'] = type_counts[NodeType.STORE] + type_counts[NodeType.STORE_STACK]
        results['branch_count'] = type_counts[NodeType.BRANCH_COND] + type_counts[NodeType.BRANCH_UNCOND]
        results['indirect_count'] = type_counts[NodeType.CALL_INDIRECT] + type_counts[NodeType.JUMP_INDIRECT]
        results['fence_count'] = type_counts[NodeType.FENCE]
        results['cache_op_count'] = type_counts[NodeType.CACHE_OP]
        results['timing_count'] = type_counts[NodeType.TIMING]
        results['ret_count'] = type_counts[NodeType.RET]
        results['call_count'] = type_counts[NodeType.CALL] + type_counts[NodeType.CALL_INDIRECT]
        
        # Branch density (high = potential BHI)
        results['branch_density'] = results['branch_count'] / max(n, 1)
        
        # Indirect ratio (high = potential INCEPTION/SPECTRE_V2)
        total_branches = results['branch_count'] + results['indirect_count']
        results['indirect_ratio'] = results['indirect_count'] / max(total_branches, 1)
        
        # Pattern matching
        for attack_type, patterns in self.patterns.items():
            for pattern_seq, pattern_name in patterns:
                count = self._count_pattern(node_types, pattern_seq)
                results[f'{attack_type}_{pattern_name}'] = count
        
        # Special: check for memory dependencies (SPECTRE_V4)
        mem_dep_count = sum(1 for e in graph.edges if e.edge_type == EdgeType.MEMORY_DEP)
        results['memory_dep_count'] = mem_dep_count
        
        # Data dependency density
        data_dep_count = sum(1 for e in graph.edges if e.edge_type == EdgeType.DATA_DEP)
        results['data_dep_density'] = data_dep_count / max(n, 1)
        
        # Check for indexed loads without prior fence (SPECTRE_V1 indicator)
        results['unfenced_indexed_load'] = self._check_unfenced_pattern(
            graph, NodeType.LOAD_INDEXED, NodeType.FENCE
        )
        
        # Call-to-ret distance (short = potential RETBLEED)
        call_ret_distance = self._compute_call_ret_distance(graph)
        results['call_ret_distance'] = call_ret_distance
        
        # Compute aggregate scores for each attack type
        results['spectre_v1_score'] = (
            results.get('SPECTRE_V1_compare_branch', 0) * 2 +
            results.get('SPECTRE_V1_branch_load_indexed', 0) * 3 +
            results.get('SPECTRE_V1_indexed_then_load', 0) * 2 +
            results.get('unfenced_indexed_load', 0) * 2
        )
        
        results['spectre_v2_score'] = (
            results.get('SPECTRE_V2_indirect_call', 0) * 3 +
            results.get('SPECTRE_V2_indirect_jump', 0) * 3 +
            results['indirect_ratio'] * 5
        )
        
        results['spectre_v4_score'] = (
            results.get('SPECTRE_V4_store_load_pair', 0) * 3 +
            results.get('SPECTRE_V4_stack_store_load', 0) * 2 +
            results['memory_dep_count'] * 1
        )
        
        results['l1tf_score'] = (
            results.get('L1TF_cache_op', 0) * 3 +
            results.get('L1TF_cache_then_load', 0) * 4 +
            results['timing_count'] * 1
        )
        
        results['mds_score'] = (
            results.get('MDS_double_fence', 0) * 4 +
            results.get('MDS_single_fence', 0) * 1
        )
        
        results['retbleed_score'] = (
            results.get('RETBLEED_call_ret', 0) * 3 +
            results.get('RETBLEED_has_ret', 0) * 1 +
            (1 if call_ret_distance > 0 and call_ret_distance < 5 else 0) * 3
        )
        
        results['inception_score'] = (
            results.get('INCEPTION_multiple_indirect', 0) * 4 +
            results.get('INCEPTION_mixed_indirect', 0) * 3 +
            results['indirect_count'] * 1
        )
        
        results['bhi_score'] = (
            results.get('BHI_branch_chain', 0) * 2 +
            results.get('BHI_mixed_branches', 0) * 2 +
            results['branch_density'] * 10
        )
        
        return dict(results)
    
    def _count_pattern(self, node_types: List[str], pattern: List[str]) -> int:
        """Count occurrences of a pattern in node type sequence."""
        if len(pattern) == 1:
            return sum(1 for nt in node_types if nt == pattern[0])
        
        count = 0
        for i in range(len(node_types) - len(pattern) + 1):
            window = node_types[i:i + len(pattern)]
            # Allow gaps of up to 3 instructions between pattern elements
            if self._matches_with_gaps(window, pattern, max_gap=3):
                count += 1
        
        return count
    
    def _matches_with_gaps(self, window: List[str], pattern: List[str], max_gap: int = 3) -> bool:
        """Check if window matches pattern allowing for gaps."""
        if len(window) < len(pattern):
            return False
        
        pattern_idx = 0
        gap_count = 0
        
        for node_type in window:
            if node_type == pattern[pattern_idx]:
                pattern_idx += 1
                gap_count = 0
                if pattern_idx == len(pattern):
                    return True
            else:
                gap_count += 1
                if gap_count > max_gap:
                    return False
        
        return False
    
    def _check_unfenced_pattern(self, graph: SemanticGraph, 
                                 target_type: str, fence_type: str) -> int:
        """Count target nodes without preceding fence."""
        count = 0
        fence_seen = False
        
        for node in graph.nodes:
            if node.node_type == fence_type:
                fence_seen = True
            elif node.node_type == target_type:
                if not fence_seen:
                    count += 1
                fence_seen = False  # Reset after target
        
        return count
    
    def _compute_call_ret_distance(self, graph: SemanticGraph) -> float:
        """Compute average distance from CALL to RET."""
        distances = []
        last_call_idx = -1
        
        for i, node in enumerate(graph.nodes):
            if node.node_type in (NodeType.CALL, NodeType.CALL_INDIRECT):
                last_call_idx = i
            elif node.node_type == NodeType.RET and last_call_idx >= 0:
                distances.append(i - last_call_idx)
                last_call_idx = -1
        
        if distances:
            return sum(distances) / len(distances)
        return -1  # No call-ret pair found


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    # Test with sample sequences
    test_sequences = [
        # SPECTRE V1-like
        [
            "cmp x0, x1",
            "b.ge .L1",
            "ldr x2, [x3, x0, lsl #3]",
            "ldr x4, [x5, x2, lsl #6]",
        ],
        # L1TF-like
        [
            "dc civac, x0",
            "ldr x1, [x0]",
            "mrs x2, cntvct_el0",
        ],
        # RETBLEED-like
        [
            "bl func",
            "add x0, x0, #1",
            "ret",
        ],
        # BHI-like (high branch density)
        [
            "cmp x0, #0",
            "b.eq .L1",
            "cmp x1, #0",
            "b.ne .L2",
            "cmp x2, #0",
            "b.lt .L3",
        ],
    ]
    
    builder = SemanticGraphBuilder()
    detector = AttackPatternDetector()
    
    for i, seq in enumerate(test_sequences):
        print(f"\n=== Test {i+1} ===")
        print("Instructions:", seq)
        
        graph = builder.build_graph(seq)
        print(f"Nodes: {len(graph.nodes)}")
        for node in graph.nodes:
            print(f"  {node.id}: {node.node_type} - {node.raw_instruction}")
        
        print(f"Edges: {len(graph.edges)}")
        for edge in graph.edges:
            print(f"  {edge.src} -> {edge.dst} ({edge.edge_type})")
        
        patterns = detector.detect_patterns(graph)
        print("Attack Scores:")
        for key in ['spectre_v1_score', 'spectre_v2_score', 'l1tf_score', 
                    'retbleed_score', 'mds_score', 'inception_score', 'bhi_score']:
            print(f"  {key}: {patterns.get(key, 0):.1f}")
