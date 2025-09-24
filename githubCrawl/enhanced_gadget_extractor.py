#!/usr/bin/env python3
"""
Enhanced Comprehensive Gadget Extraction System
Advanced techniques for vulnerability pattern detection and classification.
"""

import os
import json
import pickle
import numpy as np
from pathlib import Path
from collections import defaultdict, Counter, deque
import re
from dataclasses import dataclass, field
from typing import List, Dict, Tuple, Optional, Set
import networkx as nx
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.cluster import DBSCAN
import hashlib

# Configuration
PROCESSED_ASM_DIR = "parsed_assembly"
VULN_PROCESSED_DIR = "vuln_assembly_processed"
OUTPUT_DIR = "enhanced_gadgets"
GADGETS_FILE = "enhanced_gadgets.pkl"
CFG_FILE = "control_flow_graphs.pkl"
PATTERNS_FILE = "enhanced_patterns.json"
SIMILARITY_FILE = "gadget_similarities.pkl"

@dataclass
class EnhancedInstruction:
    """Enhanced instruction with additional metadata"""
    opcode: str
    operands: List[str]
    line_num: int
    raw_line: str
    semantics: Dict[str, bool]
    address: Optional[int] = None
    
    # Enhanced fields
    data_dependencies: List[str] = field(default_factory=list)
    control_dependencies: List[int] = field(default_factory=list)
    memory_references: List[str] = field(default_factory=list)
    register_def_use: Dict[str, str] = field(default_factory=dict)  # 'def' or 'use'
    instruction_hash: str = ""
    
    def __post_init__(self):
        # Generate instruction hash for similarity comparison
        content = f"{self.opcode}_{','.join(sorted(self.operands))}"
        self.instruction_hash = hashlib.md5(content.encode()).hexdigest()[:8]

@dataclass
class EnhancedGadget:
    """Enhanced gadget with comprehensive metadata"""
    instructions: List[EnhancedInstruction]
    gadget_type: str
    confidence_score: float
    context_window: Tuple[int, int]
    source_file: str
    architecture: str
    vulnerability_patterns: List[str]
    features: Dict[str, any]
    
    # Enhanced fields
    control_flow_graph: Optional[nx.DiGraph] = None
    data_flow_chains: List[List[str]] = field(default_factory=list)
    gadget_signature: str = ""
    semantic_embedding: Optional[np.ndarray] = None
    similarity_cluster: int = -1
    complexity_metrics: Dict[str, float] = field(default_factory=dict)
    vulnerability_score_breakdown: Dict[str, float] = field(default_factory=dict)

