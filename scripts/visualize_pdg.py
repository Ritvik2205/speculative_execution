#!/usr/bin/env python3
"""
PDG (Program Dependency Graph) Visualization Script

Generates visualizations of the semantic graphs used to train the GGNN-BiLSTM models.
Shows:
1. Node types and their distribution
2. Edge types (data dependencies vs control dependencies)
3. Sample graph structures for different attack classes
4. Graph statistics
"""

import json
import sys
import random
from pathlib import Path
from collections import defaultdict, Counter
from typing import List, Dict, Tuple, Optional

import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))

from semantic_graph_builder import (
    SemanticGraphBuilder, 
    AttackPatternDetector,
    NodeType, 
    EdgeType,
    SemanticGraph,
    SemanticNode,
)


# =============================================================================
# COLOR SCHEMES
# =============================================================================

NODE_COLORS = {
    NodeType.LOAD: '#4CAF50',           # Green - memory read
    NodeType.STORE: '#F44336',          # Red - memory write
    NodeType.LOAD_INDEXED: '#8BC34A',   # Light green - indexed load
    NodeType.LOAD_STACK: '#009688',     # Teal - stack load
    NodeType.STORE_STACK: '#E91E63',    # Pink - stack store
    NodeType.BRANCH_COND: '#2196F3',    # Blue - conditional branch
    NodeType.BRANCH_UNCOND: '#03A9F4',  # Light blue - unconditional branch
    NodeType.CALL: '#9C27B0',           # Purple - call
    NodeType.CALL_INDIRECT: '#673AB7',  # Deep purple - indirect call
    NodeType.RET: '#795548',            # Brown - return
    NodeType.JUMP_INDIRECT: '#607D8B',  # Blue grey - indirect jump
    NodeType.COMPARE: '#FF9800',        # Orange - compare
    NodeType.COMPUTE: '#9E9E9E',        # Grey - compute
    NodeType.FENCE: '#FFEB3B',          # Yellow - fence
    NodeType.CACHE_OP: '#FF5722',       # Deep orange - cache op
    NodeType.TIMING: '#00BCD4',         # Cyan - timing
    NodeType.NOP: '#BDBDBD',            # Light grey - nop
    NodeType.UNKNOWN: '#424242',        # Dark grey - unknown
}

EDGE_COLORS = {
    EdgeType.SEQUENTIAL: '#BDBDBD',     # Grey - sequential
    EdgeType.DATA_DEP: '#2196F3',       # Blue - data dependency
    EdgeType.CONTROL: '#F44336',        # Red - control flow
    EdgeType.MEMORY_DEP: '#4CAF50',     # Green - memory dependency
}

CLASS_COLORS = {
    'BENIGN': '#4CAF50',
    'SPECTRE_V1': '#2196F3',
    'SPECTRE_V2': '#03A9F4',
    'SPECTRE_V4': '#00BCD4',
    'L1TF': '#F44336',
    'MDS': '#E91E63',
    'RETBLEED': '#9C27B0',
    'INCEPTION': '#673AB7',
    'BRANCH_HISTORY_INJECTION': '#FF9800',
}


# =============================================================================
# VISUALIZATION FUNCTIONS
# =============================================================================

