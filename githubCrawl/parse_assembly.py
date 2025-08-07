import os
import json
import pickle
from pathlib import Path
from collections import defaultdict, Counter
import capstone
import re

ASM_ROOT = "./assembly_outputs"
OUTPUT_DIR = "parsed_assembly"
VOCAB_FILE = "vocabulary.json"
FEATURES_FILE = "assembly_features.pkl"

# Architecture mapping for Capstone
ARCH_MAP = {
    "x86_64": (capstone.CS_ARCH_X86, capstone.CS_MODE_64),
    "arm64": (capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM),
    "riscv64": (capstone.CS_ARCH_RISCV, capstone.CS_MODE_RISCV64),
}

class AssemblyNormalizer:
    def __init__(self):
        self.register_map = {}
        self.reg_counter = 0
        self.opcode_vocab = {}
        self.operand_vocab = {}
        self.vocab_counter = 0
        
    def normalize_register(self, reg_name):
        """Map register names to canonical REG_N format"""
        if reg_name not in self.register_map:
            self.register_map[reg_name] = f"REG_{self.reg_counter}"
            self.reg_counter += 1
        return self.register_map[reg_name]
    
    def normalize_immediate(self, value):
        """Normalize immediate values to categories"""
        try:
            val = int(value, 0) if isinstance(value, str) else value
            if val == 0:
                return "IMM_ZERO"
            elif 1 <= val <= 8:
                return "IMM_SMALL"
            elif val < 0:
                return "IMM_NEG"
            elif val <= 0xFFFF:
                return "IMM_MED"
            else:
                return "IMM_LARGE"
        except:
            return "IMM_UNK"
    
    def normalize_memory(self, mem_str):
        """Normalize memory operands"""
        # Simple pattern matching for common memory formats
        if '[' in mem_str and ']' in mem_str:
            # Extract base register and offset patterns
            base_pattern = r'\[([^+\-\]]+)'
            offset_pattern = r'[+\-]\s*(\w+|\d+)'
            
            base_match = re.search(base_pattern, mem_str)
            if base_match:
                base_reg = self.normalize_register(base_match.group(1).strip())
                if re.search(offset_pattern, mem_str):
                    return f"MEM_{base_reg}_OFFSET"
                else:
                    return f"MEM_{base_reg}"
        return "MEM_COMPLEX"
    
    def get_vocab_id(self, token, vocab_dict):
        """Get or create vocabulary ID for token"""
        if token not in vocab_dict:
            vocab_dict[token] = len(vocab_dict)
        return vocab_dict[token]

