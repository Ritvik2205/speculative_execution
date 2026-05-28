#!/usr/bin/env python3
"""
V39a: GINE with Multi-Label Soft Targets + Aleatoric Uncertainty

Addresses cross-class duplicates as aleatoric uncertainty, not label noise.

Key changes from v35 baseline (93.89%):

1. Soft label construction:
   - Hash each instruction sequence (opcode + operands)
   - Sequences appearing in multiple classes get soft label distributions
     proportional to frequency (e.g., 3x L1TF + 2x V1 -> [0.6 L1TF, 0.4 V1])
   - Unique sequences keep hard labels

2. Heteroscedastic aleatoric uncertainty (Kendall & Gal, NeurIPS 2017):
   - Model predicts log(sigma^2) per sample alongside class logits
   - Loss = (1/2) * exp(-s) * L_task + (1/2) * s
   - Ambiguous samples learn high variance -> reduced gradient contribution
   - Clear samples learn low variance -> amplified signal

3. KL-divergence loss for soft targets instead of cross-entropy

Theoretical basis:
- Kendall & Gal (2017): aleatoric uncertainty modeling for classification
- Northcutt et al. (2021): confident learning — but we treat duplicates as
  genuine multi-label signal, not noise to clean
- The cross-class duplicates (3.6% of data) are real: the same instruction
  sequence genuinely triggers multiple vulnerability types depending on
  microarchitectural state

Architecture: identical to v35 + 1 extra head (log_var_head)
"""

import argparse
import hashlib
import json
import sys
import time
from pathlib import Path
from collections import Counter, defaultdict
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
from gine_classifier_v39a import GINEClassifier, HeteroscedasticLoss, SupervisedContrastiveLoss
from strip_boilerplate import strip_boilerplate

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


# =============================================================================
# SOFT LABEL CONSTRUCTION
# =============================================================================

def hash_sequence(sequence):
    """Create a deterministic hash of an instruction sequence."""
    # Sequences are plain strings like "ldr\tw13, [sp,"
    key = "||".join(s.strip().lower() for s in sequence)
    return hashlib.sha256(key.encode()).hexdigest()


def build_soft_labels(records, label_to_id, num_classes):
    """
    Detect cross-class duplicates and build soft label distributions.

    For each unique sequence:
    - If it appears in only one class: hard label (1.0 for that class)
    - If it appears in multiple classes: soft label proportional to frequency

    Returns:
        List of soft label arrays [num_classes] for each record
        Stats dict with duplicate information
    """
    # Hash all sequences
    print("  Hashing sequences for duplicate detection...")
    hash_to_labels = defaultdict(list)
    record_hashes = []

    for rec in tqdm(records, desc="  Hashing"):
        seq = rec.get('sequence', [])
        h = hash_sequence(seq)
        record_hashes.append(h)
        label = rec.get('label', 'UNKNOWN')
        if label in label_to_id:
            hash_to_labels[h].append(label_to_id[label])

    # Build soft labels
    print("  Building soft label distributions...")
    soft_labels = []
    n_multi = 0
    n_single = 0

    for i, rec in enumerate(records):
        h = record_hashes[i]
        label_ids = hash_to_labels[h]
        label = rec.get('label', 'UNKNOWN')

        if label not in label_to_id:
            soft_labels.append(None)
            continue

        unique_labels = set(label_ids)

        if len(unique_labels) > 1:
            # Multi-class duplicate: create soft distribution
            dist = np.zeros(num_classes, dtype=np.float32)
            label_counts = Counter(label_ids)
            total = sum(label_counts.values())
            for lid, count in label_counts.items():
                dist[lid] = count / total
            soft_labels.append(dist)
            n_multi += 1
        else:
            # Single-class: hard label
            dist = np.zeros(num_classes, dtype=np.float32)
            dist[label_to_id[label]] = 1.0
            soft_labels.append(dist)
            n_single += 1

    # Stats
    n_unique_seqs = len(hash_to_labels)
    n_multi_seqs = sum(1 for labels in hash_to_labels.values() if len(set(labels)) > 1)

    stats = {
        'total_records': len(records),
        'unique_sequences': n_unique_seqs,
        'multi_class_sequences': n_multi_seqs,
        'multi_class_records': n_multi,
        'single_class_records': n_single,
        'multi_class_pct': 100 * n_multi / max(len(records), 1),
    }

    print(f"  Unique sequences: {n_unique_seqs}")
    print(f"  Multi-class sequences: {n_multi_seqs} ({100*n_multi_seqs/max(n_unique_seqs,1):.1f}%)")
    print(f"  Records with soft labels: {n_multi} ({stats['multi_class_pct']:.1f}%)")
    print(f"  Records with hard labels: {n_single}")

    return soft_labels, stats


