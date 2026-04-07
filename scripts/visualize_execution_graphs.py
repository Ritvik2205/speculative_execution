#!/usr/bin/env python3
"""
Visualize execution graphs (PDGs) for each vulnerability class.
Picks one representative sample per class, builds PDGs with 8 edge types,
and plots them with color-coded edges and labeled nodes.
"""

import json
import random
import sys
import os
import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from collections import defaultdict

sys.path.insert(0, os.path.dirname(__file__))
from pdg_builder import PDGBuilder, EDGE_TYPES, OPCODE_CATEGORIES

# Reverse lookup: category index -> name
CAT_NAMES = {v: k for k, v in OPCODE_CATEGORIES.items()}

# Edge type colors (8 types)
EDGE_COLORS = {
    0: '#2196F3',  # DATA_DEP - blue
    1: '#9E9E9E',  # CONTROL_FLOW - gray
    2: '#F44336',  # SPEC_CONDITIONAL - red
    3: '#D32F2F',  # SPEC_INDIRECT - dark red
    4: '#9C27B0',  # SPEC_RETURN - purple
    5: '#FF9800',  # MEMORY_ORDER - orange
    6: '#00BCD4',  # CACHE_TEMPORAL - cyan
    7: '#4CAF50',  # FENCE_BOUNDARY - green
}
EDGE_LABELS = {
    0: 'Data Dep',
    1: 'Control Flow',
    2: 'Spec Conditional',
    3: 'Spec Indirect',
    4: 'Spec Return',
    5: 'Memory Order',
    6: 'Cache Temporal',
    7: 'Fence Boundary',
}

# Node colors by opcode category
NODE_COLORS = {
    'LOAD': '#E3F2FD',
    'STORE': '#FFF3E0',
    'BRANCH_COND': '#FCE4EC',
    'BRANCH_UNCOND': '#FCE4EC',
    'CALL': '#F3E5F5',
    'CALL_INDIRECT': '#F3E5F5',
    'RET': '#EDE7F6',
    'JUMP_INDIRECT': '#FCE4EC',
    'COMPARE': '#E8F5E9',
    'ARITHMETIC': '#E0F7FA',
    'LOGIC': '#E0F7FA',
    'SHIFT': '#E0F7FA',
    'FENCE': '#FFEB3B',
    'CACHE': '#FF9800',
    'TIMING': '#FF5722',
    'MOVE': '#F5F5F5',
    'STACK': '#EFEBE9',
    'NOP': '#FAFAFA',
    'OTHER': '#ECEFF1',
}


