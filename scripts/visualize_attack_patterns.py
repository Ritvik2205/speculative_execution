#!/usr/bin/env python3
"""
Visualize attack-specific patterns in PDGs.
For each vulnerability class, highlights the unique attack subgraph
(signature edges + involved nodes) in bold color against a dimmed background.
"""

import json
import random
import sys
import os
import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.lines as mlines
from collections import defaultdict

sys.path.insert(0, os.path.dirname(__file__))
from pdg_builder import PDGBuilder, EDGE_TYPES, OPCODE_CATEGORIES

CAT_NAMES = {v: k for k, v in OPCODE_CATEGORIES.items()}

# ── Attack signature definitions ──
# Each class maps to: signature_edge_types, highlight_color, description
ATTACK_SIGNATURES = {
    'BENIGN': {
        'edge_types': [],  # No attack edges — highlight the absence
        'highlight_color': '#4CAF50',
        'title': 'BENIGN — No Speculative Edges',
        'description': 'Clean control flow.\nNo speculative, memory-order,\nor cache side-channel edges.',
    },
    'SPECTRE_V1': {
        'edge_types': [EDGE_TYPES['SPEC_CONDITIONAL']],
        'highlight_color': '#FF1744',
        'title': 'SPECTRE V1 — Bounds Check Bypass',
        'description': 'Conditional branch misprediction\n→ speculative load past bounds check\n→ cache-based data leak.',
    },
    'SPECTRE_V2': {
        'edge_types': [EDGE_TYPES['SPEC_INDIRECT']],
        'highlight_color': '#D50000',
        'title': 'SPECTRE V2 — Branch Target Injection',
        'description': 'BTB poisoning redirects indirect\nbranch to attacker-chosen gadget.\nAll instructions in window reachable.',
    },
    'SPECTRE_V4': {
        'edge_types': [EDGE_TYPES['MEMORY_ORDER']],
        'highlight_color': '#FF6D00',
        'title': 'SPECTRE V4 — Speculative Store Bypass',
        'description': 'Store-to-load forwarding bypass.\nLoad speculatively reads stale value\nbefore store completes.',
    },
    'BRANCH_HISTORY_INJECTION': {
        'edge_types': [EDGE_TYPES['SPEC_INDIRECT'], EDGE_TYPES['CACHE_TEMPORAL']],
        'highlight_color': '#D50000',
        'title': 'BHI — Branch History Injection',
        'description': 'Indirect branch history training\n→ gadget execution + cache probe.\nCombines BTB + flush-reload.',
    },
    'L1TF': {
        'edge_types': [EDGE_TYPES['SPEC_RETURN'], EDGE_TYPES['MEMORY_ORDER']],
        'highlight_color': '#AA00FF',
        'title': 'L1TF — L1 Terminal Fault',
        'description': 'Return speculation accesses\nL1 cache via page table bypass.\nStore→load ordering leaks data.',
    },
    'MDS': {
        'edge_types': [EDGE_TYPES['MEMORY_ORDER'], EDGE_TYPES['SPEC_CONDITIONAL'],
                       EDGE_TYPES['SPEC_RETURN']],
        'highlight_color': '#FF6D00',
        'title': 'MDS — Microarchitectural Data Sampling',
        'description': 'Microarch buffer leak via\nstore→load + speculative access.\nReads stale data from CPU buffers.',
    },
    'RETBLEED': {
        'edge_types': [EDGE_TYPES['SPEC_RETURN'], EDGE_TYPES['SPEC_CONDITIONAL']],
        'highlight_color': '#AA00FF',
        'title': 'RETBLEED — Return Stack Buffer Poisoning',
        'description': 'Poisoned return stack predicts\nwrong target → speculative execution\nof attacker-controlled code.',
    },
    'INCEPTION': {
        'edge_types': [EDGE_TYPES['SPEC_CONDITIONAL'], EDGE_TYPES['SPEC_RETURN'],
                       EDGE_TYPES['FENCE_BOUNDARY']],
        'highlight_color': '#AA00FF',
        'title': 'INCEPTION — Phantom Speculation',
        'description': 'Phantom return stack entries +\nconditional misprediction.\nFences mark serialization points.',
    },
}