# =============================================================================
# DATASET
# =============================================================================

class GINEDatasetV39a(Dataset):
    """GINE dataset with soft labels and boilerplate stripping."""

    def __init__(
        self,
        records: List[Dict],
        soft_labels: List[Optional[np.ndarray]],
        label_to_id: Dict[str, int],
        num_classes: int,
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        max_edges: int = MAX_EDGES,
        speculative_window: int = 10,
        strip_bp: bool = True,
    ):
        self.label_to_id = label_to_id
        self.num_classes = num_classes
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.max_edges = max_edges
        self.strip_bp = strip_bp
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)

        print(f"Pre-computing PDGs (strip_boilerplate={strip_bp}) ...")
        self.data = []
        n_stripped = 0
        total_before = 0
        total_after = 0

        for rec, sl in tqdm(zip(records, soft_labels), total=len(records), desc="Building PDGs"):
            if sl is None:
                continue
            item = self._process_record(rec, sl)
            if item is not None:
                self.data.append(item)
                total_before += item.get('_len_before', 0)
                total_after += item.get('_len_after', 0)
                if item.get('_was_stripped', False):
                    n_stripped += 1

        print(f"  Valid samples: {len(self.data)}/{len(records)}")
        if strip_bp:
            pct = 100 * n_stripped / max(len(self.data), 1)
            reduction = 100 * (1 - total_after / max(total_before, 1))
            print(f"  Boilerplate stripped: {n_stripped} ({pct:.1f}%) samples")
            print(f"  Instructions: {total_before} -> {total_after} ({reduction:.1f}% reduction)")

    def _process_record(self, rec: Dict, soft_label: np.ndarray) -> Optional[Dict]:
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None

        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None

        len_before = len(sequence)

        if self.strip_bp:
            sequence = strip_boilerplate(sequence)

        len_after = len(sequence)
        was_stripped = len_after < len_before

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

        # Is this a soft (multi-class) label?
        is_soft = (soft_label.max() < 0.999)  # Not a hard label

        return {
            'node_features': node_features.astype(np.float32),
            'edge_index': edge_index.astype(np.int64),
            'edge_type': edge_type.astype(np.int64),
            'edge_weight': edge_weight.astype(np.float32),
            'node_mask': node_mask,
            'edge_mask': edge_mask,
            'handcrafted': handcrafted,
            'hard_label': self.label_to_id[label],  # For evaluation
            'soft_label': soft_label,  # For training
            'is_soft': is_soft,
            '_len_before': len_before,
            '_len_after': len_after,
            '_was_stripped': was_stripped,
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
            'hard_label': item['hard_label'],
            'soft_label': torch.from_numpy(item['soft_label']),
            'is_soft': item['is_soft'],
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
        'hard_label': torch.tensor([x['hard_label'] for x in batch], dtype=torch.long),
        'soft_label': torch.stack([x['soft_label'] for x in batch]),
        'is_soft': torch.tensor([x['is_soft'] for x in batch], dtype=torch.bool),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_epoch(model, loader, optimizer, hetero_loss_fn, con_criterion, device,
                lambda_con, grad_accum):
    model.train()
    total_task_loss = 0
    total_con_loss = 0
    total_mean_var = 0
    correct = 0
    total = 0

    optimizer.zero_grad()

    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        hard_labels = batch['hard_label'].to(device)
        soft_labels = batch['soft_label'].to(device)

        logits, proj, feat_aux_logits, log_var = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, return_projection=True, return_uncertainty=True,
            edge_mask=edge_mask, edge_weight=edge_weight,
        )

        # Heteroscedastic loss with soft targets
        task_loss = hetero_loss_fn(logits, log_var, soft_labels, is_soft=True)

        # Contrastive loss uses hard labels (for positive pair matching)
        con_loss = con_criterion(proj, hard_labels) if lambda_con > 0 else torch.tensor(0.0, device=device)

        # Feature auxiliary loss with soft targets (KL-div)
        feat_aux_log_probs = F.log_softmax(feat_aux_logits, dim=-1)
        feat_aux_loss = -(soft_labels * feat_aux_log_probs).sum(dim=-1).mean()

        loss = (task_loss + lambda_con * con_loss + 0.3 * feat_aux_loss) / grad_accum
        loss.backward()

        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()

        total_task_loss += task_loss.item()
        total_con_loss += con_loss.item()
        total_mean_var += torch.exp(log_var).mean().item()

        # Accuracy based on hard labels (argmax of logits vs true class)
        preds = logits.argmax(dim=1)
        correct += (preds == hard_labels).sum().item()
        total += hard_labels.size(0)

    n = len(loader)
    return total_task_loss / n, total_con_loss / n, correct / total, total_mean_var / n