def parse_assembly_file(file_path, normalizer):
    """Parse a single assembly file and extract normalized features"""
    try:
        # Extract metadata from file path
        # Expected path: assembly_outputs/arch/compiler/opt_level/.../*.s
        path_obj = Path(file_path)
        parts = path_obj.parts
        
        # Find the assembly_outputs directory and extract from there
        try:
            asm_idx = -1
            for i, part in enumerate(parts):
                if part == "assembly_outputs":
                    asm_idx = i
                    break
            
            if asm_idx >= 0:
                arch = parts[asm_idx + 1] if len(parts) > asm_idx + 1 else "unknown"
                compiler = parts[asm_idx + 2] if len(parts) > asm_idx + 2 else "unknown"
                opt_level = parts[asm_idx + 3] if len(parts) > asm_idx + 3 else "unknown"
            else:
                raise ValueError("assembly_outputs not found in path")
        except (ValueError, IndexError):
            # Fallback: try to extract from filename or path
            filename = path_obj.stem
            if ".x86_64." in filename:
                arch = "x86_64"
            elif ".arm64." in filename:
                arch = "arm64"
            elif ".riscv64." in filename:
                arch = "riscv64"
            else:
                arch = "unknown"
            
            if ".gcc." in filename:
                compiler = "gcc"
            elif ".clang." in filename:
                compiler = "clang"
            else:
                compiler = "unknown"
                
            if ".O0." in filename:
                opt_level = "O0"
            elif ".O1." in filename:
                opt_level = "O1"
            elif ".O2." in filename:
                opt_level = "O2"
            elif ".O3." in filename:
                opt_level = "O3"
            elif ".Os." in filename:
                opt_level = "Os"
            else:
                opt_level = "unknown"
        
        if arch not in ARCH_MAP:
            print(f"Unsupported architecture: {arch} (from file: {file_path})")
            return None
            
        print(f"Processing: {file_path} -> arch={arch}, compiler={compiler}, opt={opt_level}")
            
        # Initialize Capstone disassembler
        cs_arch, cs_mode = ARCH_MAP[arch]
        md = capstone.Cs(cs_arch, cs_mode)
        md.detail = True
        
        # Read assembly file
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            asm_content = f.read()
        
        # Extract machine code bytes (this is simplified - real assembly files need parsing)
        # For now, we'll work with the assembly text directly
        instructions = []
        
        # Parse assembly text line by line
        for line_num, line in enumerate(asm_content.split('\n')):
            line = line.strip()
            if not line or line.startswith('.') or line.startswith('#') or ':' in line:
                continue
                
            # Try to parse instruction
            try:
                # This is a simplified approach - real parsing would need better assembly parsing
                parts = line.split()
                if not parts:
                    continue
                    
                opcode = parts[0].lower()
                operands = []
                
                if len(parts) > 1:
                    operand_str = ' '.join(parts[1:]).replace(',', ' ')
                    for op in operand_str.split():
                        op = op.strip(',')
                        if not op:
                            continue
                            
                        # Classify operand type
                        if op.startswith('%') or op.startswith('x') or op.startswith('r'):
                            # Register
                            norm_op = normalizer.normalize_register(op)
                        elif op.startswith('$') or op.isdigit() or op.startswith('0x'):
                            # Immediate
                            norm_op = normalizer.normalize_immediate(op)
                        elif '[' in op or '(' in op:
                            # Memory
                            norm_op = normalizer.normalize_memory(op)
                        else:
                            # Other (labels, etc.)
                            norm_op = f"LABEL_{hash(op) % 1000}"
                        
                        operands.append(norm_op)
                
                # Create normalized instruction
                norm_instruction = {
                    'opcode': opcode,
                    'operands': operands,
                    'line': line_num,
                    'raw': line
                }
                instructions.append(norm_instruction)
                
            except Exception as e:
                continue
        
        if not instructions:
            return None
            
        # Convert to numerical representation
        feature_sequence = []
        for instr in instructions:
            opcode_id = normalizer.get_vocab_id(instr['opcode'], normalizer.opcode_vocab)
            operand_ids = [normalizer.get_vocab_id(op, normalizer.operand_vocab) for op in instr['operands']]
            
            # Create feature vector: [opcode_id, num_operands, operand_ids...]
            feature_vec = [opcode_id, len(operand_ids)] + operand_ids
            feature_sequence.append(feature_vec)
        
        return {
            'file_path': str(file_path),
            'arch': arch,
            'compiler': compiler,
            'opt_level': opt_level,
            'num_instructions': len(instructions),
            'feature_sequence': feature_sequence,
            'raw_instructions': instructions[:10]  # Keep first 10 for debugging
        }
        
    except Exception as e:
        print(f"Error parsing {file_path}: {e}")
        return None

def main():
    normalizer = AssemblyNormalizer()
    all_features = []
    
    # Create output directory
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # Process all assembly files
    asm_files = []
    for root, dirs, files in os.walk(ASM_ROOT):
        for file in files:
            if file.endswith('.s'):
                asm_files.append(os.path.join(root, file))
    
    print(f"Found {len(asm_files)} assembly files to process...")
    
    processed = 0
    for asm_file in asm_files:
        features = parse_assembly_file(asm_file, normalizer)
        if features:
            all_features.append(features)
            processed += 1
            if processed % 100 == 0:
                print(f"Processed {processed}/{len(asm_files)} files...")
    
    print(f"Successfully processed {len(all_features)} assembly files")
    
    # Save vocabulary
    vocabulary = {
        'opcodes': normalizer.opcode_vocab,
        'operands': normalizer.operand_vocab,
        'registers': normalizer.register_map,
        'vocab_size': len(normalizer.opcode_vocab) + len(normalizer.operand_vocab)
    }
    
    with open(os.path.join(OUTPUT_DIR, VOCAB_FILE), 'w') as f:
        json.dump(vocabulary, f, indent=2)
    
    # Save features
    with open(os.path.join(OUTPUT_DIR, FEATURES_FILE), 'wb') as f:
        pickle.dump(all_features, f)
    
    print(f"Vocabulary saved to {VOCAB_FILE}")
    print(f"Features saved to {FEATURES_FILE}")
    print(f"Opcode vocabulary size: {len(normalizer.opcode_vocab)}")
    print(f"Operand vocabulary size: {len(normalizer.operand_vocab)}")
    print(f"Register mappings: {len(normalizer.register_map)}")

if __name__ == "__main__":
    main() 