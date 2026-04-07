#!/usr/bin/env python3
"""
V37: Hierarchical GINE — Coarse-to-Fine with DropEdge and Curriculum Learning

Three techniques stacked on the v35 GINE architecture:
1. Hierarchical classification: coarse 5-class + fine 9-class heads
2. DropEdge: randomly drop 15% of edges during training
3. Curriculum learning: binary (1-10) → coarse (11-25) → fine (26+)

Coarse groups based on attack mechanism:
  0: BENIGN
  1: L1TF + SPECTRE_V1       (cache-timing speculation)
  2: BHI + SPECTRE_V2        (indirect branch attacks)
  3: RETBLEED + INCEPTION    (return-based attacks)
  4: MDS + SPECTRE_V4        (memory ordering attacks)
"""

import argparse
import json
import sys
import time
from pathlib import Path
from collections import Counter
from typing import List, Dict, Optional
import warnings
warnings.filterwarnings('ignore')

import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from tqdm import tqdm

sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES
from gine_classifier_v37 import GINEClassifier, SupervisedContrastiveLoss


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64
MAX_EDGES = 512
NODE_FEATURE_DIM = 34

CONFUSED_CLASS_NAMES = [
    ('L1TF', 'SPECTRE_V1'),
    ('L1TF', 'SPECTRE_V4'),
    ('MDS', 'SPECTRE_V4'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('SPECTRE_V2', 'BRANCH_HISTORY_INJECTION'),
    ('SPECTRE_V2', 'INCEPTION'),
    ('RETBLEED', 'INCEPTION'),
]

# Coarse mechanism groups
COARSE_GROUPS = {
    'BENIGN': 0,
    'L1TF': 1, 'SPECTRE_V1': 1,
    'BRANCH_HISTORY_INJECTION': 2, 'SPECTRE_V2': 2,
    'RETBLEED': 3, 'INCEPTION': 3,
    'MDS': 4, 'SPECTRE_V4': 4,
}
NUM_COARSE_CLASSES = 5
COARSE_NAMES = ['BENIGN', 'CACHE_SPEC', 'INDIRECT_BR', 'RETURN_BASED', 'MEM_ORDER']

# Curriculum phases
PHASE1_END = 10   # Binary (attack vs benign)
PHASE2_END = 25   # Coarse (5-class groups)
# Phase 3: Fine (9-class) from epoch 26+


# =============================================================================
# DATASET (same as v35)
# =============================================================================

class GINEDataset(Dataset):
    def __init__(self, records, label_to_id, handcrafted_feature_names,
                 max_nodes=MAX_NODES, max_edges=MAX_EDGES, speculative_window=10):
        self.label_to_id = label_to_id
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.max_edges = max_edges
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)

        print(f"Pre-computing PDGs with {NUM_EDGE_TYPES} edge types...")
        self.data = []
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")

        edge_counts = Counter()
        for item in self.data:
            n_real = item['n_edges']
            for et in item['edge_type'][:n_real]:
                edge_counts[et] += 1
        edge_names = {v: k for k, v in EDGE_TYPES.items()}
        print("  Edge type distribution:")
        total_edges = sum(edge_counts.values())
        for et in sorted(edge_counts.keys()):
            pct = 100.0 * edge_counts[et] / total_edges if total_edges > 0 else 0
            print(f"    {edge_names.get(et, '?'):15s}: {edge_counts[et]:>8d} ({pct:.1f}%)")

    def _process_record(self, rec):
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None
        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None

        pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None

        n_nodes = min(len(pdg.nodes), self.max_nodes)
        node_features = pdg.get_node_features(self.max_nodes)
        edge_index, edge_type = pdg.get_edge_index_and_type(self.max_nodes)
        edge_weight = pdg.get_edge_weights(self.max_nodes)
        n_edges = edge_index.shape[1]

        if n_edges > self.max_edges:
            edge_index = edge_index[:, :self.max_edges]
            edge_type = edge_type[:self.max_edges]
            edge_weight = edge_weight[:self.max_edges]
            n_edges = self.max_edges
        elif n_edges < self.max_edges:
            pad_size = self.max_edges - n_edges
            edge_index = np.pad(edge_index, ((0, 0), (0, pad_size)), constant_values=0)
            edge_type = np.pad(edge_type, (0, pad_size), constant_values=0)
            edge_weight = np.pad(edge_weight, (0, pad_size), constant_values=0.0)

        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        edge_mask = np.zeros(self.max_edges, dtype=bool)
        edge_mask[:n_edges] = True

        rec_features = rec.get('features', {})
        handcrafted = np.zeros(len(self.handcrafted_feature_names), dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and np.isfinite(val):
                handcrafted[i] = np.clip(val, -100, 100)

        return {
            'node_features': node_features.astype(np.float32),
            'edge_index': edge_index.astype(np.int64),
            'edge_type': edge_type.astype(np.int64),
            'edge_weight': edge_weight.astype(np.float32),
            'node_mask': node_mask,
            'edge_mask': edge_mask,
            'n_edges': n_edges,
            'handcrafted': handcrafted,
            'label': self.label_to_id[label],
        }

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        item = self.data[idx]
        return {
            'node_features': torch.from_numpy(item['node_features']),
            'edge_index': torch.from_numpy(item['edge_index']),
            'edge_type': torch.from_numpy(item['edge_type']),
            'edge_weight': torch.from_numpy(item['edge_weight']),
            'node_mask': torch.from_numpy(item['node_mask']),
            'edge_mask': torch.from_numpy(item['edge_mask']),
            'handcrafted': torch.from_numpy(item['handcrafted']),
            'label': item['label'],
        }


def collate_fn(batch):
    return {
        'node_features': torch.stack([x['node_features'] for x in batch]),
        'edge_index': torch.stack([x['edge_index'] for x in batch]),
        'edge_type': torch.stack([x['edge_type'] for x in batch]),
        'edge_weight': torch.stack([x['edge_weight'] for x in batch]),
        'node_mask': torch.stack([x['node_mask'] for x in batch]),
        'edge_mask': torch.stack([x['edge_mask'] for x in batch]),
        'handcrafted': torch.stack([x['handcrafted'] for x in batch]),
        'label': torch.tensor([x['label'] for x in batch], dtype=torch.long),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_epoch(model, loader, optimizer, ce_fine, ce_coarse, ce_binary,
                con_criterion, device, epoch, args, fine_to_coarse, fine_to_binary,
                grad_accum, drop_edge_rate):
    """
    Curriculum training with hierarchical loss and DropEdge.

    Phase 1 (epochs 1-10):  Binary loss only + feat_aux
    Phase 2 (epochs 11-25): Coarse + fine loss + SupCon + feat_aux
    Phase 3 (epochs 26+):   Fine + coarse + SupCon + feat_aux (full)
    """
    model.train()
    total_loss_val = 0
    correct_fine = 0
    correct_phase = 0  # accuracy for the current phase's task
    total = 0

    # Determine phase
    if epoch <= PHASE1_END:
        phase = 1
    elif epoch <= PHASE2_END:
        phase = 2
    else:
        phase = 3

    # SupCon warmup within each phase
    if phase == 1:
        lambda_con = 0.0  # no contrastive in binary phase
    elif phase == 2:
        phase2_epoch = epoch - PHASE1_END
        lambda_con = args.lambda_con * min(1.0, phase2_epoch / 5)
    else:
        lambda_con = args.lambda_con

    optimizer.zero_grad()

    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        fine_labels = batch['label'].to(device)

        # DropEdge: randomly zero out edges during training
        if drop_edge_rate > 0:
            drop = torch.rand_like(edge_mask.float()) > drop_edge_rate
            edge_mask = edge_mask & drop

        # Derive coarse and binary labels
        coarse_labels = fine_to_coarse[fine_labels]
        binary_labels = fine_to_binary[fine_labels]

        # Forward — get all heads
        fine_logits, coarse_logits, binary_logits, proj, feat_aux_logits = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, return_all_heads=True, edge_mask=edge_mask,
            edge_weight=edge_weight,
        )

        # Phase-dependent loss
        if phase == 1:
            # Binary only
            loss_primary = ce_binary(binary_logits, binary_labels)
            loss = loss_primary + 0.3 * ce_fine(feat_aux_logits, fine_labels)
            phase_preds = binary_logits.argmax(dim=1)
            correct_phase += (phase_preds == binary_labels).sum().item()
        elif phase == 2:
            # Coarse primary + fine secondary
            loss_coarse = ce_coarse(coarse_logits, coarse_labels)
            loss_fine = ce_fine(fine_logits, fine_labels)
            con_loss = con_criterion(proj, fine_labels) if lambda_con > 0 else torch.tensor(0.0, device=device)
            loss = loss_coarse + 0.3 * loss_fine + lambda_con * con_loss + 0.3 * ce_fine(feat_aux_logits, fine_labels)
            phase_preds = coarse_logits.argmax(dim=1)
            correct_phase += (phase_preds == coarse_labels).sum().item()
        else:
            # Fine primary + coarse auxiliary
            loss_fine = ce_fine(fine_logits, fine_labels)
            loss_coarse = ce_coarse(coarse_logits, coarse_labels)
            con_loss = con_criterion(proj, fine_labels) if lambda_con > 0 else torch.tensor(0.0, device=device)
            loss = loss_fine + args.coarse_weight * loss_coarse + lambda_con * con_loss + 0.3 * ce_fine(feat_aux_logits, fine_labels)
            phase_preds = fine_logits.argmax(dim=1)
            correct_phase += (phase_preds == fine_labels).sum().item()

        loss_scaled = loss / grad_accum
        loss_scaled.backward()

        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()

        total_loss_val += loss.item()

        # Always track fine accuracy for comparison
        fine_preds = fine_logits.argmax(dim=1)
        correct_fine += (fine_preds == fine_labels).sum().item()
        total += fine_labels.size(0)

    n = len(loader)
    return total_loss_val / n, correct_fine / total, correct_phase / total, phase


@torch.no_grad()
def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []

    for batch in loader:
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)

        logits = model(node_features, edge_index, edge_type, node_mask, handcrafted,
                       edge_mask=edge_mask, edge_weight=edge_weight)

        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)

        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())

    return correct / total, all_preds, all_labels


