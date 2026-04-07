#!/usr/bin/env python3
"""
V28: Hybrid GGNN-BiLSTM with Edge-Type Specific Attention

Key improvement over V27:
- Edge-type specific attention mechanism that learns to weight
  data dependencies vs control dependencies differently
- Allows model to focus on the most relevant dependency type
  for each attack pattern

Architecture:
1. PDG with data and control dependencies
2. GGNN with edge-type attention for structural intelligence
3. BiLSTM for temporal intelligence
4. Edge-type attention visualization for interpretability
5. Combined with handcrafted features
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

from pdg_builder import PDGBuilder, PDG
from ggnn_bilstm_v28 import HybridGGNNBiLSTMv28


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64
NODE_FEATURE_DIM = 34  # From PDGNode.get_feature_vector()


# =============================================================================
# DATASET
# =============================================================================

class PDGDataset(Dataset):
    """
    Dataset for GGNN-BiLSTM training.
    
    Pre-computes PDGs and all required tensors for efficient training.
    """
    
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
        
        # Pre-compute all data
        print("Pre-computing PDGs...")
        self.data = []
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")
    
    def _process_record(self, rec: Dict) -> Optional[Dict]:
        """Process a single record into PDG data"""
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None
        
        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None
        
        # Build PDG
        pdg = self.pdg_builder.build(sequence)
        
        if len(pdg.nodes) < 2:
            return None
        
        n_nodes = min(len(pdg.nodes), self.max_nodes)
        
        # Get node features
        node_features = pdg.get_node_features(self.max_nodes)
        
        # Get adjacency matrices
        adj_data, adj_control = pdg.get_adjacency_matrices(self.max_nodes)
        
        # Get topological order (only include valid indices within max_nodes)
        topo = pdg.topological_order()
        # Filter to only include nodes within range and remap to sequential
        topo_filtered = [t for t in topo if t < self.max_nodes]
        # Create padded array with sequential order for remaining slots
        topo_padded = np.arange(self.max_nodes, dtype=np.int64)  # Default: identity mapping
        for i, t in enumerate(topo_filtered[:self.max_nodes]):
            topo_padded[i] = t
        
        # Node mask
        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        
        # Sequence length
        seq_length = n_nodes
        
        # Handcrafted features
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
    """Custom collate to handle variable-length sequences"""
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
# TRAINING
# =============================================================================

def train_epoch(
    model: nn.Module,
    loader: DataLoader,
    optimizer: optim.Optimizer,
    criterion: nn.Module,
    device: torch.device,
    grad_accum_steps: int = 1,
) -> Tuple[float, float]:
    """Train for one epoch"""
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
        
        # Forward
        logits = model(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted
        )
        
        loss = criterion(logits, labels)
        loss = loss / grad_accum_steps
        
        # Backward
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
            topo_order, node_mask, seq_lengths, handcrafted
        )
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())
    
    return correct / total, all_preds, all_labels


def plot_confusion_matrix(
    y_true: List[int],
    y_pred: List[int],
    labels: List[str],
    title: str,
    output_path: str,
):
    """Plot and save confusion matrix"""
    cm = confusion_matrix(y_true, y_pred)
    cm_norm = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]
    cm_norm = np.nan_to_num(cm_norm)
    
    fig, ax = plt.subplots(figsize=(12, 10))
    im = ax.imshow(cm_norm, interpolation='nearest', cmap='Blues')
    ax.figure.colorbar(im, ax=ax)
    
    ax.set(
        xticks=np.arange(len(labels)),
        yticks=np.arange(len(labels)),
        xticklabels=labels,
        yticklabels=labels,
        title=title,
        ylabel='True label',
        xlabel='Predicted label',
    )
    
    plt.setp(ax.get_xticklabels(), rotation=45, ha='right', rotation_mode='anchor')
    
    thresh = cm_norm.max() / 2.
    for i in range(len(labels)):
        for j in range(len(labels)):
            ax.text(j, i, f'{cm[i, j]}\n({cm_norm[i, j]:.1%})',
                   ha='center', va='center',
                   color='white' if cm_norm[i, j] > thresh else 'black',
                   fontsize=8)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()


@torch.no_grad()
def analyze_edge_type_attention(
    model: nn.Module,
    loader: DataLoader,
    class_names: List[str],
    device: torch.device,
    output_dir: Path,
):
    """
    Analyze and visualize edge-type attention patterns per class.
    
    This shows whether the model focuses more on data dependencies
    or control dependencies for each attack type.
    """
    model.eval()
    
    # Collect attention weights per class
    class_attention = {i: [] for i in range(len(class_names))}
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label']
        
        # Get predictions with attention
        _, edge_attn = model(
            node_features, adj_data, adj_control, topo_order,
            node_mask, seq_lengths, handcrafted, return_attention=True
        )
        
        # Average over steps and valid nodes
        # edge_attn: [steps, batch, nodes, 2]
        for i, label in enumerate(labels):
            mask = node_mask[i].cpu()
            attn = edge_attn[:, i, :, :].mean(dim=0)  # [nodes, 2]
            valid_attn = attn[mask].mean(dim=0)  # [2]
            class_attention[label.item()].append(valid_attn.cpu().numpy())
    
    # Compute mean attention per class
    mean_attention = {}
    for class_id, attns in class_attention.items():
        if len(attns) > 0:
            mean_attention[class_names[class_id]] = np.mean(attns, axis=0)
    
    # Plot
    fig, ax = plt.subplots(figsize=(12, 6))
    
    x = np.arange(len(class_names))
    width = 0.35
    
    data_attn = [mean_attention.get(c, [0, 0])[0] for c in class_names]
    ctrl_attn = [mean_attention.get(c, [0, 0])[1] for c in class_names]
    
    bars1 = ax.bar(x - width/2, data_attn, width, label='Data Dependencies', color='steelblue')
    bars2 = ax.bar(x + width/2, ctrl_attn, width, label='Control Dependencies', color='coral')
    
    ax.set_xlabel('Vulnerability Class')
    ax.set_ylabel('Mean Attention Weight')
    ax.set_title('Edge-Type Attention per Vulnerability Class\n(Data vs Control Dependencies)')
    ax.set_xticks(x)
    ax.set_xticklabels(class_names, rotation=45, ha='right')
    ax.legend()
    ax.set_ylim(0, 1)
    ax.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_dir / 'edge_type_attention.png', dpi=150, bbox_inches='tight')
    plt.close()
    
    # Print summary
    print("\n  Edge-type attention per class:")
    print(f"  {'Class':<25} {'Data Deps':>12} {'Ctrl Deps':>12} {'Dominant':>12}")
    print("  " + "-" * 63)
    for class_name in class_names:
        if class_name in mean_attention:
            data, ctrl = mean_attention[class_name]
            dominant = "Data" if data > ctrl else "Control"
            print(f"  {class_name:<25} {data:>12.3f} {ctrl:>12.3f} {dominant:>12}")
    
    # Save to JSON
    attn_data = {
        'class_names': class_names,
        'data_attention': data_attn,
        'control_attention': ctrl_attn,
    }
    with open(output_dir / 'edge_type_attention.json', 'w') as f:
        json.dump(attn_data, f, indent=2)


def plot_training_history(history: Dict, output_path: str):
    """Plot training history"""
    fig, axes = plt.subplots(1, 3, figsize=(15, 4))
    
    axes[0].plot(history['train_loss'], label='Train')
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Loss')
    axes[0].set_title('Loss')
    axes[0].legend()
    axes[0].grid(True, alpha=0.3)
    
    axes[1].plot(history['train_acc'], label='Train')
    axes[1].plot(history['test_acc'], label='Test')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Accuracy')
    axes[1].set_title('Accuracy')
    axes[1].legend()
    axes[1].grid(True, alpha=0.3)
    
    axes[2].plot(history['lr'])
    axes[2].set_xlabel('Epoch')
    axes[2].set_ylabel('Learning Rate')
    axes[2].set_title('Learning Rate')
    axes[2].grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def load_jsonl(path: Path):
    """Load JSONL file"""
    with path.open('r') as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def main():
    parser = argparse.ArgumentParser(description='Train GGNN-BiLSTM V27')
    parser.add_argument('--data', default='data/features/combined_v22_enhanced.jsonl',
                        help='Input data path')
    parser.add_argument('--epochs', type=int, default=50, help='Number of epochs')
    parser.add_argument('--batch-size', type=int, default=32, help='Batch size')
    parser.add_argument('--lr', type=float, default=1e-3, help='Learning rate')
    parser.add_argument('--patience', type=int, default=15, help='Early stopping patience')
    parser.add_argument('--ggnn-hidden', type=int, default=64, help='GGNN hidden dim')
    parser.add_argument('--ggnn-steps', type=int, default=4, help='GGNN message passing steps')
    parser.add_argument('--lstm-hidden', type=int, default=128, help='BiLSTM hidden dim')
    parser.add_argument('--lstm-layers', type=int, default=2, help='BiLSTM layers')
    parser.add_argument('--attention-heads', type=int, default=4, help='Attention heads in GGNN')
    parser.add_argument('--spec-window', type=int, default=10, help='Speculative window size')
    parser.add_argument('--dropout', type=float, default=0.2, help='Dropout rate')
    parser.add_argument('--use-handcrafted', action='store_true', default=True,
                        help='Use handcrafted features')
    args = parser.parse_args()
    
    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print("V28: Hybrid GGNN-BiLSTM with Edge-Type Specific Attention")
    print("=" * 70)
    print()
    print("Architecture:")
    print("  1. PDG with data and control dependencies")
    print("  2. GGNN with EDGE-TYPE ATTENTION for structural intelligence")
    print("  3. BiLSTM for temporal intelligence (sequence context)")
    print(f"  4. Attention heads: {args.attention_heads}")
    print(f"  5. Handcrafted features: {'Yes' if args.use_handcrafted else 'No'}")
    print()
    
    # Load data
    data_path = Path(args.data)
    print(f"Loading data from {data_path}...")
    records = list(load_jsonl(data_path))
    print(f"  Loaded {len(records)} records")
    
    # Label distribution
    label_counts = defaultdict(int)
    for rec in records:
        label = rec.get('label', 'UNKNOWN')
        label_counts[label] += 1
    
    print("\nLabel distribution:")
    for label in sorted(label_counts.keys()):
        print(f"  {label}: {label_counts[label]}")
    
    # Filter UNKNOWN
    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"\nAfter filtering: {len(records)} records")
    
    # Create label mapping
    unique_labels = sorted(set(r.get('label') for r in records))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    print(f"Number of classes: {len(unique_labels)}")
    
    # Get handcrafted feature names
    sample_features = records[0].get('features', {})
    handcrafted_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and np.isfinite(v)
    ])
    handcrafted_dim = len(handcrafted_names) if args.use_handcrafted else 0
    print(f"Handcrafted features: {len(handcrafted_names)}")
    
    # Split data
    print("\nSplitting train/test...")
    labels = [r.get('label') for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)} samples")
    print(f"  Test:  {len(test_records)} samples")
    
    # Create datasets
    print("\nCreating datasets...")
    print("  Creating train dataset...")
    sys.stdout.flush()
    train_dataset = PDGDataset(
        train_records, label_to_id, handcrafted_names,
        max_nodes=MAX_NODES, speculative_window=args.spec_window
    )
    print("  Creating test dataset...")
    sys.stdout.flush()
    test_dataset = PDGDataset(
        test_records, label_to_id, handcrafted_names,
        max_nodes=MAX_NODES, speculative_window=args.spec_window
    )
    
    print("  Creating data loaders...")
    sys.stdout.flush()
    # Create data loaders
    train_loader = DataLoader(
        train_dataset, batch_size=args.batch_size, shuffle=True,
        num_workers=0, pin_memory=False, collate_fn=collate_fn
    )
    test_loader = DataLoader(
        test_dataset, batch_size=args.batch_size, shuffle=False,
        num_workers=0, pin_memory=False, collate_fn=collate_fn
    )
    print("  Data loaders created!")
    sys.stdout.flush()
    
    # Create model
    print("\nInitializing Hybrid GGNN-BiLSTM with Edge-Type Attention...")
    sys.stdout.flush()
    try:
        model = HybridGGNNBiLSTMv28(
            node_feature_dim=NODE_FEATURE_DIM,
            ggnn_hidden_dim=args.ggnn_hidden,
            ggnn_steps=args.ggnn_steps,
            attention_heads=args.attention_heads,
            lstm_hidden_dim=args.lstm_hidden,
            lstm_layers=args.lstm_layers,
            num_classes=len(unique_labels),
            handcrafted_dim=handcrafted_dim,
            dropout=args.dropout,
        ).to(DEVICE)
        print("  Model created successfully!")
        sys.stdout.flush()
    except Exception as e:
        print(f"  ERROR creating model: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"  Total parameters: {total_params:,}")
    print(f"  GGNN: hidden={args.ggnn_hidden}, steps={args.ggnn_steps}, attn_heads={args.attention_heads}")
    print(f"  BiLSTM: hidden={args.lstm_hidden}, layers={args.lstm_layers}")
    sys.stdout.flush()
    
    # Class weights
    train_labels = [train_dataset.data[i]['label'] for i in range(len(train_dataset))]
    class_counts = np.bincount(train_labels, minlength=len(unique_labels))
    class_weights = 1.0 / np.maximum(class_counts, 1)
    class_weights = class_weights / class_weights.sum() * len(unique_labels)
    class_weights = torch.tensor(class_weights, dtype=torch.float32).to(DEVICE)
    
    # Loss and optimizer
    criterion = nn.CrossEntropyLoss(weight=class_weights)
    optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)
    
    # Scheduler
    scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(
        optimizer, T_0=10, T_mult=2, eta_min=1e-6
    )
    
    # Training loop
    print()
    print("=" * 70)
    print("TRAINING")
    print("=" * 70)
    
    history = {'train_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []}
    
    best_test_acc = 0
    best_epoch = 0
    patience_counter = 0
    
    for epoch in range(args.epochs):
        start_time = time.time()
        
        try:
            if epoch == 0:
                print("  Starting first training batch...")
                sys.stdout.flush()
            train_loss, train_acc = train_epoch(
                model, train_loader, optimizer, criterion, DEVICE,
                grad_accum_steps=4
            )
        except Exception as e:
            print(f"  ERROR in training epoch {epoch+1}: {e}")
            import traceback
            traceback.print_exc()
            sys.exit(1)
        
        test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
        
        current_lr = optimizer.param_groups[0]['lr']
        scheduler.step()
        
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(current_lr)
        
        epoch_time = time.time() - start_time
        
        improved = test_acc > best_test_acc
        
        if improved:
            best_test_acc = test_acc
            best_epoch = epoch + 1
            patience_counter = 0
            
            # Save best model
            model_dir = Path('models/ggnn_bilstm_v28')
            model_dir.mkdir(parents=True, exist_ok=True)
            torch.save(model.state_dict(), model_dir / 'model.pt')
        else:
            patience_counter += 1
        
        status = " [BEST]" if improved else (" [PLATEAU]" if not improved else "")
        
        print(f"Epoch {epoch+1:2d}/{args.epochs} | "
              f"Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | "
              f"Test: {test_acc:.4f} | "
              f"LR: {current_lr:.2e} | "
              f"{epoch_time:.1f}s{status}")
        
        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch+1} (best: {best_epoch})")
            break
    
    # Load best model
    print(f"\nLoading best model from epoch {best_epoch}...")
    model.load_state_dict(torch.load(Path('models/ggnn_bilstm_v28/model.pt')))
    
    # Final evaluation
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)
    
    train_acc, train_preds, train_labels = evaluate(model, train_loader, DEVICE)
    print(f"\nTrain Accuracy: {train_acc:.4f}")
    
    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    print(f"Test Accuracy:  {test_acc:.4f}")
    
    print("\nTest Set Classification Report:")
    print(classification_report(
        test_labels, test_preds,
        target_names=unique_labels,
        digits=4
    ))
    
    # Save outputs
    model_dir = Path('models/ggnn_bilstm_v28')
    viz_dir = Path('viz_v28_ggnn_bilstm')
    model_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    with open(model_dir / 'label_mapping.json', 'w') as f:
        json.dump(label_to_id, f, indent=2)
    
    with open(model_dir / 'feature_names.pkl', 'wb') as f:
        pickle.dump(handcrafted_names, f)
    
    metrics = {
        'train_accuracy': train_acc,
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_epochs': epoch + 1,
        'class_names': unique_labels,
        'config': {
            'ggnn_hidden': args.ggnn_hidden,
            'ggnn_steps': args.ggnn_steps,
            'attention_heads': args.attention_heads,
            'lstm_hidden': args.lstm_hidden,
            'lstm_layers': args.lstm_layers,
            'spec_window': args.spec_window,
            'use_handcrafted': args.use_handcrafted,
        }
    }
    with open(model_dir / 'metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)
    
    print("\nGenerating visualizations...")
    plot_confusion_matrix(
        train_labels, train_preds, unique_labels,
        'V28 GGNN-BiLSTM (Edge-Type Attn) - Train Confusion Matrix',
        str(viz_dir / 'confusion_matrix_train.png')
    )
    
    plot_confusion_matrix(
        test_labels, test_preds, unique_labels,
        'V28 GGNN-BiLSTM (Edge-Type Attn) - Test Confusion Matrix',
        str(viz_dir / 'confusion_matrix_test.png')
    )
    
    plot_training_history(history, str(viz_dir / 'training_history.png'))
    
    # Analyze edge-type attention patterns per class
    print("\nAnalyzing edge-type attention patterns...")
    analyze_edge_type_attention(model, test_loader, unique_labels, DEVICE, viz_dir)
    
    print()
    print("=" * 70)
    print("SUMMARY")
    print("=" * 70)
    print(f"  Best Test Accuracy: {best_test_acc:.4f} (epoch {best_epoch})")
    print(f"  Model saved to: {model_dir}")
    print(f"  Visualizations saved to: {viz_dir}")
    print()


if __name__ == '__main__':
    main()