class AdvancedPatternMatcher:
    """Enhanced pattern matching with machine learning and graph analysis"""
    
    def __init__(self):
        self.vulnerability_patterns = self._load_enhanced_patterns()
        self.tfidf_vectorizer = TfidfVectorizer(
            analyzer='word', 
            token_pattern=r'\b\w+\b',
            max_features=1000,
            ngram_range=(1, 3)
        )
        self.pattern_embeddings = {}
        self.semantic_patterns = {}
        
    def _load_enhanced_patterns(self) -> Dict:
        """Load comprehensive vulnerability patterns with semantic information"""
        return {
            'SPECTRE_V1': {
                'signature_patterns': [
                    # Bounds check bypass patterns
                    ['cmp', 'j*', 'mov', 'and'],            # Classic bounds check (x86)
                    ['sub', 'cmp', 'j*', 'ldr'],            # ARM bounds check then load
                    ['test', 'j*', 'lea', 'mov'],           # x86 array access
                    ['cmp', 'b.*', 'ldr'],                  # ARM64: compare → conditional branch → load
                    ['subs', 'b.*', 'ldrb'],                # ARM64: subs → conditional branch → byte load
                    ['cmp', 'csel', 'ldr'],                 # ARM64: cond. select then load (branchless v1-like)
                    ['cmp', 'j*', 'movzx'],                 # x86: compare → branch → zero-extend load
                ],
                'semantic_requirements': {
                    'has_bounds_check': True,
                    'has_conditional_branch': True,
                    'has_dependent_load': True,
                    'memory_access_after_branch': True
                },
                'anti_patterns': [  # Patterns that reduce confidence
                    ['lfence', 'mfence', 'cpuid'],      # x86 barriers/serializing
                    ['dsb', 'dmb', 'isb', 'csdb'],      # ARM barriers
                    ['hint', '#0x14']                   # CSDB hint encoding
                ],
                'context_requirements': {
                    'min_instructions': 5,
                    'max_branch_distance': 10,
                    'requires_memory_probe': True
                }
            },
            'SPECTRE_V4': {  # Speculative Store Bypass (SSB)
                'signature_patterns': [
                    ['str*', 'add', 'ldr*'],               # store then address calc then load
                    ['mov', 'mov', 'store*', 'load*'],     # generic store→load
                ],
                'semantic_requirements': {
                    'has_dependent_load': True,
                    'memory_access_after_branch': False
                },
                'anti_patterns': [
                    ['lfence'], ['dsb'], ['isb']
                ],
                'context_requirements': {
                    'min_instructions': 4
                }
            },
            'SPECTRE_V2': {
                'signature_patterns': [
                    ['call', '*', 'ret'],      # Indirect call/return
                    ['jmp', '*'],              # Indirect jump
                    ['blr', 'ret'],            # ARM indirect branch
                ],
                'semantic_requirements': {
                    'has_indirect_branch': True,
                    'has_return_instruction': True,
                    'branch_target_computed': True
                },
                'context_requirements': {
                    'min_instructions': 3,
                    'requires_computed_target': True
                }
            },
            'MELTDOWN': {
                'signature_patterns': [
                    ['mov', 'gs:', 'mov'],     # Kernel memory access
                    ['mrs', 'ldr', 'and'],     # ARM privileged access
                ],
                'semantic_requirements': {
                    'has_privileged_access': True,
                    'has_exception_handling': True,
                    'has_dependent_computation': True
                },
                'context_requirements': {
                    'requires_exception_context': True,
                    'requires_timing_measurement': True
                }
            },
            'RETBLEED': {
                'signature_patterns': [
                    ['push', 'call', 'pop', 'ret'],
                    ['stp', 'blr', 'ldp', 'ret']
                ],
                'semantic_requirements': {
                    'has_return_instruction': True,
                    'has_stack_manipulation': True,
                    'has_indirect_call': True
                }
            },
            # New vulnerability types
            'BRANCH_HISTORY_INJECTION': {
                'signature_patterns': [
                    ['br', 'x*', 'nop', 'br'],  # ARM BHI pattern
                    ['jmp', 'r*', 'nop', 'jmp'] # x86 BHI pattern
                ],
                'semantic_requirements': {
                    'has_indirect_branch': True,
                    'has_branch_history_pollution': True
                }
            },
            'L1TF': {
                'signature_patterns': [
                    ['mov', 'cr3', 'mov'],     # Page table manipulation
                    ['mrs', 'ttbr*', 'ldr']    # ARM page table access
                ],
                'semantic_requirements': {
                    'has_page_table_access': True,
                    'has_l1_cache_interaction': True
                }
            }
        }
    
    def extract_semantic_features(self, instructions: List[EnhancedInstruction]) -> Dict[str, bool]:
        """Extract high-level semantic features from instruction sequence"""
        opcodes = [instr.opcode.lower() for instr in instructions]
        operands_text = ' '.join([' '.join(instr.operands) for instr in instructions])
        raw_text = ' '.join([instr.raw_line.lower() for instr in instructions])
        
        features = {
            # Control flow features
            'has_bounds_check': any(op in opcodes for op in ['cmp', 'test', 'sub', 'subs']),
            'has_conditional_branch': any('j' in op or 'b.' in op for op in opcodes),
            'has_indirect_branch': any('jmp [' in instr.raw_line or 'call [' in instr.raw_line or 
                                     'br x' in instr.raw_line or 'blr x' in instr.raw_line 
                                     for instr in instructions),
            'has_return_instruction': any(op in opcodes for op in ['ret', 'retq']),
            
            # Memory access features
            'has_dependent_load': self._has_dependent_loads(instructions),
            'memory_access_after_branch': self._memory_after_branch(instructions),
            'has_privileged_access': any(keyword in raw_text for keyword in ['gs:', 'fs:', 'mrs', 'msr']),
            
            # Speculation features
            'has_speculation_barrier': any(op in opcodes for op in ['lfence', 'mfence', 'dsb', 'isb']),
            'has_timing_instruction': any(op in opcodes for op in ['rdtsc', 'rdtscp', 'mrs']),
            'has_cache_instruction': any(op in opcodes for op in ['clflush', 'dc', 'ic']),
            
            # Stack/register features
            'has_stack_manipulation': any(op in opcodes for op in ['push', 'pop', 'stp', 'ldp']),
            'has_register_computation': self._has_register_computation(instructions),
            
            # Exception handling
            'has_exception_handling': any(op in opcodes for op in ['int', 'brk', 'hvc', 'ud2']),
            
            # Advanced features
            'branch_target_computed': self._branch_target_computed(instructions),
            'has_branch_history_pollution': self._has_branch_history_pollution(instructions),
            'has_page_table_access': any(keyword in raw_text for keyword in ['cr3', 'ttbr', 'page']),
            'has_l1_cache_interaction': self._has_l1_cache_interaction(instructions)
        }
        
        return features
    
    def _has_dependent_loads(self, instructions: List[EnhancedInstruction]) -> bool:
        """Check for dependent memory loads (key for many vulnerabilities)"""
        load_instructions = ['mov', 'ldr', 'ld']
        loads = []
        
        for i, instr in enumerate(instructions):
            if (instr.opcode.lower() in load_instructions and 
                any('[' in op or '(' in op for op in instr.operands)):
                loads.append(i)
        
        # Check if loads are close together (within 5 instructions)
        for i in range(len(loads) - 1):
            if loads[i + 1] - loads[i] <= 5:
                return True
        return False
    
    def _memory_after_branch(self, instructions: List[EnhancedInstruction]) -> bool:
        """Check if memory access occurs shortly after a branch"""
        branch_ops = ['j', 'b.', 'call', 'br', 'bl']
        
        for i, instr in enumerate(instructions):
            if any(branch_op in instr.opcode.lower() for branch_op in branch_ops):
                # Check next few instructions for memory access
                for j in range(i + 1, min(i + 6, len(instructions))):
                    if any('[' in op or '(' in op for op in instructions[j].operands):
                        return True
        return False
    
    def _has_register_computation(self, instructions: List[EnhancedInstruction]) -> bool:
        """Check for register-based address computation"""
        compute_ops = ['add', 'sub', 'lea', 'shl', 'and', 'or']
        return any(instr.opcode.lower() in compute_ops for instr in instructions)
    
    def _branch_target_computed(self, instructions: List[EnhancedInstruction]) -> bool:
        """Check if branch target is computed rather than immediate"""
        for instr in instructions:
            if ('jmp' in instr.opcode.lower() or 'call' in instr.opcode.lower() or 
                'br' in instr.opcode.lower() or 'bl' in instr.opcode.lower()):
                # Check if operand is a register (computed) vs immediate
                if instr.operands and not instr.operands[0].startswith('#'):
                    return True
        return False
    
    def _has_branch_history_pollution(self, instructions: List[EnhancedInstruction]) -> bool:
        """Detect patterns that could pollute branch history"""
        # Look for repeated branch patterns or branch chains
        branch_count = sum(1 for instr in instructions 
                          if any(b in instr.opcode.lower() for b in ['j', 'b.', 'br', 'bl']))
        return branch_count >= 3
    
    def _has_l1_cache_interaction(self, instructions: List[EnhancedInstruction]) -> bool:
        """Detect L1 cache-specific interactions"""
        l1_indicators = ['dc civac', 'dc cvac', 'ic ivau', 'clflush']
        raw_text = ' '.join([instr.raw_line.lower() for instr in instructions])
        return any(indicator in raw_text for indicator in l1_indicators)

class ControlFlowAnalyzer:
    """Advanced control flow graph analysis"""
    
    def build_cfg(self, instructions: List[EnhancedInstruction]) -> nx.DiGraph:
        """Build control flow graph from instruction sequence"""
        cfg = nx.DiGraph()
        
        # Add nodes for each instruction
        for i, instr in enumerate(instructions):
            cfg.add_node(i, instruction=instr)
        
        # Add edges based on control flow
        for i, instr in enumerate(instructions):
            # Sequential flow
            if i + 1 < len(instructions):
                cfg.add_edge(i, i + 1, edge_type='sequential')
            
            # Branch edges
            if instr.semantics.get('is_branch', False):
                # Try to identify branch targets
                targets = self._identify_branch_targets(instr, instructions, i)
                for target in targets:
                    if 0 <= target < len(instructions):
                        cfg.add_edge(i, target, edge_type='branch')
        
        return cfg
    
    def _identify_branch_targets(self, branch_instr: EnhancedInstruction, 
                               instructions: List[EnhancedInstruction], 
                               branch_idx: int) -> List[int]:
        """Identify possible branch targets"""
        targets = []
        
        # Simple heuristic: look for labels or relative offsets
        if branch_instr.operands:
            operand = branch_instr.operands[0]
            
            # Direct relative branch (simplified)
            if operand.startswith('+') or operand.startswith('-'):
                try:
                    offset = int(operand)
                    target = branch_idx + offset
                    if 0 <= target < len(instructions):
                        targets.append(target)
                except ValueError:
                    pass
            
            # Look for label references
            for i, instr in enumerate(instructions):
                if operand in instr.raw_line and i != branch_idx:
                    targets.append(i)
        
        return targets
    
    def analyze_cfg_complexity(self, cfg: nx.DiGraph) -> Dict[str, float]:
        """Analyze control flow graph complexity metrics"""
        if cfg.number_of_nodes() == 0:
            return {}
        
        metrics = {
            'cyclomatic_complexity': len(cfg.edges()) - len(cfg.nodes()) + 2,
            'branch_factor': len([n for n in cfg.nodes() if cfg.out_degree(n) > 1]) / len(cfg.nodes()),
            'max_path_length': 0,
            'strongly_connected_components': len(list(nx.strongly_connected_components(cfg))),
            'dominance_depth': 0
        }
        
        # Calculate maximum path length
        try:
            if nx.is_directed_acyclic_graph(cfg):
                longest_path = nx.dag_longest_path_length(cfg)
                metrics['max_path_length'] = longest_path
        except:
            pass
        
        return metrics

