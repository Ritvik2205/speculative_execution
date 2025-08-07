#!/usr/bin/env python3
"""
Step 6: Advanced Gadget Extraction and Heuristic Labeling
Segments assembly code into potential vulnerability gadgets using pattern-based analysis.
"""

import os
import json
import pickle
import numpy as np
from pathlib import Path
from collections import defaultdict, Counter
import re
from dataclasses import dataclass
from typing import List, Dict, Tuple, Optional

# Configuration
PROCESSED_ASM_DIR = "parsed_assembly"
VULN_PROCESSED_DIR = "vuln_assembly_processed"
OUTPUT_DIR = "extracted_gadgets"
GADGETS_FILE = "gadgets.pkl"
GADGET_VOCAB_FILE = "gadget_vocabulary.json"
PATTERNS_FILE = "vulnerability_patterns.json"

@dataclass
class Instruction:
    """Structured instruction representation"""
    opcode: str
    operands: List[str]
    line_num: int
    raw_line: str
    semantics: Dict[str, bool]
    address: Optional[int] = None

@dataclass
class Gadget:
    """Represents a potential vulnerability gadget"""
    instructions: List[Instruction]
    gadget_type: str
    confidence_score: float
    context_window: Tuple[int, int]  # (start_line, end_line)
    source_file: str
    architecture: str
    vulnerability_patterns: List[str]
    features: Dict[str, any]