@torch.no_grad()
def evaluate_coarse(model, loader, device, fine_to_coarse):
    """Evaluate coarse (5-class) accuracy."""
    model.eval()
    correct = 0
    total = 0

    for batch in loader:
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        fine_labels = batch['label'].to(device)
        coarse_labels = fine_to_coarse[fine_labels]

        fine_logits, coarse_logits, binary_logits, _, _ = model(
            node_features, edge_index, edge_type, node_mask, handcrafted,
            return_all_heads=True, edge_mask=edge_mask, edge_weight=edge_weight,
        )

        preds = coarse_logits.argmax(dim=1)
        correct += (preds == coarse_labels).sum().item()
        total += fine_labels.size(0)

    return correct / total


@torch.no_grad()
def analyze_edge_type_importance(model, loader, label_names, device, viz_dir):
    model.eval()
    edge_type_names = {v: k for k, v in EDGE_TYPES.items()}
    class_edge_counts = {label: Counter() for label in label_names.values()}

    for batch in loader:
        edge_type = batch['edge_type']
        edge_mask = batch['edge_mask']
        labels = batch['label']
        for b in range(edge_type.shape[0]):
            label_name = label_names[labels[b].item()]
            valid_types = edge_type[b][edge_mask[b]]
            for et in valid_types.tolist():
                class_edge_counts[label_name][et] += 1

    result = {}
    abbrev = {
        'DATA_DEP': 'DataDep', 'CONTROL_FLOW': 'CtrlFlow',
        'SPEC_CONDITIONAL': 'SpecCond', 'SPEC_INDIRECT': 'SpecInd',
        'SPEC_RETURN': 'SpecRet', 'MEMORY_ORDER': 'MemOrd',
        'CACHE_TEMPORAL': 'CacheTmp', 'FENCE_BOUNDARY': 'FenceBnd',
    }

    print("\n  Edge type distribution per class:")
    header = f"  {'Class':<25}"
    for et in range(NUM_EDGE_TYPES):
        name = abbrev.get(edge_type_names[et], edge_type_names[et])
        header += f" {name:>9}"
    print(header)
    print("  " + "-" * (25 + 10 * NUM_EDGE_TYPES))

    for label_name in sorted(class_edge_counts.keys()):
        counts = class_edge_counts[label_name]
        total = sum(counts.values())
        if total == 0:
            continue
        props = {}
        line = f"  {label_name:<25}"
        for et in range(NUM_EDGE_TYPES):
            prop = counts[et] / total if total > 0 else 0
            props[edge_type_names[et]] = prop
            line += f" {prop:>9.3f}"
        print(line)
        result[label_name] = props

    with open(viz_dir / 'edge_type_distribution.json', 'w') as f:
        json.dump(result, f, indent=2)

    fig, ax = plt.subplots(figsize=(18, 8))
    x = np.arange(len(result))
    n_types = NUM_EDGE_TYPES
    width = 0.8 / n_types
    colors = ['#2ecc71', '#95a5a6', '#e74c3c', '#c0392b', '#8e44ad',
              '#f39c12', '#3498db', '#1abc9c']
    for et in range(n_types):
        vals = [result[name][edge_type_names[et]] for name in sorted(result.keys())]
        offset = (et - (n_types - 1) / 2) * width
        label = abbrev.get(edge_type_names[et], edge_type_names[et])
        ax.bar(x + offset, vals, width, label=label, color=colors[et % len(colors)])
    ax.set_ylabel('Proportion of Edges')
    ax.set_title('V37 Hierarchical GINE: Edge Type Distribution per Class')
    ax.set_xticks(x)
    ax.set_xticklabels(sorted(result.keys()), rotation=45, ha='right')
    ax.legend(fontsize=8, ncol=2)
    ax.set_ylim(0, 1)
    plt.tight_layout()
    plt.savefig(viz_dir / 'edge_type_distribution.png', dpi=150)
    plt.close()