def draw_pdg(
    graph: SemanticGraph,
    ax: plt.Axes,
    title: str = "Program Dependency Graph",
    show_labels: bool = True,
    max_nodes: int = 30,
) -> None:
    """
    Draw a PDG on a matplotlib axes.
    
    Uses a hierarchical layout based on topological ordering.
    """
    nodes = graph.nodes[:max_nodes]
    n = len(nodes)
    
    if n == 0:
        ax.text(0.5, 0.5, "Empty graph", ha='center', va='center')
        ax.set_title(title)
        return
    
    # Compute layout - use hierarchical/layered layout
    # Group nodes by depth (distance from first node)
    depths = {0: 0}
    for i in range(1, n):
        # Find minimum depth of predecessors
        pred_depths = []
        for edge in graph.edges:
            if edge.dst == i and edge.src < max_nodes:
                if edge.src in depths:
                    pred_depths.append(depths[edge.src])
        
        if pred_depths:
            depths[i] = max(pred_depths) + 1
        else:
            depths[i] = i  # Fallback to sequential
    
    # Position nodes
    max_depth = max(depths.values()) if depths else 0
    nodes_per_depth = defaultdict(list)
    for node_id, depth in depths.items():
        nodes_per_depth[depth].append(node_id)
    
    positions = {}
    for depth, node_ids in nodes_per_depth.items():
        x = depth / max(max_depth, 1)
        for i, node_id in enumerate(node_ids):
            y = (i + 1) / (len(node_ids) + 1)
            positions[node_id] = (x, y)
    
    # Draw edges first (behind nodes)
    for edge in graph.edges:
        if edge.src >= max_nodes or edge.dst >= max_nodes:
            continue
        if edge.src not in positions or edge.dst not in positions:
            continue
        
        src_pos = positions[edge.src]
        dst_pos = positions[edge.dst]
        
        color = EDGE_COLORS.get(edge.edge_type, '#000000')
        alpha = 0.7 if edge.edge_type in (EdgeType.DATA_DEP, EdgeType.CONTROL) else 0.3
        linewidth = 2 if edge.edge_type in (EdgeType.DATA_DEP, EdgeType.CONTROL) else 1
        
        ax.annotate(
            '',
            xy=dst_pos,
            xytext=src_pos,
            arrowprops=dict(
                arrowstyle='->',
                color=color,
                alpha=alpha,
                linewidth=linewidth,
                connectionstyle='arc3,rad=0.1',
            ),
        )
    
    # Draw nodes
    for node in nodes:
        if node.id not in positions:
            continue
        
        x, y = positions[node.id]
        color = NODE_COLORS.get(node.node_type, '#9E9E9E')
        
        # Node circle
        circle = plt.Circle(
            (x, y), 
            0.03, 
            color=color, 
            ec='black', 
            linewidth=1,
            zorder=10,
        )
        ax.add_patch(circle)
        
        # Node label
        if show_labels:
            label = node.node_type.replace('_', '\n')[:8]
            ax.text(
                x, y - 0.06, 
                f"{node.id}",
                ha='center', 
                va='top',
                fontsize=7,
                zorder=11,
            )
    
    ax.set_xlim(-0.1, 1.1)
    ax.set_ylim(-0.1, 1.1)
    ax.set_aspect('equal')
    ax.axis('off')
    ax.set_title(title, fontsize=10, fontweight='bold')


def visualize_sample_pdgs(
    samples: List[Tuple[str, List[str]]],
    output_path: Path,
    cols: int = 3,
) -> None:
    """
    Visualize multiple PDG samples in a grid.
    
    Args:
        samples: List of (label, instruction_sequence) tuples
        output_path: Where to save the figure
        cols: Number of columns in grid
    """
    n = len(samples)
    rows = (n + cols - 1) // cols
    
    fig, axes = plt.subplots(rows, cols, figsize=(5 * cols, 5 * rows))
    if rows == 1 and cols == 1:
        axes = np.array([[axes]])
    elif rows == 1:
        axes = axes.reshape(1, -1)
    elif cols == 1:
        axes = axes.reshape(-1, 1)
    
    builder = SemanticGraphBuilder()
    
    for idx, (label, sequence) in enumerate(samples):
        row = idx // cols
        col = idx % cols
        ax = axes[row, col]
        
        graph = builder.build_graph(sequence)
        color = CLASS_COLORS.get(label, '#9E9E9E')
        
        draw_pdg(
            graph, 
            ax, 
            title=f"{label}\n({len(graph.nodes)} nodes, {len(graph.edges)} edges)",
        )
        
        # Add colored border for class
        for spine in ax.spines.values():
            spine.set_edgecolor(color)
            spine.set_linewidth(3)
            spine.set_visible(True)
    
    # Hide unused axes
    for idx in range(n, rows * cols):
        row = idx // cols
        col = idx % cols
        axes[row, col].axis('off')
    
    # Add legend for node types
    legend_patches = [
        mpatches.Patch(color=color, label=node_type.replace('_', ' '))
        for node_type, color in list(NODE_COLORS.items())[:10]  # Top 10 types
    ]
    fig.legend(
        handles=legend_patches,
        loc='center left',
        bbox_to_anchor=(1.0, 0.5),
        title='Node Types',
    )
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"Saved: {output_path}")


