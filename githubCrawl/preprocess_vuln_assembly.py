#!/usr/bin/env python3
"""
Phase 1: Advanced Assembly Preprocessing for Vulnerability Detection
Processes assembly files in c_vulns/asm_code with comprehensive feature extraction.
"""

import os
import json
import pickle
import numpy as np
from pathlib import Path
from collections import defaultdict, OrderedDict
import capstone
import re

# Configuration
VULN_ASM_DIR = "../c_vulns/asm_code"
OUTPUT_DIR = "vuln_assembly_processed"
VOCAB_FILE = "vuln_vocabulary.json"
FEATURES_FILE = "vuln_features.pkl"
EMBEDDINGS_FILE = "vuln_embeddings.npy"

# Architecture mapping for Capstone
ARCH_MAP = {
    # "x86": (capstone.CS_ARCH_X86, capstone.CS_MODE_64),
    "arm": (capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM),
    "arm64": (capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM),
    # "riscv": (capstone.CS_ARCH_RISCV, capstone.CS_MODE_RISCV64),
}

# Vulnerability type mapping from filename
VULN_TYPES = {
    "spectre_1": "SPECTRE_V1",
    "spectre_2": "SPECTRE_V2", 
    "spectre_v1": "SPECTRE_V1",
    "meltdown": "MELTDOWN",
    "retbleed": "RETBLEED",
    "inception": "INCEPTION",
    "bhi": "BHI",
    "l1tf": "L1TF",
    "mds": "MDS"
}