class VulnerabilityPatternMatcher:
    """Pattern matcher for different vulnerability types"""
    
    def __init__(self):
        self.patterns = {
            'SPECTRE_V1': {
                'x86': {
                    'bounds_check': ['cmp', 'test', 'sub'],
                    'conditional_branch': ['jl', 'jle', 'jg', 'jge', 'ja', 'jae', 'jb', 'jbe', 'je', 'jne'],
                    'array_access': ['mov', 'lea'],
                    'memory_access': ['[', ']'],
                    'probe_pattern': ['mov', 'and', 'shl'],
                    'timing_sensitive': ['rdtsc', 'clflush', 'mfence', 'lfence']
                },
                'arm64': {
                    'bounds_check': ['cmp', 'sub', 'subs'],
                    'conditional_branch': ['b.lt', 'b.le', 'b.gt', 'b.ge', 'b.eq', 'b.ne', 'b.lo', 'b.hi'],
                    'array_access': ['ldr', 'str', 'add'],
                    'memory_access': ['[', ']'],
                    'probe_pattern': ['ldr', 'and', 'lsl'],
                    'timing_sensitive': ['mrs', 'dc', 'dsb', 'isb']
                }
            },
            'SPECTRE_V2': {
                'x86': {
                    'indirect_branch': ['jmp', 'call'],
                    'register_indirect': ['[r', '[e'],
                    'branch_predictor': ['call', 'ret'],
                    'speculation_barrier': ['lfence', 'mfence']
                },
                'arm64': {
                    'indirect_branch': ['br', 'blr'],
                    'register_indirect': ['x', 'w'],
                    'branch_predictor': ['bl', 'ret'],
                    'speculation_barrier': ['dsb', 'isb']
                }
            },
            'MELTDOWN': {
                'x86': {
                    'privileged_access': ['mov', 'lea'],
                    'kernel_memory': ['gs:', 'fs:'],
                    'exception_handling': ['ud2', 'int'],
                    'dependent_load': ['mov', 'cmp'],
                    'cache_probe': ['clflush', 'rdtsc']
                },
                'arm64': {
                    'privileged_access': ['mrs', 'msr'],
                    'system_register': ['TTBR', 'SCTLR', 'TCR'],
                    'exception_handling': ['brk', 'hvc'],
                    'dependent_load': ['ldr', 'cmp'],
                    'cache_probe': ['dc', 'ic']
                }
            },
            'RETBLEED': {
                'x86': {
                    'return_instruction': ['ret'],
                    'stack_manipulation': ['push', 'pop'],
                    'indirect_call': ['call'],
                    'speculation_control': ['lfence']
                },
                'arm64': {
                    'return_instruction': ['ret'],
                    'stack_manipulation': ['stp', 'ldp'],
                    'indirect_call': ['blr'],
                    'speculation_control': ['dsb', 'isb']
                }
            },
            'BHI': {  # Branch History Injection / Spectre-BHB
                'x86': {
                    'branch_history_pollution': ['jmp', 'je', 'jne', 'jz', 'jnz'],
                    'indirect_branch': ['jmp', 'call'],
                    'branch_conditioning': ['loop', 'jcxz'],
                    'btb_manipulation': ['call', 'ret'],
                    'branch_pattern': ['cmp', 'test'],
                    'timing_measurement': ['rdtsc', 'rdtscp'],
                    'cache_operations': ['clflush', 'clflushopt']
                },
                'arm64': {
                    'branch_history_pollution': ['b', 'b.eq', 'b.ne', 'b.lt', 'b.gt'],
                    'indirect_branch': ['br', 'blr'],
                    'branch_conditioning': ['cbz', 'cbnz', 'tbz', 'tbnz'],
                    'btb_manipulation': ['bl', 'ret'],
                    'branch_pattern': ['cmp', 'subs'],
                    'timing_measurement': ['mrs'],
                    'cache_operations': ['dc', 'ic']
                }
            },
            'INCEPTION': {  # Speculative Return Stack Overflow (SRSO)
                'x86': {
                    'return_stack_overflow': ['call', 'ret'],
                    'stack_manipulation': ['push', 'pop'],
                    'deep_call_chain': ['call'],
                    'return_misdirection': ['ret'],
                    'ras_pollution': ['call', 'jmp'],
                    'speculation_window': ['nop', 'mov'],
                    'timing_measurement': ['rdtsc', 'rdtscp']
                },
                'arm64': {
                    'return_stack_overflow': ['bl', 'ret'],
                    'stack_manipulation': ['stp', 'ldp'],
                    'deep_call_chain': ['bl', 'blr'],
                    'return_misdirection': ['ret'],
                    'ras_pollution': ['bl', 'br'],
                    'speculation_window': ['nop', 'mov'],
                    'timing_measurement': ['mrs']
                }
            },
            'L1TF': {  # L1 Terminal Fault / Foreshadow
                'x86': {
                    'page_fault_handling': ['int', 'ud2'],
                    'privileged_memory': ['mov', 'lea'],
                    'l1_cache_access': ['mov', 'movzx', 'movsx'],
                    'page_table_walk': ['mov', 'lea'],
                    'exception_suppression': ['xor', 'and'],
                    'cache_timing': ['clflush', 'rdtsc'],
                    'memory_mapping': ['gs:', 'fs:'],
                    'fault_suppression': ['cmov', 'test']
                },
                'arm64': {
                    'page_fault_handling': ['brk', 'hvc', 'svc'],
                    'privileged_memory': ['ldr', 'str'],
                    'l1_cache_access': ['ldr', 'ldrb', 'ldrh'],
                    'page_table_walk': ['ldr', 'mrs'],
                    'exception_suppression': ['and', 'orr'],
                    'cache_timing': ['dc', 'mrs'],
                    'memory_mapping': ['ttbr', 'tcr'],
                    'fault_suppression': ['csel', 'cmp']
                }
            },
            'MDS': {  # Microarchitectural Data Sampling
                'x86': {
                    'store_buffer_sampling': ['mov', 'movnt'],
                    'load_port_sampling': ['mov', 'movzx'],
                    'fill_buffer_sampling': ['mov', 'lea'],
                    'microcode_assist': ['div', 'sqrt'],
                    'speculation_barrier': ['lfence', 'mfence'],
                    'cache_flush': ['clflush', 'clwb'],
                    'memory_disambiguation': ['mov', 'cmp'],
                    'timing_measurement': ['rdtsc', 'rdtscp'],
                    'data_dependency': ['add', 'xor', 'and']
                },
                'arm64': {
                    'store_buffer_sampling': ['str', 'stnp'],
                    'load_port_sampling': ['ldr', 'ldrb'],
                    'fill_buffer_sampling': ['ldr', 'add'],
                    'microcode_assist': ['div', 'sqrt'],
                    'speculation_barrier': ['dsb', 'isb'],
                    'cache_flush': ['dc', 'ic'],
                    'memory_disambiguation': ['ldr', 'cmp'],
                    'timing_measurement': ['mrs'],
                    'data_dependency': ['add', 'eor', 'and']
                }
            }
        }
    
    def match_pattern(self, instructions: List[Instruction], vuln_type: str, arch: str) -> Tuple[float, List[str]]:
        """Match instructions against vulnerability patterns"""
        if vuln_type not in self.patterns or arch not in self.patterns[vuln_type]:
            return 0.0, []
        
        pattern_dict = self.patterns[vuln_type][arch]
        matched_patterns = []
        total_score = 0.0
        
        # Convert instructions to searchable format
        opcodes = [instr.opcode.lower() for instr in instructions]
        operands_text = ' '.join([' '.join(instr.operands) for instr in instructions])
        raw_text = ' '.join([instr.raw_line.lower() for instr in instructions])
        
        for pattern_name, keywords in pattern_dict.items():
            pattern_score = 0.0
            keyword_matches = 0
            
            for keyword in keywords:
                # Check opcodes
                if keyword in opcodes:
                    keyword_matches += 1
                    pattern_score += 1.0
                # Check operands and raw text
                elif keyword in operands_text.lower() or keyword in raw_text:
                    keyword_matches += 1
                    pattern_score += 0.5
            
            if keyword_matches > 0:
                # Normalize by number of keywords in pattern
                pattern_score = pattern_score / len(keywords)
                matched_patterns.append(f"{pattern_name}:{pattern_score:.2f}")
                total_score += pattern_score
        
        # Bonus for multiple pattern matches (indicates complex vulnerability)
        if len(matched_patterns) > 2:
            total_score *= 1.2
        
        return min(total_score, 1.0), matched_patterns

