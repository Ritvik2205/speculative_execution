#!/usr/bin/env python3
"""
Visualize PDG graphs from the best GINE model (v35, 93.89% test accuracy).

For each of the 9 vulnerability classes, plots 3 PDGs:
  1. Correctly classified sample
  2. Incorrectly classified sample whose graph is MOST SIMILAR to (1)
  3. Incorrectly classified sample whose graph is MOST DIFFERENT from (1)

Graph similarity is measured by combining:
  - Normalised node count difference
  - Normalised edge count difference
  - L2 distance of normalised edge-type distribution vectors
"""

import json
import sys
import os
from pathlib import Path
from collections import Counter
from typing import List, Dict, Optional, Tuple

import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import networkx as nx
import torch
from sklearn.model_selection import train_test_split
from tqdm import tqdm

# ── paths ────────────────────────────────────────────────────────────────────
ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'scripts'))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES, OPCODE_CATEGORIES

DATA_PATH      = ROOT / 'data/features/combined_v25_real_benign.jsonl'
CHECKPOINT     = ROOT / 'viz_v35_gine_balanced/gine_best.pt'
OUTPUT_DIR     = ROOT / 'viz_v35_gine_balanced/graph_comparison'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

DEVICE         = torch.device('cpu')
MAX_NODES      = 64
MAX_EDGES      = 512
SPEC_WINDOW    = 10
RANDOM_SEED    = 42

# ── colour maps ──────────────────────────────────────────────────────────────
OPCODE_COLORS = [
    '#e74c3c', '#c0392b', '#e67e22', '#f39c12', '#f1c40f',
    '#2ecc71', '#27ae60', '#1abc9c', '#16a085', '#3498db',
    '#2980b9', '#9b59b6', '#8e44ad', '#d35400', '#e74c3c',
    '#95a5a6', '#7f8c8d', '#bdc3c7', '#ecf0f1',
]

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


# ─────────────────────────────────────────────────────────────────────────────
# DATA LOADING
# ─────────────────────────────────────────────────────────────────────────────

def load_data(path: Path) -> Tuple[List[Dict], List[str], Dict[str, int]]:
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
    label_to_id   = {l: i for i, l in enumerate(unique_labels)}
    return records, unique_labels, label_to_id


# ─────────────────────────────────────────────────────────────────────────────
# MODEL LOADING
# ─────────────────────────────────────────────────────────────────────────────

def load_model(checkpoint_path: Path, num_classes: int, handcrafted_dim: int,
               num_edge_types: int):
    from gine_classifier import GINEClassifier

    # Infer num_edge_types from embedding table size in checkpoint
    ckpt = torch.load(checkpoint_path, map_location=DEVICE, weights_only=False)
    state = ckpt['model_state_dict']
    edge_emb_shape = state['edge_encoder.weight'].shape  # [num_edge_types, hidden_dim]
    num_edge_types_ckpt = edge_emb_shape[0]
    hidden_dim           = edge_emb_shape[1]

    # Infer num_layers from gine_layers keys
    layer_ids = set()
    for k in state:
        if k.startswith('gine_layers.'):
            layer_ids.add(int(k.split('.')[1]))
    num_layers = max(layer_ids) + 1

    # Infer jk_mode from graph_projector input size
    # raw_graph_dim = hidden_dim * (num_layers + 1) for "cat"
    gp_weight = state['graph_projector.0.weight']  # [256, raw_graph_dim]
    raw_graph_dim = gp_weight.shape[1]
    if raw_graph_dim == hidden_dim * (num_layers + 1):
        jk_mode = 'cat'
    elif raw_graph_dim == hidden_dim:
        jk_mode = 'last'
    else:
        jk_mode = 'cat'

    use_vn = 'vn_init' in state

    model = GINEClassifier(
        node_feat_dim=34,
        num_edge_types=num_edge_types_ckpt,
        hidden_dim=hidden_dim,
        num_layers=num_layers,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        dropout=0.0,
        use_virtual_node=use_vn,
        jk_mode=jk_mode,
    )
    model.load_state_dict(state)
    model.eval()

    print(f"Loaded model: hidden_dim={hidden_dim}, num_layers={num_layers}, "
          f"jk_mode={jk_mode}, vn={use_vn}, edge_types={num_edge_types_ckpt}")
    return model, ckpt


# ─────────────────────────────────────────────────────────────────────────────
# GRAPH BUILDING & FEATURE EXTRACTION
# ─────────────────────────────────────────────────────────────────────────────