class DataFlowAnalyzer:
    """Advanced data flow analysis"""
    
    def extract_data_flow_chains(self, instructions: List[EnhancedInstruction]) -> List[List[str]]:
        """Extract data dependency chains"""
        chains = []
        register_def_map = {}  # register -> instruction index that defined it
        
        for i, instr in enumerate(instructions):
            # Track register definitions and uses
            defined_regs, used_regs = self._analyze_register_usage(instr)
            
            # For each used register, trace back to its definition
            for reg in used_regs:
                if reg in register_def_map:
                    # Found a data dependency
                    def_idx = register_def_map[reg]
                    chain = [f"instr_{def_idx}", f"instr_{i}"]
                    chains.append(chain)
            
            # Update definitions
            for reg in defined_regs:
                register_def_map[reg] = i
        
        return chains
    
    def _analyze_register_usage(self, instr: EnhancedInstruction) -> Tuple[Set[str], Set[str]]:
        """Analyze which registers are defined vs used by instruction"""
        defined = set()
        used = set()
        
        # Simplified register analysis
        for i, operand in enumerate(instr.operands):
            reg = self._extract_register(operand)
            if reg:
                if i == 0 and instr.opcode.lower() in ['mov', 'add', 'sub', 'ldr', 'str']:
                    defined.add(reg)
                else:
                    used.add(reg)
        
        return defined, used
    
    def _extract_register(self, operand: str) -> Optional[str]:
        """Extract register name from operand"""
        # Remove prefixes and extract base register
        operand = operand.strip('%$#')
        
        # x86 registers
        x86_regs = ['rax', 'rbx', 'rcx', 'rdx', 'rsp', 'rbp', 'rsi', 'rdi', 
                   'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15',
                   'eax', 'ebx', 'ecx', 'edx', 'esp', 'ebp', 'esi', 'edi']
        
        # ARM registers
        arm_regs = [f'x{i}' for i in range(32)] + [f'w{i}' for i in range(32)] + ['sp', 'lr', 'pc']
        
        all_regs = x86_regs + arm_regs
        
        for reg in all_regs:
            if operand.lower().startswith(reg.lower()):
                return reg.lower()
        
        return None

class SemanticSimilarityAnalyzer:
    """Semantic similarity analysis using embeddings"""
    
    def __init__(self):
        self.vectorizer = TfidfVectorizer(
            analyzer='word',
            token_pattern=r'\b\w+\b',
            max_features=500,
            ngram_range=(1, 2)
        )
        self.gadget_embeddings = {}
    
    def create_gadget_signature(self, gadget: EnhancedGadget) -> str:
        """Create semantic signature for gadget"""
        # Combine opcode sequence, semantic features, and patterns
        opcodes = [instr.opcode for instr in gadget.instructions]
        opcode_seq = ' '.join(opcodes)
        
        semantic_features = []
        for key, value in gadget.features.items():
            if isinstance(value, bool) and value:
                semantic_features.append(key)
            elif isinstance(value, (int, float)) and value > 0:
                semantic_features.append(f"{key}_{value}")
        
        signature = f"{opcode_seq} {' '.join(semantic_features)} {' '.join(gadget.vulnerability_patterns)}"
        return signature
    
    def compute_embeddings(self, gadgets: List[EnhancedGadget]) -> np.ndarray:
        """Compute TF-IDF embeddings for gadgets"""
        signatures = [self.create_gadget_signature(gadget) for gadget in gadgets]
        
        if not signatures:
            return np.array([])
        
        embeddings = self.vectorizer.fit_transform(signatures)
        return embeddings.toarray()
    
    def find_similar_gadgets(self, gadgets: List[EnhancedGadget], 
                           similarity_threshold: float = 0.7) -> List[List[int]]:
        """Find clusters of similar gadgets"""
        embeddings = self.compute_embeddings(gadgets)
        
        if embeddings.size == 0:
            return []
        
        # Use cosine similarity
        similarity_matrix = cosine_similarity(embeddings)
        
        # Find similar pairs
        similar_groups = []
        processed = set()
        
        for i in range(len(gadgets)):
            if i in processed:
                continue
            
            similar_indices = [i]
            for j in range(i + 1, len(gadgets)):
                if similarity_matrix[i][j] >= similarity_threshold:
                    similar_indices.append(j)
                    processed.add(j)
            
            if len(similar_indices) > 1:
                similar_groups.append(similar_indices)
            processed.add(i)
        
        return similar_groups

