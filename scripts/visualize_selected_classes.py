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
    # We'll use a counter for registers
    reg_count = 0
    
    norm_seq = []
    
    # Regexes
    # Registers: x86 (%rax, rax, %r10, r10d) and ARM (x0, w0, sp, fp, lr)
    # Note: We want to match full tokens. 
    # Special handling for % prefix in x86.
    # We use a callback to canonicalize.
    
    # Combined register pattern attempt
    # Matches: %rax, rax, %r8d, r8, x0, w1, sp, fp
    reg_pat = re.compile(r"(?<!\w)(%?[re]?[abcd]x|%?[re]?[sd]i|%?[re]?[sb]p|%?r\d+[dwb]?|[wx]\d+|sp|fp|lr)(?!\w)", re.IGNORECASE)
    
    # Hex/Dec Immediates: $0x10, #0x10, 0x10, $10, #10, 10, -10
    # We want to avoid matching numbers inside labels (L1) or offsets if possible, but offsets are immediates.
    # We'll match standalone numbers or those with $/# prefix.
    imm_pat = re.compile(r"(?<!\w)(?:\$|#)?-?(?:0x[\da-fA-F]+|\d+)(?!\w)")
    
    # Labels: LBB... .L... 
    label_pat = re.compile(r"(?<!\w)(?:\.|L)[a-zA-Z0-9_]+(?!\w)")
    
    label_map = {}
    label_count = 0

    def reg_repl(match):
        nonlocal reg_count
        raw = match.group(0)
        # Normalize key: strip % and lower
        key = raw.lower().lstrip('%')
        
        if key == 'rip': return 'RIP' # Keep RIP special
        
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
        # Skip label definitions for graph nodes usually, or keep them?
        # If it ends with :, it's a label def.
        if opcode.endswith(':'):
            # Normalize label def
            lbl = opcode[:-1]
            norm_lbl = label_repl(re.match(r"(.*)", lbl)) # use repl logic
            # If there's more on the line (rare in these snippets), process it
            # But usually these snippets are clean.
            # We'll just store the label.
            norm_seq.append(f"{norm_lbl}:")
            continue

        # Process rest of the line (operands)
        # We assume parts[1:] are operands
        rest = " ".join(parts[1:])
        
        # Apply replacements
        # 1. Registers
        rest = reg_pat.sub(reg_repl, rest)
        # 2. Labels (targets)
        rest = label_pat.sub(label_repl, rest)
        # 3. Immediates -> IMM
        rest = imm_pat.sub("IMM", rest)
        
        norm_seq.append(f"{opcode} {rest}")
        
    return norm_seq

def parse_sequence(sequence):
    parsed = []
    for line in sequence:
        parts = line.strip().split()
        if not parts:
            continue
        if parts[0].endswith(':'):
            if len(parts) > 1:
                opcode = parts[1]
            else:
                continue 
        else:
            opcode = parts[0]
            
        sem = infer_semantics(opcode)
        parsed.append({'opcode': opcode, 'semantics': sem, 'raw_line': line})
    return parsed

def get_semantic_type(instr):
    sem = instr.get('semantics', {})
    if sem.get('is_branch'):
        return 'BRANCH'
    if sem.get('is_load') or sem.get('is_store'):
        return 'MEMORY'
    return 'COMPUTE'

def generate_dot(sequence, title, is_normalized=False):
    # If normalized, sequence is already a list of strings
    # If not, sequence is the original raw list
    
    parsed = parse_sequence(sequence)
    
    dot = ['digraph G {']
    dot.append(f'    label="{title}";')
    dot.append('    node [shape=box, style=filled, fontname="Courier"];')
    
    for i, instr in enumerate(parsed):
        # opcode = instr['opcode']
        st = get_semantic_type(instr)
        
        color = "#e0e0e0" # Grey
        if st == 'BRANCH':
            color = "#ffcccc" # Red
        elif st == 'MEMORY':
            color = "#cce5ff" # Blue
            
        label = f"{i}: {instr['raw_line']}"
        # Escape quotes in label
        label = label.replace('"', '\\"')
        
        dot.append(f'    n{i} [label="{label}", fillcolor="{color}"];')
        
        # Edge to next
        if i < len(parsed) - 1:
            dot.append(f'    n{i} -> n{i+1};')
            
    dot.append('}')
    return "\n".join(dot)

def main():
    files = {
        'RETBLEED': 'samples_retbleed.jsonl',
        'SPECTRE_V1': 'samples_spectre_v1.jsonl',
        'MDS': 'samples_mds.jsonl'
    }
    
    viz_dir = Path("viz_comparisons")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    for label, filename in files.items():
        path = Path(filename)
        if not path.exists():
            print(f"Missing {filename}")
            continue
            
        with open(path) as f:
            line = f.readline()
            if not line:
                continue
            sample = json.loads(line)
        
        # 1. Original
        dot_content = generate_dot(sample['sequence'], f"{label} Gadget (Original)")
        dot_path = viz_dir / f"{label}_cfg.dot"
        png_path = viz_dir / f"{label}_cfg.png"
        
        with open(dot_path, "w") as f:
            f.write(dot_content)
        try:
            subprocess.run(["dot", "-Tpng", str(dot_path), "-o", str(png_path)], check=True)
            print(f"Generated {png_path}")
        except: pass

        # 2. Normalized
        norm_seq = normalize_sequence(sample['sequence'])
        dot_content_norm = generate_dot(norm_seq, f"{label} Gadget (Normalized)", is_normalized=True)
        dot_path_norm = viz_dir / f"{label}_norm_cfg.dot"
        png_path_norm = viz_dir / f"{label}_norm_cfg.png"
        
        with open(dot_path_norm, "w") as f:
            f.write(dot_content_norm)
            
        try:
            subprocess.run(["dot", "-Tpng", str(dot_path_norm), "-o", str(png_path_norm)], check=True)
            print(f"Generated {png_path_norm}")
        except subprocess.CalledProcessError as e:
            print(f"Error running dot for {label} normalized: {e}")

if __name__ == "__main__":
    main()
