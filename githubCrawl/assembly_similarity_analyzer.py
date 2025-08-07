#!/usr/bin/env python3
"""
Advanced Assembly Similarity Analysis System
Compares GitHub assembly corpus against known vulnerability gadgets using multiple techniques.
"""

import os
import json
import pickle
import numpy as np
from pathlib import Path
from collections import defaultdict, Counter
from dataclasses import dataclass, field
from typing import List, Dict, Tuple, Optional, Set, Any
import networkx as nx
from difflib import SequenceMatcher
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
import hashlib
import itertools
from functools import lru_cache

# Configuration
ENHANCED_GADGETS_DIR = "extracted_gadgets"
VULN_PROCESSED_DIR = "vuln_assembly_processed"
SIMILARITY_OUTPUT_DIR = "similarity_analysis"
KNOWN_GADGETS_FILE = "known_vulnerability_gadgets.pkl"
SIMILARITY_RESULTS_FILE = "similarity_results.json"
CANDIDATE_MATCHES_FILE = "candidate_matches.pkl"
SIMILARITY_MATRIX_FILE = "similarity_matrix.npy"

@dataclass
class NormalizedInstruction:
    """Normalized instruction for comparison"""
    opcode: str
    operand_types: List[str]  # e.g., ['REG', 'MEM', 'IMM']
    semantic_type: str        # e.g., 'LOAD', 'STORE', 'BRANCH', 'COMPUTE'
    data_flow_info: Dict[str, Any] = field(default_factory=dict)
    original_line: str = ""
    
    def to_tuple(self) -> Tuple[str, ...]:
        """Convert to tuple for hashing and comparison"""
        return (self.opcode, tuple(self.operand_types), self.semantic_type)
    
    def to_string(self) -> str:
        """Convert to string representation"""
        return f"{self.opcode}_{','.join(self.operand_types)}_{self.semantic_type}"

@dataclass
class VulnerabilityGadget:
    """Known vulnerability gadget for comparison"""
    name: str
    vulnerability_type: str
    architecture: str
    instructions: List[NormalizedInstruction]
    metadata: Dict[str, Any] = field(default_factory=dict)
    
    # Derived representations
    opcode_sequence: List[str] = field(default_factory=list)
    semantic_sequence: List[str] = field(default_factory=list)
    ngrams: Dict[int, Set[Tuple]] = field(default_factory=dict)
    cfg: Optional[nx.DiGraph] = None
    signature_hash: str = ""
    
    def __post_init__(self):
        self.opcode_sequence = [instr.opcode for instr in self.instructions]
        self.semantic_sequence = [instr.semantic_type for instr in self.instructions]
        self._generate_ngrams()
        self._generate_signature()
    
    def _generate_ngrams(self):
        """Generate N-grams for multiple N values"""
        instruction_tuples = [instr.to_tuple() for instr in self.instructions]
        
        for n in range(2, min(6, len(instruction_tuples) + 1)):
            self.ngrams[n] = set()
            for i in range(len(instruction_tuples) - n + 1):
                ngram = tuple(instruction_tuples[i:i+n])
                self.ngrams[n].add(ngram)
    
    def _generate_signature(self):
        """Generate unique signature for gadget"""
        content = f"{self.vulnerability_type}_{self.architecture}_{'_'.join(self.opcode_sequence)}"
        self.signature_hash = hashlib.md5(content.encode()).hexdigest()[:16]

@dataclass
class CandidateMatch:
    """Candidate assembly sequence that might match a vulnerability"""
    source_file: str
    function_name: str
    start_line: int
    end_line: int
    instructions: List[NormalizedInstruction]
    similarity_scores: Dict[str, float] = field(default_factory=dict)
    matched_gadgets: List[str] = field(default_factory=list)
    confidence_score: float = 0.0
    analysis_metadata: Dict[str, Any] = field(default_factory=dict)

