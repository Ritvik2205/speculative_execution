import json
import subprocess
import re
from pathlib import Path

def infer_semantics(opcode):
    opcode = opcode.lower()
    sem = {}
    
    # Branch/Call/Ret
    if opcode.startswith('b') or opcode.startswith('j') or opcode in ['ret', 'retq', 'call', 'callq', 'cbz', 'cbnz']:
        sem['is_branch'] = True
    elif opcode in ['ldr', 'ldp', 'mov', 'movq', 'movl', 'leaq', 'pop', 'popq']: 
        sem['is_load'] = True
    elif opcode in ['str', 'stp', 'push', 'pushq']:
        sem['is_store'] = True
        
    return sem

def normalize_sequence(sequence):
    reg_map = {}
    reg_count = 0
    norm_seq = []
    
    reg_pat = re.compile(r"(?<!\w)(%?[re]?[abcd]x|%?[re]?[sd]i|%?[re]?[sb]p|%?r\d+[dwb]?|[wx]\d+|sp|fp|lr)(?!\w)", re.IGNORECASE)
    imm_pat = re.compile(r"(?<!\w)(?:\$|#)?-?(?:0x[\da-fA-F]+|\d+)(?!\w)")
    label_pat = re.compile(r"(?<!\w)(?:\.|L)[a-zA-Z0-9_]+(?!\w)")
    
    label_map = {}
    label_count = 0

    def reg_repl(match):
        nonlocal reg_count
        raw = match.group(0)
        key = raw.lower().lstrip('%')
        if key == 'rip': return 'RIP'
        if key not in reg_map:
            reg_map[key] = f"REG{reg_count}"
            reg_count += 1
        return reg_map[key]

    def label_repl(match):
        nonlocal label_count
        raw = match.group(0)
        if raw not in label_map:
            label_map[raw] = f"L{label_count}"
            label_count += 1
        return label_map[raw]
    
    for line in sequence:
        parts = line.strip().split()
        if not parts: continue
        
        opcode = parts[0]
        if opcode.endswith(':'):
            lbl = opcode[:-1]
            norm_lbl = label_repl(re.match(r"(.*)", lbl))
            norm_seq.append(f"{norm_lbl}:")
            continue

        rest = " ".join(parts[1:])
        rest = reg_pat.sub(reg_repl, rest)
        rest = label_pat.sub(label_repl, rest)
        rest = imm_pat.sub("IMM", rest)
        
        norm_seq.append(f"{opcode} {rest}")
        
    return norm_seq

def parse_sequence(sequence):
    parsed = []
    # Two-pass to find labels first for jump resolution
    label_map = {} # label -> instruction index
    
    # Pass 1: Normalize lines and map labels
    normalized_lines = []
    
    # We need to handle lines that are just labels vs instructions
    # If a line is "L1:", it points to the NEXT instruction.
    # We'll flatten this: map label L1 to index X.
    
    # Actually, simpler: keep labels as nodes or attributes?
    # Better: If line is label, map it to current index.
    
    effective_idx = 0
    
    processed_instrs = []
    
    for line in sequence:
        line = line.strip()
        if not line: continue
        
        if line.endswith(':'):
            label = line[:-1]
            label_map[label] = effective_idx
            # We don't increment effective_idx because the label points to the next instr
            # But we might want to show the label in the graph?
            # Let's attach the label to the next instruction if possible.
            continue
            
        # Instruction
        parts = line.split()
        opcode = parts[0]
        sem = infer_semantics(opcode)
        
        processed_instrs.append({
            'idx': effective_idx,
            'opcode': opcode,
            'semantics': sem,
            'raw_line': line,
            'target_label': None
        })
        effective_idx += 1

    # Pass 2: Resolve jump targets
    for instr in processed_instrs:
        # Check if operand is a label
        # Heuristic: last operand
        parts = instr['raw_line'].split()
        if len(parts) > 1:
            possible_label = parts[-1].strip(',')
            if possible_label in label_map:
                instr['target_label'] = label_map[possible_label]
            # Try removing leading . or L if not found exactly?
            # For now assume exact match from source
            
    return processed_instrs