class EnhancedGadgetExtractor:
    """Main enhanced extraction engine"""
    
    def __init__(self):
        self.pattern_matcher = AdvancedPatternMatcher()
        self.cfg_analyzer = ControlFlowAnalyzer()
        self.dataflow_analyzer = DataFlowAnalyzer()
        self.similarity_analyzer = SemanticSimilarityAnalyzer()
        # Ingest DSL and mined patterns when available
        try:
            self._ingest_dsl_patterns()
        except Exception as e:
            print(f"Warning: DSL pattern ingest failed: {e}")
        try:
            self._ingest_c_vulns_patterns()
        except Exception as e:
            print(f"Warning: c_vulns pattern ingest failed: {e}")
        # Ingest external patterns from DSL JSON if available
        self._ingest_dsl_patterns()
        
        # Load reference vulnerabilities
        self.vuln_references = self._load_vulnerability_references()
        
    def _load_vulnerability_references(self) -> Dict[str, List[Dict]]:
        """Load processed vulnerability references"""
        references = {}
        
        vuln_features_path = Path(VULN_PROCESSED_DIR) / "vuln_features.pkl"
        if vuln_features_path.exists():
            try:
                with open(vuln_features_path, 'rb') as f:
                    vuln_data = pickle.load(f)
                
                for vuln_file in vuln_data:
                    vuln_type = vuln_file['vulnerability_type']
                    if vuln_type not in references:
                        references[vuln_type] = []
                    references[vuln_type].append(vuln_file)
                    
                print(f"Loaded {len(vuln_data)} vulnerability reference patterns")
            except Exception as e:
                print(f"Warning: Could not load vulnerability references: {e}")
        else:
            print(f"Warning: {vuln_features_path} not found. Run preprocess_vuln_assembly.py to enable reference-guided extraction.")
        
        return references

    def _ingest_dsl_patterns(self):
        """Optionally load additional anti-patterns and sequence hints from DSL file."""
        dsl_path = Path(__file__).resolve().parent / 'dsl' / 'vuln_patterns.json'
        if not dsl_path.exists():
            return
        with dsl_path.open() as f:
            dsl = json.load(f)
        vulns = dsl.get('vulnerabilities', {})
        v1 = vulns.get('SPECTRE_V1', {})
        mds = vulns.get('MDS', {})
        anti_v1 = v1.get('anti_patterns', [])
        anti_mds = mds.get('anti_patterns', [])
        def to_token(ap):
            return ap.get('opcode') or ap.get('token')
        extra_v1 = [to_token(x) for x in anti_v1 if isinstance(x, dict) and to_token(x)]
        extra_mds = [to_token(x) for x in anti_mds if isinstance(x, dict) and to_token(x)]
        if extra_v1:
            self.pattern_matcher.vulnerability_patterns.setdefault('SPECTRE_V1', {
                'signature_patterns': [],
                'semantic_requirements': {},
                'context_requirements': {},
                'anti_patterns': []
            })
            self.pattern_matcher.vulnerability_patterns['SPECTRE_V1']['anti_patterns'].append(extra_v1)
        if extra_mds:
            self.pattern_matcher.vulnerability_patterns.setdefault('MDS', {
                'signature_patterns': [],
                'semantic_requirements': {},
                'context_requirements': {},
                'anti_patterns': []
            })
            self.pattern_matcher.vulnerability_patterns['MDS']['anti_patterns'].append(extra_mds)

    def _ingest_c_vulns_patterns(self):
        """Mine opcode 3-grams from c_vulns/asm_code and merge into patterns."""
        root = Path(__file__).resolve().parents[1]  # .../SpecExec
        asm_dir = root / 'c_vulns' / 'asm_code'
        if not asm_dir.exists():
            return
        from collections import Counter
        def map_vuln(name: str) -> str:
            n = name.lower()
            if 'spectre_1' in n or 'spectre_v1' in n:
                return 'SPECTRE_V1'
            if 'spectre_2' in n:
                return 'SPECTRE_V2'
            if 'meltdown' in n:
                return 'MELTDOWN'
            if 'retbleed' in n:
                return 'RETBLEED'
            if 'bhi' in n:
                return 'BRANCH_HISTORY_INJECTION'
            if 'inception' in n:
                return 'INCEPTION'
            if 'l1tf' in n:
                return 'L1TF'
            if 'mds' in n:
                return 'MDS'
            return 'UNKNOWN'
        for asm_file in asm_dir.glob('*.s'):
            vtype = map_vuln(asm_file.name)
            if vtype == 'UNKNOWN':
                continue
            try:
                lines = asm_file.read_text(errors='ignore').splitlines()
            except Exception:
                continue
            instrs = []
            for ln in lines:
                s = ln.strip()
                if not s or s.startswith('.') or s.endswith(':'):
                    continue
                s = s.split(';', 1)[0].strip()
                if not s:
                    continue
                tok = s.split()[0].lower().strip(',')
                instrs.append(tok)
            grams = [(instrs[i], instrs[i+1], instrs[i+2]) for i in range(max(0, len(instrs)-2))]
            def interesting(g):
                return any(t.startswith(('b', 'j')) for t in g) or any(t.startswith(('ld', 'ldr', 'mov')) for t in g)
            grams = [g for g in grams if interesting(g)]
            if not grams:
                continue
            top = [list(g) for g, _ in Counter(grams).most_common(8)]
            vp = self.pattern_matcher.vulnerability_patterns.setdefault(vtype, {
                'signature_patterns': [],
                'semantic_requirements': {},
                'context_requirements': {},
                'anti_patterns': []
            })
            existing = set(tuple(p) for p in vp['signature_patterns'])
            for pat in top:
                t = tuple(pat)
                if t not in existing:
                    vp['signature_patterns'].append(pat)
                    existing.add(t)

    def _ingest_dsl_patterns(self):
        """Optionally load additional anti-patterns and sequence hints from DSL file."""
        dsl_path = Path(__file__).resolve().parent / 'dsl' / 'vuln_patterns.json'
        try:
            if dsl_path.exists():
                with dsl_path.open() as f:
                    dsl = json.load(f)
                # Map anti_patterns into our SPECTRE_V1 and MDS entries if present
                vulns = dsl.get('vulnerabilities', {})
                v1 = vulns.get('SPECTRE_V1', {})
                mds = vulns.get('MDS', {})
                anti_v1 = v1.get('anti_patterns', [])
                anti_mds = mds.get('anti_patterns', [])
                # Normalize tokens to opcodes when possible
                def to_token(ap):
                    return ap.get('opcode') or ap.get('token')
                extra_v1 = [to_token(x) for x in anti_v1 if to_token(x)]
                extra_mds = [to_token(x) for x in anti_mds if to_token(x)]
                # Extend anti_patterns if new markers exist
                if extra_v1:
                    self.pattern_matcher.vulnerability_patterns['SPECTRE_V1']['anti_patterns'].append(extra_v1)
                if extra_mds:
                    self.pattern_matcher.vulnerability_patterns.setdefault('MDS', {
                        'signature_patterns': [],
                        'semantic_requirements': {},
                        'anti_patterns': []
                    })
                    self.pattern_matcher.vulnerability_patterns['MDS']['anti_patterns'].append(extra_mds)
        except Exception as e:
            print(f"Warning: could not ingest DSL patterns: {e}")
    
    def extract_enhanced_gadgets(self, file_data: Dict) -> List[EnhancedGadget]:
        """Extract gadgets with comprehensive analysis"""
        if 'raw_instructions' not in file_data:
            return []
        
        # Convert to enhanced instructions
        instructions = []
        arch = file_data.get('arch', file_data.get('architecture', 'x86_64'))
        for i, raw_instr in enumerate(file_data['raw_instructions']):
            if isinstance(raw_instr, dict):
                # Ensure semantics exist for downstream analysis
                semantics = raw_instr.get('semantics', {}) or _infer_semantics(
                    raw_instr.get('opcode', ''), raw_instr.get('operands', []), arch
                )
                instr = EnhancedInstruction(
                    opcode=raw_instr.get('opcode', ''),
                    operands=raw_instr.get('operands', []),
                    line_num=raw_instr.get('line', raw_instr.get('line_num', i)),
                    raw_line=raw_instr.get('raw', raw_instr.get('raw_line', '')),
                    semantics=semantics
                )
                instructions.append(instr)
        
        if len(instructions) < 5:
            return []
        
        # Multiple extraction strategies with enhanced analysis
        gadget_candidates = []
        
        # 1. Sliding window approach
        gadget_candidates.extend(self._sliding_window_extraction(instructions))
        
        # 2. Control flow based extraction
        gadget_candidates.extend(self._control_flow_extraction(instructions))
        
        # 3. Data flow based extraction
        gadget_candidates.extend(self._data_flow_extraction(instructions))
        
        # 4. Pattern-based extraction
        gadget_candidates.extend(self._pattern_based_extraction(instructions))
        
        # Process each candidate
        enhanced_gadgets = []
        print(f"Debug: Generated {len(gadget_candidates)} candidates from {len(instructions)} instructions")
        for candidate_instrs in gadget_candidates:
            if len(candidate_instrs) < 3:
                continue
            
            gadget = self._create_enhanced_gadget(
                candidate_instrs, 
                file_data.get('arch', 'x86_64'),
                file_data.get('file_path', 'unknown')
            )
            
            if gadget:
                # Lower threshold further to avoid zero-output runs; we can filter later upstream
                if gadget.confidence_score >= 0.01:
                    enhanced_gadgets.append(gadget)
        
        return enhanced_gadgets