class AssemblyNormalizer:
    """Advanced assembly normalization for comparison"""
    
    def __init__(self):
        self.register_patterns = {
            # x86 register patterns
            'x86_gpr': ['rax', 'rbx', 'rcx', 'rdx', 'rsi', 'rdi', 'rbp', 'rsp', 
                       'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15',
                       'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp'],
            # ARM register patterns
            'arm_gpr': [f'x{i}' for i in range(32)] + [f'w{i}' for i in range(32)] + 
                      ['sp', 'lr', 'pc', 'xzr', 'wzr'],
            # Special registers
            'special': ['cs', 'ds', 'es', 'fs', 'gs', 'ss']
        }
        
        self.opcode_semantics = {
            # Memory operations
            'load': ['mov', 'ldr', 'ldp', 'ld', 'lw', 'lb', 'lh', 'movzx', 'movsx'],
            'store': ['str', 'stp', 'st', 'sw', 'sb', 'sh'],
            # Arithmetic
            'arithmetic': ['add', 'sub', 'mul', 'div', 'and', 'or', 'xor', 'shl', 'shr',
                          'addi', 'subi', 'andi', 'ori', 'xori', 'lsl', 'lsr', 'asr'],
            # Control flow
            'branch': ['jmp', 'je', 'jne', 'jz', 'jnz', 'jl', 'jle', 'jg', 'jge',
                      'ja', 'jae', 'jb', 'jbe', 'b', 'bl', 'br', 'blr', 'ret'],
            'call': ['call', 'bl', 'blr'],
            'compare': ['cmp', 'test', 'subs'],
            # Special
            'cache': ['clflush', 'clflushopt', 'dc', 'ic'],
            'barrier': ['lfence', 'mfence', 'sfence', 'dsb', 'isb', 'dmb'],
            'timing': ['rdtsc', 'rdtscp', 'mrs'],
            'nop': ['nop', 'hint']
        }
    
    def normalize_instruction(self, raw_instruction: Dict) -> NormalizedInstruction:
        """Convert raw instruction to normalized form"""
        opcode = raw_instruction.get('opcode', '').lower()
        operands = raw_instruction.get('operands', [])
        raw_line = raw_instruction.get('raw', '')
        
        # Normalize opcode
        normalized_opcode = self._normalize_opcode(opcode)
        
        # Classify operand types
        operand_types = [self._classify_operand(op) for op in operands]
        
        # Determine semantic type
        semantic_type = self._get_semantic_type(opcode, operands)
        
        # Extract data flow information
        data_flow_info = self._extract_data_flow(opcode, operands)
        
        return NormalizedInstruction(
            opcode=normalized_opcode,
            operand_types=operand_types,
            semantic_type=semantic_type,
            data_flow_info=data_flow_info,
            original_line=raw_line
        )
    
    def _normalize_opcode(self, opcode: str) -> str:
        """Normalize opcode to canonical form"""
        # Remove suffixes and condition codes
        base_opcode = opcode.split('.')[0]  # Remove ARM condition suffixes
        base_opcode = base_opcode.rstrip('qwlb')  # Remove x86 size suffixes
        
        # Map to canonical forms
        canonical_map = {
            'movq': 'mov', 'movl': 'mov', 'movw': 'mov', 'movb': 'mov',
            'addq': 'add', 'addl': 'add', 'addw': 'add', 'addb': 'add',
            'subq': 'sub', 'subl': 'sub', 'subw': 'sub', 'subb': 'sub',
            'cmpq': 'cmp', 'cmpl': 'cmp', 'cmpw': 'cmp', 'cmpb': 'cmp',
        }
        
        return canonical_map.get(base_opcode, base_opcode)
    
    def _classify_operand(self, operand: str) -> str:
        """Classify operand type"""
        operand = operand.strip().lower()
        
        # Register
        for reg_type, regs in self.register_patterns.items():
            if any(operand.startswith(reg) for reg in regs):
                return 'REG'
        
        # Memory
        if '[' in operand or '(' in operand:
            if '+' in operand or '-' in operand:
                return 'MEM_OFFSET'
            else:
                return 'MEM_DIRECT'
        
        # Immediate
        if operand.startswith('#') or operand.startswith('$') or operand.isdigit() or operand.startswith('0x'):
            return 'IMM'
        
        # Label/Symbol
        return 'LABEL'
    
    def _get_semantic_type(self, opcode: str, operands: List[str]) -> str:
        """Determine semantic type of instruction"""
        for sem_type, opcodes in self.opcode_semantics.items():
            if opcode in opcodes:
                return sem_type.upper()
        
        # Check for memory operations based on operands
        if operands and any('[' in op or '(' in op for op in operands):
            if opcode in ['mov', 'ldr']:
                return 'LOAD'
            elif opcode in ['str']:
                return 'STORE'
        
        return 'COMPUTE'
    
    def _extract_data_flow(self, opcode: str, operands: List[str]) -> Dict[str, Any]:
        """Extract data flow information"""
        data_flow = {
            'reads': [],
            'writes': [],
            'memory_access': False
        }
        
        # Simple heuristic for data flow
        if operands:
            if opcode in ['mov', 'add', 'sub', 'ldr']:
                data_flow['writes'].append(operands[0])
                data_flow['reads'].extend(operands[1:])
            elif opcode in ['str', 'cmp', 'test']:
                data_flow['reads'].extend(operands)
        
        # Check for memory access
        data_flow['memory_access'] = any('[' in op or '(' in op for op in operands)
        
        return data_flow

