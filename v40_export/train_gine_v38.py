#!/usr/bin/env python3
"""
V38: GINE with boilerplate stripping + edge-type scaling + positional encoding

Changes from v35 baseline (93.89%):
1. Boilerplate stripping: remove measurement infrastructure before PDG construction
2. Learnable edge-type scaling: 8 learned weights to amplify discriminative edge types
3. Positional encoding: relative instruction position as extra node feature (34→35)

Architecture is otherwise identical to v35 (sum aggregation, virtual node, JK cat,
dual-path fusion, supervised contrastive loss).
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
from gine_classifier_v38 import GINEClassifier, SupervisedContrastiveLoss
from strip_boilerplate import strip_boilerplate

if torch.cuda.is_available():
    DEVICE = torch.device('cuda')
elif hasattr(torch.backends, 'mps') and torch.backends.mps.is_available():
    DEVICE = torch.device('mps')
else:
    DEVICE = torch.device('cpu')
MAX_NODES = 64
MAX_EDGES = 512
NODE_FEATURE_DIM = 35  # 34 base + 1 positional

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
# DATASET — with boilerplate stripping + positional encoding
# =============================================================================

class GINEDatasetV38(Dataset):
    """GINE dataset with boilerplate stripping and positional node features."""

    def __init__(
        self,
        records: List[Dict],
        label_to_id: Dict[str, int],
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        max_edges: int = MAX_EDGES,
        speculative_window: int = 10,
        strip_bp: bool = True,
    ):
        self.label_to_id = label_to_id
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
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
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

        # Edge type distribution
        edge_counts = Counter()
        edge_names = {v: k for k, v in EDGE_TYPES.items()}
        for item in self.data:
            n_real = item['n_edges']
            for et in item['edge_type'][:n_real]:
                edge_counts[et] += 1
        print("  Edge type distribution:")
        total_edges = sum(edge_counts.values())
        for et in sorted(edge_counts.keys()):
            pct = 100.0 * edge_counts[et] / total_edges if total_edges > 0 else 0
            print(f"    {edge_names.get(et, '?'):20s}: {edge_counts[et]:>8d} ({pct:.1f}%)")

    def _process_record(self, rec: Dict) -> Optional[Dict]:
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None

        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None

        len_before = len(sequence)

        # Strip boilerplate
        if self.strip_bp:
            sequence = strip_boilerplate(sequence)

        len_after = len(sequence)
        was_stripped = len_after < len_before

        pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None

        n_nodes = min(len(pdg.nodes), self.max_nodes)

        # Get base node features (34-dim) and add positional encoding
        base_features = pdg.get_node_features(self.max_nodes)  # [max_nodes, 34]

        # Positional encoding: instruction_index / total_instructions
        pos_enc = np.zeros((self.max_nodes, 1), dtype=np.float32)
        for i in range(n_nodes):
            pos_enc[i, 0] = i / max(n_nodes - 1, 1)

        # Concatenate: [max_nodes, 35]
        node_features = np.concatenate([base_features, pos_enc], axis=1)

        edge_index, edge_type = pdg.get_edge_index_and_type(self.max_nodes)
        edge_weight = pdg.get_edge_weights(self.max_nodes)
        n_edges = edge_index.shape[1]

        # Pad or truncate edges
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

def train_epoch(model, loader, optimizer, ce_criterion, con_criterion, device,
                lambda_con, grad_accum, desc="Train"):
    model.train()
    total_ce_loss = 0
    total_con_loss = 0
    correct = 0
    total = 0

    optimizer.zero_grad()

    for i, batch in enumerate(tqdm(loader, desc=desc, leave=False)):
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)

        logits, proj, feat_aux_logits = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, return_projection=True, edge_mask=edge_mask,
            edge_weight=edge_weight,
        )

        ce_loss = ce_criterion(logits, labels)
        con_loss = con_criterion(proj, labels) if lambda_con > 0 else torch.tensor(0.0, device=device)
        feat_aux_loss = ce_criterion(feat_aux_logits, labels)

        loss = (ce_loss + lambda_con * con_loss + 0.3 * feat_aux_loss) / grad_accum
        loss.backward()

        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()

        total_ce_loss += ce_loss.item()
        total_con_loss += con_loss.item()

        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)

    n = len(loader)
    return total_ce_loss / n, total_con_loss / n, correct / total


@torch.no_grad()
def evaluate(model, loader, device, desc="Eval"):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []

    for batch in tqdm(loader, desc=desc, leave=False):
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

    axes[0, 0].plot(history['ce_loss'], 'b-', label='CE Loss')
    axes[0, 0].set_xlabel('Epoch'); axes[0, 0].set_ylabel('Loss')
    axes[0, 0].set_title('Cross-Entropy Loss'); axes[0, 0].legend(); axes[0, 0].grid(True, alpha=0.3)

    axes[0, 1].plot(history['con_loss'], 'r-', label='SupCon Loss')
    axes[0, 1].set_xlabel('Epoch'); axes[0, 1].set_ylabel('Loss')
    axes[0, 1].set_title('Supervised Contrastive Loss'); axes[0, 1].legend(); axes[0, 1].grid(True, alpha=0.3)

    axes[1, 0].plot(history['train_acc'], 'b-', label='Train Acc')
    axes[1, 0].plot(history['test_acc'], 'r-', label='Test Acc')
    axes[1, 0].set_xlabel('Epoch'); axes[1, 0].set_ylabel('Accuracy')
    axes[1, 0].set_title('Classification Accuracy'); axes[1, 0].legend(); axes[1, 0].grid(True, alpha=0.3)

    axes[1, 1].plot(history['lr'], 'g-')
    axes[1, 1].set_xlabel('Epoch'); axes[1, 1].set_ylabel('Learning Rate')
    axes[1, 1].set_title('Learning Rate Schedule'); axes[1, 1].grid(True, alpha=0.3)
    axes[1, 1].set_yscale('log')

    plt.suptitle(f'{tag} Training History', fontsize=14)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


def plot_edge_type_scales(scales_history, edge_names, output_path):
    """Plot how learned edge-type scales evolved during training."""
    fig, ax = plt.subplots(figsize=(12, 6))
    for name in edge_names:
        vals = [h.get(name, 1.0) for h in scales_history]
        ax.plot(vals, label=name.replace('_', ' ').title(), linewidth=2)
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Learned Scale')
    ax.set_title('Learned Edge-Type Scaling Weights Over Training\n'
                 '(>1 = amplified, <1 = dampened)')
    ax.axhline(y=1.0, color='grey', linestyle='--', alpha=0.5)
    ax.legend(fontsize=8, ncol=2)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V38: GINE + boilerplate strip + edge scaling + positional')
    parser.add_argument('--data', type=str, default='data/combined_v25_clean.jsonl')
    parser.add_argument('--output-dir', type=str, default='viz_v40_clean')
    parser.add_argument('--viz-dir', type=str, default='viz_v40_clean')
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
    parser.add_argument('--no-strip', action='store_true', help='Disable boilerplate stripping')
    parser.add_argument('--speculative-window', type=int, default=10)

    args = parser.parse_args()
    tag = "V38 GINE Stripped+EdgeScale+Positional"

    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print(f"{tag}")
    print("=" * 70)
    print()
    print("Changes from v35 baseline:")
    print("  1. Boilerplate stripping: remove measurement infrastructure before PDG")
    print("  2. Learnable edge-type scaling: 8 params (init=1.0)")
    print("  3. Positional encoding: node_feat_dim 34 -> 35")
    print()
    print(f"Architecture: GINE layers={args.num_layers}, hidden={args.hidden_dim}")
    print(f"  JK mode: {args.jk_mode}, Virtual node: {not args.no_virtual_node}")
    print(f"  Node features: {NODE_FEATURE_DIM} (34 base + 1 positional)")
    print(f"  Edge types: {NUM_EDGE_TYPES} (with learnable scaling)")
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
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")

    # Datasets
    print("\nCreating datasets...")
    train_dataset = GINEDatasetV38(
        train_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )
    test_dataset = GINEDatasetV38(
        test_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )

    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False,
                             collate_fn=collate_fn, num_workers=0)

    # Model
    print(f"\nInitializing GINE v38 model...")
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
    print(f"  Edge-type scale params: {model.edge_type_scale.shape[0]}")

    # Loss
    class_counts = Counter(r['label'] for r in train_records)
    total_train = sum(class_counts.values())
    class_weights = torch.tensor([
        total_train / (num_classes * class_counts.get(id_to_label[i], 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)

    ce_criterion = nn.CrossEntropyLoss(weight=class_weights)
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

    history = {'ce_loss': [], 'con_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []}
    edge_scale_history = []
    best_test_acc = 0
    patience_counter = 0

    for epoch in range(1, args.epochs + 1):
        start_time = time.time()

        warmup_epochs = 10
        if epoch <= warmup_epochs:
            lambda_con = args.lambda_con * (epoch / warmup_epochs)
        else:
            lambda_con = args.lambda_con

        ce_loss, con_loss, train_acc = train_epoch(
            model, train_loader, optimizer, ce_criterion, con_criterion,
            DEVICE, lambda_con, args.grad_accum,
            desc=f"Epoch {epoch}/{args.epochs} train",
        )

        test_acc, test_preds, test_labels = evaluate(
            model, test_loader, DEVICE,
            desc=f"Epoch {epoch}/{args.epochs} eval",
        )

        scheduler.step()
        elapsed = time.time() - start_time
        lr = optimizer.param_groups[0]['lr']

        history['ce_loss'].append(ce_loss)
        history['con_loss'].append(con_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)

        # Log learned edge-type scales
        scales = model.get_edge_type_scales()
        edge_scale_history.append(scales)

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
                'edge_type_scales': scales,
                'args': vars(args),
            }, output_dir / 'gine_best.pt')
        else:
            patience_counter += 1

        # Format edge scales for logging
        scale_str = " | ".join(f"{k[:8]}={v:.2f}" for k, v in sorted(scales.items()))

        print(f"Epoch {epoch:3d}/{args.epochs} | "
              f"CE: {ce_loss:.4f} | SupCon: {con_loss:.4f} | "
              f"Train: {train_acc:.3f} | Test: {test_acc:.3f} | "
              f"LR: {lr:.2e} | {elapsed:.1f}s{improved}")
        if epoch % 10 == 0 or improved:
            print(f"  Edge scales: {scale_str}")

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

    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    print(f"\nTest accuracy: {test_acc:.4f}")

    # Print learned edge-type scales
    final_scales = model.get_edge_type_scales()
    print(f"\nFinal learned edge-type scales:")
    for name, scale in sorted(final_scales.items()):
        direction = "UP" if scale > 1.05 else ("DOWN" if scale < 0.95 else "~1.0")
        print(f"  {name:20s}: {scale:.4f}  ({direction})")

    label_names = [id_to_label[i] for i in range(num_classes)]
    print(f"\nClassification Report:")
    report = classification_report(test_labels, test_preds, target_names=label_names)
    print(report)

    report_dict = classification_report(test_labels, test_preds,
                                        target_names=label_names, output_dict=True)
    metrics = {
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_params': total_params,
        'num_classes': num_classes,
        'node_feat_dim': NODE_FEATURE_DIM,
        'strip_boilerplate': not args.no_strip,
        'final_edge_type_scales': final_scales,
        'classification_report': report_dict,
        'args': vars(args),
    }
    with open(output_dir / 'gine_metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)

    # Confusion matrix
    plot_confusion_matrix(
        test_labels, test_preds, label_names,
        f'{tag}\nConfusion Matrix (Acc={test_acc:.3f})',
        viz_dir / 'confusion_matrix.png',
    )

    # Training history
    plot_training_history(history, viz_dir / 'training_history.png', tag)

    # Edge-type scale evolution
    if edge_scale_history:
        edge_names = list(EDGE_TYPES.keys())
        plot_edge_type_scales(edge_scale_history, edge_names,
                              viz_dir / 'edge_type_scale_evolution.png')

    with open(viz_dir / 'training_history.json', 'w') as f:
        json.dump(history, f, indent=2)
    with open(viz_dir / 'edge_scale_history.json', 'w') as f:
        json.dump(edge_scale_history, f, indent=2)

    # === Comparison summary vs v35 baseline ===
    print()
    print("=" * 70)
    print("COMPARISON vs V35 BASELINE (93.89%)")
    print("=" * 70)
    delta = test_acc - 0.9388888888888889
    direction = "BETTER" if delta > 0 else ("WORSE" if delta < 0 else "SAME")
    print(f"  V35 baseline:     93.89%")
    print(f"  V38 (this run):   {test_acc*100:.2f}%")
    print(f"  Delta:            {delta*100:+.2f}% ({direction})")


if __name__ == '__main__':
    main()