def _infer_semantics(opcode: str, operands: List[str], arch: str) -> Dict[str, bool]:
    """Lightweight semantics inference if missing from parsed data."""
    op = (opcode or '').lower()
    sem = {
        'is_branch': False,
        'is_conditional': False,
        'is_indirect': False,
        'is_call': False,
        'is_return': False,
        'is_load': False,
        'is_store': False,
        'accesses_memory': False,
        'is_arithmetic': False,
        'is_comparison': False,
        'is_speculation_barrier': False,
        'is_cache_operation': False,
        'is_timing_sensitive': False,
        'is_privileged': False
    }
    if arch == 'x86_64':
        if op.startswith('j'):
            sem['is_branch'] = True
            if op != 'jmp':
                sem['is_conditional'] = True
            if any('[' in o for o in operands):
                sem['is_indirect'] = True
        elif op in ['call', 'ret']:
            sem['is_call'] = op == 'call'
            sem['is_return'] = op == 'ret'
            if op == 'call' and any('[' in o or '%' in o for o in operands):
                sem['is_indirect'] = True
        elif op in ['mov', 'movzx', 'movsx', 'movzbl', 'movzwl', 'lea']:
            if any('[' in o for o in operands):
                sem['accesses_memory'] = True
                sem['is_load'] = True
        elif op in ['add', 'sub', 'mul', 'div', 'xor', 'and', 'or', 'shl', 'shr']:
            sem['is_arithmetic'] = True
        elif op in ['cmp', 'test']:
            sem['is_comparison'] = True
        elif op in ['lfence', 'mfence', 'sfence']:
            sem['is_speculation_barrier'] = True
        elif op in ['clflush', 'clwb', 'clflushopt']:
            sem['is_cache_operation'] = True
        elif op in ['rdtsc', 'rdtscp']:
            sem['is_timing_sensitive'] = True
    else:  # arm64
        if op.startswith('b'):
            sem['is_branch'] = True
            if '.' in op:
                sem['is_conditional'] = True
            if op in ['br', 'blr']:
                sem['is_indirect'] = True
        elif op in ['bl', 'blr', 'ret']:
            sem['is_call'] = op in ['bl', 'blr']
            sem['is_return'] = op == 'ret'
            if op == 'blr':
                sem['is_indirect'] = True
        elif op in ['ldr', 'ldrb', 'ldrh', 'ldp']:
            sem['is_load'] = True
            sem['accesses_memory'] = True
        elif op in ['str', 'strb', 'strh', 'stp']:
            sem['is_store'] = True
            sem['accesses_memory'] = True
        elif op in ['add', 'sub', 'mul', 'div', 'and', 'orr', 'eor', 'lsl', 'lsr']:
            sem['is_arithmetic'] = True
        elif op in ['cmp', 'subs']:
            sem['is_comparison'] = True
        elif op in ['dsb', 'isb', 'dmb']:
            sem['is_speculation_barrier'] = True
        elif op in ['dc', 'ic']:
            sem['is_cache_operation'] = True
        elif op == 'mrs':
            sem['is_timing_sensitive'] = True
            sem['is_privileged'] = True
    return sem

    # NOTE: The following extraction helpers must be methods of EnhancedGadgetExtractor.
    # If you see AttributeError for missing methods, ensure they are defined on the class.

    