class NGramSimilarityMatcher:
    """N-gram based similarity matching"""
    
    def __init__(self, n_values: List[int] = [2, 3, 4, 5]):
        self.n_values = n_values
    
    def compute_ngram_similarity(self, seq1: List[NormalizedInstruction], 
                                seq2: List[NormalizedInstruction]) -> Dict[int, float]:
        """Compute N-gram similarity for multiple N values"""
        similarities = {}
        
        for n in self.n_values:
            ngrams1 = self._generate_ngrams(seq1, n)
            ngrams2 = self._generate_ngrams(seq2, n)
            
            if not ngrams1 or not ngrams2:
                similarities[n] = 0.0
                continue
            
            # Jaccard similarity
            intersection = len(ngrams1 & ngrams2)
            union = len(ngrams1 | ngrams2)
            similarities[n] = intersection / union if union > 0 else 0.0
        
        return similarities
    
    def _generate_ngrams(self, sequence: List[NormalizedInstruction], n: int) -> Set[Tuple]:
        """Generate N-grams from instruction sequence"""
        if len(sequence) < n:
            return set()
        
        ngrams = set()
        for i in range(len(sequence) - n + 1):
            ngram = tuple(instr.to_tuple() for instr in sequence[i:i+n])
            ngrams.add(ngram)
        
        return ngrams
    
    def compute_weighted_similarity(self, similarities: Dict[int, float]) -> float:
        """Compute weighted average of N-gram similarities"""
        if not similarities:
            return 0.0
        
        # Weight longer N-grams more heavily
        weights = {n: n for n in similarities.keys()}
        total_weight = sum(weights.values())
        
        weighted_sum = sum(sim * weights[n] for n, sim in similarities.items())
        return weighted_sum / total_weight if total_weight > 0 else 0.0

class SequenceAlignmentMatcher:
    """Sequence alignment-based similarity"""
    
    def __init__(self):
        self.match_score = 2
        self.mismatch_score = -1
        self.gap_penalty = -1
    
    def compute_alignment_similarity(self, seq1: List[NormalizedInstruction], 
                                   seq2: List[NormalizedInstruction]) -> float:
        """Compute similarity using sequence alignment"""
        # Convert sequences to strings for SequenceMatcher
        str1 = [instr.to_string() for instr in seq1]
        str2 = [instr.to_string() for instr in seq2]
        
        matcher = SequenceMatcher(None, str1, str2)
        return matcher.ratio()
    
    def compute_lcs_similarity(self, seq1: List[NormalizedInstruction], 
                              seq2: List[NormalizedInstruction]) -> float:
        """Compute Longest Common Subsequence similarity"""
        tuples1 = [instr.to_tuple() for instr in seq1]
        tuples2 = [instr.to_tuple() for instr in seq2]
        
        lcs_length = self._lcs_length(tuples1, tuples2)
        max_length = max(len(tuples1), len(tuples2))
        
        return lcs_length / max_length if max_length > 0 else 0.0
    
    def _lcs_length(self, seq1: List[Tuple], seq2: List[Tuple]) -> int:
        """Compute LCS length using dynamic programming"""
        m, n = len(seq1), len(seq2)
        dp = [[0] * (n + 1) for _ in range(m + 1)]
        
        for i in range(1, m + 1):
            for j in range(1, n + 1):
                if seq1[i-1] == seq2[j-1]:
                    dp[i][j] = dp[i-1][j-1] + 1
                else:
                    dp[i][j] = max(dp[i-1][j], dp[i][j-1])
        
        return dp[m][n]