def visualize_graph_statistics(
    records: List[Dict],
    output_path: Path,
) -> None:
    """
    Visualize aggregate statistics about PDGs across the dataset.
    """
    builder = SemanticGraphBuilder()
    
    stats_by_class = defaultdict(lambda: {
        'node_counts': [],
        'edge_counts': [],
        'data_dep_counts': [],
        'control_dep_counts': [],
        'node_type_counts': defaultdict(int),
    })
    
    print("Computing graph statistics...")
    for i, rec in enumerate(records[:5000]):  # Sample 5000 for speed
        label = rec['label']
        seq = rec.get('sequence', [])
        
        if not seq:
            continue
        
        graph = builder.build_graph(seq)
        
        stats = stats_by_class[label]
        stats['node_counts'].append(len(graph.nodes))
        stats['edge_counts'].append(len(graph.edges))
        
        # Count edge types
        data_deps = sum(1 for e in graph.edges if e.edge_type == EdgeType.DATA_DEP)
        ctrl_deps = sum(1 for e in graph.edges if e.edge_type in (EdgeType.CONTROL, EdgeType.SEQUENTIAL))
        stats['data_dep_counts'].append(data_deps)
        stats['control_dep_counts'].append(ctrl_deps)
        
        # Count node types
        for node in graph.nodes:
            stats['node_type_counts'][node.node_type] += 1
        
        if (i + 1) % 1000 == 0:
            print(f"  Processed {i + 1} samples...")
    
    # Create visualizations
    fig, axes = plt.subplots(2, 2, figsize=(14, 12))
    
    classes = list(stats_by_class.keys())
    x = np.arange(len(classes))
    width = 0.35
    
    # Plot 1: Average node and edge counts
    ax1 = axes[0, 0]
    avg_nodes = [np.mean(stats_by_class[c]['node_counts']) for c in classes]
    avg_edges = [np.mean(stats_by_class[c]['edge_counts']) for c in classes]
    
    bars1 = ax1.bar(x - width/2, avg_nodes, width, label='Avg Nodes', color='#2196F3')
    bars2 = ax1.bar(x + width/2, avg_edges, width, label='Avg Edges', color='#F44336')
    ax1.set_xlabel('Attack Class')
    ax1.set_ylabel('Count')
    ax1.set_title('Average Graph Size by Attack Class')
    ax1.set_xticks(x)
    ax1.set_xticklabels(classes, rotation=45, ha='right')
    ax1.legend()
    ax1.grid(axis='y', alpha=0.3)
    
    # Plot 2: Data vs Control dependencies
    ax2 = axes[0, 1]
    avg_data = [np.mean(stats_by_class[c]['data_dep_counts']) for c in classes]
    avg_ctrl = [np.mean(stats_by_class[c]['control_dep_counts']) for c in classes]
    
    bars1 = ax2.bar(x - width/2, avg_data, width, label='Data Deps', color='#4CAF50')
    bars2 = ax2.bar(x + width/2, avg_ctrl, width, label='Ctrl Deps', color='#FF9800')
    ax2.set_xlabel('Attack Class')
    ax2.set_ylabel('Count')
    ax2.set_title('Data vs Control Dependencies by Attack Class')
    ax2.set_xticks(x)
    ax2.set_xticklabels(classes, rotation=45, ha='right')
    ax2.legend()
    ax2.grid(axis='y', alpha=0.3)
    
    # Plot 3: Node type distribution (stacked bar)
    ax3 = axes[1, 0]
    
    # Get top node types
    all_node_types = set()
    for stats in stats_by_class.values():
        all_node_types.update(stats['node_type_counts'].keys())
    
    top_node_types = sorted(
        all_node_types,
        key=lambda t: sum(stats_by_class[c]['node_type_counts'][t] for c in classes),
        reverse=True
    )[:8]  # Top 8
    
    bottoms = np.zeros(len(classes))
    for node_type in top_node_types:
        counts = [stats_by_class[c]['node_type_counts'][node_type] for c in classes]
        # Normalize by total nodes
        totals = [sum(stats_by_class[c]['node_type_counts'].values()) for c in classes]
        pcts = [c / max(t, 1) * 100 for c, t in zip(counts, totals)]
        
        color = NODE_COLORS.get(node_type, '#9E9E9E')
        ax3.bar(x, pcts, width=0.7, bottom=bottoms, label=node_type, color=color)
        bottoms += pcts
    
    ax3.set_xlabel('Attack Class')
    ax3.set_ylabel('Percentage')
    ax3.set_title('Node Type Distribution by Attack Class')
    ax3.set_xticks(x)
    ax3.set_xticklabels(classes, rotation=45, ha='right')
    ax3.legend(loc='upper right', fontsize=8)
    ax3.set_ylim(0, 100)
    
    # Plot 4: Box plot of graph sizes
    ax4 = axes[1, 1]
    node_data = [stats_by_class[c]['node_counts'] for c in classes]
    bp = ax4.boxplot(
        node_data, 
        labels=classes,
        patch_artist=True,
    )
    
    for i, patch in enumerate(bp['boxes']):
        color = CLASS_COLORS.get(classes[i], '#9E9E9E')
        patch.set_facecolor(color)
        patch.set_alpha(0.7)
    
    ax4.set_xlabel('Attack Class')
    ax4.set_ylabel('Node Count')
    ax4.set_title('Graph Size Distribution by Attack Class')
    ax4.tick_params(axis='x', rotation=45)
    ax4.grid(axis='y', alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"Saved: {output_path}")