def plot_confusion_matrix(y_true, y_pred, labels, title, output_path):
    cm = confusion_matrix(y_true, y_pred)
    fig, ax = plt.subplots(figsize=(12, 10))
    im = ax.imshow(cm, interpolation='nearest', cmap=plt.cm.Blues)
    ax.figure.colorbar(im, ax=ax)
    ax.set(xticks=np.arange(cm.shape[1]), yticks=np.arange(cm.shape[0]),
           xticklabels=labels, yticklabels=labels,
           title=title, ylabel='True label', xlabel='Predicted label')
    plt.setp(ax.get_xticklabels(), rotation=45, ha="right", rotation_mode="anchor")
    thresh = cm.max() / 2.
    for i in range(cm.shape[0]):
        for j in range(cm.shape[1]):
            ax.text(j, i, format(cm[i, j], 'd'), ha="center", va="center",
                    color="white" if cm[i, j] > thresh else "black")
    fig.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()


def plot_training_history(history, output_path):
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))

    ax = axes[0, 0]
    ax.plot(history['loss'], 'b-', label='Total Loss')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.set_title('Training Loss')
    ax.legend()
    ax.grid(True, alpha=0.3)
    # Phase boundaries
    ax.axvline(x=PHASE1_END, color='gray', linestyle='--', alpha=0.5, label='Phase 2')
    ax.axvline(x=PHASE2_END, color='gray', linestyle=':', alpha=0.5, label='Phase 3')

    ax = axes[0, 1]
    ax.plot(history['phase_acc'], 'g-', label='Phase Task Acc')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Accuracy')
    ax.set_title('Current Phase Accuracy')
    ax.legend()
    ax.grid(True, alpha=0.3)
    ax.axvline(x=PHASE1_END, color='gray', linestyle='--', alpha=0.5)
    ax.axvline(x=PHASE2_END, color='gray', linestyle=':', alpha=0.5)

    ax = axes[1, 0]
    ax.plot(history['train_acc'], 'b-', label='Train Fine Acc')
    ax.plot(history['test_acc'], 'r-', label='Test Fine Acc')
    if 'test_coarse_acc' in history:
        ax.plot(history['test_coarse_acc'], 'g--', label='Test Coarse Acc')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Accuracy')
    ax.set_title('Classification Accuracy (Fine 9-class)')
    ax.legend()
    ax.grid(True, alpha=0.3)
    ax.axvline(x=PHASE1_END, color='gray', linestyle='--', alpha=0.5)
    ax.axvline(x=PHASE2_END, color='gray', linestyle=':', alpha=0.5)

    ax = axes[1, 1]
    ax.plot(history['lr'], 'g-')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Learning Rate')
    ax.set_title('Learning Rate Schedule')
    ax.grid(True, alpha=0.3)
    ax.set_yscale('log')

    plt.suptitle('V37 Hierarchical GINE Training History\n'
                 f'Phase 1: Binary (1-{PHASE1_END}) | '
                 f'Phase 2: Coarse (>{PHASE1_END}-{PHASE2_END}) | '
                 f'Phase 3: Fine (>{PHASE2_END}+)', fontsize=12)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V37: Hierarchical GINE Classifier')
    parser.add_argument('--data', type=str, default='data/combined_v25_real_benign.jsonl')
    parser.add_argument('--output-dir', type=str, default='viz_v37_hierarchical_gine')
    parser.add_argument('--viz-dir', type=str, default='viz_v37_hierarchical_gine')
    parser.add_argument('--epochs', type=int, default=120)
    parser.add_argument('--patience', type=int, default=25)
    parser.add_argument('--hidden-dim', type=int, default=256)
    parser.add_argument('--num-layers', type=int, default=4)
    parser.add_argument('--jk-mode', type=str, default='cat', choices=['cat', 'sum', 'last'])
    parser.add_argument('--batch-size', type=int, default=32)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--weight-decay', type=float, default=1e-4)
    parser.add_argument('--dropout', type=float, default=0.3)
    parser.add_argument('--lambda-con', type=float, default=0.5)
    parser.add_argument('--temperature', type=float, default=0.07)
    parser.add_argument('--hard-neg-weight', type=float, default=2.0)
    parser.add_argument('--grad-accum', type=int, default=2)
    parser.add_argument('--coarse-weight', type=float, default=0.3,
                        help='Weight for coarse loss in phase 3')
    parser.add_argument('--drop-edge-rate', type=float, default=0.15,
                        help='Fraction of edges to drop during training')
    parser.add_argument('--no-virtual-node', action='store_true')
    parser.add_argument('--speculative-window', type=int, default=10)

    args = parser.parse_args()

    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print("V37: Hierarchical GINE (Coarse-to-Fine + DropEdge + Curriculum)")
    print("=" * 70)
    print()
    print("Architecture:")
    print(f"  GINE layers: {args.num_layers} (sum aggregation)")
    print(f"  Hidden dim: {args.hidden_dim}")
    print(f"  JK mode: {args.jk_mode}")
    print(f"  Virtual node: {not args.no_virtual_node}")
    print(f"  Readout: Attention (gated attn + sum)")
    print(f"  Edge types: {NUM_EDGE_TYPES}")
    print(f"  Heads: fine (9-class) + coarse (5-class) + binary (2-class)")
    print()
    print("New techniques:")
    print(f"  DropEdge rate: {args.drop_edge_rate}")
    print(f"  Coarse loss weight: {args.coarse_weight}")
    print(f"  Curriculum: Phase 1 binary (1-{PHASE1_END}), "
          f"Phase 2 coarse ({PHASE1_END+1}-{PHASE2_END}), "
          f"Phase 3 fine ({PHASE2_END+1}+)")
    print()
    print("Training:")
    print(f"  Joint loss: phase-dependent + {args.lambda_con} * SupCon")
    print(f"  Optimizer: AdamW (lr={args.lr}, wd={args.weight_decay})")
    print(f"  Scheduler: CosineAnnealing ({args.epochs} epochs)")
    print(f"  Batch size: {args.batch_size}")
    print()

    output_dir = Path(args.output_dir)
    viz_dir = Path(args.viz_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)

    # Load data
    print(f"Loading data from {args.data}...")
    records = []
    with open(args.data) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                label = rec.get('label', 'UNKNOWN')
                if label in ('vuln', 'benign'):
                    label = rec.get('vuln_label', label.upper() if label == 'benign' else 'UNKNOWN')
                rec['label'] = label
                records.append(rec)
    print(f"  Loaded {len(records)} records")

    label_counts = Counter(r.get('label', 'UNKNOWN') for r in records)
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        print(f"  {label}: {count}")

    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"\nAfter filtering: {len(records)} records")

    unique_labels = sorted(set(r['label'] for r in records))
    label_to_id = {label: i for i, label in enumerate(unique_labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"Number of classes: {num_classes}")

    # Build fine→coarse and fine→binary mapping tensors
    fine_to_coarse_list = []
    for i in range(num_classes):
        label_name = id_to_label[i]
        coarse_id = COARSE_GROUPS.get(label_name, 0)
        fine_to_coarse_list.append(coarse_id)
    fine_to_coarse = torch.tensor(fine_to_coarse_list, dtype=torch.long, device=DEVICE)
    print(f"\nCoarse groups:")
    for i in range(num_classes):
        print(f"  {id_to_label[i]:30s} -> {COARSE_NAMES[fine_to_coarse_list[i]]} (group {fine_to_coarse_list[i]})")

    # Binary: 0=BENIGN, 1=attack
    fine_to_binary_list = [0 if id_to_label[i] == 'BENIGN' else 1 for i in range(num_classes)]
    fine_to_binary = torch.tensor(fine_to_binary_list, dtype=torch.long, device=DEVICE)

    # Confused pairs
    confused_pairs = []
    for name1, name2 in CONFUSED_CLASS_NAMES:
        if name1 in label_to_id and name2 in label_to_id:
            confused_pairs.append((label_to_id[name1], label_to_id[name2]))
            print(f"  Hard negative pair: {name1} <-> {name2}")

    # Feature names
    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ['sequence', 'label']
    ])
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features: {handcrafted_dim}")

    # Split
    print("\nSplitting train/test...")
    labels = [r['label'] for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")

    # Datasets
    print("\nCreating datasets...")
    train_dataset = GINEDataset(
        train_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
    )
    test_dataset = GINEDataset(
        test_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
    )

    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False,
                             collate_fn=collate_fn, num_workers=0)

    # Model
    print(f"\nInitializing Hierarchical GINE model...")
    model = GINEClassifier(
        node_feat_dim=NODE_FEATURE_DIM,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=args.hidden_dim,
        num_layers=args.num_layers,
        num_classes=num_classes,
        num_coarse_classes=NUM_COARSE_CLASSES,
        handcrafted_dim=handcrafted_dim,
        dropout=args.dropout,
        use_virtual_node=not args.no_virtual_node,
        jk_mode=args.jk_mode,
    ).to(DEVICE)

    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Total parameters: {total_params:,}")
    print(f"  Trainable parameters: {trainable_params:,}")
    print(f"  (v35 baseline: 1,824,666 params)")

    # Loss functions — fine (weighted), coarse (weighted), binary (unweighted)
    class_counts = Counter(r['label'] for r in train_records)
    total_train = sum(class_counts.values())

    fine_weights = torch.tensor([
        total_train / (num_classes * class_counts.get(id_to_label[i], 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)

    # Coarse class weights
    coarse_counts = Counter()
    for r in train_records:
        coarse_counts[COARSE_GROUPS[r['label']]] += 1
    coarse_weights = torch.tensor([
        total_train / (NUM_COARSE_CLASSES * coarse_counts.get(i, 1))
        for i in range(NUM_COARSE_CLASSES)
    ], dtype=torch.float32).to(DEVICE)

    ce_fine = nn.CrossEntropyLoss(weight=fine_weights)
    ce_coarse = nn.CrossEntropyLoss(weight=coarse_weights)
    ce_binary = nn.CrossEntropyLoss()  # balanced (8:1 attack:benign, but binary is easy)

    con_criterion = SupervisedContrastiveLoss(
        temperature=args.temperature,
        hard_negative_weight=args.hard_neg_weight,
        confused_pairs=confused_pairs,
    )

    optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=args.weight_decay)
    scheduler = optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=args.epochs)

    # Training
    print()
    print("=" * 70)
    print("TRAINING: Hierarchical GINE with Curriculum + DropEdge")
    print("=" * 70)

    history = {
        'loss': [],
        'train_acc': [],
        'test_acc': [],
        'test_coarse_acc': [],
        'phase_acc': [],
        'lr': [],
        'phase': [],
    }

    best_test_acc = 0
    patience_counter = 0
    # Only start patience counting after phase 3 begins
    patience_active = False

    for epoch in range(1, args.epochs + 1):
        start_time = time.time()

        loss, train_fine_acc, phase_acc, phase = train_epoch(
            model, train_loader, optimizer, ce_fine, ce_coarse, ce_binary,
            con_criterion, DEVICE, epoch, args, fine_to_coarse, fine_to_binary,
            args.grad_accum, args.drop_edge_rate,
        )

        test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
        test_coarse_acc = evaluate_coarse(model, test_loader, DEVICE, fine_to_coarse)

        scheduler.step()
        elapsed = time.time() - start_time
        lr = optimizer.param_groups[0]['lr']

        history['loss'].append(loss)
        history['train_acc'].append(train_fine_acc)
        history['test_acc'].append(test_acc)
        history['test_coarse_acc'].append(test_coarse_acc)
        history['phase_acc'].append(phase_acc)
        history['lr'].append(lr)
        history['phase'].append(phase)

        improved = ""
        if epoch > PHASE2_END:
            patience_active = True

        if test_acc > best_test_acc:
            best_test_acc = test_acc
            if patience_active:
                patience_counter = 0
            improved = " *BEST*"

            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'epoch': epoch,
                'test_acc': test_acc,
                'label_to_id': label_to_id,
                'feature_names': feature_names,
                'args': vars(args),
            }, output_dir / 'gine_best.pt')
        else:
            if patience_active:
                patience_counter += 1

        phase_name = ['', 'BINARY', 'COARSE', 'FINE'][phase]
        print(f"Epoch {epoch:3d}/{args.epochs} [{phase_name:6s}] | "
              f"Loss: {loss:.4f} | "
              f"Train9: {train_fine_acc:.3f} | Test9: {test_acc:.3f} | "
              f"TestCoarse: {test_coarse_acc:.3f} | "
              f"PhaseAcc: {phase_acc:.3f} | "
              f"LR: {lr:.2e} | {elapsed:.1f}s{improved}")

        if patience_active and patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch} (patience={args.patience})")
            break

    # =================================================================
    # EVALUATION
    # =================================================================
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)

    checkpoint = torch.load(output_dir / 'gine_best.pt', map_location=DEVICE)
    model.load_state_dict(checkpoint['model_state_dict'])
    best_epoch = checkpoint['epoch']
    print(f"Loaded best model from epoch {best_epoch}")

    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    test_coarse_acc = evaluate_coarse(model, test_loader, DEVICE, fine_to_coarse)
    print(f"\nTest accuracy (fine 9-class): {test_acc:.4f}")
    print(f"Test accuracy (coarse 5-class): {test_coarse_acc:.4f}")

    label_names = [id_to_label[i] for i in range(num_classes)]
    print(f"\nClassification Report (Fine 9-class):")
    report = classification_report(test_labels, test_preds, target_names=label_names)
    print(report)

    report_dict = classification_report(test_labels, test_preds,
                                        target_names=label_names, output_dict=True)
    metrics = {
        'test_accuracy': test_acc,
        'test_coarse_accuracy': test_coarse_acc,
        'best_epoch': best_epoch,
        'total_params': total_params,
        'num_classes': num_classes,
        'num_coarse_classes': NUM_COARSE_CLASSES,
        'classification_report': report_dict,
        'args': vars(args),
        'techniques': ['hierarchical_coarse_fine', 'drop_edge', 'curriculum_learning'],
    }
    with open(output_dir / 'gine_metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)

    # Fine confusion matrix
    plot_confusion_matrix(
        test_labels, test_preds, label_names,
        f'V37 Hierarchical GINE Confusion Matrix (Acc={test_acc:.3f})',
        viz_dir / 'confusion_matrix.png',
    )

    # Coarse confusion matrix
    coarse_true = [fine_to_coarse_list[l] for l in test_labels]
    coarse_pred = [fine_to_coarse_list[p] for p in test_preds]
    plot_confusion_matrix(
        coarse_true, coarse_pred, COARSE_NAMES,
        f'V37 Coarse Confusion Matrix (Acc={test_coarse_acc:.3f})',
        viz_dir / 'confusion_matrix_coarse.png',
    )

    plot_training_history(history, viz_dir / 'training_history.png')

    print("\nEdge type distribution analysis...")
    analyze_edge_type_importance(model, test_loader, id_to_label, DEVICE, viz_dir)

    with open(viz_dir / 'training_history.json', 'w') as f:
        json.dump(history, f, indent=2)

    # Log attention gate
    gate_val = torch.sigmoid(model.attention_readout.gate).item()
    print(f"\nAttention readout gate: {gate_val:.4f} (1.0=pure attention, 0.0=pure sum)")

    print(f"\nResults saved to: {output_dir}/")
    print(f"Visualizations saved to: {viz_dir}/")
    print(f"\nBest test accuracy (fine): {best_test_acc:.4f}")
    print(f"Baseline (v35): 93.89%")
    print(f"Delta: {(best_test_acc - 0.9389) * 100:+.2f}%")


if __name__ == '__main__':
    main()