class EnhancedGadgetExtractor:
    """Main enhanced extraction engine"""
    
    def __init__(self):
        self.pattern_matcher = AdvancedPatternMatcher()
        self.cfg_analyzer = ControlFlowAnalyzer()
        self.dataflow_analyzer = DataFlowAnalyzer()
        self.similarity_analyzer = SemanticSimilarityAnalyzer()
        
        # Load reference vulnerabilities
        self.vuln_references = self._load_vulnerability_references()

    def _load_vulnerability_references(self) -> Dict[str, List[Dict]]:
        """Load processed vulnerability references (duplicated for class availability)."""
        references: Dict[str, List[Dict]] = {}
        vuln_features_path = Path(VULN_PROCESSED_DIR) / "vuln_features.pkl"
        if vuln_features_path.exists():
            try:
                with open(vuln_features_path, 'rb') as f:
                    vuln_data = pickle.load(f)
                for vuln_file in vuln_data:
                    vuln_type = vuln_file.get('vulnerability_type', 'UNKNOWN')
                    references.setdefault(vuln_type, []).append(vuln_file)
                print(f"Loaded {len(vuln_data)} vulnerability reference patterns")
            except Exception as e:
                print(f"Warning: Could not load vulnerability references: {e}")
        else:
            print(f"Warning: {vuln_features_path} not found. Run preprocess_vuln_assembly.py to enable reference-guided extraction.")
        return references

    def extract_enhanced_gadgets(self, file_data: Dict) -> List[EnhancedGadget]:
        """Extract gadgets with comprehensive analysis"""
        if 'raw_instructions' not in file_data:
            return []
        instructions: List[EnhancedInstruction] = []
        arch = file_data.get('arch', file_data.get('architecture', 'x86_64'))
        for i, raw_instr in enumerate(file_data['raw_instructions']):
            if isinstance(raw_instr, dict):
                semantics = raw_instr.get('semantics', {}) or _infer_semantics(
                    raw_instr.get('opcode', ''), raw_instr.get('operands', []), arch
                )
                instr = EnhancedInstruction(
                    opcode=raw_instr.get('opcode', ''),
                    operands=raw_instr.get('operands', []),
                    line_num=raw_instr.get('line', raw_instr.get('line_num', i)),
                    raw_line=raw_instr.get('raw', raw_instr.get('raw_line', '')),
                    semantics=semantics
                )
                instructions.append(instr)
        if len(instructions) < 5:
            return []
        gadget_candidates: List[List[EnhancedInstruction]] = []
        gadget_candidates.extend(self._sliding_window_extraction(instructions))
        gadget_candidates.extend(self._control_flow_extraction(instructions))
        gadget_candidates.extend(self._data_flow_extraction(instructions))
        gadget_candidates.extend(self._pattern_based_extraction(instructions))
        enhanced_gadgets: List[EnhancedGadget] = []
        for candidate_instrs in gadget_candidates:
            if len(candidate_instrs) < 3:
                continue
            gadget = self._create_enhanced_gadget(
                candidate_instrs,
                arch,
                file_data.get('file_path', 'unknown')
            )
            if gadget and gadget.confidence_score >= 0.01:
                enhanced_gadgets.append(gadget)
        return enhanced_gadgets

    # Re-add missing helper methods as proper class methods
    def _sliding_window_extraction(self, instructions: List[EnhancedInstruction], 
                                   window_sizes: List[int] = [10, 15, 20, 25]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets using sliding windows of different sizes"""
        candidates: List[List[EnhancedInstruction]] = []
        for window_size in window_sizes:
            for i in range(len(instructions) - window_size + 1):
                window = instructions[i:i + window_size]
                if self._is_interesting_window(window):
                    candidates.append(window)
        return candidates

    def _is_interesting_window(self, window: List[EnhancedInstruction]) -> bool:
        """Check if a window contains potentially interesting patterns"""
        has_control_flow = any(
            instr.semantics.get('is_branch', False) or 
            instr.semantics.get('is_call', False) or 
            instr.semantics.get('is_return', False) for instr in window
        )
        has_memory_access = any(instr.semantics.get('accesses_memory', False) for instr in window)
        unique_opcodes = len(set(instr.opcode for instr in window))
        return (has_control_flow or has_memory_access) and unique_opcodes >= 2

    def _control_flow_extraction(self, instructions: List[EnhancedInstruction]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets based on control flow analysis"""
        cfg = self.cfg_analyzer.build_cfg(instructions)
        candidates: List[List[EnhancedInstruction]] = []
        branch_nodes = [n for n in cfg.nodes() if cfg.out_degree(n) > 1]
        for branch_node in branch_nodes:
            try:
                paths = nx.single_source_shortest_path(cfg, branch_node, cutoff=15)
                for target, path in paths.items():
                    if len(path) >= 5:
                        path_instructions = [instructions[i] for i in path]
                        candidates.append(path_instructions)
            except Exception:
                continue
        return candidates

    def _data_flow_extraction(self, instructions: List[EnhancedInstruction]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets based on data flow chains"""
        candidates: List[List[EnhancedInstruction]] = []
        chains = self.dataflow_analyzer.extract_data_flow_chains(instructions)
        for chain in chains:
            indices: List[int] = []
            for item in chain:
                if item.startswith('instr_'):
                    try:
                        idx = int(item.split('_')[1])
                        indices.append(idx)
                    except Exception:
                        continue
            if len(indices) >= 2:
                min_idx = max(0, min(indices) - 5)
                max_idx = min(len(instructions), max(indices) + 6)
                candidate = instructions[min_idx:max_idx]
                if len(candidate) >= 5:
                    candidates.append(candidate)
        return candidates
    
    def _sliding_window_extraction(self, instructions: List[EnhancedInstruction], 
                                 window_sizes: List[int] = [10, 15, 20, 25]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets using sliding windows of different sizes"""
        candidates = []
        
        for window_size in window_sizes:
            for i in range(len(instructions) - window_size + 1):
                window = instructions[i:i + window_size]
                
                # Check if window contains interesting patterns
                if self._is_interesting_window(window):
                    candidates.append(window)
        
        return candidates
    
    def _is_interesting_window(self, window: List[EnhancedInstruction]) -> bool:
        """Check if a window contains potentially interesting patterns"""
        # Must have at least one control flow or memory operation
        has_control_flow = any(instr.semantics.get('is_branch', False) or instr.semantics.get('is_call', False) or instr.semantics.get('is_return', False) for instr in window)
        has_memory_access = any(instr.semantics.get('accesses_memory', False) for instr in window)
        
        # Must have some complexity
        unique_opcodes = len(set(instr.opcode for instr in window))
        # Relax uniqueness slightly to avoid zero output
        return (has_control_flow or has_memory_access) and unique_opcodes >= 2
    
    def _control_flow_extraction(self, instructions: List[EnhancedInstruction]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets based on control flow analysis"""
        cfg = self.cfg_analyzer.build_cfg(instructions)
        candidates = []
        
        # Extract paths between branch points
        branch_nodes = [n for n in cfg.nodes() if cfg.out_degree(n) > 1]
        
        for branch_node in branch_nodes:
            # Get paths from this branch
            try:
                paths = nx.single_source_shortest_path(cfg, branch_node, cutoff=15)
                for target, path in paths.items():
                    if len(path) >= 5:
                        path_instructions = [instructions[i] for i in path]
                        candidates.append(path_instructions)
            except:
                continue
        
        return candidates
    
    def _data_flow_extraction(self, instructions: List[EnhancedInstruction]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets based on data flow chains"""
        candidates = []
        chains = self.dataflow_analyzer.extract_data_flow_chains(instructions)
        
        for chain in chains:
            # Extract instructions involved in this data flow
            indices = []
            for item in chain:
                if item.startswith('instr_'):
                    idx = int(item.split('_')[1])
                    indices.append(idx)
            
            if len(indices) >= 2:
                # Expand to include context
                min_idx = max(0, min(indices) - 5)
                max_idx = min(len(instructions), max(indices) + 6)
                
                candidate = instructions[min_idx:max_idx]
                if len(candidate) >= 5:
                    candidates.append(candidate)
        
        return candidates
    
    def _pattern_based_extraction(self, instructions: List[EnhancedInstruction]) -> List[List[EnhancedInstruction]]:
        """Extract gadgets based on known vulnerability patterns"""
        candidates = []
        
        # Look for signature patterns
        for vuln_type, patterns in self.pattern_matcher.vulnerability_patterns.items():
            signature_patterns = patterns.get('signature_patterns', [])
            
            for pattern in signature_patterns:
                matches = self._find_pattern_matches(instructions, pattern)
                for match_start, match_end in matches:
                    # Expand context
                    context_start = max(0, match_start - 10)
                    context_end = min(len(instructions), match_end + 10)
                    
                    candidate = instructions[context_start:context_end]
                    candidates.append(candidate)
        
        return candidates
    
    def _find_pattern_matches(self, instructions: List[EnhancedInstruction], 
                            pattern: List[str]) -> List[Tuple[int, int]]:
        """Find matches for a specific pattern"""
        matches = []
        opcodes = [instr.opcode.lower() for instr in instructions]
        
        for i in range(len(opcodes) - len(pattern) + 1):
            match = True
            for j, pattern_op in enumerate(pattern):
                if '*' in pattern_op:
                    # Wildcard - match any opcode containing the prefix
                    prefix = pattern_op.replace('*', '')
                    if not opcodes[i + j].startswith(prefix):
                        match = False
                        break
                elif pattern_op != opcodes[i + j]:
                    match = False
                    break
            
            if match:
                matches.append((i, i + len(pattern)))
        
        return matches
    
    def _create_enhanced_gadget(self, instructions: List[EnhancedInstruction], 
                              arch: str, source_file: str) -> Optional[EnhancedGadget]:
        """Create enhanced gadget with comprehensive analysis"""
        if not instructions:
            return None
        # Extract semantic features
        semantic_features = self.pattern_matcher.extract_semantic_features(instructions)
        
        # Build control flow graph
        cfg = self.cfg_analyzer.build_cfg(instructions)
        complexity_metrics = self.cfg_analyzer.analyze_cfg_complexity(cfg)
        
        # Extract data flow chains
        data_flow_chains = self.dataflow_analyzer.extract_data_flow_chains(instructions)
        
        # Classify vulnerability type with detailed scoring
        vuln_type, confidence, patterns, score_breakdown = self._enhanced_classification(
            instructions, semantic_features, arch
        )
        
        # Calculate comprehensive features
        features = self._calculate_enhanced_features(instructions, semantic_features, complexity_metrics)
        
        # Create gadget signature
        signature = self._create_gadget_signature(instructions, vuln_type, features)
        
        gadget = EnhancedGadget(
            instructions=instructions,
            gadget_type=vuln_type,
            confidence_score=confidence,
            context_window=(instructions[0].line_num, instructions[-1].line_num),
            source_file=source_file,
            architecture=arch,
            vulnerability_patterns=patterns,
            features=features,
            control_flow_graph=cfg,
            data_flow_chains=data_flow_chains,
            gadget_signature=signature,
            complexity_metrics=complexity_metrics,
            vulnerability_score_breakdown=score_breakdown
        )
        
        return gadget
    
    def _enhanced_classification(self, instructions: List[EnhancedInstruction], 
                               semantic_features: Dict[str, bool], 
                               arch: str) -> Tuple[str, float, List[str], Dict[str, float]]:
        """Enhanced classification with detailed scoring"""
        
        best_score = 0.0
        best_type = "UNKNOWN"
        best_patterns = []
        score_breakdown = {}
        
        for vuln_type, pattern_info in self.pattern_matcher.vulnerability_patterns.items():
            score = 0.0
            matched_patterns = []
            
            # Check semantic requirements
            semantic_reqs = pattern_info.get('semantic_requirements', {})
            semantic_score = 0.0
            
            for req, required in semantic_reqs.items():
                if semantic_features.get(req, False) == required:
                    semantic_score += 1.0
                elif required:  # Required but missing
                    semantic_score -= 0.5
            
            semantic_score = max(0, semantic_score / len(semantic_reqs)) if semantic_reqs else 0
            
            # Check signature patterns
            signature_patterns = pattern_info.get('signature_patterns', [])
            pattern_score = 0.0
            
            for pattern in signature_patterns:
                matches = self._find_pattern_matches(instructions, pattern)
                if matches:
                    pattern_score += 1.0
                    matched_patterns.append(f"pattern_{pattern}")
            
            pattern_score = pattern_score / len(signature_patterns) if signature_patterns else 0
            
            # Check anti-patterns (reduce score)
            anti_patterns = pattern_info.get('anti_patterns', [])
            anti_penalty = 0.0
            
            for anti_pattern in anti_patterns:
                matches = self._find_pattern_matches(instructions, anti_pattern)
                if matches:
                    anti_penalty += 0.2
            
            # Context requirements
            context_reqs = pattern_info.get('context_requirements', {})
            context_score = 1.0  # Start with full score
            
            min_instrs = context_reqs.get('min_instructions', 0)
            if len(instructions) < min_instrs:
                context_score *= 0.5
            # Penalize if branch→load distance too large for Spectre v1-like
            max_branch_distance = context_reqs.get('max_branch_distance')
            if max_branch_distance is not None:
                # compute first branch index and first subsequent load index
                branch_idx = next((i for i, ins in enumerate(instructions) if ins.semantics.get('is_branch', False) and ins.semantics.get('is_conditional', False)), None)
                load_idx = None
                if branch_idx is not None:
                    for j in range(branch_idx + 1, len(instructions)):
                        if instructions[j].semantics.get('is_load', False) and instructions[j].semantics.get('accesses_memory', False):
                            load_idx = j
                            break
                if branch_idx is None or load_idx is None or (load_idx - branch_idx) > max_branch_distance:
                    context_score *= 0.7
            # Require presence of a memory-probe-like pattern if specified
            if context_reqs.get('requires_memory_probe', False):
                raw = ' '.join(ins.raw_line.lower() for ins in instructions)
                has_probe = any(tok in raw for tok in ['clflush', 'dc ', 'ic ', 'ldr', 'ldrb'])
                if not has_probe:
                    context_score *= 0.8
            
            # Combine scores
            total_score = (semantic_score * 0.4 + pattern_score * 0.4 + context_score * 0.2) - anti_penalty
            total_score = max(0.0, min(1.0, total_score))
            
            score_breakdown[vuln_type] = {
                'semantic_score': semantic_score,
                'pattern_score': pattern_score,
                'context_score': context_score,
                'anti_penalty': anti_penalty,
                'total_score': total_score
            }
            
            if total_score > best_score:
                best_score = total_score
                best_type = vuln_type
                best_patterns = matched_patterns
        
        return best_type, best_score, best_patterns, score_breakdown
    
    def _calculate_enhanced_features(self, instructions: List[EnhancedInstruction], 
                                   semantic_features: Dict[str, bool],
                                   complexity_metrics: Dict[str, float]) -> Dict[str, any]:
        """Calculate comprehensive feature set"""
        
        # Basic features
        num_instructions = len(instructions)
        unique_opcodes = len(set(instr.opcode for instr in instructions))
        
        # Semantic counts
        branch_count = sum(1 for instr in instructions if instr.semantics.get('is_branch', False))
        memory_count = sum(1 for instr in instructions if instr.semantics.get('accesses_memory', False))
        arithmetic_count = sum(1 for instr in instructions if instr.semantics.get('is_arithmetic', False))
        
        # Advanced features
        opcode_entropy = self._calculate_entropy([instr.opcode for instr in instructions])
        operand_entropy = self._calculate_entropy([op for instr in instructions for op in instr.operands])
        
        # Instruction hash diversity
        hash_diversity = len(set(instr.instruction_hash for instr in instructions)) / num_instructions
        
        features = {
            # Basic statistics
            'num_instructions': num_instructions,
            'unique_opcodes': unique_opcodes,
            'opcode_diversity': unique_opcodes / num_instructions,
            'hash_diversity': hash_diversity,
            
            # Semantic counts
            'branch_count': branch_count,
            'memory_access_count': memory_count,
            'arithmetic_count': arithmetic_count,
            
            # Densities
            'branch_density': branch_count / num_instructions,
            'memory_density': memory_count / num_instructions,
            'arithmetic_density': arithmetic_count / num_instructions,
            
            # Entropy measures
            'opcode_entropy': opcode_entropy,
            'operand_entropy': operand_entropy,
            
            # Complexity metrics
            **complexity_metrics,
            
            # Semantic features
            **semantic_features,
            
            # Advanced patterns
            'max_operand_count': max(len(instr.operands) for instr in instructions) if instructions else 0,
            'avg_operand_count': np.mean([len(instr.operands) for instr in instructions]) if instructions else 0,
            'register_reuse_factor': self._calculate_register_reuse(instructions),
        }
        
        return features
    
    def _calculate_entropy(self, items: List[str]) -> float:
        """Calculate Shannon entropy of item sequence"""
        if not items:
            return 0.0
        
        counts = Counter(items)
        total = len(items)
        
        entropy = -sum((count / total) * np.log2(count / total) for count in counts.values())
        return entropy
    
    def _calculate_register_reuse(self, instructions: List[EnhancedInstruction]) -> float:
        """Calculate how often registers are reused"""
        all_operands = [op for instr in instructions for op in instr.operands]
        if not all_operands:
            return 0.0
        
        operand_counts = Counter(all_operands)
        reused_operands = sum(1 for count in operand_counts.values() if count > 1)
        
        return reused_operands / len(operand_counts) if operand_counts else 0.0
    
    def _create_gadget_signature(self, instructions: List[EnhancedInstruction], 
                               vuln_type: str, features: Dict[str, any]) -> str:
        """Create unique signature for gadget"""
        
        # Combine structural and semantic elements
        opcode_seq = '_'.join([instr.opcode for instr in instructions[:5]])  # First 5 opcodes
        feature_sig = f"{features.get('branch_density', 0):.2f}_{features.get('memory_density', 0):.2f}"
        vuln_sig = vuln_type[:8]  # First 8 chars of vulnerability type
        
        signature = f"{opcode_seq}_{feature_sig}_{vuln_sig}"
        return hashlib.md5(signature.encode()).hexdigest()[:16]

def main():
    extractor = EnhancedGadgetExtractor()
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # Load processed assembly data
    features_file = Path(PROCESSED_ASM_DIR) / "assembly_features.pkl"
    if not features_file.exists():
        print(f"Error: {features_file} not found. Run parse_assembly.py first.")
        return
    
    print("Loading processed assembly data...")
    with open(features_file, 'rb') as f:
        assembly_data = pickle.load(f)
    
    print(f"Processing {len(assembly_data)} files with enhanced extraction...")
    
    # Extract enhanced gadgets
    all_gadgets = []
    processed_files = 0
    
    for file_data in assembly_data:
        gadgets = extractor.extract_enhanced_gadgets(file_data)
        all_gadgets.extend(gadgets)
        processed_files += 1
        
        if processed_files % 50 == 0:
            print(f"Processed {processed_files}/{len(assembly_data)} files, "
                  f"extracted {len(all_gadgets)} enhanced gadgets...")
    
    print(f"\nEnhanced extraction complete!")
    print(f"Total enhanced gadgets: {len(all_gadgets)}")
    
    # Perform similarity analysis
    print("Performing similarity analysis...")
    similar_groups = extractor.similarity_analyzer.find_similar_gadgets(all_gadgets)
    
    # Assign cluster IDs
    cluster_id = 0
    for group in similar_groups:
        for gadget_idx in group:
            all_gadgets[gadget_idx].similarity_cluster = cluster_id
        cluster_id += 1
    
    # Generate comprehensive statistics
    print("\nGenerating comprehensive statistics...")
    
    gadget_types = Counter(g.gadget_type for g in all_gadgets)
    architectures = Counter(g.architecture for g in all_gadgets)
    confidences = [g.confidence_score for g in all_gadgets]
    
    print(f"\nEnhanced Gadget Statistics:")
    print(f"  Total gadgets: {len(all_gadgets)}")
    print(f"  Similarity clusters: {len(similar_groups)}")
    print(f"  Average confidence: {np.mean(confidences):.3f}")
    print(f"  High confidence (>0.7): {sum(1 for c in confidences if c > 0.7)}")
    print(f"  Medium confidence (0.4-0.7): {sum(1 for c in confidences if 0.4 <= c <= 0.7)}")
    print(f"  Low confidence (0.15-0.4): {sum(1 for c in confidences if 0.15 <= c < 0.4)}")
    
    print(f"\nVulnerability Type Distribution:")
    for vtype, count in gadget_types.most_common():
        print(f"  {vtype}: {count}")
    
    # Save enhanced results
    with open(Path(OUTPUT_DIR) / GADGETS_FILE, 'wb') as f:
        pickle.dump(all_gadgets, f)
    
    # Save similarity information
    with open(Path(OUTPUT_DIR) / SIMILARITY_FILE, 'wb') as f:
        pickle.dump(similar_groups, f)
    
    # Save enhanced patterns
    with open(Path(OUTPUT_DIR) / PATTERNS_FILE, 'w') as f:
        json.dump(extractor.pattern_matcher.vulnerability_patterns, f, indent=2)
    
    print(f"\nEnhanced output files saved to {OUTPUT_DIR}/")
    print(f"  {GADGETS_FILE}: Enhanced gadgets with full analysis")
    print(f"  {SIMILARITY_FILE}: Similarity clusters")
    print(f"  {PATTERNS_FILE}: Enhanced vulnerability patterns")

if __name__ == "__main__":
    main() 