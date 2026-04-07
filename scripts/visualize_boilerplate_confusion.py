#!/usr/bin/env python3
"""
Visualize how measurement boilerplate dominates confused class pairs.

For each confused pair (e.g., RETBLEED vs INCEPTION), produces:
  Figure 1: Side-by-side assembly sequences with boilerplate highlighted in red
  Figure 2: Side-by-side PDGs with boilerplate nodes colored red, attack-core green
  Figure 3: Edge type distribution comparison (stacked bar) showing identical tails

This validates the diagnosis finding that 50-70% of short sequences are
measurement infrastructure (_barrier:, _rd:, __mm_*, dsb epilogues),
creating identical subgraphs across classes and drowning the 2-5
attack-discriminating instructions.
"""

import json
import sys
import re
from pathlib import Path
from collections import Counter
from typing import List, Dict, Tuple, Optional

import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.gridspec as gridspec
import networkx as nx
from sklearn.model_selection import train_test_split
from tqdm import tqdm

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'scripts'))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES, OPCODE_CATEGORIES

DATA_PATH  = ROOT / 'data/features/combined_v25_real_benign.jsonl'
OUTPUT_DIR = ROOT / 'viz_boilerplate_analysis'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

RANDOM_SEED = 42
MAX_NODES   = 64
MAX_EDGES   = 512

CONFUSED_PAIRS = [
    ('RETBLEED', 'INCEPTION'),
    ('L1TF', 'SPECTRE_V1'),
    ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'),
    ('MDS', 'SPECTRE_V4'),
]

# ── Boilerplate detection ──────────────────────────────────────────────────

BOILERPLATE_LABELS = re.compile(
    r'^(_barrier:|_rd:|__mm_mfence:|__mm_lfence:|__mm_clflush:)', re.I
)

BOILERPLATE_OPCODES = re.compile(
    r'^(dsb|dmb|isb|mrs|rdtsc|rdtscp)\b', re.I
)

# Instructions that are part of epilogue/measurement when they follow a boilerplate label
EPILOGUE_OPCODES = re.compile(
    r'^(ret|retq|add\s+sp|sub\s+sp|ldp\s+x29)', re.I
)


def is_boilerplate(instr: str, in_boilerplate_region: bool) -> bool:
    """Determine if an instruction is measurement boilerplate."""
    stripped = instr.strip()
    if not stripped:
        return False
    if BOILERPLATE_LABELS.match(stripped):
        return True
    if in_boilerplate_region:
        # Once we enter a boilerplate label, everything after is boilerplate
        return True
    if BOILERPLATE_OPCODES.match(stripped):
        return True
    return False


def classify_instructions(sequence: List[str]) -> List[bool]:
    """Return a boolean mask: True = boilerplate, False = attack core."""
    mask = [False] * len(sequence)
    in_bp = False
    for i, instr in enumerate(sequence):
        stripped = instr.strip()
        if BOILERPLATE_LABELS.match(stripped):
            in_bp = True
        if in_bp:
            mask[i] = True
        elif BOILERPLATE_OPCODES.match(stripped):
            mask[i] = True
    return mask


# ── Edge type colours ──────────────────────────────────────────────────────

EDGE_COLOR_MAP = {
    'DATA_DEP':         '#e74c3c',
    'CONTROL_FLOW':     '#95a5a6',
    'SPEC_CONDITIONAL': '#f39c12',
    'SPEC_INDIRECT':    '#8e44ad',
    'SPEC_RETURN':      '#c0392b',
    'MEMORY_ORDER':     '#3498db',
    'CACHE_TEMPORAL':   '#2ecc71',
    'FENCE_BOUNDARY':   '#1abc9c',
}
EDGE_ID_TO_NAME = {v: k for k, v in EDGE_TYPES.items()}


# ── Data loading ───────────────────────────────────────────────────────────

def load_data(path: Path):
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            label = rec.get('label', 'UNKNOWN')
            if label in ('vuln', 'benign'):
                label = rec.get('vuln_label', label.upper() if label == 'benign' else 'UNKNOWN')
            rec['label'] = label
            records.append(rec)
    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    unique_labels = sorted(set(r['label'] for r in records))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    return records, unique_labels, label_to_id