class GadgetExtractor:
    """Main gadget extraction engine"""
    
    def __init__(self):
        self.pattern_matcher = VulnerabilityPatternMatcher()
        self.gadget_counter = 0
        self.extracted_gadgets = []
        
        # Load vulnerability reference patterns from processed files
        self.vuln_references = self.load_vulnerability_references()
        
    def load_vulnerability_references(self) -> Dict[str, List[Dict]]:
        """Load processed vulnerability assembly as reference patterns"""
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
        
        return references
    
    def segment_by_function(self, instructions: List[Instruction]) -> List[List[Instruction]]:
        """Segment instructions by function boundaries"""
        functions = []
        current_function = []
        
        for instr in instructions:
            # Function start indicators
            if (instr.raw_line.endswith(':') and not instr.raw_line.startswith('.') and 
                len(current_function) > 0):
                # Save previous function
                if current_function:
                    functions.append(current_function)
                current_function = []
            
            # Skip directives but include in context
            if not instr.raw_line.startswith('.'):
                current_function.append(instr)
        
        # Add final function
        if current_function:
            functions.append(current_function)
        
        return functions
    
    def extract_control_flow_gadgets(self, instructions: List[Instruction], 
                                   window_size: int = 20) -> List[List[Instruction]]:
        """Extract gadgets around control flow instructions"""
        gadgets = []
        
        for i, instr in enumerate(instructions):
            if instr.semantics.get('is_branch', False):
                # Extract context window around branch
                start_idx = max(0, i - window_size)
                end_idx = min(len(instructions), i + window_size + 1)
                
                gadget_instrs = instructions[start_idx:end_idx]
                if len(gadget_instrs) >= 5:  # Minimum gadget size
                    gadgets.append(gadget_instrs)
        
        return gadgets
    
    def extract_memory_access_gadgets(self, instructions: List[Instruction], 
                                    window_size: int = 15) -> List[List[Instruction]]:
        """Extract gadgets around suspicious memory access patterns"""
        gadgets = []
        
        for i, instr in enumerate(instructions):
            if instr.semantics.get('accesses_memory', False):
                # Look for dependent memory accesses
                dependent_accesses = 0
                for j in range(i + 1, min(i + 10, len(instructions))):
                    if instructions[j].semantics.get('accesses_memory', False):
                        dependent_accesses += 1
                
                # Extract if multiple dependent accesses found
                if dependent_accesses >= 2:
                    start_idx = max(0, i - window_size)
                    end_idx = min(len(instructions), i + window_size + 1)
                    
                    gadget_instrs = instructions[start_idx:end_idx]
                    gadgets.append(gadget_instrs)
        
        return gadgets
    
    def extract_timing_sensitive_gadgets(self, instructions: List[Instruction], 
                                       window_size: int = 25) -> List[List[Instruction]]:
        """Extract gadgets containing timing-sensitive instructions"""
        timing_opcodes = {
            'rdtsc', 'rdtscp', 'clflush', 'clflushopt', 'clwb',  # x86
            'mrs', 'dc', 'ic', 'dsb', 'isb'  # ARM64
        }
        
        gadgets = []
        
        for i, instr in enumerate(instructions):
            if instr.opcode.lower() in timing_opcodes:
                start_idx = max(0, i - window_size)
                end_idx = min(len(instructions), i + window_size + 1)
                
                gadget_instrs = instructions[start_idx:end_idx]
                gadgets.append(gadget_instrs)
        
        return gadgets
    
    def calculate_gadget_features(self, gadget_instrs: List[Instruction]) -> Dict[str, any]:
        """Calculate comprehensive features for a gadget"""
        if not gadget_instrs:
            return {}
        
        # Basic statistics
        num_instructions = len(gadget_instrs)
        unique_opcodes = len(set(instr.opcode for instr in gadget_instrs))
        
        # Semantic features
        branch_count = sum(1 for instr in gadget_instrs if instr.semantics.get('is_branch', False))
        memory_access_count = sum(1 for instr in gadget_instrs if instr.semantics.get('accesses_memory', False))
        arithmetic_count = sum(1 for instr in gadget_instrs if instr.semantics.get('is_arithmetic', False))
        
        # Control flow complexity
        branch_density = branch_count / num_instructions if num_instructions > 0 else 0
        memory_density = memory_access_count / num_instructions if num_instructions > 0 else 0
        
        # Instruction diversity
        opcode_diversity = unique_opcodes / num_instructions if num_instructions > 0 else 0
        
        # Pattern complexity (entropy-like measure)
        opcode_counts = Counter(instr.opcode for instr in gadget_instrs)
        opcode_entropy = -sum((count/num_instructions) * np.log2(count/num_instructions) 
                             for count in opcode_counts.values() if count > 0)
        
        return {
            'num_instructions': num_instructions,
            'unique_opcodes': unique_opcodes,
            'branch_count': branch_count,
            'memory_access_count': memory_access_count,
            'arithmetic_count': arithmetic_count,
            'branch_density': branch_density,
            'memory_density': memory_density,
            'opcode_diversity': opcode_diversity,
            'opcode_entropy': opcode_entropy,
            'has_indirect_branch': any('jmp [' in instr.raw_line or 'call [' in instr.raw_line or 
                                     'br x' in instr.raw_line or 'blr x' in instr.raw_line 
                                     for instr in gadget_instrs),
            'has_timing_instr': any(instr.opcode.lower() in {'rdtsc', 'clflush', 'mrs', 'dc'} 
                                   for instr in gadget_instrs)
        }
    
    def classify_gadget(self, gadget_instrs: List[Instruction], arch: str, 
                       source_file: str) -> Tuple[str, float, List[str]]:
        """Classify gadget type and confidence using multiple heuristics"""
        
        # Try pattern matching against known vulnerabilities
        best_score = 0.0
        best_type = "UNKNOWN"
        best_patterns = []
        
        for vuln_type in ['SPECTRE_V1', 'SPECTRE_V2', 'MELTDOWN', 'RETBLEED', 'BHI', 'INCEPTION', 'L1TF', 'MDS']:
            score, patterns = self.pattern_matcher.match_pattern(gadget_instrs, vuln_type, arch)
            if score > best_score:
                best_score = score
                best_type = vuln_type
                best_patterns = patterns
        
        # Enhance classification with reference comparison
        if self.vuln_references and best_type in self.vuln_references:
            # Compare with known vulnerability patterns
            reference_bonus = self.compare_with_references(gadget_instrs, best_type)
            best_score = min(1.0, best_score + reference_bonus)
        
        # Fallback classification based on features
        if best_score < 0.3:
            features = self.calculate_gadget_features(gadget_instrs)
            
            if features.get('has_indirect_branch', False) and features.get('branch_density', 0) > 0.2:
                best_type = "POTENTIAL_SPECTRE_V2"
                best_score = 0.4
            elif features.get('memory_density', 0) > 0.4 and features.get('has_timing_instr', False):
                best_type = "POTENTIAL_MDS"
                best_score = 0.35
            elif features.get('branch_density', 0) > 0.4:
                best_type = "POTENTIAL_BHI"
                best_score = 0.3
            elif features.get('branch_density', 0) > 0.3:
                best_type = "POTENTIAL_CONTROL_FLOW"
                best_score = 0.25
            elif 'ret' in [instr.opcode.lower() for instr in gadget_instrs]:
                best_type = "POTENTIAL_INCEPTION"
                best_score = 0.25
        
        return best_type, best_score, best_patterns
    
    def compare_with_references(self, gadget_instrs: List[Instruction], vuln_type: str) -> float:
        """Compare gadget with reference vulnerability patterns"""
        if vuln_type not in self.vuln_references:
            return 0.0
        
        gadget_opcodes = [instr.opcode.lower() for instr in gadget_instrs]
        gadget_opcode_set = set(gadget_opcodes)
        
        max_similarity = 0.0
        
        for ref_vuln in self.vuln_references[vuln_type]:
            if 'raw_instructions' not in ref_vuln:
                continue
            
            ref_opcodes = set(instr.get('opcode', '').lower() 
                            for instr in ref_vuln['raw_instructions'])
            
            # Calculate Jaccard similarity
            if ref_opcodes:
                intersection = len(gadget_opcode_set & ref_opcodes)
                union = len(gadget_opcode_set | ref_opcodes)
                similarity = intersection / union if union > 0 else 0
                max_similarity = max(max_similarity, similarity)
        
        return max_similarity * 0.2  # Bonus up to 0.2
    
    def extract_gadgets_from_file(self, file_data: Dict) -> List[Gadget]:
        """Extract all gadgets from a processed assembly file"""
        if 'raw_instructions' not in file_data:
            return []
        
        # Convert to Instruction objects
        instructions = []
        for i, raw_instr in enumerate(file_data['raw_instructions']):
            if isinstance(raw_instr, dict):
                instr = Instruction(
                    opcode=raw_instr.get('opcode', ''),
                    operands=raw_instr.get('operands', []),
                    line_num=raw_instr.get('line', i),
                    raw_line=raw_instr.get('raw', ''),
                    semantics=raw_instr.get('semantics', {})
                )
                instructions.append(instr)
        
        if len(instructions) < 5:  # Skip very short files
            return []
        
        extracted_gadgets = []
        
        # Multiple extraction strategies
        extraction_methods = [
            ('function', self.segment_by_function(instructions)),
            ('control_flow', self.extract_control_flow_gadgets(instructions)),
            ('memory_access', self.extract_memory_access_gadgets(instructions)),
            ('timing_sensitive', self.extract_timing_sensitive_gadgets(instructions))
        ]
        
        for method_name, gadget_candidates in extraction_methods:
            for gadget_instrs in gadget_candidates:
                if len(gadget_instrs) < 3:  # Skip very short gadgets
                    continue
                
                # Classify gadget
                gadget_type, confidence, patterns = self.classify_gadget(
                    gadget_instrs, 
                    file_data.get('arch', 'x86_64'),
                    file_data.get('file_path', 'unknown')
                )
                
                # Only keep gadgets with reasonable confidence
                if confidence >= 0.2:
                    features = self.calculate_gadget_features(gadget_instrs)
                    
                    gadget = Gadget(
                        instructions=gadget_instrs,
                        gadget_type=gadget_type,
                        confidence_score=confidence,
                        context_window=(gadget_instrs[0].line_num, gadget_instrs[-1].line_num),
                        source_file=file_data.get('file_path', 'unknown'),
                        architecture=file_data.get('arch', 'x86_64'),
                        vulnerability_patterns=patterns,
                        features=features
                    )
                    
                    extracted_gadgets.append(gadget)
                    self.gadget_counter += 1
        
        return extracted_gadgets