def visualize_attack_patterns(
    records: List[Dict],
    output_path: Path,
) -> None:
    """
    Visualize detected attack patterns in PDGs.
    """
    builder = SemanticGraphBuilder()
    detector = AttackPatternDetector()
    
    pattern_scores_by_class = defaultdict(lambda: defaultdict(list))
    
    print("Detecting attack patterns...")
    for i, rec in enumerate(records[:3000]):
        label = rec['label']
        seq = rec.get('sequence', [])
        
        if not seq:
            continue
        
        graph = builder.build_graph(seq)
        patterns = detector.detect_patterns(graph)
        
        # Store attack scores
        for score_name in [
            'spectre_v1_score', 'spectre_v2_score', 'spectre_v4_score',
            'l1tf_score', 'mds_score', 'retbleed_score', 
            'inception_score', 'bhi_score'
        ]:
            pattern_scores_by_class[label][score_name].append(patterns.get(score_name, 0))
        
        if (i + 1) % 1000 == 0:
            print(f"  Processed {i + 1} samples...")
    
    # Create heatmap
    classes = sorted(pattern_scores_by_class.keys())
    score_names = [
        'spectre_v1_score', 'spectre_v2_score', 'spectre_v4_score',
        'l1tf_score', 'mds_score', 'retbleed_score', 
        'inception_score', 'bhi_score'
    ]
    
    # Compute average scores
    matrix = np.zeros((len(classes), len(score_names)))
    for i, cls in enumerate(classes):
        for j, score in enumerate(score_names):
            values = pattern_scores_by_class[cls][score]
            matrix[i, j] = np.mean(values) if values else 0
    
    # Normalize per column for visibility
    for j in range(len(score_names)):
        col = matrix[:, j]
        if col.max() > 0:
            matrix[:, j] = col / col.max()
    
    fig, ax = plt.subplots(figsize=(12, 8))
    
    im = ax.imshow(matrix, cmap='YlOrRd', aspect='auto')
    
    ax.set_xticks(np.arange(len(score_names)))
    ax.set_yticks(np.arange(len(classes)))
    ax.set_xticklabels([s.replace('_score', '').upper() for s in score_names], rotation=45, ha='right')
    ax.set_yticklabels(classes)
    
    # Add text annotations
    for i in range(len(classes)):
        for j in range(len(score_names)):
            text = ax.text(
                j, i, f'{matrix[i, j]:.2f}',
                ha='center', va='center',
                color='white' if matrix[i, j] > 0.5 else 'black',
                fontsize=9,
            )
    
    ax.set_title('Detected Attack Pattern Scores (Normalized)\nHigher = More Similar to Attack Pattern', 
                 fontsize=12, fontweight='bold')
    ax.set_xlabel('Attack Pattern Type')
    ax.set_ylabel('Actual Class')
    
    plt.colorbar(im, ax=ax, label='Normalized Score')
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"Saved: {output_path}")


