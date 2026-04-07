#!/usr/bin/env python3
"""
V29: Hybrid GGNN-BiLSTM with Contrastive Learning

Two-stage training:
1. Stage 1: Contrastive pre-training with SupConLoss
   - Hard negative mining for confused pairs
   - Learns discriminative embeddings
2. Stage 2: Classification fine-tuning with CrossEntropy
   - Uses learned embeddings
   - Full 193 handcrafted features

Architecture:
1. PDG with data and control dependencies
2. GGNN with edge-type attention for structural intelligence
3. BiLSTM for temporal intelligence
4. All 193 handcrafted features
5. Projection head for contrastive learning
"""

import argparse
import json
import pickle
import sys
import time
from pathlib import Path
from collections import defaultdict
from typing import List, Dict, Tuple, Optional
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

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder
from ggnn_bilstm_v29 import HybridGGNNBiLSTMv29, SupervisedContrastiveLoss


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64
NODE_FEATURE_DIM = 34

# Confused class pairs for hard negative mining (based on V28 analysis)
# Format: (class_id_1, class_id_2) - will be mapped after label encoding
CONFUSED_CLASS_NAMES = [
    ('L1TF', 'SPECTRE_V1'),
    ('RETBLEED', 'INCEPTION'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('INCEPTION', 'BRANCH_HISTORY_INJECTION'),
]


# =============================================================================
# DATASET
# =============================================================================

class PDGDataset(Dataset):
    """Dataset for GGNN-BiLSTM training with PDGs"""
    
    def __init__(
        self,
        records: List[Dict],
        label_to_id: Dict[str, int],
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        speculative_window: int = 10,
    ):
        self.label_to_id = label_to_id
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)
        
        print("Pre-computing PDGs...")
        self.data = []
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")
    
    def _process_record(self, rec: Dict) -> Optional[Dict]:
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
        adj_data, adj_control = pdg.get_adjacency_matrices(self.max_nodes)
        
        topo = pdg.topological_order()
        topo_filtered = [t for t in topo if t < self.max_nodes]
        topo_padded = np.arange(self.max_nodes, dtype=np.int64)
        for i, t in enumerate(topo_filtered[:self.max_nodes]):
            topo_padded[i] = t
        
        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        
        seq_length = n_nodes
        
        rec_features = rec.get('features', {})
        handcrafted = np.zeros(len(self.handcrafted_feature_names), dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and np.isfinite(val):
                handcrafted[i] = np.clip(val, -100, 100)
        
        return {
            'node_features': node_features,
            'adj_data': adj_data,
            'adj_control': adj_control,
            'topo_order': topo_padded,
            'node_mask': node_mask,
            'seq_length': seq_length,
            'handcrafted': handcrafted,
            'label': self.label_to_id[label],
        }
    
    def __len__(self):
        return len(self.data)
    
    def __getitem__(self, idx):
        item = self.data[idx]
        return {
            'node_features': torch.from_numpy(item['node_features']),
            'adj_data': torch.from_numpy(item['adj_data']),
            'adj_control': torch.from_numpy(item['adj_control']),
            'topo_order': torch.from_numpy(item['topo_order']),
            'node_mask': torch.from_numpy(item['node_mask']),
            'seq_length': torch.tensor(item['seq_length'], dtype=torch.long),
            'handcrafted': torch.from_numpy(item['handcrafted']),
            'label': item['label'],
        }


def collate_fn(batch):
    return {
        'node_features': torch.stack([x['node_features'] for x in batch]),
        'adj_data': torch.stack([x['adj_data'] for x in batch]),
        'adj_control': torch.stack([x['adj_control'] for x in batch]),
        'topo_order': torch.stack([x['topo_order'] for x in batch]),
        'node_mask': torch.stack([x['node_mask'] for x in batch]),
        'seq_length': torch.stack([x['seq_length'] for x in batch]),
        'handcrafted': torch.stack([x['handcrafted'] for x in batch]),
        'label': torch.tensor([x['label'] for x in batch], dtype=torch.long),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_contrastive_epoch(
    model: nn.Module,
    loader: DataLoader,
    optimizer: optim.Optimizer,
    criterion: SupervisedContrastiveLoss,
    device: torch.device,
    grad_accum_steps: int = 1,
) -> float:
    """Train one epoch with contrastive loss"""
    model.train()
    total_loss = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        # Forward pass in contrastive mode
        projections = model(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted,
            mode='contrastive'
        )
        
        loss = criterion(projections, labels)
        loss = loss / grad_accum_steps
        
        loss.backward()
        
        if (i + 1) % grad_accum_steps == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * grad_accum_steps
    
    return total_loss / len(loader)


def train_classification_epoch(
    model: nn.Module,
    loader: DataLoader,
    optimizer: optim.Optimizer,
    criterion: nn.Module,
    device: torch.device,
    grad_accum_steps: int = 1,
) -> Tuple[float, float]:
    """Train one epoch with classification loss"""
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        # Forward pass in classification mode
        logits = model(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted,
            mode='classification'
        )
        
        loss = criterion(logits, labels)
        loss = loss / grad_accum_steps
        
        loss.backward()
        
        if (i + 1) % grad_accum_steps == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * grad_accum_steps
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
    
    return total_loss / len(loader), correct / total


@torch.no_grad()
def evaluate(
    model: nn.Module,
    loader: DataLoader,
    device: torch.device,
) -> Tuple[float, List[int], List[int]]:
    """Evaluate the model"""
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        logits = model(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted,
            mode='classification'
        )
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())
    
    return correct / total, all_preds, all_labels


@torch.no_grad()
def analyze_edge_type_attention(
    model: nn.Module,
    loader: DataLoader,
    label_names: List[str],
    device: torch.device,
    viz_dir: Path,
):
    """Analyze edge-type attention patterns per class"""
    model.eval()
    
    class_data_attn = defaultdict(list)
    class_ctrl_attn = defaultdict(list)
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        _, edge_attn = model(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted,
            mode='classification',
            return_attention=True
        )
        
        # edge_attn shape: [steps, batch, nodes, 2]
        # Average over steps and nodes
        mean_attn = edge_attn.mean(dim=(0, 2))  # [batch, 2]
        
        for i, label_id in enumerate(labels.cpu().tolist()):
            class_data_attn[label_id].append(mean_attn[i, 0].item())
            class_ctrl_attn[label_id].append(mean_attn[i, 1].item())
    
    # Compute averages
    print("\n  Edge-type attention per class:")
    print(f"  {'Class':<30} {'Data Deps':>12} {'Ctrl Deps':>12} {'Dominant':>12}")
    print("  " + "-" * 66)
    
    attn_data = {'classes': {}}
    
    data_means = []
    ctrl_means = []
    class_names_ordered = []
    
    for class_id in sorted(class_data_attn.keys()):
        class_name = label_names[class_id]
        data_mean = np.mean(class_data_attn[class_id])
        ctrl_mean = np.mean(class_ctrl_attn[class_id])
        dominant = "Data" if data_mean > ctrl_mean else "Ctrl"
        
        print(f"  {class_name:<30} {data_mean:>12.3f} {ctrl_mean:>12.3f} {dominant:>12}")
        
        attn_data['classes'][class_name] = {
            'data_dependency': float(data_mean),
            'control_dependency': float(ctrl_mean),
            'dominant': dominant,
        }
        
        data_means.append(data_mean)
        ctrl_means.append(ctrl_mean)
        class_names_ordered.append(class_name)
    
    # Save to JSON
    attn_json_path = viz_dir / 'edge_type_attention.json'
    with open(attn_json_path, 'w') as f:
        json.dump(attn_data, f, indent=2)
    
    # Create visualization
    fig, ax = plt.subplots(figsize=(12, 6))
    
    x = np.arange(len(class_names_ordered))
    width = 0.35
    
    bars1 = ax.bar(x - width/2, data_means, width, label='Data Dependencies', color='#2ecc71')
    bars2 = ax.bar(x + width/2, ctrl_means, width, label='Control Dependencies', color='#e74c3c')
    
    ax.set_ylabel('Attention Weight')
    ax.set_title('V29: Edge-Type Attention per Class')
    ax.set_xticks(x)
    ax.set_xticklabels(class_names_ordered, rotation=45, ha='right')
    ax.legend()
    ax.set_ylim(0, 1)
    
    # Add value labels
    for bar in bars1:
        height = bar.get_height()
        ax.annotate(f'{height:.2f}',
                    xy=(bar.get_x() + bar.get_width()/2, height),
                    xytext=(0, 3), textcoords="offset points",
                    ha='center', va='bottom', fontsize=8)
    for bar in bars2:
        height = bar.get_height()
        ax.annotate(f'{height:.2f}',
                    xy=(bar.get_x() + bar.get_width()/2, height),
                    xytext=(0, 3), textcoords="offset points",
                    ha='center', va='bottom', fontsize=8)
    
    plt.tight_layout()
    plt.savefig(viz_dir / 'edge_type_attention.png', dpi=150)
    plt.close()


def plot_confusion_matrix(y_true, y_pred, labels, title, output_path):
    """Plot and save confusion matrix"""
    cm = confusion_matrix(y_true, y_pred)
    
    fig, ax = plt.subplots(figsize=(12, 10))
    im = ax.imshow(cm, interpolation='nearest', cmap=plt.cm.Blues)
    ax.figure.colorbar(im, ax=ax)
    
    ax.set(xticks=np.arange(cm.shape[1]),
           yticks=np.arange(cm.shape[0]),
           xticklabels=labels, yticklabels=labels,
           title=title,
           ylabel='True label',
           xlabel='Predicted label')
    
    plt.setp(ax.get_xticklabels(), rotation=45, ha="right", rotation_mode="anchor")
    
    thresh = cm.max() / 2.
    for i in range(cm.shape[0]):
        for j in range(cm.shape[1]):
            ax.text(j, i, format(cm[i, j], 'd'),
                    ha="center", va="center",
                    color="white" if cm[i, j] > thresh else "black")
    
    fig.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()


def plot_training_history(history, output_path):
    """Plot training history"""
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))
    
    # Stage 1: Contrastive loss
    if 'contrastive_loss' in history:
        ax = axes[0, 0]
        ax.plot(history['contrastive_loss'], 'b-', label='Contrastive Loss')
        ax.set_xlabel('Epoch')
        ax.set_ylabel('Loss')
        ax.set_title('Stage 1: Contrastive Pre-training')
        ax.legend()
        ax.grid(True, alpha=0.3)
    
    # Stage 2: Classification loss
    ax = axes[0, 1]
    ax.plot(history['train_loss'], 'b-', label='Train Loss')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.set_title('Stage 2: Classification Fine-tuning')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    # Accuracy
    ax = axes[1, 0]
    ax.plot(history['train_acc'], 'b-', label='Train Acc')
    ax.plot(history['test_acc'], 'r-', label='Test Acc')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Accuracy')
    ax.set_title('Classification Accuracy')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    # Learning rate
    ax = axes[1, 1]
    ax.plot(history['lr'], 'g-', label='Learning Rate')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('LR')
    ax.set_title('Learning Rate Schedule')
    ax.legend()
    ax.grid(True, alpha=0.3)
    ax.set_yscale('log')
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V29: GGNN-BiLSTM + Contrastive Learning')
    parser.add_argument('--data', type=str, default='data/features/combined_v22_enhanced.jsonl')
    parser.add_argument('--output-dir', type=str, default='models/ggnn_bilstm_v29')
    parser.add_argument('--viz-dir', type=str, default='viz_v29_ggnn_bilstm')
    
    # Contrastive pre-training
    parser.add_argument('--contrastive-epochs', type=int, default=15)
    parser.add_argument('--temperature', type=float, default=0.07)
    parser.add_argument('--hard-neg-weight', type=float, default=2.0)
    
    # Classification fine-tuning
    parser.add_argument('--epochs', type=int, default=35)
    parser.add_argument('--patience', type=int, default=15)
    
    # Architecture
    parser.add_argument('--ggnn-hidden', type=int, default=64)
    parser.add_argument('--ggnn-steps', type=int, default=4)
    parser.add_argument('--attention-heads', type=int, default=4)
    parser.add_argument('--lstm-hidden', type=int, default=128)
    parser.add_argument('--lstm-layers', type=int, default=2)
    parser.add_argument('--projection-dim', type=int, default=128)
    
    # Training
    parser.add_argument('--batch-size', type=int, default=64)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--contrastive-lr', type=float, default=5e-4)
    parser.add_argument('--dropout', type=float, default=0.2)
    parser.add_argument('--grad-accum', type=int, default=2)
    
    args = parser.parse_args()
    
    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print("V29: Hybrid GGNN-BiLSTM with Contrastive Learning")
    print("=" * 70)
    print()
    print("Architecture:")
    print("  1. PDG with data and control dependencies")
    print("  2. GGNN with edge-type attention for structural intelligence")
    print("  3. BiLSTM for temporal intelligence")
    print("  4. All 193 handcrafted features")
    print("  5. Two-stage training: Contrastive → Classification")
    print(f"  6. Attention heads: {args.attention_heads}")
    print(f"  7. Hard negative weight: {args.hard_neg_weight}")
    print()
    
    # Create directories
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
                records.append(json.loads(line))
    print(f"  Loaded {len(records)} records")
    
    # Get label distribution
    from collections import Counter
    label_counts = Counter(r.get('label', 'UNKNOWN') for r in records)
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        print(f"  {label}: {count}")
    
    # Filter out UNKNOWN
    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"\nAfter filtering: {len(records)} records")
    
    # Create label mapping
    unique_labels = sorted(set(r['label'] for r in records))
    label_to_id = {label: i for i, label in enumerate(unique_labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"Number of classes: {num_classes}")
    
    # Map confused pairs to IDs
    confused_pairs = []
    for name1, name2 in CONFUSED_CLASS_NAMES:
        if name1 in label_to_id and name2 in label_to_id:
            confused_pairs.append((label_to_id[name1], label_to_id[name2]))
            print(f"  Hard negative pair: {name1} ({label_to_id[name1]}) ↔ {name2} ({label_to_id[name2]})")
    
    # Get handcrafted feature names
    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ['sequence', 'label']
    ])
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features: {handcrafted_dim}")
    
    # Split data
    print("\nSplitting train/test...")
    labels = [r['label'] for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)} samples")
    print(f"  Test:  {len(test_records)} samples")
    
    # Create datasets
    print("\nCreating datasets...")
    print("  Creating train dataset...")
    train_dataset = PDGDataset(train_records, label_to_id, feature_names)
    print("  Creating test dataset...")
    test_dataset = PDGDataset(test_records, label_to_id, feature_names)
    
    # Create data loaders
    print("  Creating data loaders...")
    train_loader = DataLoader(
        train_dataset, batch_size=args.batch_size, shuffle=True,
        collate_fn=collate_fn, num_workers=0
    )
    test_loader = DataLoader(
        test_dataset, batch_size=args.batch_size, shuffle=False,
        collate_fn=collate_fn, num_workers=0
    )
    print("  Data loaders created!")
    
    # Create model
    print("\nInitializing Hybrid GGNN-BiLSTM v29...")
    model = HybridGGNNBiLSTMv29(
        node_feature_dim=NODE_FEATURE_DIM,
        ggnn_hidden_dim=args.ggnn_hidden,
        ggnn_steps=args.ggnn_steps,
        attention_heads=args.attention_heads,
        lstm_hidden_dim=args.lstm_hidden,
        lstm_layers=args.lstm_layers,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        projection_dim=args.projection_dim,
        dropout=args.dropout,
    ).to(DEVICE)
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"  Model created successfully!")
    print(f"  Total parameters: {total_params:,}")
    
    # Training history
    history = {
        'contrastive_loss': [],
        'train_loss': [],
        'train_acc': [],
        'test_acc': [],
        'lr': [],
    }
    
    # =================================================================
    # STAGE 1: CONTRASTIVE PRE-TRAINING
    # =================================================================
    print()
    print("=" * 70)
    print("STAGE 1: CONTRASTIVE PRE-TRAINING")
    print("=" * 70)
    
    contrastive_criterion = SupervisedContrastiveLoss(
        temperature=args.temperature,
        hard_negative_weight=args.hard_neg_weight,
        confused_pairs=confused_pairs,
    )
    
    # Only train encoder parts (not classifier)
    encoder_params = list(model.ggnn.parameters()) + \
                     list(model.bilstm.parameters()) + \
                     list(model.attention.parameters()) + \
                     list(model.handcrafted_encoder.parameters()) + \
                     list(model.projection_head.parameters())
    
    contrastive_optimizer = optim.AdamW(encoder_params, lr=args.contrastive_lr, weight_decay=1e-4)
    contrastive_scheduler = optim.lr_scheduler.CosineAnnealingLR(
        contrastive_optimizer, T_max=args.contrastive_epochs
    )
    
    for epoch in range(1, args.contrastive_epochs + 1):
        start_time = time.time()
        
        con_loss = train_contrastive_epoch(
            model, train_loader, contrastive_optimizer,
            contrastive_criterion, DEVICE, args.grad_accum
        )
        
        contrastive_scheduler.step()
        
        elapsed = time.time() - start_time
        lr = contrastive_optimizer.param_groups[0]['lr']
        
        history['contrastive_loss'].append(con_loss)
        
        print(f"Contrastive Epoch {epoch:2d}/{args.contrastive_epochs} | "
              f"Loss: {con_loss:.4f} | LR: {lr:.2e} | {elapsed:.1f}s")
    
    # =================================================================
    # STAGE 2: CLASSIFICATION FINE-TUNING
    # =================================================================
    print()
    print("=" * 70)
    print("STAGE 2: CLASSIFICATION FINE-TUNING")
    print("=" * 70)
    
    # Use class weights for imbalanced data
    class_counts = Counter(r['label'] for r in train_records)
    total = sum(class_counts.values())
    class_weights = torch.tensor([
        total / (num_classes * class_counts.get(id_to_label[i], 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)
    
    classification_criterion = nn.CrossEntropyLoss(weight=class_weights)
    
    # Fine-tune all parameters
    classification_optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)
    classification_scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(
        classification_optimizer, T_0=10, T_mult=2
    )
    
    best_test_acc = 0
    patience_counter = 0
    
    print("  Starting classification training...")
    
    for epoch in range(1, args.epochs + 1):
        start_time = time.time()
        
        train_loss, train_acc = train_classification_epoch(
            model, train_loader, classification_optimizer,
            classification_criterion, DEVICE, args.grad_accum
        )
        
        test_acc, _, _ = evaluate(model, test_loader, DEVICE)
        
        classification_scheduler.step()
        
        elapsed = time.time() - start_time
        lr = classification_optimizer.param_groups[0]['lr']
        
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)
        
        # Check for improvement
        improved = test_acc > best_test_acc
        status = ""
        if improved:
            best_test_acc = test_acc
            patience_counter = 0
            status = "[BEST]"
            
            # Save best model
            torch.save(model.state_dict(), output_dir / 'model_best.pt')
        else:
            patience_counter += 1
            status = "[PLATEAU]"
        
        print(f"Epoch {epoch:2d}/{args.epochs} | Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | Test: {test_acc:.4f} | "
              f"LR: {lr:.2e} | {elapsed:.1f}s {status}")
        
        # Early stopping
        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch}")
            break
    
    # Load best model
    print(f"\nLoading best model (test acc: {best_test_acc:.4f})...")
    model.load_state_dict(torch.load(output_dir / 'model_best.pt'))
    
    # =================================================================
    # FINAL EVALUATION
    # =================================================================
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)
    
    train_acc, train_preds, train_labels = evaluate(model, train_loader, DEVICE)
    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    
    print(f"\nTrain Accuracy: {train_acc:.4f}")
    print(f"Test Accuracy:  {test_acc:.4f}")
    
    print("\nTest Set Classification Report:")
    print(classification_report(
        test_labels, test_preds,
        target_names=unique_labels,
        digits=4
    ))
    
    # Save results
    print("\nGenerating visualizations...")
    
    # Confusion matrices
    plot_confusion_matrix(
        train_labels, train_preds, unique_labels,
        f'V29 Train Confusion (Acc: {train_acc:.4f})',
        viz_dir / 'confusion_matrix_train.png'
    )
    plot_confusion_matrix(
        test_labels, test_preds, unique_labels,
        f'V29 Test Confusion (Acc: {test_acc:.4f})',
        viz_dir / 'confusion_matrix_test.png'
    )
    
    # Training history
    plot_training_history(history, viz_dir / 'training_history.png')
    
    # Edge-type attention analysis
    print("\nAnalyzing edge-type attention patterns...")
    analyze_edge_type_attention(model, test_loader, unique_labels, DEVICE, viz_dir)
    
    # Save model and metadata
    print("\nSaving model and metadata...")
    torch.save(model.state_dict(), output_dir / 'model_final.pt')
    
    with open(output_dir / 'label_map.json', 'w') as f:
        json.dump(label_to_id, f)
    
    with open(output_dir / 'feature_names.json', 'w') as f:
        json.dump(feature_names, f)
    
    metrics = {
        'train_accuracy': train_acc,
        'test_accuracy': test_acc,
        'best_test_accuracy': best_test_acc,
        'num_classes': num_classes,
        'total_params': total_params,
        'contrastive_epochs': args.contrastive_epochs,
        'classification_epochs': len(history['train_loss']),
        'confused_pairs': [(id_to_label[p[0]], id_to_label[p[1]]) for p in confused_pairs],
        'architecture': {
            'ggnn_hidden': args.ggnn_hidden,
            'ggnn_steps': args.ggnn_steps,
            'attention_heads': args.attention_heads,
            'lstm_hidden': args.lstm_hidden,
            'lstm_layers': args.lstm_layers,
            'projection_dim': args.projection_dim,
            'handcrafted_dim': handcrafted_dim,
        },
    }
    
    with open(output_dir / 'metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)
    
    print()
    print("=" * 70)
    print("TRAINING COMPLETE")
    print("=" * 70)
    print(f"Best Test Accuracy: {best_test_acc:.4f}")
    print(f"Model saved to: {output_dir}")
    print(f"Visualizations saved to: {viz_dir}")


if __name__ == '__main__':
    main()