class AdvancedAssemblyProcessor:
    def __init__(self):
        self.opcode_vocab = OrderedDict()
        self.operand_vocab = OrderedDict()
        self.register_map = OrderedDict()
        self.immediate_categories = OrderedDict()
        self.memory_patterns = OrderedDict()
        
        # Feature counters
        self.reg_counter = 0
        self.vocab_counter = 0
        
        # Instruction semantic flags
        self.branch_instructions = {
            'jmp', 'je', 'jne', 'jz', 'jnz', 'js', 'jns', 'jc', 'jnc',
            'jo', 'jno', 'jl', 'jle', 'jg', 'jge', 'ja', 'jae', 'jb', 'jbe',
            'call', 'ret', 'b', 'bl', 'br', 'beq', 'bne', 'blt', 'ble', 'bgt', 'bge'
        }
        
        self.load_instructions = {
            'mov', 'movzx', 'movsx', 'ldr', 'ldp', 'lb', 'lh', 'lw', 'ld'
        }
        
        self.store_instructions = {
            'mov', 'str', 'stp', 'sb', 'sh', 'sw', 'sd'
        }
        
        self.arithmetic_instructions = {
            'add', 'sub', 'mul', 'div', 'and', 'or', 'xor', 'shl', 'shr',
            'addi', 'subi', 'andi', 'ori', 'xori'
        }

    def normalize_register(self, reg_name):
        """Advanced register normalization with role-based mapping"""
        # Remove common prefixes/suffixes
        reg_clean = reg_name.strip('%').strip('$').lower()
        
        # Map to canonical register based on architecture patterns
        if reg_clean not in self.register_map:
            # Assign role-based names for common patterns
            if reg_clean in ['rax', 'eax', 'ax', 'al', 'x0', 'r0']:
                canonical = 'REG_RET'  # Return/accumulator register
            elif reg_clean in ['rsp', 'esp', 'sp', 'x31', 'r13']:
                canonical = 'REG_SP'   # Stack pointer
            elif reg_clean in ['rbp', 'ebp', 'bp', 'x29', 'r11']:
                canonical = 'REG_FP'   # Frame pointer
            elif reg_clean in ['rdi', 'edi', 'x1', 'r1']:
                canonical = 'REG_ARG1' # First argument
            elif reg_clean in ['rsi', 'esi', 'x2', 'r2']:
                canonical = 'REG_ARG2' # Second argument
            else:
                canonical = f'REG_{self.reg_counter}'
                self.reg_counter += 1
            
            self.register_map[reg_clean] = canonical
        
        return self.register_map[reg_clean]

    def categorize_immediate(self, value_str):
        """Categorize immediate values into semantic groups"""
        try:
            # Handle different immediate formats
            if value_str.startswith('$'):
                value_str = value_str[1:]
            elif value_str.startswith('#'):
                value_str = value_str[1:]
            
            # Convert to integer
            if value_str.startswith('0x'):
                value = int(value_str, 16)
            elif value_str.startswith('0b'):
                value = int(value_str, 2)
            else:
                value = int(value_str)
            
            # Categorize by value ranges and common patterns
            if value == 0:
                return "IMM_ZERO"
            elif value == 1:
                return "IMM_ONE"
            elif 2 <= value <= 8:
                return "IMM_SMALL_POWER2"
            elif value in [16, 32, 64, 128, 256, 512, 1024]:
                return "IMM_POWER2"
            elif -128 <= value <= 127:
                return "IMM_BYTE"
            elif -32768 <= value <= 32767:
                return "IMM_WORD"
            elif value < 0:
                return "IMM_NEGATIVE"
            elif value <= 0xFFFFFFFF:
                return "IMM_DWORD"
            else:
                return "IMM_LARGE"
                
        except ValueError:
            # Handle non-numeric immediates (labels, symbols)
            if any(keyword in value_str.lower() for keyword in ['offset', 'addr', 'ptr']):
                return "IMM_ADDRESS"
            else:
                return "IMM_SYMBOL"

    def normalize_memory_operand(self, mem_str):
        """Advanced memory operand normalization"""
        # Common patterns: [base+offset], [base+index*scale+offset], (base)offset
        patterns = [
            (r'\[([^+\-\]]+)\+([^+\-\]]+)\]', 'MEM_BASE_OFFSET'),
            (r'\[([^+\-\]]+)\-([^+\-\]]+)\]', 'MEM_BASE_NEG_OFFSET'),
            (r'\[([^+\-\]]+)\]', 'MEM_BASE_ONLY'),
            (r'\(([^)]+)\)', 'MEM_INDIRECT'),
            (r'([^(]+)\(([^)]+)\)', 'MEM_OFFSET_BASE')
        ]
        
        for pattern, mem_type in patterns:
            match = re.search(pattern, mem_str)
            if match:
                if len(match.groups()) >= 2:
                    base = self.normalize_register(match.group(1))
                    return f"{mem_type}_{base}"
                else:
                    base = self.normalize_register(match.group(1))
                    return f"{mem_type}_{base}"
        
        return "MEM_COMPLEX"

    def get_instruction_semantics(self, opcode, operands):
        """Extract semantic flags for instruction"""
        opcode_lower = opcode.lower()
        flags = {
            'is_branch': opcode_lower in self.branch_instructions,
            'is_load': False,
            'is_store': False,
            'is_arithmetic': opcode_lower in self.arithmetic_instructions,
            'is_nop': opcode_lower in ['nop', 'hint'],
            'accesses_memory': False
        }
        
        # Determine load/store based on operands
        if opcode_lower in self.load_instructions and operands:
            # Check if source operand is memory
            for op in operands[1:]:  # Skip destination
                if '[' in op or '(' in op:
                    flags['is_load'] = True
                    flags['accesses_memory'] = True
                    break
        
        if opcode_lower in self.store_instructions and operands:
            # Check if destination operand is memory
            if '[' in operands[0] or '(' in operands[0]:
                flags['is_store'] = True
                flags['accesses_memory'] = True
        
        return flags

    def get_vocab_id(self, token, vocab_dict):
        """Get or create vocabulary ID for token"""
        if token not in vocab_dict:
            vocab_dict[token] = len(vocab_dict)
        return vocab_dict[token]

    def parse_assembly_file(self, file_path):
        """Parse assembly file with advanced feature extraction"""
        try:
            # Extract metadata from filename
            filename = Path(file_path).stem
            
            # Determine architecture
            arch = "x86_64"  # default to x86_64 for semantics
            if "arm" in filename:
                arch = "arm64"
            elif "riscv" in filename:
                arch = "riscv"
            
            # Determine vulnerability type
            vuln_type = "UNKNOWN"
            for vuln_key, vuln_name in VULN_TYPES.items():
                if vuln_key in filename:
                    vuln_type = vuln_name
                    break
            
            print(f"Processing {filename}: arch={arch}, vuln={vuln_type}")
            
            # Read assembly file
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                asm_content = f.read()
            
            instructions = []
            
            # Parse assembly text line by line
            for line_num, line in enumerate(asm_content.split('\n')):
                line = line.strip()
                
                # Skip empty lines, comments, labels, and directives
                if (not line or line.startswith('#') or line.startswith(';') or 
                    line.startswith('.') or line.endswith(':')):
                    continue
                
                # Parse instruction
                try:
                    parts = line.split(None, 1)  # Split into opcode and operands
                    if not parts:
                        continue
                    
                    opcode = parts[0].lower()
                    operands = []
                    
                    if len(parts) > 1:
                        # Parse operands
                        operand_str = parts[1]
                        # Split by comma but handle complex expressions
                        raw_operands = [op.strip() for op in operand_str.split(',')]
                        
                        for op in raw_operands:
                            if not op:
                                continue
                            
                            # Classify and normalize operand
                            if (op.startswith('%') or op.startswith('x') or 
                                op.startswith('r') or op in ['sp', 'fp', 'lr']):
                                # Register operand
                                norm_op = self.normalize_register(op)
                            elif (op.startswith('$') or op.startswith('#') or 
                                  op.isdigit() or op.startswith('0x')):
                                # Immediate operand
                                norm_op = self.categorize_immediate(op)
                            elif '[' in op or '(' in op:
                                # Memory operand
                                norm_op = self.normalize_memory_operand(op)
                            else:
                                # Label or symbol
                                norm_op = "LABEL_REF"
                            
                            operands.append(norm_op)
                    
                    # Get instruction semantics
                    semantics = self.get_instruction_semantics(opcode, operands)
                    
                    # Create instruction object
                    instruction = {
                        'opcode': opcode,
                        'operands': operands,
                        'line_num': line_num,
                        'raw_line': line,
                        'semantics': semantics
                    }
                    
                    instructions.append(instruction)
                    
                except Exception as e:
                    continue
            
            if not instructions:
                return None
            
            # Convert to numerical representation
            feature_sequence = []
            semantic_features = []
            
            for instr in instructions:
                # Get vocabulary IDs
                opcode_id = self.get_vocab_id(instr['opcode'], self.opcode_vocab)
                operand_ids = [self.get_vocab_id(op, self.operand_vocab) for op in instr['operands']]
                
                # Create feature vector: [opcode_id, num_operands, operand_ids...]
                # Pad operands to fixed length (max 4 operands)
                padded_operands = operand_ids[:4] + [0] * (4 - len(operand_ids))
                feature_vec = [opcode_id, len(operand_ids)] + padded_operands
                feature_sequence.append(feature_vec)
                
                # Extract semantic features
                sem_vec = [
                    int(instr['semantics']['is_branch']),
                    int(instr['semantics']['is_load']),
                    int(instr['semantics']['is_store']),
                    int(instr['semantics']['is_arithmetic']),
                    int(instr['semantics']['accesses_memory'])
                ]
                semantic_features.append(sem_vec)
            
            return {
                'file_path': str(file_path),
                'filename': filename,
                'architecture': arch,
                'vulnerability_type': vuln_type,
                'num_instructions': len(instructions),
                'feature_sequence': feature_sequence,
                'semantic_features': semantic_features,
                'raw_instructions': instructions,  # Keep full instruction list for downstream matching
                'control_flow_density': sum(instr['semantics']['is_branch'] for instr in instructions) / len(instructions),
                'memory_access_density': sum(instr['semantics']['accesses_memory'] for instr in instructions) / len(instructions)
            }
            
        except Exception as e:
            print(f"Error parsing {file_path}: {e}")
            return None