def main():
    extractor = GadgetExtractor()
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # Load processed assembly data
    features_file = Path(PROCESSED_ASM_DIR) / "assembly_features.pkl"
    if not features_file.exists():
        print(f"Error: {features_file} not found. Run parse_assembly.py first.")
        return
    
    print("Loading processed assembly data...")
    with open(features_file, 'rb') as f:
        assembly_data = pickle.load(f)
    
    print(f"Processing {len(assembly_data)} assembly files for gadget extraction...")
    
    # Extract gadgets from all files
    all_gadgets = []
    processed_files = 0
    
    for file_data in assembly_data:
        gadgets = extractor.extract_gadgets_from_file(file_data)
        all_gadgets.extend(gadgets)
        processed_files += 1
        
        if processed_files % 100 == 0:
            print(f"Processed {processed_files}/{len(assembly_data)} files, "
                  f"extracted {len(all_gadgets)} gadgets so far...")
    
    print(f"\nExtraction complete!")
    print(f"Total gadgets extracted: {len(all_gadgets)}")
    
    # Analyze gadget statistics
    gadget_types = Counter(g.gadget_type for g in all_gadgets)
    architectures = Counter(g.architecture for g in all_gadgets)
    
    print(f"\nGadget Type Distribution:")
    for gtype, count in gadget_types.most_common():
        print(f"  {gtype}: {count}")
    
    print(f"\nArchitecture Distribution:")
    for arch, count in architectures.most_common():
        print(f"  {arch}: {count}")
    
    # Calculate confidence statistics
    confidences = [g.confidence_score for g in all_gadgets]
    print(f"\nConfidence Statistics:")
    print(f"  Mean: {np.mean(confidences):.3f}")
    print(f"  Median: {np.median(confidences):.3f}")
    print(f"  High confidence (>0.7): {sum(1 for c in confidences if c > 0.7)}")
    print(f"  Medium confidence (0.4-0.7): {sum(1 for c in confidences if 0.4 <= c <= 0.7)}")
    print(f"  Low confidence (<0.4): {sum(1 for c in confidences if c < 0.4)}")
    
    # Save gadgets
    with open(Path(OUTPUT_DIR) / GADGETS_FILE, 'wb') as f:
        pickle.dump(all_gadgets, f)
    
    # Create gadget vocabulary
    gadget_vocab = {
        'gadget_types': list(gadget_types.keys()),
        'architectures': list(architectures.keys()),
        'total_gadgets': len(all_gadgets),
        'extraction_methods': ['function', 'control_flow', 'memory_access', 'timing_sensitive'],
        'confidence_thresholds': {'high': 0.7, 'medium': 0.4, 'low': 0.2},
        'feature_names': [
            'num_instructions', 'unique_opcodes', 'branch_count', 'memory_access_count',
            'arithmetic_count', 'branch_density', 'memory_density', 'opcode_diversity',
            'opcode_entropy', 'has_indirect_branch', 'has_timing_instr'
        ]
    }
    
    with open(Path(OUTPUT_DIR) / GADGET_VOCAB_FILE, 'w') as f:
        json.dump(gadget_vocab, f, indent=2)
    
    # Save vulnerability patterns used
    with open(Path(OUTPUT_DIR) / PATTERNS_FILE, 'w') as f:
        json.dump(extractor.pattern_matcher.patterns, f, indent=2)
    
    print(f"\nOutput files saved:")
    print(f"  {GADGETS_FILE}: Extracted gadgets")
    print(f"  {GADGET_VOCAB_FILE}: Gadget vocabulary and metadata")
    print(f"  {PATTERNS_FILE}: Vulnerability patterns used")
    
    # Show some example high-confidence gadgets
    high_conf_gadgets = [g for g in all_gadgets if g.confidence_score > 0.6][:5]
    if high_conf_gadgets:
        print(f"\nExample High-Confidence Gadgets:")
        for i, gadget in enumerate(high_conf_gadgets):
            print(f"\n  Gadget {i+1}:")
            print(f"    Type: {gadget.gadget_type}")
            print(f"    Confidence: {gadget.confidence_score:.3f}")
            print(f"    Architecture: {gadget.architecture}")
            print(f"    Instructions: {len(gadget.instructions)}")
            print(f"    Patterns: {gadget.vulnerability_patterns}")
            print(f"    Source: {Path(gadget.source_file).name}")

if __name__ == "__main__":
    main() 