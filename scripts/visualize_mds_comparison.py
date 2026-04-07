import matplotlib.pyplot as plt
import networkx as nx
import re
import json

def get_semantic_type_from_asm(asm_line: str) -> str:
    parts = asm_line.strip().split()
    if not parts:
        return "COMPUTE"
    
    mnemonic = parts[0].lower().rstrip(":")
    
    if mnemonic.startswith("b") or mnemonic.startswith("j") or mnemonic in [
        "ret", "retq", "call", "callq", "cbz", "cbnz", "tbz", "tbnz", "bl", "blr"
    ]:
        return "BRANCH"
    
    # Heuristic for loads: explicit ldr/mov with memory access
    if mnemonic.startswith("ldr") or mnemonic.startswith("ldp"):
        return "LOAD"
    if mnemonic.startswith("mov") and ("[" in asm_line or "(" in asm_line):
        return "LOAD" # Approximation for mov from memory
    
    # Heuristic for stores: explicit str/mov with memory access
    if mnemonic.startswith("str") or mnemonic.startswith("stp"):
        return "STORE"
    if mnemonic.startswith("mov") and ("[" in asm_line or "(" in asm_line) and len(parts) > 2 and "[" in parts[2]:
        return "STORE" # Approximation for mov to memory
    if mnemonic.startswith("push"):
        return "STORE" # push is a store to stack
        
    return "COMPUTE"

def normalize_instruction(instruction_text: str) -> str:
    # Replace specific register names with generic ones
    normalized_text = re.sub(r'\b(r(1[0-5]|[0-9])d?|e[abcd]x|[abcd]x|[sd]i|[sb]p)\b', 'REG_X86', instruction_text, flags=re.IGNORECASE)
    normalized_text = re.sub(r'\b([wx])([0-9]{1,2})\b', 'REG_ARM', normalized_text, flags=re.IGNORECASE)
    # Replace immediate values
    normalized_text = re.sub(r'#?0x[0-9a-fA-F]+|\b\d+\b', 'IMM', normalized_text)
    return normalized_text

def build_cfg_connected(instructions):
    G = nx.DiGraph()
    labels = {}
    colors = []
    
    # 1. First pass: Add nodes and map labels to indices
    label_to_idx = {}
    
    for i, raw_line in enumerate(instructions):
        normalized_line = normalize_instruction(raw_line)
        st = get_semantic_type_from_asm(normalized_line)
        
        # Check if this line IS a label definition
        # e.g. "LBB0_1:"
        parts = raw_line.strip().split()
        if parts and parts[0].endswith(':'):
            lbl_name = parts[0][:-1] # strip colon
            label_to_idx[lbl_name] = i
        
        label = f"{i}: {normalized_line}"
        G.add_node(i, label=label, type=st)
        labels[i] = label
        
        if st == 'BRANCH':
            colors.append('#ffcccc') # Redish
        elif st == 'LOAD' or st == 'STORE':
            colors.append('#cce5ff') # Blueish
        else:
            colors.append('#e0e0e0') # Grey

    # 2. Second pass: Add edges
    for i, raw_line in enumerate(instructions):
        current_type = G.nodes[i]['type']
        
        # Parse for branch targets
        # e.g. "b LBB0_1" or "b.ge LBB0_4"
        # Simple regex to find the last token if it looks like a label
        parts = raw_line.strip().split()
        target_found = False
        
        if current_type == 'BRANCH' and len(parts) > 1:
            # Assume the last token is the target (common in asm)
            # Or iterate parts to find one that exists in label_to_idx
            for part in parts[1:]:
                potential_lbl = part.strip().rstrip(',')
                if potential_lbl in label_to_idx:
                    target_idx = label_to_idx[potential_lbl]
                    G.add_edge(i, target_idx, style='dashed') # Jump edge
                    target_found = True
        
        # Sequential flow
        # Add edge to next instruction UNLESS it is an Unconditional Jump
        # (and we found the target, implying we know where it goes. If we didn't find target, maybe flow falls through? 
        # Actually, unconditional jump never falls through.)
        
        is_unconditional = False
        mnemonic = parts[0].lower()
        if mnemonic in ['b', 'jmp', 'ret', 'retq']:
            is_unconditional = True
            
        if i < len(instructions) - 1:
            if not is_unconditional:
                G.add_edge(i, i+1)
            elif not target_found and mnemonic != 'ret' and mnemonic != 'retq':
                # If we have an unconditional jump but didn't find the target (maybe external?),
                # arguably we shouldn't draw sequential. But to keep graph somewhat sane? 
                # No, if it's unconditional B, it definitely doesn't go to i+1.
                pass

    return G, labels, colors

def visualize_mds_comparison(mds_seq, bhi_seq, out_path):
    fig, axes = plt.subplots(1, 2, figsize=(20, 10))
    
    # 1. True MDS
    G1, L1, C1 = build_cfg_connected(mds_seq)
    pos1 = nx.spring_layout(G1, seed=42)
    nx.draw_networkx_nodes(G1, pos1, ax=axes[0], node_color=C1, node_size=1500, edgecolors='black')
    nx.draw_networkx_edges(G1, pos1, ax=axes[0], arrows=True, arrowsize=20)
    nx.draw_networkx_labels(G1, pos1, labels=L1, ax=axes[0], font_size=8)
    axes[0].set_title("True MDS Sample (Post-Filter)")
    axes[0].axis('off')
    
    # 2. BHI Sample
    G2, L2, C2 = build_cfg_connected(bhi_seq)
    pos2 = nx.spring_layout(G2, seed=42)
    nx.draw_networkx_nodes(G2, pos2, ax=axes[1], node_color=C2, node_size=1500, edgecolors='black')
    nx.draw_networkx_edges(G2, pos2, ax=axes[1], arrows=True, arrowsize=20)
    nx.draw_networkx_labels(G2, pos2, labels=L2, ax=axes[1], font_size=8)
    axes[1].set_title("BHI Sample (Post-Filter)")
    axes[1].axis('off')
    
    plt.tight_layout()
    plt.savefig(out_path)
    plt.close()
    print(f"Saved MDS comparison to {out_path}")

if __name__ == "__main__":
    # We need to grab actual samples from the file because I don't want to hardcode them blindly again.
    # I'll read the filtered dataset file.
    
    mds_sample = []
    bhi_sample = []
    
    try:
        with open("data/dataset/merged_dataset_v5_filtered.jsonl", "r") as f:
            for line in f:
                rec = json.loads(line)
                if not mds_sample and rec['label'] == 'MDS':
                    mds_sample = rec['sequence']
                if not bhi_sample and rec['label'] == 'BRANCH_HISTORY_INJECTION':
                    bhi_sample = rec['sequence']
                
                if mds_sample and bhi_sample:
                    break
    except Exception as e:
        print(f"Error reading dataset: {e}")
        # Fallback if file not found/readable in context
        mds_sample = ["sub sp, sp, #16", "str wzr, [sp, #12]", "b LBB0_1", "LBB0_1:", "ldr w8, [sp, #12]", "subs w8, w8, #1", "b.ge LBB0_4"]
        bhi_sample = ["adrp x0, page", "add x0, x0, off", "bl printf", "b LBB1_2", "LBB1_2:", "ret"]

    visualize_mds_comparison(mds_sample, bhi_sample, "viz_comparisons_no_nop/MDS_vs_BHI_comparison_connected.png")