class GraphBasedMatcher:
    """Graph-based similarity matching"""
    
    def build_cfg(self, instructions: List[NormalizedInstruction]) -> nx.DiGraph:
        """Build control flow graph from instructions"""
        cfg = nx.DiGraph()
        
        # Add nodes
        for i, instr in enumerate(instructions):
            cfg.add_node(i, instruction=instr)
        
        # Add edges (simplified)
        for i in range(len(instructions) - 1):
            # Sequential edge
            cfg.add_edge(i, i + 1, edge_type='sequential')
            
            # Branch edges (simplified heuristic)
            if instructions[i].semantic_type == 'BRANCH':
                # Add potential branch target (heuristic)
                for j in range(i + 2, min(i + 10, len(instructions))):
                    if instructions[j].semantic_type in ['LOAD', 'STORE', 'COMPUTE']:
                        cfg.add_edge(i, j, edge_type='branch')
                        break
        
        return cfg
    
    def compute_graph_similarity(self, cfg1: nx.DiGraph, cfg2: nx.DiGraph) -> float:
        """Compute graph similarity using graph edit distance"""
        # Simplified graph similarity based on node and edge counts
        if cfg1.number_of_nodes() == 0 or cfg2.number_of_nodes() == 0:
            return 0.0
        
        # Node similarity (based on instruction types)
        nodes1 = set(cfg1.nodes())
        nodes2 = set(cfg2.nodes())
        
        # Get instruction types for each node
        types1 = set(cfg1.nodes[n]['instruction'].semantic_type for n in nodes1)
        types2 = set(cfg2.nodes[n]['instruction'].semantic_type for n in nodes2)
        
        type_similarity = len(types1 & types2) / len(types1 | types2) if types1 | types2 else 0
        
        # Edge similarity
        edge_types1 = set(cfg1.edges[e].get('edge_type', 'sequential') for e in cfg1.edges())
        edge_types2 = set(cfg2.edges[e].get('edge_type', 'sequential') for e in cfg2.edges())
        
        edge_similarity = len(edge_types1 & edge_types2) / len(edge_types1 | edge_types2) if edge_types1 | edge_types2 else 0
        
        # Combined similarity
        return (type_similarity + edge_similarity) / 2

class SemanticSimilarityMatcher:
    """Semantic similarity using embeddings"""
    
    def __init__(self):
        self.vectorizer = TfidfVectorizer(
            analyzer='word',
            token_pattern=r'\S+',
            max_features=1000,
            ngram_range=(1, 3)
        )
        self.is_fitted = False
    
    def fit_corpus(self, all_sequences: List[List[NormalizedInstruction]]):
        """Fit vectorizer on corpus"""
        documents = []
        for seq in all_sequences:
            doc = ' '.join(instr.to_string() for instr in seq)
            documents.append(doc)
        
        if documents:
            self.vectorizer.fit(documents)
            self.is_fitted = True
    
    def compute_semantic_similarity(self, seq1: List[NormalizedInstruction], 
                                  seq2: List[NormalizedInstruction]) -> float:
        """Compute semantic similarity using TF-IDF + cosine similarity"""
        if not self.is_fitted:
            return 0.0
        
        doc1 = ' '.join(instr.to_string() for instr in seq1)
        doc2 = ' '.join(instr.to_string() for instr in seq2)
        
        try:
            vectors = self.vectorizer.transform([doc1, doc2])
            similarity = cosine_similarity(vectors[0:1], vectors[1:2])[0][0]
            return similarity
        except:
            return 0.0