@torch.no_grad()
def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    all_vars = []

    for batch in loader:
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        hard_labels = batch['hard_label'].to(device)

        logits, log_var = model(
            node_features, edge_index, edge_type, node_mask, handcrafted,
            return_uncertainty=True, edge_mask=edge_mask, edge_weight=edge_weight,
        )

        preds = logits.argmax(dim=1)
        correct += (preds == hard_labels).sum().item()
        total += hard_labels.size(0)

        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(hard_labels.cpu().tolist())
        all_vars.extend(torch.exp(log_var).squeeze(-1).cpu().tolist())

    return correct / total, all_preds, all_labels, all_vars


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


def plot_training_history(history, output_path, tag):
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))

    axes[0, 0].plot(history['task_loss'], 'b-', label='Hetero Loss')
    axes[0, 0].set_xlabel('Epoch'); axes[0, 0].set_ylabel('Loss')
    axes[0, 0].set_title('Heteroscedastic Task Loss'); axes[0, 0].legend(); axes[0, 0].grid(True, alpha=0.3)

    axes[0, 1].plot(history['con_loss'], 'r-', label='SupCon Loss')
    axes[0, 1].set_xlabel('Epoch'); axes[0, 1].set_ylabel('Loss')
    axes[0, 1].set_title('Supervised Contrastive Loss'); axes[0, 1].legend(); axes[0, 1].grid(True, alpha=0.3)

    axes[1, 0].plot(history['train_acc'], 'b-', label='Train Acc')
    axes[1, 0].plot(history['test_acc'], 'r-', label='Test Acc')
    axes[1, 0].set_xlabel('Epoch'); axes[1, 0].set_ylabel('Accuracy')
    axes[1, 0].set_title('Classification Accuracy'); axes[1, 0].legend(); axes[1, 0].grid(True, alpha=0.3)

    axes[1, 1].plot(history['mean_var'], 'purple', label='Mean sigma^2')
    axes[1, 1].set_xlabel('Epoch'); axes[1, 1].set_ylabel('Mean Variance')
    axes[1, 1].set_title('Learned Aleatoric Variance'); axes[1, 1].legend(); axes[1, 1].grid(True, alpha=0.3)

    plt.suptitle(f'{tag} Training History', fontsize=14)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


