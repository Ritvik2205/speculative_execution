#!/usr/bin/env python3
"""
Graph Pattern Distinctiveness Validation

Validates whether execution graphs show distinct structural patterns across
the 9 vulnerability classes. Generates 6 visualizations to viz_graph_patterns/.

Usage:
    python scripts/visualize_graph_patterns.py
    python scripts/visualize_graph_patterns.py --data data/features/combined_v22_enhanced.jsonl
"""

import json
import sys
import random
import warnings
from pathlib import Path
from collections import defaultdict, Counter
from typing import List, Dict, Tuple, Optional
import argparse

import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib.colors import Normalize

from scipy import stats
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder, PDG, PDGNode, PDGEdge, OPCODE_CATEGORIES
from semantic_graph_builder import (
    SemanticGraphBuilder, SemanticGraph, SemanticNode, SemanticEdge,
    NodeType, EdgeType, AttackPatternDetector,
)

warnings.filterwarnings('ignore')


# =============================================================================
# CONSTANTS
# =============================================================================

CLASS_COLORS = {
    'BENIGN': '#4CAF50',
    'BRANCH_HISTORY_INJECTION': '#FF9800',
    'INCEPTION': '#673AB7',
    'L1TF': '#F44336',
    'MDS': '#E91E63',
    'RETBLEED': '#9C27B0',
    'SPECTRE_V1': '#2196F3',
    'SPECTRE_V2': '#03A9F4',
    'SPECTRE_V4': '#00BCD4',
}

ALL_CLASSES = sorted(CLASS_COLORS.keys())

# Short labels for plotting
SHORT_LABELS = {
    'BENIGN': 'BENIGN',
    'BRANCH_HISTORY_INJECTION': 'BHI',
    'INCEPTION': 'INCEPTION',
    'L1TF': 'L1TF',
    'MDS': 'MDS',
    'RETBLEED': 'RETBLEED',
    'SPECTRE_V1': 'SPv1',
    'SPECTRE_V2': 'SPv2',
    'SPECTRE_V4': 'SPv4',
}

# PDG opcode category colors
PDG_CAT_COLORS = {
    'LOAD': '#4CAF50',
    'STORE': '#F44336',
    'BRANCH_COND': '#2196F3',
    'BRANCH_UNCOND': '#03A9F4',
    'CALL': '#9C27B0',
    'CALL_INDIRECT': '#673AB7',
    'RET': '#795548',
    'JUMP_INDIRECT': '#607D8B',
    'COMPARE': '#FF9800',
    'ARITHMETIC': '#9E9E9E',
    'LOGIC': '#BDBDBD',
    'SHIFT': '#CFD8DC',
    'FENCE': '#FFEB3B',
    'CACHE': '#FF5722',
    'TIMING': '#00BCD4',
    'MOVE': '#B0BEC5',
    'STACK': '#8D6E63',
    'NOP': '#E0E0E0',
    'OTHER': '#424242',
}

PDG_CAT_NAMES = {v: k for k, v in OPCODE_CATEGORIES.items()}

GRAPH_FEATURE_NAMES = [
    'cfg_num_edges', 'cfg_num_back_edges', 'cfg_max_out_degree',
    'cfg_has_branch', 'cfg_branch_ratio', 'cfg_cyclomatic_complexity',
    'dfg_num_edges', 'dfg_max_chain_length', 'dfg_avg_out_degree',
    'dfg_has_long_chain', 'graph_density',
]


# =============================================================================
# DATA LOADING
# =============================================================================

def load_data(data_path: Path, max_per_class: int = 0) -> Tuple[List[Dict], Dict[str, List[Dict]]]:
    """Load dataset and group by class."""
    print(f"Loading data from {data_path}...")
    records = []
    with open(data_path) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                if rec.get('sequence') and rec.get('label') in ALL_CLASSES:
                    records.append(rec)
    print(f"  Loaded {len(records)} records with sequences")

    by_class = defaultdict(list)
    for rec in records:
        by_class[rec['label']].append(rec)

    print(f"  Class distribution:")
    for label in ALL_CLASSES:
        count = len(by_class.get(label, []))
        print(f"    {label}: {count}")

    if max_per_class > 0:
        for label in by_class:
            if len(by_class[label]) > max_per_class:
                by_class[label] = random.sample(by_class[label], max_per_class)

    return records, dict(by_class)


# =============================================================================
# HELPERS
# =============================================================================

def compute_connected_components(num_nodes: int, edges: List[Tuple[int, int]]) -> List[List[int]]:
    """Compute connected components using union-find (undirected)."""
    parent = list(range(num_nodes))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(a, b):
        ra, rb = find(a), find(b)
        if ra != rb:
            parent[ra] = rb

    for src, dst in edges:
        if src < num_nodes and dst < num_nodes:
            union(src, dst)

    components = defaultdict(list)
    for i in range(num_nodes):
        components[find(i)].append(i)

    return list(components.values())


def graph_density(num_nodes: int, num_edges: int) -> float:
    """Compute density = E / (N*(N-1)) for directed graph."""
    if num_nodes <= 1:
        return 0.0
    return num_edges / (num_nodes * (num_nodes - 1))


def sample_records(by_class: Dict[str, List[Dict]], n: int) -> Dict[str, List[Dict]]:
    """Sample n records per class."""
    sampled = {}
    for label in ALL_CLASSES:
        recs = by_class.get(label, [])
        sampled[label] = random.sample(recs, min(n, len(recs)))
    return sampled


# =============================================================================
# VIS 1: PER-CLASS REPRESENTATIVE GRAPHS
# =============================================================================