# Background (non-highlighted) colors
BG_EDGE_COLOR = '#D0D0D0'
BG_NODE_COLOR = '#F0F0F0'
BG_NODE_EDGE_COLOR = '#CCCCCC'
BG_LABEL_COLOR = '#999999'

# Highlighted node border
HL_NODE_EDGE_COLOR = '#333333'
HL_NODE_EDGE_WIDTH = 2.5


def pick_representative_samples(data_path, seed=42):
    """Pick one representative sample per class.
    Prefers samples with moderate length that have diverse instruction types.
    """
    random.seed(seed)
    by_class = defaultdict(list)

    with open(data_path) as f:
        for i, line in enumerate(f):
            rec = json.loads(line)
            label = rec.get('label', 'UNKNOWN')
            seq = rec.get('sequence', [])
            clean = [s.strip() for s in seq
                     if s.strip() and not s.strip().endswith(':') and not s.strip().startswith('.')]
            if 15 <= len(clean) <= 35:
                by_class[label].append((i, clean, rec))

    selected = {}
    for label, candidates in sorted(by_class.items()):
        if not candidates:
            continue
        scored = []
        for idx, clean, rec in candidates:
            opcodes = set()
            for instr in clean:
                parts = instr.split()
                if parts:
                    opcodes.add(parts[0].lower())
            scored.append((len(opcodes), idx, clean, rec))
        scored.sort(reverse=True)
        top = scored[:max(1, len(scored) // 5)]
        _, idx, clean, rec = random.choice(top)
        selected[label] = (idx, clean, rec)

    return selected


def build_highlighted_plot(ax, label, sequence, pdg_builder):
    """Build PDG and plot with attack pattern highlighted."""
    sig = ATTACK_SIGNATURES.get(label, ATTACK_SIGNATURES['BENIGN'])
    sig_edge_types = set(sig['edge_types'])
    hl_color = sig['highlight_color']

    pdg = pdg_builder.build(sequence)

    if len(pdg.nodes) == 0:
        ax.text(0.5, 0.5, f'{label}\nNo nodes', ha='center', va='center',
                transform=ax.transAxes, fontsize=14)
        return

    # Build networkx graph
    G = nx.DiGraph()
    for node in pdg.nodes:
        cat_name = CAT_NAMES.get(node.opcode_category, 'OTHER')
        G.add_node(node.id,
                   label=node.opcode,
                   category=cat_name,
                   full_instr=node.raw_instruction.strip())

    for edge in pdg.edges:
        if edge.src < len(pdg.nodes) and edge.dst < len(pdg.nodes):
            G.add_edge(edge.src, edge.dst,
                       edge_type=edge.edge_type,
                       weight=edge.weight)

    # Identify highlighted nodes = endpoints of signature edges
    hl_nodes = set()
    hl_edges = []
    bg_edges = []
    for u, v, d in G.edges(data=True):
        if d['edge_type'] in sig_edge_types:
            hl_edges.append((u, v))
            hl_nodes.add(u)
            hl_nodes.add(v)
        else:
            bg_edges.append((u, v))

    # For BENIGN: highlight ALL nodes/edges as "clean" (green tint)
    if label == 'BENIGN':
        hl_nodes = set(G.nodes())
        hl_edges = list(G.edges())
        bg_edges = []

    # Layout
    if len(G.nodes) <= 5:
        pos = nx.spring_layout(G, k=2.0, iterations=100, seed=42)
    else:
        try:
            pos = nx.kamada_kawai_layout(G)
        except Exception:
            pos = nx.spring_layout(G, k=1.5, iterations=100, seed=42)

    # ── Draw background (non-signature) edges ──
    if bg_edges:
        nx.draw_networkx_edges(
            G, pos, edgelist=bg_edges,
            edge_color=BG_EDGE_COLOR, alpha=0.2,
            width=0.6, style='solid',
            arrows=True, arrowsize=6,
            ax=ax,
        )

    # ── Draw background (non-signature) nodes ──
    bg_node_list = [n for n in G.nodes() if n not in hl_nodes]
    if bg_node_list:
        nx.draw_networkx_nodes(
            G, pos, nodelist=bg_node_list,
            node_color=BG_NODE_COLOR,
            node_size=250, edgecolors=BG_NODE_EDGE_COLOR, linewidths=0.8,
            ax=ax,
        )
        bg_labels = {n: G.nodes[n]['label'] for n in bg_node_list}
        nx.draw_networkx_labels(
            G, pos, bg_labels, font_size=5, font_color=BG_LABEL_COLOR, ax=ax,
        )

    # ── Draw highlighted (signature) edges ──
    if hl_edges and label != 'BENIGN':
        # Group by edge type for different styles
        edges_by_type = defaultdict(list)
        for u, v in hl_edges:
            et = G.edges[u, v]['edge_type']
            edges_by_type[et].append((u, v))

        edge_type_styles = {
            EDGE_TYPES['SPEC_CONDITIONAL']: {'style': 'solid', 'rad': 0.15},
            EDGE_TYPES['SPEC_INDIRECT']:    {'style': 'solid', 'rad': 0.15},
            EDGE_TYPES['SPEC_RETURN']:      {'style': 'solid', 'rad': 0.12},
            EDGE_TYPES['MEMORY_ORDER']:     {'style': (0, (4, 2)), 'rad': 0.1},
            EDGE_TYPES['CACHE_TEMPORAL']:   {'style': (0, (3, 1, 1, 1)), 'rad': 0.12},
            EDGE_TYPES['FENCE_BOUNDARY']:   {'style': (0, (1, 1)), 'rad': 0.08},
        }

        # Color palette for multi-type signatures
        EDGE_TYPE_HL_COLORS = {
            EDGE_TYPES['SPEC_CONDITIONAL']: '#FF1744',  # bright red
            EDGE_TYPES['SPEC_INDIRECT']:    '#D50000',  # deep red
            EDGE_TYPES['SPEC_RETURN']:      '#AA00FF',  # purple
            EDGE_TYPES['MEMORY_ORDER']:     '#FF6D00',  # orange
            EDGE_TYPES['CACHE_TEMPORAL']:   '#00BFA5',  # teal
            EDGE_TYPES['FENCE_BOUNDARY']:   '#00C853',  # green
        }

        for et, edge_list in edges_by_type.items():
            s = edge_type_styles.get(et, {'style': 'solid', 'rad': 0.1})
            color = EDGE_TYPE_HL_COLORS.get(et, hl_color)
            nx.draw_networkx_edges(
                G, pos, edgelist=edge_list,
                edge_color=color, alpha=0.95,
                width=3.5, style=s['style'],
                arrows=True, arrowsize=14,
                connectionstyle=f'arc3,rad={s["rad"]}',
                ax=ax,
            )
    elif label == 'BENIGN':
        # For benign: draw all edges in green
        nx.draw_networkx_edges(
            G, pos, edgelist=hl_edges,
            edge_color='#66BB6A', alpha=0.5,
            width=1.5, style='solid',
            arrows=True, arrowsize=8,
            ax=ax,
        )

    # ── Draw highlighted nodes ──
    hl_node_list = sorted(hl_nodes)
    if hl_node_list:
        if label == 'BENIGN':
            # Benign: all nodes in soft green
            node_colors_hl = ['#C8E6C9'] * len(hl_node_list)
            node_sizes = [400] * len(hl_node_list)
            edge_width = 1.5
        else:
            # Attack nodes: color by role
            node_colors_hl = []
            node_sizes = []
            for nid in hl_node_list:
                cat = G.nodes[nid]['category']
                # Source nodes (branches, returns) get highlight color
                # Target nodes (loads, stores, cache) get a lighter shade
                out_sig = any(G.edges[u, v]['edge_type'] in sig_edge_types
                              for u, v in G.out_edges(nid) if (u, v) in set(hl_edges))
                in_sig = any(G.edges[u, v]['edge_type'] in sig_edge_types
                             for u, v in G.in_edges(nid) if (u, v) in set(hl_edges))
                if out_sig and not in_sig:
                    # Source of attack (branch/ret/store)
                    node_colors_hl.append(hl_color)
                    node_sizes.append(700)
                elif in_sig and not out_sig:
                    # Target of attack (load/transmitter)
                    node_colors_hl.append('#FFF9C4')  # light yellow = victim
                    node_sizes.append(550)
                else:
                    # Both source and target (chain node)
                    node_colors_hl.append('#FFCC80')  # light orange = chain
                    node_sizes.append(600)
            edge_width = HL_NODE_EDGE_WIDTH

        nx.draw_networkx_nodes(
            G, pos, nodelist=hl_node_list,
            node_color=node_colors_hl,
            node_size=node_sizes,
            edgecolors=HL_NODE_EDGE_COLOR if label != 'BENIGN' else '#2E7D32',
            linewidths=edge_width,
            ax=ax,
        )
        hl_labels = {n: G.nodes[n]['label'] for n in hl_node_list}
        nx.draw_networkx_labels(
            G, pos, hl_labels, font_size=7, font_weight='bold',
            font_color='#111111', ax=ax,
        )

    # ── Count signature edges ──
    sig_count = len(hl_edges) if label != 'BENIGN' else 0
    total_edges = len(G.edges())

    # ── Title ──
    ax.set_title(sig['title'], fontsize=11, fontweight='bold', pad=12)

    # ── Description annotation ──
    ax.text(0.02, 0.02, sig['description'],
            transform=ax.transAxes, fontsize=7,
            verticalalignment='bottom', horizontalalignment='left',
            bbox=dict(boxstyle='round,pad=0.4', facecolor='white',
                      edgecolor='#CCCCCC', alpha=0.9),
            family='monospace')

    # ── Stats annotation ──
    if label != 'BENIGN':
        stats_text = f"{sig_count} attack edges / {total_edges} total"
    else:
        stats_text = f"0 attack edges / {total_edges} total"
    ax.text(0.98, 0.02, stats_text,
            transform=ax.transAxes, fontsize=7,
            verticalalignment='bottom', horizontalalignment='right',
            bbox=dict(boxstyle='round,pad=0.3', facecolor='#FAFAFA',
                      edgecolor='#CCCCCC', alpha=0.9))

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

    out_dir = os.path.join(os.path.dirname(__file__), '..', 'viz_attack_patterns')
    os.makedirs(out_dir, exist_ok=True)

    # ── Combined 3x3 grid ──
    fig, axes = plt.subplots(3, 3, figsize=(26, 24))
    fig.suptitle(
        'Attack Pattern Signatures — Highlighted Subgraphs per Vulnerability Class',
        fontsize=16, fontweight='bold', y=0.98,
    )

    classes = sorted(samples.keys())
    for i, label in enumerate(classes):
        row, col = i // 3, i % 3
        ax = axes[row][col]
        idx, sequence, rec = samples[label]
        print(f"  {label}: sample #{idx}, {len(sequence)} instructions")
        build_highlighted_plot(ax, label, sequence, pdg_builder)

    for i in range(len(classes), 9):
        row, col = i // 3, i % 3
        axes[row][col].axis('off')

    # ── Legend ──
    legend_elements = [
        mlines.Line2D([0], [0], color='#FF1744', linewidth=3.5, label='Spec Conditional'),
        mlines.Line2D([0], [0], color='#D50000', linewidth=3.5, label='Spec Indirect'),
        mlines.Line2D([0], [0], color='#AA00FF', linewidth=3.5, label='Spec Return'),
        mlines.Line2D([0], [0], color='#FF6D00', linewidth=3.5, linestyle=(0, (4, 2)),
                       label='Memory Order'),
        mlines.Line2D([0], [0], color='#00BFA5', linewidth=3.5, linestyle=(0, (3, 1, 1, 1)),
                       label='Cache Temporal'),
        mlines.Line2D([0], [0], color='#00C853', linewidth=3.5, linestyle=(0, (1, 1)),
                       label='Fence Boundary'),
        mlines.Line2D([0], [0], color=BG_EDGE_COLOR, linewidth=1.0, alpha=0.5,
                       label='Background (non-attack)'),
    ]
    # Node legend
    legend_elements.extend([
        mlines.Line2D([0], [0], marker='o', color='w', markerfacecolor='#D50000',
                       markersize=12, markeredgecolor='#333', markeredgewidth=1.5,
                       label='Attack Source (branch/ret)'),
        mlines.Line2D([0], [0], marker='o', color='w', markerfacecolor='#FFF9C4',
                       markersize=12, markeredgecolor='#333', markeredgewidth=1.5,
                       label='Attack Target (load/transmit)'),
        mlines.Line2D([0], [0], marker='o', color='w', markerfacecolor='#FFCC80',
                       markersize=12, markeredgecolor='#333', markeredgewidth=1.5,
                       label='Chain Node (both)'),
    ])

    fig.legend(handles=legend_elements, loc='lower center', ncol=5, fontsize=10,
               bbox_to_anchor=(0.5, 0.005), frameon=True,
               fancybox=True, shadow=False, edgecolor='#CCCCCC')

    plt.tight_layout(rect=[0, 0.07, 1, 0.96])
    out_path = os.path.join(out_dir, 'attack_patterns_grid.png')
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    print(f"\nSaved grid: {out_path}")
    plt.close(fig)

    # ── Individual high-res plots ──
    for label in classes:
        fig2, ax2 = plt.subplots(1, 1, figsize=(14, 12))
        idx, sequence, rec = samples[label]
        build_highlighted_plot(ax2, label, sequence, pdg_builder)

        # Add legend
        sig = ATTACK_SIGNATURES.get(label, ATTACK_SIGNATURES['BENIGN'])
        sig_edge_types = set(sig['edge_types'])

        EDGE_TYPE_NAMES = {
            EDGE_TYPES['SPEC_CONDITIONAL']: ('Spec Conditional', '#FF1744', 'solid'),
            EDGE_TYPES['SPEC_INDIRECT']:    ('Spec Indirect', '#D50000', 'solid'),
            EDGE_TYPES['SPEC_RETURN']:      ('Spec Return', '#AA00FF', 'solid'),
            EDGE_TYPES['MEMORY_ORDER']:     ('Memory Order', '#FF6D00', (0, (4, 2))),
            EDGE_TYPES['CACHE_TEMPORAL']:   ('Cache Temporal', '#00BFA5', (0, (3, 1, 1, 1))),
            EDGE_TYPES['FENCE_BOUNDARY']:   ('Fence Boundary', '#00C853', (0, (1, 1))),
        }

        ind_legend = []
        for et in sorted(sig_edge_types):
            if et in EDGE_TYPE_NAMES:
                name, color, style = EDGE_TYPE_NAMES[et]
                ind_legend.append(
                    mlines.Line2D([0], [0], color=color, linewidth=3.5,
                                   linestyle=style, label=name)
                )
        ind_legend.append(
            mlines.Line2D([0], [0], color=BG_EDGE_COLOR, linewidth=1.0, alpha=0.5,
                           label='Non-attack edges')
        )
        if ind_legend:
            ax2.legend(handles=ind_legend, loc='upper right', fontsize=10,
                       frameon=True, fancybox=True, edgecolor='#CCCCCC')

        ind_path = os.path.join(out_dir, f'attack_{label.lower()}.png')
        plt.savefig(ind_path, dpi=150, bbox_inches='tight')
        plt.close(fig2)

    print(f"Saved {len(classes)} individual plots to {out_dir}/")

    # ── Summary table ──
    print("\n--- Attack Pattern Summary ---")
    print(f"  {'Class':30s}  {'Signature Edge Types':40s}  {'# Sig Edges':>10s}")
    print("  " + "-" * 84)
    for label in classes:
        sig = ATTACK_SIGNATURES.get(label, ATTACK_SIGNATURES['BENIGN'])
        idx, sequence, rec = samples[label]
        pdg = pdg_builder.build(sequence)

        sig_types = set(sig['edge_types'])
        sig_count = sum(1 for e in pdg.edges if e.edge_type in sig_types)

        et_names_map = {v: k for k, v in EDGE_TYPES.items()}
        type_names = ', '.join(et_names_map.get(et, '?') for et in sorted(sig_types))
        if not type_names:
            type_names = '(none — clean code)'

        print(f"  {label:30s}  {type_names:40s}  {sig_count:10d}")


if __name__ == '__main__':
    main()