def build_sample(rec: Dict, label_to_id: Dict[str, int],
                 handcrafted_names: List[str],
                 pdg_builder: PDGBuilder):
    """Convert one record into model input tensors + a NetworkX graph for plotting."""
    sequence = rec.get('sequence', [])
    if len(sequence) < 3:
        return None
    label = rec.get('label', 'UNKNOWN')
    if label not in label_to_id:
        return None

    pdg = pdg_builder.build(sequence)
    if len(pdg.nodes) < 2:
        return None

    n_nodes = min(len(pdg.nodes), MAX_NODES)
    node_features = pdg.get_node_features(MAX_NODES)
    edge_index, edge_type = pdg.get_edge_index_and_type(MAX_NODES)
    edge_weight = pdg.get_edge_weights(MAX_NODES)
    n_edges = edge_index.shape[1]

    # Pad/truncate edges
    if n_edges > MAX_EDGES:
        edge_index  = edge_index[:, :MAX_EDGES]
        edge_type   = edge_type[:MAX_EDGES]
        edge_weight = edge_weight[:MAX_EDGES]
        n_edges = MAX_EDGES
    elif n_edges < MAX_EDGES:
        pad = MAX_EDGES - n_edges
        edge_index  = np.pad(edge_index,  ((0, 0), (0, pad)), constant_values=0)
        edge_type   = np.pad(edge_type,   (0, pad), constant_values=0)
        edge_weight = np.pad(edge_weight, (0, pad), constant_values=0.0)

    node_mask = np.zeros(MAX_NODES, dtype=bool); node_mask[:n_nodes] = True
    edge_mask = np.zeros(MAX_EDGES, dtype=bool); edge_mask[:n_edges] = True

    hc = np.zeros(len(handcrafted_names), dtype=np.float32)
    for i, nm in enumerate(handcrafted_names):
        v = rec.get('features', {}).get(nm, 0.0)
        if isinstance(v, (int, float)) and np.isfinite(v):
            hc[i] = np.clip(float(v), -100, 100)

    # Build NetworkX graph for visualisation
    G = nx.DiGraph()
    for ni in range(n_nodes):
        # opcode category is stored in dims 0-18 (one-hot); find argmax
        onehot_slice = node_features[ni, :len(OPCODE_CATEGORIES)]
        cat_id = int(np.argmax(onehot_slice))
        # Get opcode text from the PDG node object
        opcode_text = pdg.nodes[ni].opcode if ni < len(pdg.nodes) else '?'
        G.add_node(ni, opcode=opcode_text, cat_id=cat_id)

    for ei in range(n_edges):
        src, dst = int(edge_index[0, ei]), int(edge_index[1, ei])
        et = int(edge_type[ei])
        if src < n_nodes and dst < n_nodes:
            G.add_edge(src, dst, edge_type=et)

    # Graph-level similarity descriptor:  [n_nodes_norm, n_edges_norm, edge_type_dist(8)]
    et_counts = np.zeros(NUM_EDGE_TYPES, dtype=np.float32)
    for ei in range(n_edges):
        et_counts[int(edge_type[ei])] += 1
    et_dist = et_counts / (et_counts.sum() + 1e-8)
    similarity_vec = np.concatenate([[n_nodes / MAX_NODES, n_edges / MAX_EDGES], et_dist])

    return {
        'node_features': torch.from_numpy(node_features.astype(np.float32)).unsqueeze(0),
        'edge_index':    torch.from_numpy(edge_index.astype(np.int64)).unsqueeze(0),
        'edge_type':     torch.from_numpy(edge_type.astype(np.int64)).unsqueeze(0),
        'edge_weight':   torch.from_numpy(edge_weight.astype(np.float32)).unsqueeze(0),
        'node_mask':     torch.from_numpy(node_mask).unsqueeze(0),
        'edge_mask':     torch.from_numpy(edge_mask).unsqueeze(0),
        'handcrafted':   torch.from_numpy(hc).unsqueeze(0),
        'label_id':      label_to_id[label],
        'label':         label,
        'n_nodes':       n_nodes,
        'n_edges':       n_edges,
        'graph':         G,
        'sim_vec':       similarity_vec,
    }


# ─────────────────────────────────────────────────────────────────────────────
# INFERENCE
# ─────────────────────────────────────────────────────────────────────────────

@torch.no_grad()
def predict(model, sample: Dict) -> int:
    logits = model(
        sample['node_features'], sample['edge_index'], sample['edge_type'],
        sample['node_mask'], sample['handcrafted'],
        edge_mask=sample['edge_mask'], edge_weight=sample['edge_weight'],
    )
    return int(logits.argmax(dim=1).item())