class VulnerabilityGadgetLibrary:
    """Manager for known vulnerability gadgets"""
    
    def __init__(self):
        self.gadgets: Dict[str, VulnerabilityGadget] = {}
        self.normalizer = AssemblyNormalizer()
    
    def load_from_processed_vulns(self, vuln_dir: str):
        """Load gadgets from processed vulnerability files"""
        vuln_features_path = Path(vuln_dir) / "vuln_features.pkl"
        
        if not vuln_features_path.exists():
            print(f"Warning: {vuln_features_path} not found")
            return
        
        with open(vuln_features_path, 'rb') as f:
            vuln_data = pickle.load(f)
        
        for vuln_file in vuln_data:
            if 'raw_instructions' not in vuln_file:
                continue
            
            # Normalize instructions
            normalized_instrs = []
            for raw_instr in vuln_file['raw_instructions'][:20]:  # Limit to first 20 instructions
                if isinstance(raw_instr, dict):
                    norm_instr = self.normalizer.normalize_instruction(raw_instr)
                    normalized_instrs.append(norm_instr)
            
            if len(normalized_instrs) < 3:
                continue
            
            # Create gadget
            gadget_name = f"{vuln_file['vulnerability_type']}_{vuln_file['architecture']}_{vuln_file['filename']}"
            gadget = VulnerabilityGadget(
                name=gadget_name,
                vulnerability_type=vuln_file['vulnerability_type'],
                architecture=vuln_file['architecture'],
                instructions=normalized_instrs,
                metadata={
                    'source_file': vuln_file['filename'],
                    'num_instructions': vuln_file['num_instructions'],
                    'control_flow_density': vuln_file.get('control_flow_density', 0),
                    'memory_access_density': vuln_file.get('memory_access_density', 0)
                }
            )
            
            self.gadgets[gadget_name] = gadget
        
        print(f"Loaded {len(self.gadgets)} vulnerability gadgets")
    
    def save_library(self, output_path: str):
        """Save gadget library to JSON"""
        gadget_data = {}
        
        for name, gadget in self.gadgets.items():
            gadget_data[name] = {
                'name': gadget.name,
                'vulnerability_type': gadget.vulnerability_type,
                'architecture': gadget.architecture,
                'instructions': [
                    {
                        'opcode': instr.opcode,
                        'operand_types': instr.operand_types,
                        'semantic_type': instr.semantic_type,
                        'original_line': instr.original_line
                    }
                    for instr in gadget.instructions
                ],
                'opcode_sequence': gadget.opcode_sequence,
                'semantic_sequence': gadget.semantic_sequence,
                'signature_hash': gadget.signature_hash,
                'metadata': gadget.metadata
            }
        
        with open(output_path, 'w') as f:
            json.dump(gadget_data, f, indent=2)