def pick_representative_samples(data_path, seed=42):
    """Pick one representative sample per class.

    Prefers samples with moderate length (15-30 instructions)
    that have diverse instruction types.
    """
    random.seed(seed)
    by_class = defaultdict(list)

    with open(data_path) as f:
        for i, line in enumerate(f):
            rec = json.loads(line)
            label = rec.get('label', 'UNKNOWN')
            seq = rec.get('sequence', [])
            # Filter labels and directives
            clean = [s.strip() for s in seq
                     if s.strip() and not s.strip().endswith(':') and not s.strip().startswith('.')]
            if 15 <= len(clean) <= 35:
                by_class[label].append((i, clean, rec))

    selected = {}
    for label, candidates in sorted(by_class.items()):
        if not candidates:
            continue
        # Score by instruction diversity
        scored = []
        for idx, clean, rec in candidates:
            opcodes = set()
            for instr in clean:
                parts = instr.split()
                if parts:
                    opcodes.add(parts[0].lower())
            scored.append((len(opcodes), idx, clean, rec))
        scored.sort(reverse=True)
        # Pick from top 20% diversity
        top = scored[:max(1, len(scored) // 5)]
        _, idx, clean, rec = random.choice(top)
        selected[label] = (idx, clean, rec)

    return selected


def check_connectivity(G):
    """Check if graph is connected (ignoring direction)."""
    if len(G.nodes) == 0:
        return False, 0
    undirected = G.to_undirected()
    components = list(nx.connected_components(undirected))
    return len(components) == 1, len(components)


def build_and_plot(ax, label, sequence, pdg_builder):
    """Build PDG and plot it on the given axes."""
    pdg = pdg_builder.build(sequence)

    if len(pdg.nodes) == 0:
        ax.text(0.5, 0.5, f'{label}\nNo nodes', ha='center', va='center',
                transform=ax.transAxes, fontsize=14)
        ax.set_title(label)
        return

    # Build networkx graph
    G = nx.DiGraph()
    for node in pdg.nodes:
        cat_name = CAT_NAMES.get(node.opcode_category, 'OTHER')
        # Short label: opcode only
        short_instr = node.opcode
        G.add_node(node.id,
                   label=short_instr,
                   category=cat_name,
                   full_instr=node.raw_instruction.strip())

    # Add edges with types
    for edge in pdg.edges:
        if edge.src < len(pdg.nodes) and edge.dst < len(pdg.nodes):
            G.add_edge(edge.src, edge.dst,
                       edge_type=edge.edge_type,
                       weight=edge.weight)

    # Check connectivity
    is_connected, num_components = check_connectivity(G)

    # Layout: use spring layout with some structure
    if len(G.nodes) <= 5:
        pos = nx.spring_layout(G, k=2.0, iterations=100, seed=42)
    else:
        # Use kamada-kawai for better structure visibility
        try:
            pos = nx.kamada_kawai_layout(G)
        except:
            pos = nx.spring_layout(G, k=1.5, iterations=100, seed=42)

    # Draw edges by type (control flow first, then others on top)
    # Order: control flow (background) → data dep → memory → cache → fence → spec types (foreground)
    edge_type_order = [1, 0, 5, 6, 7, 2, 3, 4]
    edge_styles = {
        0: {'alpha': 0.5, 'width': 1.5, 'style': 'solid', 'rad': 0.1},      # DATA_DEP
        1: {'alpha': 0.25, 'width': 0.8, 'style': 'solid', 'rad': 0.0},     # CONTROL_FLOW
        2: {'alpha': 0.8, 'width': 2.2, 'style': 'dashed', 'rad': 0.15},    # SPEC_CONDITIONAL
        3: {'alpha': 0.8, 'width': 2.5, 'style': 'dashed', 'rad': 0.15},    # SPEC_INDIRECT
        4: {'alpha': 0.8, 'width': 2.2, 'style': 'dashed', 'rad': 0.15},    # SPEC_RETURN
        5: {'alpha': 0.6, 'width': 1.8, 'style': 'dotted', 'rad': 0.1},     # MEMORY_ORDER
        6: {'alpha': 0.7, 'width': 2.0, 'style': (0, (3, 1, 1, 1)), 'rad': 0.12},  # CACHE_TEMPORAL
        7: {'alpha': 0.7, 'width': 2.0, 'style': (0, (1, 1)), 'rad': 0.08}, # FENCE_BOUNDARY
    }
    for et in edge_type_order:
        edges_of_type = [(u, v) for u, v, d in G.edges(data=True) if d['edge_type'] == et]
        if not edges_of_type:
            continue

        s = edge_styles[et]
        nx.draw_networkx_edges(
            G, pos, edgelist=edges_of_type,
            edge_color=EDGE_COLORS[et], alpha=s['alpha'],
            width=s['width'], style=s['style'],
            arrows=True, arrowsize=10,
            connectionstyle=f'arc3,rad={s["rad"]}',
            ax=ax,
        )

    # Draw nodes colored by opcode category
    node_colors = []
    for nid in G.nodes():
        cat = G.nodes[nid]['category']
        node_colors.append(NODE_COLORS.get(cat, '#ECEFF1'))

    nx.draw_networkx_nodes(
        G, pos, node_color=node_colors,
        node_size=400, edgecolors='#333333', linewidths=1.0, ax=ax,
    )

    # Draw labels
    labels = {nid: G.nodes[nid]['label'] for nid in G.nodes()}
    nx.draw_networkx_labels(
        G, pos, labels, font_size=6, font_weight='bold', ax=ax,
    )

    # Edge type counts
    edge_counts = defaultdict(int)
    for _, _, d in G.edges(data=True):
        edge_counts[d['edge_type']] += 1

    edge_summary = ', '.join(
        f"{EDGE_LABELS[et][:4]}:{edge_counts[et]}"
        for et in sorted(edge_counts.keys())
    )

    conn_str = "Connected" if is_connected else f"DISCONNECTED ({num_components} components)"

    ax.set_title(
        f'{label}\n{len(pdg.nodes)} nodes, {len(pdg.edges)} edges | {conn_str}\n{edge_summary}',
        fontsize=9, fontweight='bold',
    )
    ax.axis('off')


def main():
    data_path = os.path.join(
        os.path.dirname(__file__), '..', 'data', 'features', 'combined_v23_enhanced.jsonl'
    )
    if not os.path.exists(data_path):
        print(f"Data file not found: {data_path}")
        sys.exit(1)

    print("Picking representative samples per class...")
    samples = pick_representative_samples(data_path)
    print(f"Found samples for {len(samples)} classes: {sorted(samples.keys())}")

    pdg_builder = PDGBuilder(speculative_window=10)

    # Create 3x3 grid
    fig, axes = plt.subplots(3, 3, figsize=(24, 22))
    fig.suptitle(
        'Execution Graphs (PDGs) by Vulnerability Class — 8 Edge Types',
        fontsize=14, fontweight='bold', y=0.98,
    )

    classes = sorted(samples.keys())
    for i, label in enumerate(classes):
        row, col = i // 3, i % 3
        ax = axes[row][col]
        idx, sequence, rec = samples[label]
        print(f"  {label}: sample #{idx}, {len(sequence)} instructions")
        build_and_plot(ax, label, sequence, pdg_builder)

    # Hide unused axes
    for i in range(len(classes), 9):
        row, col = i // 3, i % 3
        axes[row][col].axis('off')

    # Add legend for all 8 edge types
    legend_handles = [
        mpatches.Patch(color=EDGE_COLORS[0], label='Data Dependency'),
        mpatches.Patch(color=EDGE_COLORS[1], label='Control Flow'),
        mpatches.Patch(color=EDGE_COLORS[2], label='Spec Conditional'),
        mpatches.Patch(color=EDGE_COLORS[3], label='Spec Indirect'),
        mpatches.Patch(color=EDGE_COLORS[4], label='Spec Return'),
        mpatches.Patch(color=EDGE_COLORS[5], label='Memory Order'),
        mpatches.Patch(color=EDGE_COLORS[6], label='Cache Temporal'),
        mpatches.Patch(color=EDGE_COLORS[7], label='Fence Boundary'),
    ]
    fig.legend(handles=legend_handles, loc='lower center', ncol=4, fontsize=10,
               bbox_to_anchor=(0.5, 0.01))

    plt.tight_layout(rect=[0, 0.06, 1, 0.96])

    out_dir = os.path.join(os.path.dirname(__file__), '..', 'viz_execution_graphs')
    os.makedirs(out_dir, exist_ok=True)
    out_path = os.path.join(out_dir, 'pdg_per_class.png')
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    print(f"\nSaved: {out_path}")

    # Also save individual high-res graphs
    for label in classes:
        fig2, ax2 = plt.subplots(1, 1, figsize=(12, 10))
        idx, sequence, rec = samples[label]
        build_and_plot(ax2, label, sequence, pdg_builder)

        # Add legend to individual plot
        legend_handles = [
            mpatches.Patch(color=EDGE_COLORS[0], label='Data Dep'),
            mpatches.Patch(color=EDGE_COLORS[1], label='Control Flow'),
            mpatches.Patch(color=EDGE_COLORS[2], label='Spec Cond'),
            mpatches.Patch(color=EDGE_COLORS[3], label='Spec Indirect'),
            mpatches.Patch(color=EDGE_COLORS[4], label='Spec Return'),
            mpatches.Patch(color=EDGE_COLORS[5], label='Mem Order'),
            mpatches.Patch(color=EDGE_COLORS[6], label='Cache Temp'),
            mpatches.Patch(color=EDGE_COLORS[7], label='Fence'),
        ]
        ax2.legend(handles=legend_handles, loc='upper right', fontsize=8, ncol=2)

        ind_path = os.path.join(out_dir, f'pdg_{label.lower()}.png')
        plt.savefig(ind_path, dpi=150, bbox_inches='tight')
        plt.close(fig2)

    print(f"Saved {len(classes)} individual graphs to {out_dir}/")

    # Print connectivity summary
    print("\n--- Connectivity Summary ---")
    for label in classes:
        idx, sequence, rec = samples[label]
        pdg = pdg_builder.build(sequence)
        G = nx.DiGraph()
        for node in pdg.nodes:
            G.add_node(node.id)
        for edge in pdg.edges:
            if edge.src < len(pdg.nodes) and edge.dst < len(pdg.nodes):
                G.add_edge(edge.src, edge.dst)
        is_connected, num_comp = check_connectivity(G)

        edge_counts = defaultdict(int)
        for edge in pdg.edges:
            edge_counts[edge.edge_type] += 1

        print(f"  {label:30s}: {len(pdg.nodes):3d} nodes, {len(pdg.edges):3d} edges | "
              f"{'CONNECTED' if is_connected else f'DISCONNECTED({num_comp})':15s} | "
              f"data={edge_counts[0]:2d} ctrl={edge_counts[1]:2d} "
              f"sCond={edge_counts[2]:2d} sInd={edge_counts[3]:2d} "
              f"sRet={edge_counts[4]:2d} mem={edge_counts[5]:2d} "
              f"cache={edge_counts[6]:2d} fence={edge_counts[7]:2d}")

    plt.close('all')


if __name__ == '__main__':
    main()