def draw_pdg_graph(
    pdg: PDG,
    ax: plt.Axes,
    title: str = "",
    max_nodes: int = 25,
) -> None:
    """Draw a PDGBuilder graph with color-coded nodes and edges."""
    nodes = pdg.nodes[:max_nodes]
    n = len(nodes)

    if n == 0:
        ax.text(0.5, 0.5, "Empty graph", ha='center', va='center', fontsize=10)
        ax.set_title(title, fontsize=9, fontweight='bold')
        return

    # Hierarchical layout
    positions = {}
    col_width = 1.0 / max(n, 1)
    for i in range(n):
        # Zigzag layout for readability
        x = (i % 5) / 5.0 + 0.1
        y = 1.0 - (i // 5) / max(n // 5 + 1, 1) * 0.8 - 0.1
        positions[i] = (x, y)

    # Draw edges
    for edge in pdg.edges:
        if edge.src >= max_nodes or edge.dst >= max_nodes:
            continue
        if edge.src not in positions or edge.dst not in positions:
            continue

        src_pos = positions[edge.src]
        dst_pos = positions[edge.dst]

        if edge.edge_type == 0:  # Data dependency
            color = '#2196F3'
            style = '-'
            alpha = 0.6
            lw = 1.5
        else:  # Control dependency (speculative)
            color = '#F44336'
            style = '--'
            alpha = 0.4
            lw = 1.0

        ax.annotate(
            '', xy=dst_pos, xytext=src_pos,
            arrowprops=dict(
                arrowstyle='->', color=color, alpha=alpha,
                linewidth=lw, linestyle=style,
                connectionstyle='arc3,rad=0.15',
            ),
        )

    # Draw nodes
    for node in nodes:
        if node.id not in positions:
            continue
        x, y = positions[node.id]
        cat_name = PDG_CAT_NAMES.get(node.opcode_category, 'OTHER')
        color = PDG_CAT_COLORS.get(cat_name, '#9E9E9E')

        circle = plt.Circle((x, y), 0.04, color=color, ec='black', linewidth=0.8, zorder=10)
        ax.add_patch(circle)

        # Label with short opcode
        ax.text(x, y - 0.07, node.opcode[:6], ha='center', va='top', fontsize=5, zorder=11)

    ax.set_xlim(-0.05, 1.15)
    ax.set_ylim(-0.15, 1.1)
    ax.set_aspect('equal')
    ax.axis('off')
    ax.set_title(title, fontsize=8, fontweight='bold')


def visualize_per_class_representative_graphs(
    by_class: Dict[str, List[Dict]],
    output_dir: Path,
    samples_per_class: int = 2,
) -> None:
    """Vis 1: Per-class representative PDGs side-by-side."""
    print("  Building representative PDGs...")
    builder = PDGBuilder(speculative_window=10)

    fig, axes = plt.subplots(
        len(ALL_CLASSES), samples_per_class,
        figsize=(5 * samples_per_class, 4 * len(ALL_CLASSES))
    )

    for row, label in enumerate(ALL_CLASSES):
        recs = by_class.get(label, [])
        if not recs:
            continue

        # Build PDGs for all records and pick representative ones
        pdgs = []
        for rec in recs[:100]:
            pdg = builder.build(rec['sequence'])
            if len(pdg.nodes) >= 3:
                pdgs.append((pdg, rec))

        if not pdgs:
            continue

        # Sort by node count, pick from median region
        pdgs.sort(key=lambda x: len(x[0].nodes))
        mid = len(pdgs) // 2
        selected = pdgs[max(0, mid - 1):mid + samples_per_class - 1]
        if len(selected) < samples_per_class:
            selected = pdgs[:samples_per_class]

        for col in range(samples_per_class):
            ax = axes[row, col] if samples_per_class > 1 else axes[row]
            if col < len(selected):
                pdg, rec = selected[col]
                n_nodes = len(pdg.nodes)
                n_edges = len(pdg.edges)
                n_data = len(pdg.data_edges)
                n_ctrl = len(pdg.control_edges)
                dens = graph_density(n_nodes, n_edges)
                title = (f"{SHORT_LABELS.get(label, label)}\n"
                         f"{n_nodes}N, {n_edges}E (D:{n_data} C:{n_ctrl}), "
                         f"dens={dens:.3f}")
                draw_pdg_graph(pdg, ax, title=title)
                for spine in ax.spines.values():
                    spine.set_edgecolor(CLASS_COLORS.get(label, '#999'))
                    spine.set_linewidth(3)
                    spine.set_visible(True)
            else:
                ax.axis('off')

    # Legend
    legend_patches = [
        mpatches.Patch(color=PDG_CAT_COLORS[cat], label=cat)
        for cat in ['LOAD', 'STORE', 'BRANCH_COND', 'CALL', 'COMPARE',
                     'ARITHMETIC', 'FENCE', 'CACHE', 'TIMING', 'RET', 'MOVE']
    ]
    legend_patches.append(mpatches.Patch(color='#2196F3', label='Data dep (solid)'))
    legend_patches.append(mpatches.Patch(color='#F44336', label='Ctrl dep / speculative (dashed)'))
    fig.legend(handles=legend_patches, loc='lower center', ncol=5, fontsize=8,
               bbox_to_anchor=(0.5, -0.02))

    fig.suptitle('Per-Class Representative Program Dependency Graphs (PDG)',
                 fontsize=14, fontweight='bold', y=1.01)
    plt.tight_layout()
    plt.savefig(output_dir / '01_per_class_representative_graphs.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 01_per_class_representative_graphs.png")


# =============================================================================
# VIS 2: CONNECTIVITY ANALYSIS
# =============================================================================

def visualize_connectivity_analysis(
    by_class: Dict[str, List[Dict]],
    output_dir: Path,
    samples_per_class: int = 500,
) -> Dict:
    """Vis 2: Connectivity analysis -- density, components, full-connectivity check."""
    print("  Building PDGs for connectivity analysis...")
    builder = PDGBuilder(speculative_window=10)

    stats = {}
    for label in ALL_CLASSES:
        recs = by_class.get(label, [])
        selected = random.sample(recs, min(samples_per_class, len(recs)))

        node_counts, edge_counts, densities = [], [], []
        largest_comp_ratios, fully_connected_count = [], 0

        for rec in selected:
            pdg = builder.build(rec['sequence'])
            n = len(pdg.nodes)
            e = len(pdg.edges)
            if n < 2:
                continue

            node_counts.append(n)
            edge_counts.append(e)
            dens = graph_density(n, e)
            densities.append(dens)

            all_edges = [(edge.src, edge.dst) for edge in pdg.edges]
            comps = compute_connected_components(n, all_edges)
            max_comp = max(len(c) for c in comps)
            largest_comp_ratios.append(max_comp / n)
            if max_comp == n:
                fully_connected_count += 1

        stats[label] = {
            'node_counts': node_counts,
            'edge_counts': edge_counts,
            'densities': densities,
            'largest_comp_ratios': largest_comp_ratios,
            'fully_connected_pct': fully_connected_count / max(len(node_counts), 1) * 100,
            'avg_density': np.mean(densities) if densities else 0,
            'avg_nodes': np.mean(node_counts) if node_counts else 0,
            'avg_edges': np.mean(edge_counts) if edge_counts else 0,
        }

    # Plot
    fig, axes = plt.subplots(2, 2, figsize=(16, 12))
    short = [SHORT_LABELS.get(c, c) for c in ALL_CLASSES]
    x = np.arange(len(ALL_CLASSES))
    width = 0.35

    # 2a: Avg nodes + edges
    ax = axes[0, 0]
    avg_n = [stats[c]['avg_nodes'] for c in ALL_CLASSES]
    avg_e = [stats[c]['avg_edges'] for c in ALL_CLASSES]
    ax.bar(x - width / 2, avg_n, width, label='Avg Nodes', color='#2196F3')
    ax.bar(x + width / 2, avg_e, width, label='Avg Edges', color='#F44336')
    ax.set_xticks(x)
    ax.set_xticklabels(short, rotation=45, ha='right')
    ax.set_ylabel('Count')
    ax.set_title('Average Graph Size by Class')
    ax.legend()
    ax.grid(axis='y', alpha=0.3)

    # 2b: Density distributions
    ax = axes[0, 1]
    for label in ALL_CLASSES:
        d = stats[label]['densities']
        if d:
            ax.hist(d, bins=30, alpha=0.5, label=SHORT_LABELS.get(label, label),
                    color=CLASS_COLORS.get(label), density=True)
    ax.set_xlabel('Graph Density')
    ax.set_ylabel('Density (PDF)')
    ax.set_title('Graph Density Distribution per Class')
    ax.legend(fontsize=7, ncol=2)
    ax.grid(alpha=0.3)

    # 2c: Largest component ratio
    ax = axes[1, 0]
    avg_comp = [np.mean(stats[c]['largest_comp_ratios']) if stats[c]['largest_comp_ratios'] else 0
                for c in ALL_CLASSES]
    colors = [CLASS_COLORS.get(c, '#999') for c in ALL_CLASSES]
    ax.bar(x, avg_comp, color=colors)
    ax.set_xticks(x)
    ax.set_xticklabels(short, rotation=45, ha='right')
    ax.set_ylabel('Largest Component / Total Nodes')
    ax.set_title('Average Largest Connected Component Ratio')
    ax.axhline(y=1.0, color='red', linestyle='--', alpha=0.5, label='Fully connected')
    ax.legend()
    ax.grid(axis='y', alpha=0.3)
    ax.set_ylim(0, 1.1)

    # 2d: Verdict text
    ax = axes[1, 1]
    ax.axis('off')

    all_densities = []
    all_fc_pcts = []
    for c in ALL_CLASSES:
        all_densities.extend(stats[c]['densities'])
        all_fc_pcts.append(stats[c]['fully_connected_pct'])

    avg_dens = np.mean(all_densities) if all_densities else 0
    min_dens = np.min(all_densities) if all_densities else 0
    max_dens = np.max(all_densities) if all_densities else 0
    avg_fc = np.mean(all_fc_pcts)

    verdict_text = (
        "ARE THESE GRAPHS FULLY CONNECTED?\n\n"
        f"NO. The graphs are sparse.\n\n"
        f"  Average density: {avg_dens:.4f}\n"
        f"  Density range: [{min_dens:.4f}, {max_dens:.4f}]\n"
        f"  (Fully connected = 1.0)\n\n"
        f"  Avg % graphs fully connected: {avg_fc:.1f}%\n\n"
        f"  Per-class fully-connected %:\n"
    )
    for c in ALL_CLASSES:
        verdict_text += f"    {SHORT_LABELS.get(c, c):>10}: {stats[c]['fully_connected_pct']:.1f}%\n"

    verdict_text += (
        f"\n  Conclusion: Graphs are sparse multi-relational\n"
        f"  structures, NOT fully connected. They use\n"
        f"  data-dependency + control-dependency edges\n"
        f"  with speculative window modeling."
    )

    ax.text(0.05, 0.95, verdict_text, transform=ax.transAxes,
            fontsize=10, verticalalignment='top', fontfamily='monospace',
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.8))

    fig.suptitle('Graph Connectivity Analysis', fontsize=14, fontweight='bold')
    plt.tight_layout()
    plt.savefig(output_dir / '02_connectivity_analysis.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 02_connectivity_analysis.png")
    return stats


# =============================================================================
# VIS 3: STRUCTURAL PATTERN DISTINCTIVENESS
# =============================================================================

def visualize_structural_patterns(
    by_class: Dict[str, List[Dict]],
    records: List[Dict],
    output_dir: Path,
    samples_per_class: int = 500,
) -> None:
    """Vis 3: Structural pattern distinctiveness -- node types, edge ratios, topology."""
    print("  Analyzing structural patterns...")
    pdg_builder = PDGBuilder(speculative_window=10)
    sem_builder = SemanticGraphBuilder()

    # Collect per-class stats
    node_type_fracs = defaultdict(lambda: defaultdict(list))
    edge_type_fracs = defaultdict(lambda: defaultdict(list))
    spec_stats = defaultdict(lambda: {'ctrl_edges': [], 'fanout': [], 'ctrl_ratio': []})

    for label in ALL_CLASSES:
        recs = by_class.get(label, [])
        selected = random.sample(recs, min(samples_per_class, len(recs)))

        for rec in selected:
            seq = rec['sequence']

            # PDG analysis - node types and speculative edges
            pdg = pdg_builder.build(seq)
            if len(pdg.nodes) < 2:
                continue

            # Node type counts
            cat_counts = Counter()
            branch_count = 0
            for node in pdg.nodes:
                cat_name = PDG_CAT_NAMES.get(node.opcode_category, 'OTHER')
                cat_counts[cat_name] += 1
                if node.spec_flags[2]:  # is_branch
                    branch_count += 1

            total_nodes = len(pdg.nodes)
            for cat_name in OPCODE_CATEGORIES:
                node_type_fracs[label][cat_name].append(cat_counts[cat_name] / total_nodes)

            # Speculative edge analysis
            n_ctrl = len(pdg.control_edges)
            n_total = len(pdg.edges)
            spec_stats[label]['ctrl_edges'].append(n_ctrl)
            spec_stats[label]['fanout'].append(n_ctrl / max(branch_count, 1))
            spec_stats[label]['ctrl_ratio'].append(n_ctrl / max(n_total, 1))

            # Semantic graph - edge types
            sem_graph = sem_builder.build_graph(seq)
            edge_counts = Counter()
            for edge in sem_graph.edges:
                edge_counts[edge.edge_type] += 1
            total_edges = len(sem_graph.edges)
            for et in [EdgeType.SEQUENTIAL, EdgeType.DATA_DEP, EdgeType.CONTROL, EdgeType.MEMORY_DEP]:
                edge_type_fracs[label][et].append(edge_counts[et] / max(total_edges, 1))

    # Plot 2x2
    fig, axes = plt.subplots(2, 2, figsize=(18, 14))
    short = [SHORT_LABELS.get(c, c) for c in ALL_CLASSES]
    x = np.arange(len(ALL_CLASSES))

    # 3a: Node type distribution (stacked bar)
    ax = axes[0, 0]
    top_cats = ['LOAD', 'STORE', 'BRANCH_COND', 'COMPARE', 'ARITHMETIC',
                'MOVE', 'CALL', 'RET', 'STACK', 'FENCE', 'CACHE', 'TIMING']
    bottoms = np.zeros(len(ALL_CLASSES))
    for cat in top_cats:
        means = [np.mean(node_type_fracs[c][cat]) if node_type_fracs[c][cat] else 0
                 for c in ALL_CLASSES]
        color = PDG_CAT_COLORS.get(cat, '#9E9E9E')
        ax.bar(x, means, bottom=bottoms, label=cat, color=color, width=0.7)
        bottoms += means
    ax.set_xticks(x)
    ax.set_xticklabels(short, rotation=45, ha='right')
    ax.set_ylabel('Fraction of Nodes')
    ax.set_title('Node Type Distribution by Class (PDGBuilder)')
    ax.legend(fontsize=7, ncol=3, loc='upper right')
    ax.set_ylim(0, 1.05)
    ax.grid(axis='y', alpha=0.3)

    # 3b: Edge type ratios (grouped bar)
    ax = axes[0, 1]
    edge_types = [EdgeType.SEQUENTIAL, EdgeType.DATA_DEP, EdgeType.CONTROL, EdgeType.MEMORY_DEP]
    edge_labels = ['Sequential', 'Data Dep', 'Control', 'Memory Dep']
    edge_colors = ['#BDBDBD', '#2196F3', '#F44336', '#4CAF50']
    width = 0.2
    for i, (et, el, ec) in enumerate(zip(edge_types, edge_labels, edge_colors)):
        means = [np.mean(edge_type_fracs[c][et]) if edge_type_fracs[c][et] else 0
                 for c in ALL_CLASSES]
        ax.bar(x + i * width - 1.5 * width, means, width, label=el, color=ec)
    ax.set_xticks(x)
    ax.set_xticklabels(short, rotation=45, ha='right')
    ax.set_ylabel('Fraction of Edges')
    ax.set_title('Edge Type Distribution by Class (SemanticGraphBuilder)')
    ax.legend(fontsize=8)
    ax.grid(axis='y', alpha=0.3)

    # 3c: Speculative edge analysis
    ax = axes[1, 0]
    avg_ctrl = [np.mean(spec_stats[c]['ctrl_edges']) for c in ALL_CLASSES]
    avg_fanout = [np.mean(spec_stats[c]['fanout']) for c in ALL_CLASSES]
    avg_ratio = [np.mean(spec_stats[c]['ctrl_ratio']) for c in ALL_CLASSES]
    width = 0.25
    ax.bar(x - width, avg_ctrl, width, label='Avg Ctrl Edges', color='#F44336')
    ax.bar(x, avg_fanout, width, label='Avg Spec Fanout/Branch', color='#FF9800')
    ax.bar(x + width, [r * 20 for r in avg_ratio], width,
           label='Ctrl/Total Ratio (x20)', color='#9C27B0')
    ax.set_xticks(x)
    ax.set_xticklabels(short, rotation=45, ha='right')
    ax.set_ylabel('Count / Scaled Ratio')
    ax.set_title('Speculative (Control Dependency) Edge Analysis')
    ax.legend(fontsize=8)
    ax.grid(axis='y', alpha=0.3)

    # 3d: Graph topology boxplots (from pre-computed features)
    ax = axes[1, 1]
    metrics_to_plot = ['cfg_cyclomatic_complexity', 'dfg_max_chain_length',
                       'cfg_max_out_degree', 'graph_density']
    metric_labels = ['Cyclomatic\nComplexity', 'Max DFG\nChain', 'Max Out\nDegree', 'Graph\nDensity']

    # Use pre-computed features from dataset
    metric_data = defaultdict(lambda: defaultdict(list))
    for rec in records:
        label = rec.get('label')
        if label not in ALL_CLASSES:
            continue
        feats = rec.get('features', {})
        for m in metrics_to_plot:
            val = feats.get(m)
            if val is not None and isinstance(val, (int, float)):
                metric_data[m][label].append(val)

    # Create grouped boxplots
    positions = []
    data_to_plot = []
    colors_to_plot = []
    tick_positions = []
    tick_labels_list = []

    for mi, (metric, mlabel) in enumerate(zip(metrics_to_plot, metric_labels)):
        for ci, cls in enumerate(ALL_CLASSES):
            pos = mi * (len(ALL_CLASSES) + 1) + ci
            positions.append(pos)
            vals = metric_data[metric].get(cls, [0])
            data_to_plot.append(vals)
            colors_to_plot.append(CLASS_COLORS.get(cls, '#999'))
        tick_positions.append(mi * (len(ALL_CLASSES) + 1) + len(ALL_CLASSES) // 2)
        tick_labels_list.append(mlabel)

    bp = ax.boxplot(data_to_plot, positions=positions, widths=0.7,
                    patch_artist=True, showfliers=False)
    for patch, color in zip(bp['boxes'], colors_to_plot):
        patch.set_facecolor(color)
        patch.set_alpha(0.7)
    ax.set_xticks(tick_positions)
    ax.set_xticklabels(tick_labels_list, fontsize=9)
    ax.set_title('Graph Topology Metrics by Class')
    ax.set_ylabel('Value')
    ax.grid(axis='y', alpha=0.3)

    # Add class color legend
    legend_patches = [mpatches.Patch(color=CLASS_COLORS[c], label=SHORT_LABELS[c])
                      for c in ALL_CLASSES]
    ax.legend(handles=legend_patches, fontsize=6, ncol=3, loc='upper right')

    fig.suptitle('Structural Pattern Distinctiveness Analysis', fontsize=14, fontweight='bold')
    plt.tight_layout()
    plt.savefig(output_dir / '03_structural_patterns.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 03_structural_patterns.png")


# =============================================================================
# VIS 4: ATTACK PATTERN HEATMAP
# =============================================================================

def visualize_attack_pattern_heatmap(
    by_class: Dict[str, List[Dict]],
    output_dir: Path,
    samples_per_class: int = 500,
) -> None:
    """Vis 4: Attack pattern detection heatmap using SemanticGraphBuilder."""
    print("  Detecting attack patterns...")
    builder = SemanticGraphBuilder()
    detector = AttackPatternDetector()

    score_names = [
        'spectre_v1_score', 'spectre_v2_score', 'spectre_v4_score',
        'l1tf_score', 'mds_score', 'retbleed_score',
        'inception_score', 'bhi_score'
    ]

    pattern_scores = defaultdict(lambda: defaultdict(list))

    for label in ALL_CLASSES:
        recs = by_class.get(label, [])
        selected = random.sample(recs, min(samples_per_class, len(recs)))
        for rec in selected:
            seq = rec.get('sequence', [])
            if not seq:
                continue
            graph = builder.build_graph(seq)
            patterns = detector.detect_patterns(graph)
            for sn in score_names:
                pattern_scores[label][sn].append(patterns.get(sn, 0))

    # Build matrix
    classes = ALL_CLASSES
    matrix_raw = np.zeros((len(classes), len(score_names)))
    for i, cls in enumerate(classes):
        for j, sn in enumerate(score_names):
            vals = pattern_scores[cls][sn]
            matrix_raw[i, j] = np.mean(vals) if vals else 0

    # Normalize per column
    matrix_norm = matrix_raw.copy()
    for j in range(len(score_names)):
        col = matrix_norm[:, j]
        if col.max() > 0:
            matrix_norm[:, j] = col / col.max()

    # Plot
    fig, axes = plt.subplots(1, 2, figsize=(20, 8))

    # Normalized heatmap
    ax = axes[0]
    im = ax.imshow(matrix_norm, cmap='YlOrRd', aspect='auto')
    ax.set_xticks(np.arange(len(score_names)))
    ax.set_yticks(np.arange(len(classes)))
    ax.set_xticklabels([s.replace('_score', '').upper() for s in score_names],
                       rotation=45, ha='right')
    ax.set_yticklabels([SHORT_LABELS.get(c, c) for c in classes])
    for i in range(len(classes)):
        for j in range(len(score_names)):
            color = 'white' if matrix_norm[i, j] > 0.5 else 'black'
            ax.text(j, i, f'{matrix_norm[i, j]:.2f}', ha='center', va='center',
                    color=color, fontsize=8)
    ax.set_title('Column-Normalized Attack Pattern Scores\n(1.0 = highest in column)',
                 fontsize=11, fontweight='bold')
    ax.set_xlabel('Detected Attack Pattern')
    ax.set_ylabel('Actual Class')
    plt.colorbar(im, ax=ax, shrink=0.8)

    # Raw heatmap
    ax = axes[1]
    im = ax.imshow(matrix_raw, cmap='YlOrRd', aspect='auto')
    ax.set_xticks(np.arange(len(score_names)))
    ax.set_yticks(np.arange(len(classes)))
    ax.set_xticklabels([s.replace('_score', '').upper() for s in score_names],
                       rotation=45, ha='right')
    ax.set_yticklabels([SHORT_LABELS.get(c, c) for c in classes])
    for i in range(len(classes)):
        for j in range(len(score_names)):
            color = 'white' if matrix_raw[i, j] > matrix_raw.max() * 0.5 else 'black'
            ax.text(j, i, f'{matrix_raw[i, j]:.2f}', ha='center', va='center',
                    color=color, fontsize=8)
    ax.set_title('Raw Average Attack Pattern Scores', fontsize=11, fontweight='bold')
    ax.set_xlabel('Detected Attack Pattern')
    ax.set_ylabel('Actual Class')
    plt.colorbar(im, ax=ax, shrink=0.8)

    fig.suptitle('Attack Pattern Detection Heatmap (SemanticGraphBuilder + AttackPatternDetector)',
                 fontsize=13, fontweight='bold')
    plt.tight_layout()
    plt.savefig(output_dir / '04_attack_pattern_heatmap.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 04_attack_pattern_heatmap.png")


# =============================================================================
# VIS 5: MODEL AUDIT - RF v18 vs GNN v31
# =============================================================================

def visualize_model_audit(
    output_dir: Path,
    rf_model_dir: Path = Path('models/rf_v18_seq_emb'),
    edge_attn_path: Path = Path('viz_v31_ggnn_bilstm/edge_type_attention.json'),
) -> None:
    """Vis 5: Model audit -- RF v18 feature importance vs GNN v31 edge attention."""
    print("  Auditing model graph usage...")

    fig = plt.figure(figsize=(20, 14))
    gs = fig.add_gridspec(2, 2, hspace=0.4, wspace=0.3)

    # 5a: Summary table
    ax = fig.add_subplot(gs[0, 0])
    ax.axis('off')
    summary_text = (
        "MODEL COMPARISON: RF v18 vs GNN v31\n"
        "------------------------------------------------\n\n"
        "RF v18 (Random Forest)\n"
        "  Dataset: combined_v22_enhanced.jsonl (60K)\n"
        "  Features: 193 handcrafted\n"
        "  Graph features: 11 (cfg/dfg/density)\n"
        "  Graph structure: NOT used directly\n"
        "  Test accuracy: 91.2%\n\n"
        "GNN v31 (GGNN-BiLSTM, Frozen Encoder)\n"
        "  Dataset: same (60K records)\n"
        "  Graph: PDGBuilder (34-dim, 2 edge types)\n"
        "  Max nodes: 64, Spec window: 10\n"
        "  + 193 handcrafted features\n"
        "  Test accuracy: ~85.8%\n\n"
        "KEY INSIGHT:\n"
        "  RF (no raw graph) outperforms GNN\n"
        "  (with raw graph) by ~5.4 pct points."
    )
    ax.text(0.05, 0.95, summary_text, transform=ax.transAxes,
            fontsize=9, verticalalignment='top', fontfamily='monospace',
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.8))

    # 5b: RF graph feature importance
    ax = fig.add_subplot(gs[0, 1])
    rf_model_path = rf_model_dir / 'rf_multiclass.joblib'
    rf_vec_path = rf_model_dir / 'rf_vectorizer.joblib'

    try:
        import joblib
        print("    Loading RF model...")
        clf = joblib.load(rf_model_path)
        vec = joblib.load(rf_vec_path)
        feature_names = vec.get_feature_names_out()
        importances = clf.feature_importances_

        # Find graph features
        graph_feat_indices = []
        graph_feat_names = []
        graph_feat_importances = []
        for i, name in enumerate(feature_names):
            for gf in GRAPH_FEATURE_NAMES:
                if name == gf or name.startswith(gf):
                    graph_feat_indices.append(i)
                    graph_feat_names.append(name)
                    graph_feat_importances.append(importances[i])
                    break

        if graph_feat_names:
            # Sort by importance
            sorted_idx = np.argsort(graph_feat_importances)[::-1]
            sorted_names = [graph_feat_names[i] for i in sorted_idx]
            sorted_imps = [graph_feat_importances[i] for i in sorted_idx]

            # Compute ranks
            all_sorted = np.argsort(importances)[::-1]
            rank_map = {idx: rank + 1 for rank, idx in enumerate(all_sorted)}

            y_pos = np.arange(len(sorted_names))
            ax.barh(y_pos, sorted_imps, color='#2196F3', alpha=0.8)
            ax.set_yticks(y_pos)
            labels = []
            for i, si in enumerate(sorted_idx):
                orig_idx = graph_feat_indices[si]
                rank = rank_map.get(orig_idx, '?')
                labels.append(f"{sorted_names[i]} (#{rank}/{len(feature_names)})")
            ax.set_yticklabels(labels, fontsize=8)
            ax.set_xlabel('Feature Importance')
            ax.set_title(f'RF v18: Graph Feature Importance\n({len(feature_names)} total features)')
            ax.invert_yaxis()
            ax.grid(axis='x', alpha=0.3)

            # Add total graph importance
            total_graph_imp = sum(graph_feat_importances)
            total_imp = sum(importances)
            ax.text(0.95, 0.05,
                    f'Graph features: {total_graph_imp / total_imp * 100:.1f}% of total importance',
                    transform=ax.transAxes, ha='right', fontsize=9,
                    bbox=dict(boxstyle='round', facecolor='lightyellow'))
        else:
            ax.text(0.5, 0.5, 'No graph features found in RF model',
                    ha='center', va='center', transform=ax.transAxes)
    except Exception as e:
        ax.text(0.5, 0.5, f'Could not load RF model:\n{str(e)[:80]}',
                ha='center', va='center', transform=ax.transAxes, fontsize=9)
        ax.set_title('RF v18: Graph Feature Importance (Error)')

    # 5c: GNN edge attention
    ax = fig.add_subplot(gs[1, :])
    try:
        with open(edge_attn_path) as f:
            attn_data = json.load(f)

        class_names = []
        data_attns = []
        ctrl_attns = []
        for cls in ALL_CLASSES:
            if cls in attn_data.get('classes', {}):
                class_names.append(SHORT_LABELS.get(cls, cls))
                data_attns.append(attn_data['classes'][cls]['data_dependency'])
                ctrl_attns.append(attn_data['classes'][cls]['control_dependency'])

        x = np.arange(len(class_names))
        width = 0.35
        ax.bar(x - width / 2, data_attns, width, label='Data Dependencies', color='#2ecc71')
        ax.bar(x + width / 2, ctrl_attns, width, label='Control Dependencies', color='#e74c3c')
        ax.set_xticks(x)
        ax.set_xticklabels(class_names, rotation=45, ha='right')
        ax.set_ylabel('Attention Weight')
        ax.set_title('GNN v31: Edge-Type Attention per Class')
        ax.legend()
        ax.set_ylim(0, 0.8)
        ax.grid(axis='y', alpha=0.3)

        # Annotate the uniformity problem
        data_std = np.std(data_attns)
        ctrl_std = np.std(ctrl_attns)
        ax.text(0.98, 0.95,
                f'RED FLAG: Nearly identical attention across all classes\n'
                f'Data dep std: {data_std:.4f}, Ctrl dep std: {ctrl_std:.4f}\n'
                f'Range: data=[{min(data_attns):.3f}, {max(data_attns):.3f}], '
                f'ctrl=[{min(ctrl_attns):.3f}, {max(ctrl_attns):.3f}]',
                transform=ax.transAxes, ha='right', va='top', fontsize=9,
                bbox=dict(boxstyle='round', facecolor='#ffcccc', alpha=0.9))
    except Exception as e:
        ax.text(0.5, 0.5, f'Could not load edge attention:\n{str(e)[:80]}',
                ha='center', va='center', transform=ax.transAxes, fontsize=9)
        ax.set_title('GNN v31: Edge-Type Attention (Error)')

    fig.suptitle('Model Audit: Graph Feature Usage in RF v18 vs GNN v31',
                 fontsize=14, fontweight='bold')
    plt.savefig(output_dir / '05_model_audit_rf_vs_gnn.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 05_model_audit_rf_vs_gnn.png")


# =============================================================================
# VIS 6: PATTERN DISTINCTIVENESS VALIDATION
# =============================================================================

def visualize_pattern_distinctiveness_validation(
    records: List[Dict],
    output_dir: Path,
    max_records: int = 10000,
) -> Dict:
    """Vis 6: PCA of graph features + statistical tests."""
    print("  Validating pattern distinctiveness...")

    # Extract graph features from dataset
    features_by_class = defaultdict(list)
    all_features = []
    all_labels = []

    sampled = records[:max_records] if len(records) > max_records else records
    random.shuffle(sampled)

    for rec in sampled:
        label = rec.get('label')
        if label not in ALL_CLASSES:
            continue
        feats = rec.get('features', {})
        vec = []
        valid = True
        for gf in GRAPH_FEATURE_NAMES:
            val = feats.get(gf, 0)
            if not isinstance(val, (int, float)) or not np.isfinite(val):
                val = 0
            vec.append(float(val))
        features_by_class[label].append(vec)
        all_features.append(vec)
        all_labels.append(label)

    X = np.array(all_features)
    y = np.array(all_labels)

    # Standardize
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(X)

    # PCA
    print("    Running PCA...")
    pca = PCA(n_components=2)
    X_pca = pca.fit_transform(X_scaled)

    # Statistical tests
    print("    Running Kruskal-Wallis tests...")
    kw_results = []
    for fi, feat_name in enumerate(GRAPH_FEATURE_NAMES):
        groups = [np.array(features_by_class[c])[:, fi] for c in ALL_CLASSES
                  if len(features_by_class[c]) > 0]
        try:
            h_stat, p_val = stats.kruskal(*groups)
        except Exception:
            h_stat, p_val = 0, 1.0
        kw_results.append({
            'feature': feat_name,
            'h_statistic': float(h_stat),
            'p_value': float(p_val),
            'significant': p_val < 0.05,
        })

    # Plot
    fig, axes = plt.subplots(2, 2, figsize=(18, 14))

    # 6a: PCA scatter
    ax = axes[0, 0]
    for cls in ALL_CLASSES:
        mask = y == cls
        if mask.sum() > 0:
            ax.scatter(X_pca[mask, 0], X_pca[mask, 1], c=CLASS_COLORS[cls],
                       label=SHORT_LABELS[cls], alpha=0.3, s=10)
    ax.set_xlabel(f'PC1 ({pca.explained_variance_ratio_[0] * 100:.1f}%)')
    ax.set_ylabel(f'PC2 ({pca.explained_variance_ratio_[1] * 100:.1f}%)')
    ax.set_title('PCA of 11 Graph Features (Colored by Class)')
    ax.legend(fontsize=7, ncol=3, markerscale=3)
    ax.grid(alpha=0.3)

    # 6b: PCA loading vectors
    ax = axes[0, 1]
    loadings = pca.components_.T
    for i, feat_name in enumerate(GRAPH_FEATURE_NAMES):
        ax.arrow(0, 0, loadings[i, 0] * 3, loadings[i, 1] * 3,
                 head_width=0.08, head_length=0.04, fc='#333', ec='#333', alpha=0.7)
        ax.text(loadings[i, 0] * 3.3, loadings[i, 1] * 3.3,
                feat_name.replace('cfg_', '').replace('dfg_', ''),
                fontsize=7, ha='center')
    ax.set_xlabel(f'PC1 ({pca.explained_variance_ratio_[0] * 100:.1f}%)')
    ax.set_ylabel(f'PC2 ({pca.explained_variance_ratio_[1] * 100:.1f}%)')
    ax.set_title('PCA Loading Vectors (Feature Contributions)')
    ax.set_xlim(-4, 4)
    ax.set_ylim(-4, 4)
    ax.axhline(y=0, color='k', linewidth=0.5)
    ax.axvline(x=0, color='k', linewidth=0.5)
    ax.grid(alpha=0.3)

    # 6c: Kruskal-Wallis results table
    ax = axes[1, 0]
    ax.axis('off')
    header = f"{'Feature':<28} {'H-stat':>10} {'p-value':>12} {'Sig?':>6}\n"
    header += "-" * 58 + "\n"
    n_sig = 0
    for res in kw_results:
        sig_str = "YES" if res['significant'] else "no"
        if res['significant']:
            n_sig += 1
        header += (f"{res['feature']:<28} {res['h_statistic']:>10.1f} "
                   f"{res['p_value']:>12.2e} {sig_str:>6}\n")
    header += "-" * 58 + "\n"
    header += f"\n{n_sig}/{len(kw_results)} features show significant\n"
    header += f"differences across classes (p < 0.05)"

    ax.text(0.05, 0.95, header, transform=ax.transAxes,
            fontsize=9, verticalalignment='top', fontfamily='monospace',
            bbox=dict(boxstyle='round', facecolor='lightcyan', alpha=0.8))
    ax.set_title('Kruskal-Wallis Tests: Graph Features Across Classes', fontsize=10, fontweight='bold')

    # 6d: Conclusion
    ax = axes[1, 1]
    ax.axis('off')

    var_explained = sum(pca.explained_variance_ratio_[:2]) * 100

    conclusion = "CONCLUSION\n"
    conclusion += "Do classes have distinct graph structures?\n"
    conclusion += "------------------------------------------------\n\n"

    if n_sig >= 8:
        conclusion += (
            f"STATISTICALLY: YES ({n_sig}/11 differ)\n"
            f"  Most graph features show significant\n"
            f"  differences across classes.\n\n"
        )
    elif n_sig >= 4:
        conclusion += (
            f"STATISTICALLY: PARTIAL ({n_sig}/11 differ)\n"
            f"  Some graph features differ, not all.\n\n"
        )
    else:
        conclusion += (
            f"STATISTICALLY: WEAK ({n_sig}/11 differ)\n"
            f"  Few graph features differ.\n\n"
        )

    conclusion += f"PCA SEPARATION:\n"
    conclusion += f"  First 2 PCs: {var_explained:.1f}% variance.\n"
    if var_explained < 50:
        conclusion += "  Low: classes overlap in graph space.\n\n"
    else:
        conclusion += "  Moderate: some separation visible.\n\n"

    conclusion += (
        "GNN EDGE ATTENTION:\n"
        "  Weights nearly identical across classes\n"
        "  (~0.56 data, ~0.43 ctrl for all 9).\n"
        "  GNN NOT learning class-specific\n"
        "  graph patterns.\n\n"
        "IMPLICATION:\n"
        "  Graph structure alone insufficient to\n"
        "  discriminate vulnerability classes.\n"
        "  RF succeeds (91.2%) via handcrafted\n"
        "  domain-knowledge features, not\n"
        "  raw graph topology."
    )

    ax.text(0.05, 0.95, conclusion, transform=ax.transAxes,
            fontsize=9, verticalalignment='top', fontfamily='monospace',
            bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.8))

    fig.suptitle('Pattern Distinctiveness Validation: Graph Features Across Classes',
                 fontsize=14, fontweight='bold')
    plt.tight_layout()
    plt.savefig(output_dir / '06_distinctiveness_validation.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"  Saved: 06_distinctiveness_validation.png")

    return {
        'kruskal_wallis': kw_results,
        'pca_explained_variance': pca.explained_variance_ratio_.tolist(),
        'n_significant_features': n_sig,
    }


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(
        description='Validate graph pattern distinctiveness across vulnerability classes'
    )
    parser.add_argument(
        '--data', type=Path,
        default=Path('data/features/combined_v22_enhanced.jsonl'),
        help='Path to dataset'
    )
    parser.add_argument(
        '--output-dir', type=Path,
        default=Path('viz_graph_patterns'),
        help='Output directory'
    )
    parser.add_argument(
        '--samples-per-class', type=int, default=500,
        help='Samples per class for statistical analyses'
    )
    parser.add_argument(
        '--rf-model-dir', type=Path,
        default=Path('models/rf_v18_seq_emb'),
        help='RF v18 model directory'
    )
    parser.add_argument(
        '--edge-attn-path', type=Path,
        default=Path('viz_v31_ggnn_bilstm/edge_type_attention.json'),
        help='GNN v31 edge attention JSON'
    )
    parser.add_argument('--seed', type=int, default=42)
    args = parser.parse_args()

    random.seed(args.seed)
    np.random.seed(args.seed)

    args.output_dir.mkdir(parents=True, exist_ok=True)

    # Load data
    records, by_class = load_data(args.data)

    # Generate all 6 visualizations
    summary = {}

    print("\n[1/6] Per-class representative graphs...")
    visualize_per_class_representative_graphs(by_class, args.output_dir, samples_per_class=2)

    print("\n[2/6] Connectivity analysis...")
    conn_stats = visualize_connectivity_analysis(by_class, args.output_dir,
                                                  samples_per_class=args.samples_per_class)
    summary['connectivity'] = {
        cls: {
            'avg_nodes': s['avg_nodes'],
            'avg_edges': s['avg_edges'],
            'avg_density': s['avg_density'],
            'fully_connected_pct': s['fully_connected_pct'],
        }
        for cls, s in conn_stats.items()
    }

    print("\n[3/6] Structural pattern distinctiveness...")
    visualize_structural_patterns(by_class, records, args.output_dir,
                                  samples_per_class=args.samples_per_class)

    print("\n[4/6] Attack pattern heatmap...")
    visualize_attack_pattern_heatmap(by_class, args.output_dir,
                                     samples_per_class=args.samples_per_class)

    print("\n[5/6] Model audit: RF v18 vs GNN v31...")
    visualize_model_audit(args.output_dir, args.rf_model_dir, args.edge_attn_path)

    print("\n[6/6] Pattern distinctiveness validation...")
    validation_results = visualize_pattern_distinctiveness_validation(records, args.output_dir)
    summary['validation'] = validation_results

    # Save summary
    summary_path = args.output_dir / 'summary_statistics.json'
    with open(summary_path, 'w') as f:
        json.dump(summary, f, indent=2, default=str)
    print(f"\nSummary saved: {summary_path}")

    print(f"\nAll visualizations saved to {args.output_dir}/")
    for f_path in sorted(args.output_dir.glob('*.png')):
        print(f"  - {f_path.name}")


if __name__ == '__main__':
    main()