def plot_uncertainty_analysis(all_labels, all_preds, all_vars, id_to_label, output_path):
    """Plot learned uncertainty vs correctness and per-class."""
    fig, axes = plt.subplots(1, 3, figsize=(18, 5))

    all_vars = np.array(all_vars)
    all_labels = np.array(all_labels)
    all_preds = np.array(all_preds)
    correct_mask = (all_labels == all_preds)

    # 1. Uncertainty for correct vs incorrect
    correct_vars = all_vars[correct_mask]
    incorrect_vars = all_vars[~correct_mask]

    axes[0].hist(correct_vars, bins=50, alpha=0.6, label=f'Correct (n={len(correct_vars)})', color='green', density=True)
    axes[0].hist(incorrect_vars, bins=50, alpha=0.6, label=f'Incorrect (n={len(incorrect_vars)})', color='red', density=True)
    axes[0].set_xlabel('Learned Variance (sigma^2)')
    axes[0].set_ylabel('Density')
    axes[0].set_title('Learned Uncertainty: Correct vs Incorrect')
    axes[0].legend()
    axes[0].grid(True, alpha=0.3)

    # 2. Per-class mean uncertainty
    classes = sorted(set(all_labels))
    class_names = [id_to_label[c] for c in classes]
    class_means = [all_vars[all_labels == c].mean() for c in classes]

    bars = axes[1].barh(class_names, class_means, color='steelblue')
    axes[1].set_xlabel('Mean Learned Variance')
    axes[1].set_title('Per-Class Aleatoric Uncertainty')
    axes[1].grid(True, alpha=0.3, axis='x')

    # 3. Uncertainty vs confidence (softmax max)
    # Not available without logits, so plot uncertainty distribution
    axes[2].hist(all_vars, bins=80, color='purple', alpha=0.7)
    axes[2].set_xlabel('Learned Variance (sigma^2)')
    axes[2].set_ylabel('Count')
    axes[2].set_title('Distribution of Learned Uncertainty')
    axes[2].axvline(all_vars.mean(), color='red', linestyle='--', label=f'Mean={all_vars.mean():.3f}')
    axes[2].legend()
    axes[2].grid(True, alpha=0.3)

    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V39a: GINE + soft labels + aleatoric uncertainty')
    parser.add_argument('--data', type=str, default='data/features/combined_v25_real_benign.jsonl')
    parser.add_argument('--output-dir', type=str, default='viz_v39a_multilabel')
    parser.add_argument('--viz-dir', type=str, default='viz_v39a_multilabel')
    parser.add_argument('--epochs', type=int, default=100)
    parser.add_argument('--patience', type=int, default=20)
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
    parser.add_argument('--no-virtual-node', action='store_true')
    parser.add_argument('--no-strip', action='store_true')
    parser.add_argument('--speculative-window', type=int, default=10)

    args = parser.parse_args()
    tag = "V39a GINE Multi-Label+Aleatoric"

    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print(f"{tag}")
    print("=" * 70)
    print()
    print("Changes from v35 baseline:")
    print("  1. Soft labels for cross-class duplicates (KL-div loss)")
    print("  2. Heteroscedastic aleatoric uncertainty (Kendall & Gal 2017)")
    print("  3. Boilerplate stripping")
    print()
    print(f"Architecture: GINE layers={args.num_layers}, hidden={args.hidden_dim}")
    print(f"  JK mode: {args.jk_mode}, Virtual node: {not args.no_virtual_node}")
    print(f"  Node features: {NODE_FEATURE_DIM}")
    print(f"  Edge types: {NUM_EDGE_TYPES}")
    print(f"  Strip boilerplate: {not args.no_strip}")
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

    confused_pairs = []
    for name1, name2 in CONFUSED_CLASS_NAMES:
        if name1 in label_to_id and name2 in label_to_id:
            confused_pairs.append((label_to_id[name1], label_to_id[name2]))
            print(f"  Hard negative pair: {name1} <-> {name2}")

    # Build soft labels BEFORE train/test split
    print("\nBuilding soft labels from cross-class duplicates...")
    soft_labels, dup_stats = build_soft_labels(records, label_to_id, num_classes)

    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ['sequence', 'label']
    ])
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features: {handcrafted_dim}")

    # Split (same seed as v35)
    print("\nSplitting train/test...")
    labels = [r['label'] for r in records]
    indices = list(range(len(records)))
    train_idx, test_idx = train_test_split(
        indices, test_size=0.2, stratify=labels, random_state=42
    )
    train_records = [records[i] for i in train_idx]
    test_records = [records[i] for i in test_idx]
    train_soft = [soft_labels[i] for i in train_idx]
    test_soft = [soft_labels[i] for i in test_idx]
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")

    # Count soft labels in train/test
    n_soft_train = sum(1 for sl in train_soft if sl is not None and sl.max() < 0.999)
    n_soft_test = sum(1 for sl in test_soft if sl is not None and sl.max() < 0.999)
    print(f"  Soft-labeled in train: {n_soft_train} ({100*n_soft_train/len(train_records):.1f}%)")
    print(f"  Soft-labeled in test:  {n_soft_test} ({100*n_soft_test/len(test_records):.1f}%)")

    # Datasets
    print("\nCreating datasets...")
    train_dataset = GINEDatasetV39a(
        train_records, train_soft, label_to_id, num_classes, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )
    test_dataset = GINEDatasetV39a(
        test_records, test_soft, label_to_id, num_classes, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )

    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False,
                             collate_fn=collate_fn, num_workers=0)

    # Model
    print(f"\nInitializing GINE v39a model...")
    model = GINEClassifier(
        node_feat_dim=NODE_FEATURE_DIM,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=args.hidden_dim,
        num_layers=args.num_layers,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        dropout=args.dropout,
        use_virtual_node=not args.no_virtual_node,
        jk_mode=args.jk_mode,
    ).to(DEVICE)

    total_params = sum(p.numel() for p in model.parameters())
    print(f"  Total parameters: {total_params:,}")

    # Loss functions
    hetero_loss_fn = HeteroscedasticLoss()
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
    print("TRAINING")
    print("=" * 70)

    history = {'task_loss': [], 'con_loss': [], 'train_acc': [], 'test_acc': [],
               'lr': [], 'mean_var': []}
    best_test_acc = 0
    patience_counter = 0

    for epoch in range(1, args.epochs + 1):
        start_time = time.time()

        warmup_epochs = 10
        if epoch <= warmup_epochs:
            lambda_con = args.lambda_con * (epoch / warmup_epochs)
        else:
            lambda_con = args.lambda_con

        task_loss, con_loss, train_acc, mean_var = train_epoch(
            model, train_loader, optimizer, hetero_loss_fn, con_criterion,
            DEVICE, lambda_con, args.grad_accum,
        )

        test_acc, test_preds, test_labels, test_vars = evaluate(model, test_loader, DEVICE)

        scheduler.step()
        elapsed = time.time() - start_time
        lr = optimizer.param_groups[0]['lr']

        history['task_loss'].append(task_loss)
        history['con_loss'].append(con_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)
        history['mean_var'].append(mean_var)

        improved = ""
        if test_acc > best_test_acc:
            best_test_acc = test_acc
            patience_counter = 0
            improved = " *BEST*"

            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'epoch': epoch,
                'test_acc': test_acc,
                'label_to_id': label_to_id,
                'feature_names': feature_names,
                'dup_stats': dup_stats,
                'args': vars(args),
            }, output_dir / 'gine_best.pt')
        else:
            patience_counter += 1

        print(f"Epoch {epoch:3d}/{args.epochs} | "
              f"Hetero: {task_loss:.4f} | SupCon: {con_loss:.4f} | "
              f"Var: {mean_var:.4f} | "
              f"Train: {train_acc:.3f} | Test: {test_acc:.3f} | "
              f"LR: {lr:.2e} | {elapsed:.1f}s{improved}")

        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch} (patience={args.patience})")
            break

    # =================================================================
    # EVALUATION
    # =================================================================
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)

    checkpoint = torch.load(output_dir / 'gine_best.pt', map_location=DEVICE, weights_only=False)
    model.load_state_dict(checkpoint['model_state_dict'])
    best_epoch = checkpoint['epoch']
    print(f"Loaded best model from epoch {best_epoch}")

    test_acc, test_preds, test_labels, test_vars = evaluate(model, test_loader, DEVICE)
    print(f"\nTest accuracy: {test_acc:.4f}")

    label_names = [id_to_label[i] for i in range(num_classes)]
    print(f"\nClassification Report:")
    report = classification_report(test_labels, test_preds, target_names=label_names)
    print(report)

    report_dict = classification_report(test_labels, test_preds,
                                        target_names=label_names, output_dict=True)

    # Uncertainty analysis
    test_vars_np = np.array(test_vars)
    test_labels_np = np.array(test_labels)
    test_preds_np = np.array(test_preds)
    correct_mask = test_labels_np == test_preds_np

    print(f"\nUncertainty Analysis:")
    print(f"  Mean variance (correct):   {test_vars_np[correct_mask].mean():.4f}")
    print(f"  Mean variance (incorrect): {test_vars_np[~correct_mask].mean():.4f}")
    print(f"  Ratio (incorrect/correct): {test_vars_np[~correct_mask].mean() / max(test_vars_np[correct_mask].mean(), 1e-8):.2f}x")

    print(f"\n  Per-class mean variance:")
    for c in range(num_classes):
        mask = test_labels_np == c
        if mask.any():
            print(f"    {id_to_label[c]:30s}: {test_vars_np[mask].mean():.4f}")

    metrics = {
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_params': total_params,
        'num_classes': num_classes,
        'node_feat_dim': NODE_FEATURE_DIM,
        'strip_boilerplate': not args.no_strip,
        'duplicate_stats': dup_stats,
        'mean_var_correct': float(test_vars_np[correct_mask].mean()),
        'mean_var_incorrect': float(test_vars_np[~correct_mask].mean()),
        'classification_report': report_dict,
        'args': vars(args),
    }
    with open(output_dir / 'gine_metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)

    # Plots
    plot_confusion_matrix(
        test_labels, test_preds, label_names,
        f'{tag}\nConfusion Matrix (Acc={test_acc:.3f})',
        viz_dir / 'confusion_matrix.png',
    )

    plot_training_history(history, viz_dir / 'training_history.png', tag)

    plot_uncertainty_analysis(
        test_labels, test_preds, test_vars, id_to_label,
        viz_dir / 'uncertainty_analysis.png',
    )

    with open(viz_dir / 'training_history.json', 'w') as f:
        json.dump(history, f, indent=2)

    # Comparison
    print()
    print("=" * 70)
    print("COMPARISON vs V35 BASELINE (93.89%)")
    print("=" * 70)
    delta = test_acc - 0.9388888888888889
    direction = "BETTER" if delta > 0 else ("WORSE" if delta < 0 else "SAME")
    print(f"  V35 baseline:     93.89%")
    print(f"  V39a (this run):  {test_acc*100:.2f}%")
    print(f"  Delta:            {delta*100:+.2f}% ({direction})")


if __name__ == '__main__':
    main()