def get_semantic_type(instr):
    sem = instr.get('semantics', {})
    if sem.get('is_branch'):
        return 'BRANCH'
    if sem.get('is_load') or sem.get('is_store'):
        return 'MEMORY'
    return 'COMPUTE'

def generate_dot(sequence, title, is_normalized=False):
    parsed = parse_sequence(sequence)
    
    dot = ['digraph G {']
    dot.append(f'    label="{title}";')
    dot.append('    node [shape=box, style=filled, fontname="Courier"];')
    
    for instr in parsed:
        i = instr['idx']
        st = get_semantic_type(instr)
        
        color = "#e0e0e0" # Grey
        if st == 'BRANCH':
            color = "#ffcccc" # Red
        elif st == 'MEMORY':
            color = "#cce5ff" # Blue
            
        label = f"{i}: {instr['raw_line']}"
        label = label.replace('"', '\\"')
        
        dot.append(f'    n{i} [label="{label}", fillcolor="{color}"];')
        
        # Sequential edge (unless unconditional jump/ret?)
        # For simplicity, always add sequential edge unless it's an unconditional branch/ret
        is_uncond = instr['opcode'] in ['b', 'jmp', 'ret', 'retq']
        if not is_uncond and i < len(parsed) - 1:
             dot.append(f'    n{i} -> n{i+1} [weight=10];')
             
        # Jump edge
        if instr['target_label'] is not None:
            target_idx = instr['target_label']
            if target_idx < len(parsed):
                dot.append(f'    n{i} -> n{target_idx} [color="red", constraint=false];')
            
    dot.append('}')
    return "\n".join(dot)

def main():
    # We want to find BHI and MDS examples from the filtered dataset
    dataset_path = Path("data/dataset/merged_dataset_v5_filtered.jsonl")
    
    samples = {'MDS': None, 'BRANCH_HISTORY_INJECTION': None}
    
    print(f"Reading {dataset_path} to find examples...")
    with open(dataset_path) as f:
        for line in f:
            rec = json.loads(line)
            lbl = rec.get("vuln_label", rec.get("label"))
            
            if lbl in samples and samples[lbl] is None:
                # Pick one that isn't too short
                if len(rec['sequence']) > 5:
                    samples[lbl] = rec
            
            if all(v is not None for v in samples.values()):
                break
                
    viz_dir = Path("viz_comparisons_enhanced")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    for label, rec in samples.items():
        if not rec:
            print(f"Could not find sample for {label}")
            continue
            
        seq = rec['sequence']
        
        # 1. Original
        dot_content = generate_dot(seq, f"{label} Gadget (Original)")
        safe_label = label.replace(" ", "_")
        dot_path = viz_dir / f"{safe_label}_connected.dot"
        png_path = viz_dir / f"{safe_label}_connected.png"
        
        with open(dot_path, "w") as f:
            f.write(dot_content)
        try:
            subprocess.run(["dot", "-Tpng", str(dot_path), "-o", str(png_path)], check=True)
            print(f"Generated {png_path}")
        except Exception as e:
            print(f"Error generating {png_path}: {e}")

        # 2. Normalized
        norm_seq = normalize_sequence(seq)
        dot_content_norm = generate_dot(norm_seq, f"{label} Gadget (Normalized)", is_normalized=True)
        dot_path_norm = viz_dir / f"{safe_label}_norm_connected.dot"
        png_path_norm = viz_dir / f"{safe_label}_norm_connected.png"
        
        with open(dot_path_norm, "w") as f:
            f.write(dot_content_norm)
            
        try:
            subprocess.run(["dot", "-Tpng", str(dot_path_norm), "-o", str(png_path_norm)], check=True)
            print(f"Generated {png_path_norm}")
        except Exception as e:
             print(f"Error generating {png_path_norm}: {e}")

if __name__ == "__main__":
    main()