# ─────────────────────────────────────────────────────────────────────────────
# GRAPH SIMILARITY
# ─────────────────────────────────────────────────────────────────────────────

def graph_distance(a: np.ndarray, b: np.ndarray) -> float:
    """Euclidean distance in [n_nodes_norm, n_edges_norm, et_dist*8] space."""
    # Weight structural features more heavily than edge-type distribution
    weights = np.array([3.0, 2.0] + [1.0] * NUM_EDGE_TYPES)
    diff = (a - b) * weights
    return float(np.linalg.norm(diff))


# ─────────────────────────────────────────────────────────────────────────────
# VISUALISATION
# ─────────────────────────────────────────────────────────────────────────────

def draw_pdg(ax, G: nx.DiGraph, title: str, true_label: str, pred_label: str,
             n_nodes: int, n_edges: int, is_correct: bool):
    """Draw a single PDG on the given axes."""
    if len(G.nodes) == 0:
        ax.text(0.5, 0.5, 'Empty graph', ha='center', va='center',
                transform=ax.transAxes, fontsize=9)
        ax.set_title(title, fontsize=8, pad=3)
        ax.axis('off')
        return

    # Layout: use spring layout with a fixed seed for reproducibility
    try:
        pos = nx.spring_layout(G, seed=42, k=1.5 / max(len(G.nodes) ** 0.5, 1))
    except Exception:
        pos = nx.circular_layout(G)

    # Node colours by opcode category
    node_colors = [
        OPCODE_COLORS[G.nodes[n].get('cat_id', 18) % len(OPCODE_COLORS)]
        for n in G.nodes
    ]

    # Edge colours and styles by type
    edge_colors, edge_styles = [], []
    for u, v, d in G.edges(data=True):
        et_name = EDGE_ID_TO_NAME.get(d.get('edge_type', 0), 'DATA_DEP')
        edge_colors.append(EDGE_COLOR_MAP.get(et_name, '#888888'))
        edge_styles.append('solid' if 'SPEC' not in et_name else 'dashed')

    # Draw
    node_size = max(60, min(200, 1200 // max(len(G.nodes), 1)))
    nx.draw_networkx_nodes(G, pos, ax=ax, node_color=node_colors,
                           node_size=node_size, alpha=0.9)
    nx.draw_networkx_edges(G, pos, ax=ax, edge_color=edge_colors,
                           style=edge_styles, arrows=True,
                           arrowsize=8, width=0.8, alpha=0.7,
                           connectionstyle='arc3,rad=0.1')

    # Node labels: opcode text (truncated)
    labels = {}
    for n in G.nodes:
        op = G.nodes[n].get('opcode', '?')
        labels[n] = op[:5] if len(op) > 5 else op
    if len(G.nodes) <= 20:
        nx.draw_networkx_labels(G, pos, labels=labels, ax=ax, font_size=4,
                                font_color='white', font_weight='bold')

    border_color = '#27ae60' if is_correct else '#e74c3c'
    for spine in ax.spines.values():
        spine.set_edgecolor(border_color)
        spine.set_linewidth(2.5)
    ax.set_visible(True)

    correct_str = 'CORRECT' if is_correct else 'WRONG'
    status_color = '#27ae60' if is_correct else '#e74c3c'
    ax.set_title(
        f'{title}\nTrue: {true_label}  |  Pred: {pred_label}  [{correct_str}]\n'
        f'Nodes: {n_nodes}  Edges: {n_edges}',
        fontsize=7, pad=3, color=status_color, fontweight='bold'
    )
    ax.axis('off')


def make_edge_legend():
    """Return legend handles for edge types."""
    handles = []
    for name, color in EDGE_COLOR_MAP.items():
        style = 'dashed' if 'SPEC' in name else 'solid'
        handles.append(mpatches.Patch(
            facecolor=color, edgecolor='grey', linewidth=0.5,
            label=name.replace('_', ' ').title()
        ))
    return handles


# ─────────────────────────────────────────────────────────────────────────────
# MAIN
# ─────────────────────────────────────────────────────────────────────────────

def main():
    print("=" * 70)
    print("V35 GINE PDG Comparison Visualiser  (Best model: 93.89% test acc)")
    print("=" * 70)

    # ── 1. Load data ─────────────────────────────────────────────────────────
    print(f"\nLoading data from {DATA_PATH} ...")
    records, unique_labels, label_to_id = load_data(DATA_PATH)
    id_to_label = {i: l for l, i in label_to_id.items()}
    num_classes  = len(unique_labels)
    print(f"  {len(records)} records, {num_classes} classes: {unique_labels}")

    # Handcrafted feature names (same logic as training)
    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ('sequence', 'label')
    ])
    handcrafted_dim = len(feature_names)
    print(f"  Handcrafted features: {handcrafted_dim}")

    # ── 2. Train/test split (same seed as training) ───────────────────────────
    labels = [r['label'] for r in records]
    _, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=RANDOM_SEED
    )
    print(f"  Test set: {len(test_records)} records")

    # ── 3. Load model ─────────────────────────────────────────────────────────
    print(f"\nLoading model from {CHECKPOINT} ...")
    model, ckpt = load_model(CHECKPOINT, num_classes, handcrafted_dim, NUM_EDGE_TYPES)

    # ── 4. Build PDGs & run inference ─────────────────────────────────────────
    pdg_builder = PDGBuilder(speculative_window=SPEC_WINDOW)
    print("\nBuilding PDGs and running inference on test set ...")

    # Collect per-class lists of (sample, pred)
    class_correct: Dict[str, List[Dict]] = {l: [] for l in unique_labels}
    class_wrong:   Dict[str, List[Dict]] = {l: [] for l in unique_labels}

    for rec in tqdm(test_records, desc='Processing'):
        sample = build_sample(rec, label_to_id, feature_names, pdg_builder)
        if sample is None:
            continue
        pred_id = predict(model, sample)
        pred_label = id_to_label[pred_id]
        true_label = sample['label']
        sample['pred_label'] = pred_label
        sample['pred_id']    = pred_id
        if pred_id == sample['label_id']:
            class_correct[true_label].append(sample)
        else:
            class_wrong[true_label].append(sample)

    for lbl in unique_labels:
        print(f"  {lbl:<30}: {len(class_correct[lbl])} correct, "
              f"{len(class_wrong[lbl])} wrong")

    # ── 5. Select triples (correct, most-similar-wrong, most-different-wrong) ─
    triples: Dict[str, Tuple] = {}
    for lbl in unique_labels:
        corrects = class_correct[lbl]
        wrongs   = class_wrong[lbl]
        if not corrects:
            print(f"  [!] {lbl}: no correctly classified samples — skipping")
            continue
        if not wrongs:
            print(f"  [!] {lbl}: no misclassified samples — skipping")
            triples[lbl] = (corrects[0], None, None)
            continue

        # Pick the correct sample: prefer one with the median node count
        correct = sorted(corrects, key=lambda s: s['n_nodes'])[len(corrects) // 2]

        # Compute distances from correct to each wrong sample
        dists = [graph_distance(correct['sim_vec'], w['sim_vec']) for w in wrongs]
        most_similar_wrong  = wrongs[int(np.argmin(dists))]
        most_different_wrong = wrongs[int(np.argmax(dists))]

        triples[lbl] = (correct, most_similar_wrong, most_different_wrong)
        print(f"  {lbl}: correct n={correct['n_nodes']}, "
              f"sim_wrong n={most_similar_wrong['n_nodes']} (d={min(dists):.3f}), "
              f"diff_wrong n={most_different_wrong['n_nodes']} (d={max(dists):.3f})")

    # ── 6. Plot ───────────────────────────────────────────────────────────────
    classes_with_data = [l for l in unique_labels if l in triples]
    n_classes = len(classes_with_data)
    n_cols = 3   # correct | similar-wrong | different-wrong

    fig, axes = plt.subplots(n_classes, n_cols,
                             figsize=(n_cols * 4.5, n_classes * 4.0))
    if n_classes == 1:
        axes = [axes]

    col_titles = [
        'CORRECTLY CLASSIFIED',
        'WRONG — most similar graph',
        'WRONG — most different graph',
    ]

    for row_idx, lbl in enumerate(classes_with_data):
        correct, sim_wrong, diff_wrong = triples[lbl]
        samples = [correct, sim_wrong, diff_wrong]

        for col_idx, sample in enumerate(samples):
            ax = axes[row_idx][col_idx]

            if sample is None:
                ax.text(0.5, 0.5, 'No misclassified\nsamples', ha='center',
                        va='center', transform=ax.transAxes, fontsize=9,
                        color='grey')
                ax.set_title(f'{lbl}\n{col_titles[col_idx]}', fontsize=7, pad=3)
                ax.axis('off')
                continue

            is_correct = (col_idx == 0)
            col_header = col_titles[col_idx]
            draw_pdg(
                ax, sample['graph'],
                title=col_header,
                true_label=sample['label'],
                pred_label=sample['pred_label'],
                n_nodes=sample['n_nodes'],
                n_edges=sample['n_edges'],
                is_correct=is_correct,
            )

        # Row label on the left
        axes[row_idx][0].set_ylabel(lbl, fontsize=8, fontweight='bold',
                                     rotation=90, labelpad=6)

    # Column headers above first row
    for col_idx, title in enumerate(col_titles):
        axes[0][col_idx].set_title(
            f'{title}\n' + axes[0][col_idx].get_title(),
            fontsize=8, fontweight='bold', pad=3
        )

    # Legend
    legend_handles = make_edge_legend()
    fig.legend(handles=legend_handles, loc='lower center', ncol=4,
               fontsize=7, title='Edge Types', title_fontsize=8,
               bbox_to_anchor=(0.5, 0.0), framealpha=0.9)

    plt.suptitle(
        'V35 GINE PDG Comparison  |  Test accuracy: 93.89%\n'
        'Per class: correct (green) vs most-similar wrong (red) vs most-different wrong (red)',
        fontsize=11, fontweight='bold', y=1.01
    )
    plt.tight_layout(rect=[0, 0.06, 1, 1])

    out_path = OUTPUT_DIR / 'pdg_comparison_per_class.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f"\nSaved: {out_path}")

    # ── 7. Per-class pair plots: correct vs similar-wrong AND correct vs diff-wrong ──
    def plot_pair(lbl: str, correct_s: Dict, wrong_s: Optional[Dict],
                  pair_tag: str, subtitle: str, filename: str):
        """Save a 2-panel figure: correct on the left, one wrong sample on the right."""
        fig, axes_row = plt.subplots(1, 2, figsize=(11, 5))

        draw_pdg(axes_row[0], correct_s['graph'],
                 title='CORRECTLY CLASSIFIED',
                 true_label=correct_s['label'], pred_label=correct_s['pred_label'],
                 n_nodes=correct_s['n_nodes'], n_edges=correct_s['n_edges'],
                 is_correct=True)

        if wrong_s is None:
            axes_row[1].text(0.5, 0.5, 'No misclassified\nsamples', ha='center',
                             va='center', transform=axes_row[1].transAxes, fontsize=12,
                             color='grey')
            axes_row[1].axis('off')
        else:
            draw_pdg(axes_row[1], wrong_s['graph'],
                     title=f'WRONG  —  {pair_tag}',
                     true_label=wrong_s['label'], pred_label=wrong_s['pred_label'],
                     n_nodes=wrong_s['n_nodes'], n_edges=wrong_s['n_edges'],
                     is_correct=False)

        legend_handles = make_edge_legend()
        fig.legend(handles=legend_handles, loc='lower center', ncol=4,
                   fontsize=8, title='Edge Types', title_fontsize=9,
                   bbox_to_anchor=(0.5, -0.02), framealpha=0.95)

        fig.suptitle(f'Class: {lbl}  |  V35 GINE  |  {subtitle}',
                     fontsize=12, fontweight='bold')
        plt.tight_layout(rect=[0, 0.10, 1, 0.97])
        plt.savefig(OUTPUT_DIR / filename, dpi=150, bbox_inches='tight')
        plt.close()
        print(f"  Saved: {filename}")

    print("\nGenerating per-class pair plots ...")
    for lbl in classes_with_data:
        correct, sim_wrong, diff_wrong = triples[lbl]

        # Plot A: correct vs most-similar wrong
        sim_dist = graph_distance(correct['sim_vec'], sim_wrong['sim_vec']) if sim_wrong else float('nan')
        plot_pair(
            lbl, correct, sim_wrong,
            pair_tag='most similar graph',
            subtitle=f'correct vs most-similar wrong  (graph dist={sim_dist:.3f})',
            filename=f'pair_{lbl}_similar.png',
        )

        # Plot B: correct vs most-different wrong
        diff_dist = graph_distance(correct['sim_vec'], diff_wrong['sim_vec']) if diff_wrong else float('nan')
        plot_pair(
            lbl, correct, diff_wrong,
            pair_tag='most different graph',
            subtitle=f'correct vs most-different wrong  (graph dist={diff_dist:.3f})',
            filename=f'pair_{lbl}_different.png',
        )

    print("\nDone.")


if __name__ == '__main__':
    main()