def pick_representative_samples(records, class_a, class_b, n=3, seed=42):
    """Pick n samples per class, preferring median-length sequences."""
    rng = np.random.RandomState(seed)
    samples_a = [r for r in records if r['label'] == class_a]
    samples_b = [r for r in records if r['label'] == class_b]

    def pick_spread(samples, n):
        """Pick n samples spread across sequence lengths."""
        if len(samples) <= n:
            return samples
        sorted_s = sorted(samples, key=lambda r: len(r.get('sequence', [])))
        indices = np.linspace(0, len(sorted_s) - 1, n, dtype=int)
        return [sorted_s[i] for i in indices]

    return pick_spread(samples_a, n), pick_spread(samples_b, n)


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 1: Assembly sequences with boilerplate highlighted
# ═══════════════════════════════════════════════════════════════════════════

def plot_assembly_comparison(samples_a, samples_b, class_a, class_b, output_dir):
    """Side-by-side assembly sequences with boilerplate in red, attack core in green."""
    n_samples = min(len(samples_a), len(samples_b), 3)
    fig, axes = plt.subplots(n_samples, 2, figsize=(16, 4 * n_samples))
    if n_samples == 1:
        axes = axes.reshape(1, 2)

    for row in range(n_samples):
        for col, (samples, cls) in enumerate([(samples_a, class_a), (samples_b, class_b)]):
            ax = axes[row, col]
            seq = samples[row].get('sequence', [])
            bp_mask = classify_instructions(seq)

            n_bp = sum(bp_mask)
            n_core = len(seq) - n_bp
            pct_bp = 100 * n_bp / max(len(seq), 1)

            # Build coloured text
            lines = []
            for i, (instr, is_bp) in enumerate(zip(seq, bp_mask)):
                color = '#e74c3c' if is_bp else '#27ae60'
                tag = 'BP' if is_bp else 'CORE'
                lines.append((f'{i:3d}: {instr.replace(chr(9), "  ")}', color, tag))

            # Draw as text on the axes
            ax.set_xlim(0, 1)
            ax.set_ylim(0, max(len(seq) + 2, 1))
            ax.invert_yaxis()
            for i, (text, color, tag) in enumerate(lines):
                ax.text(0.02, i + 0.5, text, fontsize=6, fontfamily='monospace',
                        color=color, verticalalignment='center',
                        bbox=dict(boxstyle='round,pad=0.1', facecolor=color, alpha=0.08))

            ax.set_title(
                f'{cls}  (sample {row+1})\n'
                f'{len(seq)} instrs: {n_core} core (green) + {n_bp} boilerplate (red) = {pct_bp:.0f}% BP',
                fontsize=9, fontweight='bold',
                color='#e74c3c' if pct_bp > 40 else '#2c3e50'
            )
            ax.axis('off')

    fig.suptitle(
        f'Assembly Sequence Comparison: {class_a} vs {class_b}\n'
        f'Green = attack-discriminating core  |  Red = measurement boilerplate',
        fontsize=13, fontweight='bold', y=1.02
    )
    plt.tight_layout()
    fname = f'assembly_{class_a}_vs_{class_b}.png'
    fig.savefig(output_dir / fname, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved {fname}')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 2: PDGs with boilerplate nodes marked
# ═══════════════════════════════════════════════════════════════════════════

def build_pdg_with_bp_mask(sequence: List[str], pdg_builder: PDGBuilder):
    """Build PDG and classify each node as boilerplate or attack-core."""
    pdg = pdg_builder.build(sequence)
    bp_mask = classify_instructions(sequence)

    G = nx.DiGraph()
    n_nodes = min(len(pdg.nodes), MAX_NODES)

    for ni in range(n_nodes):
        node = pdg.nodes[ni]
        is_bp = bp_mask[ni] if ni < len(bp_mask) else False
        G.add_node(ni, opcode=node.opcode, is_boilerplate=is_bp,
                   cat_id=node.opcode_category)

    edge_index, edge_type_arr = pdg.get_edge_index_and_type(MAX_NODES)
    n_edges = min(edge_index.shape[1], MAX_EDGES)
    edge_type_counts = Counter()
    bp_edge_counts = Counter()

    for ei in range(n_edges):
        src, dst = int(edge_index[0, ei]), int(edge_index[1, ei])
        et = int(edge_type_arr[ei])
        if src < n_nodes and dst < n_nodes:
            src_bp = bp_mask[src] if src < len(bp_mask) else False
            dst_bp = bp_mask[dst] if dst < len(bp_mask) else False
            is_bp_edge = src_bp or dst_bp
            G.add_edge(src, dst, edge_type=et, is_boilerplate=is_bp_edge)
            et_name = EDGE_ID_TO_NAME.get(et, f'type_{et}')
            edge_type_counts[et_name] += 1
            if is_bp_edge:
                bp_edge_counts[et_name] += 1

    return G, n_nodes, n_edges, edge_type_counts, bp_edge_counts


def draw_pdg_with_bp(ax, G, title, n_nodes, n_edges):
    """Draw PDG with boilerplate nodes in red, attack-core in green."""
    if len(G.nodes) == 0:
        ax.text(0.5, 0.5, 'Empty graph', ha='center', va='center',
                transform=ax.transAxes, fontsize=9)
        ax.axis('off')
        return

    try:
        pos = nx.spring_layout(G, seed=42, k=1.8 / max(len(G.nodes) ** 0.5, 1))
    except Exception:
        pos = nx.circular_layout(G)

    # Node colours: red for boilerplate, green for attack-core
    node_colors = ['#e74c3c' if G.nodes[n].get('is_boilerplate', False) else '#27ae60'
                   for n in G.nodes]
    node_alphas = [0.5 if G.nodes[n].get('is_boilerplate', False) else 1.0
                   for n in G.nodes]

    # Edge colours by type, dashed if involving boilerplate
    edge_colors = []
    edge_styles = []
    for u, v, d in G.edges(data=True):
        et_name = EDGE_ID_TO_NAME.get(d.get('edge_type', 0), 'DATA_DEP')
        is_bp = d.get('is_boilerplate', False)
        edge_colors.append('#cccccc' if is_bp else EDGE_COLOR_MAP.get(et_name, '#888'))
        edge_styles.append('dotted' if is_bp else 'solid')

    node_size = max(60, min(200, 1200 // max(len(G.nodes), 1)))
    nx.draw_networkx_nodes(G, pos, ax=ax, node_color=node_colors,
                           node_size=node_size, alpha=0.85)

    # Draw edges in two passes: boilerplate (grey dotted) then core (coloured solid)
    bp_edges = [(u, v) for u, v, d in G.edges(data=True) if d.get('is_boilerplate', False)]
    core_edges = [(u, v) for u, v, d in G.edges(data=True) if not d.get('is_boilerplate', False)]
    core_edge_colors = [EDGE_COLOR_MAP.get(EDGE_ID_TO_NAME.get(G[u][v].get('edge_type', 0), 'DATA_DEP'), '#888')
                        for u, v in core_edges]

    if bp_edges:
        nx.draw_networkx_edges(G, pos, edgelist=bp_edges, ax=ax,
                               edge_color='#cccccc', style='dotted',
                               arrows=True, arrowsize=6, width=0.5, alpha=0.4)
    if core_edges:
        nx.draw_networkx_edges(G, pos, edgelist=core_edges, ax=ax,
                               edge_color=core_edge_colors, style='solid',
                               arrows=True, arrowsize=8, width=1.0, alpha=0.8,
                               connectionstyle='arc3,rad=0.1')

    # Node labels
    labels = {n: G.nodes[n].get('opcode', '?')[:6] for n in G.nodes}
    if len(G.nodes) <= 25:
        nx.draw_networkx_labels(G, pos, labels=labels, ax=ax, font_size=4,
                                font_color='white', font_weight='bold')

    n_bp_nodes = sum(1 for n in G.nodes if G.nodes[n].get('is_boilerplate', False))
    n_core_nodes = len(G.nodes) - n_bp_nodes
    n_bp_edges = len(bp_edges)
    n_core_edges = len(core_edges)

    ax.set_title(
        f'{title}\n'
        f'Nodes: {n_core_nodes} core + {n_bp_nodes} BP  |  '
        f'Edges: {n_core_edges} core + {n_bp_edges} BP',
        fontsize=7, fontweight='bold', pad=3
    )
    ax.axis('off')


def plot_pdg_comparison(samples_a, samples_b, class_a, class_b,
                        pdg_builder, output_dir):
    """Side-by-side PDGs with boilerplate nodes highlighted."""
    n_samples = min(len(samples_a), len(samples_b), 3)
    fig, axes = plt.subplots(n_samples, 2, figsize=(14, 5 * n_samples))
    if n_samples == 1:
        axes = axes.reshape(1, 2)

    for row in range(n_samples):
        for col, (samples, cls) in enumerate([(samples_a, class_a), (samples_b, class_b)]):
            seq = samples[row].get('sequence', [])
            G, nn, ne, et_counts, bp_et_counts = build_pdg_with_bp_mask(seq, pdg_builder)
            draw_pdg_with_bp(axes[row, col], G, f'{cls} (sample {row+1})', nn, ne)

    # Legend
    legend_elements = [
        mpatches.Patch(facecolor='#27ae60', label='Attack-core node'),
        mpatches.Patch(facecolor='#e74c3c', label='Boilerplate node'),
        mpatches.Patch(facecolor='#cccccc', label='Boilerplate edge (dotted)'),
    ]
    for name, color in EDGE_COLOR_MAP.items():
        legend_elements.append(mpatches.Patch(facecolor=color,
                               label=name.replace('_', ' ').title()))

    fig.legend(handles=legend_elements, loc='lower center', ncol=4,
               fontsize=7, bbox_to_anchor=(0.5, -0.02), framealpha=0.95)

    fig.suptitle(
        f'PDG Comparison: {class_a} vs {class_b}\n'
        f'Green = attack core  |  Red = measurement boilerplate  |  Grey dotted = boilerplate edges',
        fontsize=12, fontweight='bold', y=1.02
    )
    plt.tight_layout()
    fname = f'pdg_{class_a}_vs_{class_b}.png'
    fig.savefig(output_dir / fname, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved {fname}')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 3: Edge type distribution — boilerplate vs core
# ═══════════════════════════════════════════════════════════════════════════

def plot_edge_distribution(samples_a, samples_b, class_a, class_b,
                           pdg_builder, output_dir):
    """Stacked bar chart of edge types, split by boilerplate vs core, for both classes."""
    fig, axes = plt.subplots(1, 2, figsize=(14, 5))

    for col, (samples, cls) in enumerate([(samples_a, class_a), (samples_b, class_b)]):
        total_et = Counter()
        bp_et = Counter()

        for rec in samples:
            seq = rec.get('sequence', [])
            _, _, _, et_counts, bp_counts = build_pdg_with_bp_mask(seq, pdg_builder)
            for k, v in et_counts.items():
                total_et[k] += v
            for k, v in bp_counts.items():
                bp_et[k] += v

        et_names = list(EDGE_TYPES.keys())
        core_counts = []
        bp_counts_list = []
        for name in et_names:
            total = total_et.get(name, 0)
            bp = bp_et.get(name, 0)
            core_counts.append(total - bp)
            bp_counts_list.append(bp)

        x = np.arange(len(et_names))
        width = 0.6

        axes[col].bar(x, core_counts, width, label='Attack core', color='#27ae60', alpha=0.85)
        axes[col].bar(x, bp_counts_list, width, bottom=core_counts,
                      label='Boilerplate', color='#e74c3c', alpha=0.7)

        axes[col].set_xticks(x)
        axes[col].set_xticklabels([n.replace('_', '\n') for n in et_names],
                                   fontsize=6, rotation=45, ha='right')
        axes[col].set_ylabel('Edge count', fontsize=8)
        axes[col].set_title(f'{cls}', fontsize=10, fontweight='bold')
        axes[col].legend(fontsize=7)

        # Annotate percentage boilerplate on each bar
        for i, (c, b) in enumerate(zip(core_counts, bp_counts_list)):
            total = c + b
            if total > 0:
                pct = 100 * b / total
                axes[col].text(i, total + 0.5, f'{pct:.0f}%\nBP',
                               ha='center', fontsize=5, color='#e74c3c')

    fig.suptitle(
        f'Edge Type Distribution: {class_a} vs {class_b}\n'
        f'Red = edges involving boilerplate nodes  |  Green = attack-core edges only',
        fontsize=11, fontweight='bold'
    )
    plt.tight_layout()
    fname = f'edge_dist_{class_a}_vs_{class_b}.png'
    fig.savefig(output_dir / fname, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved {fname}')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 4: Summary — boilerplate percentage across all classes
# ═══════════════════════════════════════════════════════════════════════════

def plot_boilerplate_summary(records, output_dir):
    """Bar chart showing boilerplate % per class across all samples."""
    class_stats = {}
    for rec in records:
        lbl = rec['label']
        seq = rec.get('sequence', [])
        bp_mask = classify_instructions(seq)
        n_bp = sum(bp_mask)
        pct = 100 * n_bp / max(len(seq), 1)

        if lbl not in class_stats:
            class_stats[lbl] = {'bp_pcts': [], 'total_instrs': 0, 'bp_instrs': 0}
        class_stats[lbl]['bp_pcts'].append(pct)
        class_stats[lbl]['total_instrs'] += len(seq)
        class_stats[lbl]['bp_instrs'] += n_bp

    classes = sorted(class_stats.keys())
    mean_pcts = [np.mean(class_stats[c]['bp_pcts']) for c in classes]
    overall_pcts = [100 * class_stats[c]['bp_instrs'] / max(class_stats[c]['total_instrs'], 1)
                    for c in classes]

    fig, ax = plt.subplots(figsize=(12, 5))
    x = np.arange(len(classes))
    width = 0.35

    bars1 = ax.bar(x - width/2, mean_pcts, width, label='Mean BP% per sample',
                   color='#e74c3c', alpha=0.8)
    bars2 = ax.bar(x + width/2, overall_pcts, width, label='Overall BP% (instruction-weighted)',
                   color='#c0392b', alpha=0.6)

    ax.set_xticks(x)
    ax.set_xticklabels(classes, rotation=45, ha='right', fontsize=8)
    ax.set_ylabel('Boilerplate %', fontsize=10)
    ax.set_title('Measurement Boilerplate as % of Sequence — Per Class\n'
                 'Higher = more graph structure is shared/non-discriminative',
                 fontsize=11, fontweight='bold')
    ax.legend(fontsize=8)
    ax.axhline(y=50, color='grey', linestyle='--', alpha=0.5, label='50% threshold')

    for bar, val in zip(bars1, mean_pcts):
        ax.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.5,
                f'{val:.1f}%', ha='center', fontsize=6, fontweight='bold')

    plt.tight_layout()
    fname = 'boilerplate_summary_all_classes.png'
    fig.savefig(output_dir / fname, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved {fname}')


# ═══════════════════════════════════════════════════════════════════════════
# MAIN
# ═══════════════════════════════════════════════════════════════════════════

def main():
    print('=' * 70)
    print('Boilerplate Confusion Analysis — Visualization')
    print('=' * 70)

    print(f'\nLoading data from {DATA_PATH} ...')
    records, unique_labels, label_to_id = load_data(DATA_PATH)
    print(f'  {len(records)} records, {len(unique_labels)} classes')

    pdg_builder = PDGBuilder(speculative_window=10)

    # ── Summary plot across all classes ──
    print('\nGenerating boilerplate summary ...')
    plot_boilerplate_summary(records, OUTPUT_DIR)

    # ── Per-pair plots ──
    for class_a, class_b in CONFUSED_PAIRS:
        print(f'\n--- {class_a} vs {class_b} ---')

        # Get more samples for edge distribution (use up to 50)
        all_a = [r for r in records if r['label'] == class_a]
        all_b = [r for r in records if r['label'] == class_b]

        # Pick 3 for detailed visualization
        samples_a, samples_b = pick_representative_samples(records, class_a, class_b, n=3)

        if not samples_a or not samples_b:
            print(f'  Skipping: insufficient samples ({len(all_a)}, {len(all_b)})')
            continue

        # Figure 1: Assembly comparison
        plot_assembly_comparison(samples_a, samples_b, class_a, class_b, OUTPUT_DIR)

        # Figure 2: PDG comparison
        plot_pdg_comparison(samples_a, samples_b, class_a, class_b, pdg_builder, OUTPUT_DIR)

        # Figure 3: Edge distribution (use up to 50 samples for better statistics)
        plot_edge_distribution(all_a[:50], all_b[:50], class_a, class_b,
                               pdg_builder, OUTPUT_DIR)

    print(f'\nAll figures saved to {OUTPUT_DIR}/')
    print('Done.')


if __name__ == '__main__':
    main()