class SimilarityAnalyzer:
    """Main similarity analysis engine"""
    
    def __init__(self):
        self.gadget_library = VulnerabilityGadgetLibrary()
        self.normalizer = AssemblyNormalizer()
        
        # Similarity matchers
        self.ngram_matcher = NGramSimilarityMatcher()
        self.alignment_matcher = SequenceAlignmentMatcher()
        self.graph_matcher = GraphBasedMatcher()
        self.semantic_matcher = SemanticSimilarityMatcher()
        
        self.candidate_matches: List[CandidateMatch] = []
        
    def analyze_corpus_similarity(self, enhanced_gadgets_path: str, vuln_dir: str):
        """Main analysis pipeline"""
        print("=== Assembly Similarity Analysis Pipeline ===")
        
        # Step 1: Load known vulnerability gadgets
        print("\n1. Loading known vulnerability gadgets...")
        self.gadget_library.load_from_processed_vulns(vuln_dir)
        
        if not self.gadget_library.gadgets:
            print("No vulnerability gadgets loaded. Exiting.")
            return
        
        # Step 2: Load GitHub assembly corpus
        print("\n2. Loading GitHub assembly corpus...")
        github_gadgets = self._load_github_gadgets(enhanced_gadgets_path)
        
        if not github_gadgets:
            print("No GitHub gadgets loaded. Exiting.")
            return
        
        print(f"Loaded {len(github_gadgets)} GitHub assembly candidates")
        
        # Step 3: Fit semantic similarity model
        print("\n3. Fitting semantic similarity model...")
        all_sequences = []
        for gadget in self.gadget_library.gadgets.values():
            all_sequences.append(gadget.instructions)
        for candidate in github_gadgets[:1000]:  # Limit for performance
            all_sequences.append(candidate['instructions'])
        
        self.semantic_matcher.fit_corpus(all_sequences)
        
        # Step 4: Perform similarity analysis
        print("\n4. Performing similarity analysis...")
        self._find_similar_sequences(github_gadgets)
        
        # Step 5: Rank and filter candidates
        print("\n5. Ranking and filtering candidates...")
        self._rank_candidates()
        
        # Step 6: Save results
        print("\n6. Saving results...")
        self._save_results()
        
        print(f"\nAnalysis complete! Found {len(self.candidate_matches)} potential matches")
        self._print_summary()
    
    def _load_github_gadgets(self, enhanced_gadgets_path: str) -> List[Dict]:
        """Load processed GitHub gadgets - fallback to parsed assembly if enhanced not available"""
        gadgets_file = Path(enhanced_gadgets_path) / "enhanced_gadgets.pkl"
        
        # Try enhanced gadgets first
        if gadgets_file.exists():
            try:
                with open(gadgets_file, 'rb') as f:
                    enhanced_gadgets = pickle.load(f)
                
                if enhanced_gadgets:  # If we have enhanced gadgets, use them
                    github_candidates = []
                    for gadget in enhanced_gadgets:
                        normalized_instrs = []
                        for instr in gadget.instructions:
                            raw_instr = {
                                'opcode': instr.opcode,
                                'operands': instr.operands,
                                'raw': instr.raw_line
                            }
                            norm_instr = self.normalizer.normalize_instruction(raw_instr)
                            normalized_instrs.append(norm_instr)
                        
                        if len(normalized_instrs) >= 3:
                            candidate = {
                                'source_file': gadget.source_file,
                                'gadget_type': gadget.gadget_type,
                                'architecture': gadget.architecture,
                                'confidence_score': gadget.confidence_score,
                                'instructions': normalized_instrs,
                                'context_window': gadget.context_window,
                                'features': gadget.features
                            }
                            github_candidates.append(candidate)
                    
                    return github_candidates
            except:
                pass
        
        # Fallback: Load directly from parsed assembly
        print("Enhanced gadgets not available, loading from parsed assembly...")
        parsed_file = Path("parsed_assembly") / "assembly_features.pkl"
        
        if not parsed_file.exists():
            print(f"Error: {parsed_file} not found")
            return []
        
        with open(parsed_file, 'rb') as f:
            parsed_data = pickle.load(f)
        
        github_candidates = []
        for file_data in parsed_data:
            if 'raw_instructions' not in file_data or len(file_data['raw_instructions']) < 5:
                continue
            
            # Create sliding windows from the instructions
            instructions = file_data['raw_instructions']
            for window_size in [10, 15, 20]:
                for i in range(0, len(instructions) - window_size + 1, 5):  # Step by 5 to avoid too much overlap
                    window_instrs = instructions[i:i + window_size]
                    
                    # Normalize instructions
                    normalized_instrs = []
                    for raw_instr in window_instrs:
                        norm_instr = self.normalizer.normalize_instruction(raw_instr)
                        normalized_instrs.append(norm_instr)
                    
                    # Check if window has interesting patterns (simple heuristic)
                    opcodes = [instr.opcode for instr in normalized_instrs]
                    has_branch = any(op in ['b', 'bl', 'br', 'blr', 'jmp', 'je', 'jne', 'call'] for op in opcodes)
                    has_memory = any(instr.semantic_type in ['LOAD', 'STORE'] for instr in normalized_instrs)
                    unique_opcodes = len(set(opcodes))
                    
                    if (has_branch or has_memory) and unique_opcodes >= 3:
                        candidate = {
                            'source_file': file_data.get('file_path', 'unknown'),
                            'gadget_type': 'UNKNOWN',
                            'architecture': file_data.get('arch', 'unknown'),
                            'confidence_score': 0.5,  # Default confidence
                            'instructions': normalized_instrs,
                            'context_window': (i, i + window_size),
                            'features': {'num_instructions': len(normalized_instrs)}
                        }
                        github_candidates.append(candidate)
        
        return github_candidates
    
    def _find_similar_sequences(self, github_gadgets: List[Dict]):
        """Find similar sequences between GitHub and known vulnerabilities"""
        total_comparisons = len(github_gadgets) * len(self.gadget_library.gadgets)
        processed = 0
        
        for gh_candidate in github_gadgets:
            best_similarities = {}
            best_matches = []
            
            for vuln_name, vuln_gadget in self.gadget_library.gadgets.items():
                # Compute multiple similarity metrics
                similarities = self._compute_all_similarities(
                    gh_candidate['instructions'], 
                    vuln_gadget.instructions
                )
                
                # Combined similarity score
                combined_score = self._combine_similarity_scores(similarities)
                
                if combined_score > 0.3:  # Threshold for potential matches
                    best_similarities[vuln_name] = similarities
                    best_matches.append(vuln_name)
                
                processed += 1
                if processed % 1000 == 0:
                    print(f"  Processed {processed}/{total_comparisons} comparisons...")
            
            # Create candidate match if we found any similarities
            if best_matches:
                candidate_match = CandidateMatch(
                    source_file=gh_candidate['source_file'],
                    function_name="unknown",  # Could extract from context
                    start_line=gh_candidate['context_window'][0],
                    end_line=gh_candidate['context_window'][1],
                    instructions=gh_candidate['instructions'],
                    similarity_scores=best_similarities,
                    matched_gadgets=best_matches,
                    confidence_score=max(self._combine_similarity_scores(sim) for sim in best_similarities.values()),
                    analysis_metadata={
                        'original_gadget_type': gh_candidate['gadget_type'],
                        'architecture': gh_candidate['architecture'],
                        'original_confidence': gh_candidate['confidence_score'],
                        'features': gh_candidate['features']
                    }
                )
                self.candidate_matches.append(candidate_match)
    
    def _compute_all_similarities(self, seq1: List[NormalizedInstruction], 
                                 seq2: List[NormalizedInstruction]) -> Dict[str, float]:
        """Compute all similarity metrics"""
        similarities = {}
        
        # N-gram similarity
        ngram_sims = self.ngram_matcher.compute_ngram_similarity(seq1, seq2)
        similarities['ngram_weighted'] = self.ngram_matcher.compute_weighted_similarity(ngram_sims)
        similarities['ngram_details'] = ngram_sims
        
        # Sequence alignment similarity
        similarities['alignment'] = self.alignment_matcher.compute_alignment_similarity(seq1, seq2)
        similarities['lcs'] = self.alignment_matcher.compute_lcs_similarity(seq1, seq2)
        
        # Graph-based similarity
        cfg1 = self.graph_matcher.build_cfg(seq1)
        cfg2 = self.graph_matcher.build_cfg(seq2)
        similarities['graph'] = self.graph_matcher.compute_graph_similarity(cfg1, cfg2)
        
        # Semantic similarity
        similarities['semantic'] = self.semantic_matcher.compute_semantic_similarity(seq1, seq2)
        
        return similarities
    
    def _combine_similarity_scores(self, similarities: Dict[str, Any]) -> float:
        """Combine multiple similarity scores into final score"""
        weights = {
            'ngram_weighted': 0.3,
            'alignment': 0.25,
            'lcs': 0.2,
            'graph': 0.15,
            'semantic': 0.1
        }
        
        combined_score = 0.0
        total_weight = 0.0
        
        for metric, weight in weights.items():
            if metric in similarities and isinstance(similarities[metric], (int, float)):
                combined_score += similarities[metric] * weight
                total_weight += weight
        
        return combined_score / total_weight if total_weight > 0 else 0.0
    
    def _rank_candidates(self):
        """Rank candidates by confidence score"""
        self.candidate_matches.sort(key=lambda x: x.confidence_score, reverse=True)
        
        # Filter top candidates
        threshold = 0.5
        high_confidence_matches = [c for c in self.candidate_matches if c.confidence_score >= threshold]
        
        print(f"Found {len(high_confidence_matches)} high-confidence matches (>= {threshold})")
        
        # Keep top 100 for detailed analysis
        self.candidate_matches = self.candidate_matches[:100]
    
    def _save_results(self):
        """Save analysis results"""
        os.makedirs(SIMILARITY_OUTPUT_DIR, exist_ok=True)
        
        # Save gadget library
        library_path = Path(SIMILARITY_OUTPUT_DIR) / KNOWN_GADGETS_FILE
        self.gadget_library.save_library(str(library_path))
        
        # Save candidate matches
        matches_path = Path(SIMILARITY_OUTPUT_DIR) / CANDIDATE_MATCHES_FILE
        with open(matches_path, 'wb') as f:
            pickle.dump(self.candidate_matches, f)
        
        # Save summary results
        results_path = Path(SIMILARITY_OUTPUT_DIR) / SIMILARITY_RESULTS_FILE
        results_summary = {
            'total_candidates': len(self.candidate_matches),
            'high_confidence_count': len([c for c in self.candidate_matches if c.confidence_score >= 0.7]),
            'medium_confidence_count': len([c for c in self.candidate_matches if 0.4 <= c.confidence_score < 0.7]),
            'vulnerability_type_distribution': self._get_vuln_type_distribution(),
            'top_matches': self._get_top_matches_summary(10)
        }
        
        with open(results_path, 'w') as f:
            json.dump(results_summary, f, indent=2)
    
    def _get_vuln_type_distribution(self) -> Dict[str, int]:
        """Get distribution of matched vulnerability types"""
        distribution = defaultdict(int)
        
        for candidate in self.candidate_matches:
            for gadget_name in candidate.matched_gadgets:
                if gadget_name in self.gadget_library.gadgets:
                    vuln_type = self.gadget_library.gadgets[gadget_name].vulnerability_type
                    distribution[vuln_type] += 1
        
        return dict(distribution)
    
    def _get_top_matches_summary(self, n: int) -> List[Dict]:
        """Get summary of top N matches"""
        top_matches = []
        
        for candidate in self.candidate_matches[:n]:
            summary = {
                'source_file': candidate.source_file,
                'confidence_score': candidate.confidence_score,
                'matched_gadgets': candidate.matched_gadgets,
                'instruction_count': len(candidate.instructions),
                'opcode_sequence': [instr.opcode for instr in candidate.instructions[:10]]
            }
            top_matches.append(summary)
        
        return top_matches
    
    def _print_summary(self):
        """Print analysis summary"""
        print("\n=== SIMILARITY ANALYSIS SUMMARY ===")
        
        vuln_dist = self._get_vuln_type_distribution()
        print(f"\nVulnerability Type Matches:")
        for vuln_type, count in sorted(vuln_dist.items()):
            print(f"  {vuln_type}: {count}")
        
        print(f"\nConfidence Distribution:")
        high_conf = len([c for c in self.candidate_matches if c.confidence_score >= 0.7])
        med_conf = len([c for c in self.candidate_matches if 0.4 <= c.confidence_score < 0.7])
        low_conf = len([c for c in self.candidate_matches if c.confidence_score < 0.4])
        
        print(f"  High confidence (>= 0.7): {high_conf}")
        print(f"  Medium confidence (0.4-0.7): {med_conf}")
        print(f"  Low confidence (< 0.4): {low_conf}")
        
        print(f"\nTop 5 Matches:")
        for i, candidate in enumerate(self.candidate_matches[:5]):
            print(f"  {i+1}. {Path(candidate.source_file).name} "
                  f"(confidence: {candidate.confidence_score:.3f}, "
                  f"matches: {len(candidate.matched_gadgets)})")

def main():
    analyzer = SimilarityAnalyzer()
    
    # Run similarity analysis
    analyzer.analyze_corpus_similarity(
        enhanced_gadgets_path=ENHANCED_GADGETS_DIR,
        vuln_dir=VULN_PROCESSED_DIR
    )

if __name__ == "__main__":
    main() 