def visualize_edge_type_distribution(
    records: List[Dict],
    output_path: Path,
) -> None:
    """
    Visualize the distribution of edge types across attack classes.
    """
    builder = SemanticGraphBuilder()
    
    edge_stats = defaultdict(lambda: defaultdict(int))
    
    print("Analyzing edge types...")
    for i, rec in enumerate(records[:3000]):
        label = rec['label']
        seq = rec.get('sequence', [])
        
        if not seq:
            continue
        
        graph = builder.build_graph(seq)
        
        for edge in graph.edges:
            edge_stats[label][edge.edge_type] += 1
        
        if (i + 1) % 1000 == 0:
            print(f"  Processed {i + 1} samples...")
    
    # Create visualization
    classes = sorted(edge_stats.keys())
    edge_types = [EdgeType.SEQUENTIAL, EdgeType.DATA_DEP, EdgeType.CONTROL, EdgeType.MEMORY_DEP]
    
    fig, ax = plt.subplots(figsize=(12, 6))
    
    x = np.arange(len(classes))
    width = 0.2
    
    for i, edge_type in enumerate(edge_types):
        # Compute percentages
        totals = [sum(edge_stats[c].values()) for c in classes]
        pcts = [edge_stats[c][edge_type] / max(t, 1) * 100 for c, t in zip(classes, totals)]
        
        color = EDGE_COLORS.get(edge_type, '#9E9E9E')
        ax.bar(x + i * width - 1.5 * width, pcts, width, label=edge_type, color=color)
    
    ax.set_xlabel('Attack Class')
    ax.set_ylabel('Percentage of Edges')
    ax.set_title('Edge Type Distribution by Attack Class')
    ax.set_xticks(x)
    ax.set_xticklabels(classes, rotation=45, ha='right')
    ax.legend()
    ax.grid(axis='y', alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"Saved: {output_path}")


# =============================================================================
# MAIN
# =============================================================================

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='Visualize PDG structures')
    parser.add_argument(
        '--data', 
        type=Path, 
        default=Path('data/features/combined_v22_enhanced.jsonl'),
        help='Path to data file'
    )
    parser.add_argument(
        '--output-dir',
        type=Path,
        default=Path('viz_pdg'),
        help='Output directory for visualizations'
    )
    parser.add_argument(
        '--samples-per-class',
        type=int,
        default=2,
        help='Number of sample PDGs to visualize per class'
    )
    args = parser.parse_args()
    
    args.output_dir.mkdir(parents=True, exist_ok=True)
    
    # Load data
    print(f"Loading data from {args.data}...")
    records = []
    with open(args.data) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                if rec.get('sequence'):
                    records.append(rec)
    print(f"  Loaded {len(records)} records with sequences")
    
    # Group by class
    by_class = defaultdict(list)
    for rec in records:
        by_class[rec['label']].append(rec)
    
    print(f"\nClass distribution:")
    for label, recs in sorted(by_class.items()):
        print(f"  {label}: {len(recs)}")
    
    # 1. Visualize sample PDGs for each class
    print("\n1. Generating sample PDG visualizations...")
    samples = []
    for label in sorted(by_class.keys()):
        class_records = by_class[label]
        # Pick random samples
        selected = random.sample(
            class_records, 
            min(args.samples_per_class, len(class_records))
        )
        for rec in selected:
            samples.append((label, rec['sequence']))
    
    visualize_sample_pdgs(
        samples,
        args.output_dir / 'sample_pdgs.png',
        cols=3,
    )
    
    # 2. Visualize graph statistics
    print("\n2. Generating graph statistics visualization...")
    visualize_graph_statistics(
        records,
        args.output_dir / 'graph_statistics.png',
    )
    
    # 3. Visualize attack pattern detection
    print("\n3. Generating attack pattern visualization...")
    visualize_attack_patterns(
        records,
        args.output_dir / 'attack_patterns.png',
    )
    
    # 4. Visualize edge type distribution
    print("\n4. Generating edge type distribution...")
    visualize_edge_type_distribution(
        records,
        args.output_dir / 'edge_types.png',
    )
    
    print(f"\n✓ All visualizations saved to {args.output_dir}/")
    print("\nGenerated files:")
    for f in sorted(args.output_dir.glob('*.png')):
        print(f"  - {f.name}")


if __name__ == '__main__':
    random.seed(42)
    main()