def main():
    processor = AdvancedAssemblyProcessor()
    all_features = []
    
    # Create output directory
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # Find all assembly files
    asm_files = []
    vuln_asm_path = Path(VULN_ASM_DIR)
    if vuln_asm_path.exists():
        for file in vuln_asm_path.glob("*.s"):
            asm_files.append(file)
    else:
        print(f"Directory {VULN_ASM_DIR} not found!")
        return
    
    print(f"Found {len(asm_files)} vulnerability assembly files to process...")
    
    # Process each file
    for asm_file in asm_files:
        features = processor.parse_assembly_file(asm_file)
        if features:
            all_features.append(features)
    
    print(f"Successfully processed {len(all_features)} assembly files")
    
    # Create comprehensive vocabulary
    vocabulary = {
        'opcodes': dict(processor.opcode_vocab),
        'operands': dict(processor.operand_vocab),
        'registers': dict(processor.register_map),
        'architectures': list(ARCH_MAP.keys()),
        'vulnerability_types': list(VULN_TYPES.values()),
        'semantic_features': ['is_branch', 'is_load', 'is_store', 'is_arithmetic', 'accesses_memory'],
        'vocab_sizes': {
            'opcodes': len(processor.opcode_vocab),
            'operands': len(processor.operand_vocab),
            'registers': len(processor.register_map),
            'total': len(processor.opcode_vocab) + len(processor.operand_vocab)
        }
    }
    
    # Save vocabulary
    with open(os.path.join(OUTPUT_DIR, VOCAB_FILE), 'w') as f:
        json.dump(vocabulary, f, indent=2)
    
    # Save features
    with open(os.path.join(OUTPUT_DIR, FEATURES_FILE), 'wb') as f:
        pickle.dump(all_features, f)
    
    # Prepare embedding matrices (for neural network initialization)
    embedding_dim = 128
    opcode_embeddings = np.random.normal(0, 0.1, (len(processor.opcode_vocab), embedding_dim))
    operand_embeddings = np.random.normal(0, 0.1, (len(processor.operand_vocab), embedding_dim))
    
    embeddings = {
        'opcode_embeddings': opcode_embeddings,
        'operand_embeddings': operand_embeddings,
        'embedding_dim': embedding_dim
    }
    
    np.save(os.path.join(OUTPUT_DIR, EMBEDDINGS_FILE), embeddings)
    
    # Print summary statistics
    print(f"\n{'='*60}")
    print("PROCESSING SUMMARY")
    print(f"{'='*60}")
    print(f"Files processed: {len(all_features)}")
    print(f"Unique opcodes: {len(processor.opcode_vocab)}")
    print(f"Unique operands: {len(processor.operand_vocab)}")
    print(f"Register mappings: {len(processor.register_map)}")
    print(f"Vulnerability types found: {set(f['vulnerability_type'] for f in all_features)}")
    print(f"Architectures found: {set(f['architecture'] for f in all_features)}")
    
    # Print per-file statistics
    print(f"\nPER-FILE STATISTICS:")
    for features in all_features:
        print(f"{features['filename']}: {features['num_instructions']} instructions, "
              f"CF: {features['control_flow_density']:.2f}, "
              f"MEM: {features['memory_access_density']:.2f}")
    
    print(f"\nOutput files saved to {OUTPUT_DIR}/")
    print(f"- {VOCAB_FILE}: Vocabulary mappings")
    print(f"- {FEATURES_FILE}: Processed features")
    print(f"- {EMBEDDINGS_FILE}: Initial embedding matrices")

if __name__ == "__main__":
    main() 