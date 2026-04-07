#!/usr/bin/env python3
import json
import networkx as nx
import matplotlib.pyplot as plt
from pathlib import Path
import random

def get_semantic_type_negative(instr):
    sem = instr.get('semantics', {})
    if sem.get('is_branch') or sem.get('is_call') or sem.get('is_return'):
        return 'BRANCH'
    if sem.get('is_load') or sem.get('is_store'):
        return 'MEMORY'
    return 'COMPUTE'

def get_semantic_type_vuln(instr):
    st = instr.get('semantic_type', 'COMPUTE')
    if st in ['LOAD', 'STORE']:
        return 'MEMORY'
    if st in ['BRANCH']:
        return 'BRANCH'
    return 'COMPUTE'

def build_cfg(instructions, source_type):
    G = nx.DiGraph()
    labels = {}
    colors = []
    
    for i, instr in enumerate(instructions):
        opcode = instr.get('opcode', 'UNK')
        
        if source_type == 'negative':
            st = get_semantic_type_negative(instr)
            raw = instr.get('raw_line', opcode)
        else:
            st = get_semantic_type_vuln(instr)
            raw = opcode # Vuln gadgets often just have opcode or normalized form
            
        label = f"{i}: {opcode}"
        G.add_node(i, label=label, type=st)
        labels[i] = label
        
        if st == 'BRANCH':
            colors.append('#ffcccc') # Redish
        elif st == 'MEMORY':
            colors.append('#cce5ff') # Blueish
        else:
            colors.append('#e0e0e0') # Grey
            
    # Edges
    # Simple sequential flow unless branch. 
    # Note: Without symbol resolution, we can't draw accurate branch targets for raw assembly 
    # easily without a complex parser. We'll draw sequential edges for non-branches to show basic blocks.
    for i in range(len(instructions) - 1):
        st = G.nodes[i]['type']
        # In the scanner we broke flow on branches. Let's do the same here to visualize basic blocks roughly.
        if st != 'BRANCH':
            G.add_edge(i, i+1)
            
    return G, labels, colors

def visualize_comparison(neg_record, vuln_record, out_path, index):
    fig, axes = plt.subplots(1, 2, figsize=(16, 8))
    
    # 1. GitHub (Benign)
    neg_instrs = neg_record['instructions']
    G_neg, labels_neg, colors_neg = build_cfg(neg_instrs, 'negative')
    
    ax1 = axes[0]
    pos_neg = nx.spring_layout(G_neg, seed=42)
    nx.draw_networkx_nodes(G_neg, pos_neg, ax=ax1, node_color=colors_neg, node_size=1500, edgecolors='black')
    nx.draw_networkx_edges(G_neg, pos_neg, ax=ax1, arrows=True, arrowsize=20)
    nx.draw_networkx_labels(G_neg, pos_neg, labels=labels_neg, ax=ax1, font_size=9)
    ax1.set_title(f"GitHub Sequence (SAFE)\n{neg_record['file_path'].split('/')[-1]}\nLine: {neg_record['start_line']}")
    ax1.axis('off')

    # 2. Vulnerable
    vuln_name = vuln_record['name']
    vuln_type = vuln_record['vulnerability_type']
    vuln_instrs = vuln_record['instructions']
    G_vuln, labels_vuln, colors_vuln = build_cfg(vuln_instrs, 'vuln')
    
    ax2 = axes[1]
    pos_vuln = nx.spring_layout(G_vuln, seed=42)
    nx.draw_networkx_nodes(G_vuln, pos_vuln, ax=ax2, node_color=colors_vuln, node_size=1500, edgecolors='black')
    nx.draw_networkx_edges(G_vuln, pos_vuln, ax=ax2, arrows=True, arrowsize=20)
    nx.draw_networkx_labels(G_vuln, pos_vuln, labels=labels_vuln, ax=ax2, font_size=9)
    ax2.set_title(f"Vulnerable Gadget (VULN)\n{vuln_type} - {vuln_name}")
    ax2.axis('off')
    
    plt.tight_layout()
    plt.savefig(out_path)
    plt.close()
    print(f"Saved comparison to {out_path}")

def main():
    viz_dir = Path("viz_comparisons")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    # Load negatives
    negatives = []
    with open("githubCrawl/dataset/negatives.jsonl", "r") as f:
        for i, line in enumerate(f):
            if i >= 100: break # Load enough to choose from
            try:
                negatives.append(json.loads(line))
            except: pass
            
    # Load vulns
    with open("githubCrawl/similarity_analysis/known_vulnerability_gadgets.json", "r") as f:
        vulns_dict = json.load(f)
    
    vuln_keys = list(vulns_dict.keys())
    
    # Select 5 diverse pairs
    # We'll try to pick different vuln types if possible
    vuln_types_seen = set()
    selected_vulns = []
    
    for key in vuln_keys:
        v = vulns_dict[key]
        vt = v['vulnerability_type']
        if vt not in vuln_types_seen:
            selected_vulns.append(v)
            vuln_types_seen.add(vt)
        if len(selected_vulns) >= 5:
            break
            
    # Fallback if not enough unique types
    while len(selected_vulns) < 5:
        selected_vulns.append(vulns_dict[random.choice(vuln_keys)])
        
    # Select 5 random negatives
    selected_negs = random.sample(negatives, 5)
    
    for i in range(5):
        visualize_comparison(
            selected_negs[i], 
            selected_vulns[i], 
            viz_dir / f"cfg_comparison_{i+1}.png", 
            i
        )

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
         with open("viz_error.txt", "w") as f:
            f.write(f"Top level error: {e}")

