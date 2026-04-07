#!/usr/bin/env python3
"""
V26: Graph Neural Network with Semantic Graphs and Attack Pattern Detection

This version implements proper graph-based learning:
1. Semantic graph construction from assembly sequences
2. Message-passing GNN for learning graph structure
3. Attack pattern detection as explicit graph motifs
4. Hybrid combination with handcrafted features (from RF v18)

Key improvements over previous versions:
- True data flow dependencies captured in graph structure
- Semantic node types (not raw opcodes)
- Attack-specific pattern detection
- Proper graph-level pooling with attention
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
from sklearn.metrics import (
    classification_report, confusion_matrix, accuracy_score,
    precision_recall_fscore_support
)
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from tqdm import tqdm

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))

from semantic_graph_builder import SemanticGraphBuilder, AttackPatternDetector
from graph_neural_network import HybridGNNClassifier


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64  # Maximum nodes per graph
NODE_FEATURE_DIM = 21  # 16 node types + 5 attributes
PATTERN_FEATURE_DIM = 30  # From AttackPatternDetector

# Attack pattern feature names (from AttackPatternDetector)
PATTERN_FEATURES = [
    'total_nodes', 'load_count', 'store_count', 'branch_count', 
    'indirect_count', 'fence_count', 'cache_op_count', 'timing_count',
    'ret_count', 'call_count', 'branch_density', 'indirect_ratio',
    'memory_dep_count', 'data_dep_density', 'unfenced_indexed_load',
    'call_ret_distance',
    'spectre_v1_score', 'spectre_v2_score', 'spectre_v4_score',
    'l1tf_score', 'mds_score', 'retbleed_score', 'inception_score', 'bhi_score',
    # Additional pattern counts
    'SPECTRE_V1_compare_branch', 'SPECTRE_V1_branch_load_indexed',
    'L1TF_cache_then_load', 'RETBLEED_call_ret',
    'INCEPTION_multiple_indirect', 'BHI_branch_chain',
]


# =============================================================================
# DATASET
# =============================================================================

class GraphDataset(Dataset):
    """
    Dataset for GNN training.
    
    Each sample contains:
    - node_features: [max_nodes, node_feature_dim]
    - adjacency: [max_nodes, max_nodes]
    - pattern_features: [pattern_feature_dim]
    - handcrafted_features: [handcrafted_feature_dim]
    - node_mask: [max_nodes] - True for valid nodes
    - label: int
    """
    
    def __init__(
        self,
        records: List[Dict],
        label_to_id: Dict[str, int],
        graph_builder: SemanticGraphBuilder,
        pattern_detector: AttackPatternDetector,
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
    ):
        self.records = records
        self.label_to_id = label_to_id
        self.graph_builder = graph_builder
        self.pattern_detector = pattern_detector
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        
        # Pre-compute all graphs for faster training
        print("Pre-computing graphs...")
        self.data = []
        for rec in tqdm(records, desc="Building graphs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")
    
    def _process_record(self, rec: Dict) -> Optional[Dict]:
        """Process a single record into graph data."""
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None
        
        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None
        
        # Build semantic graph
        graph = self.graph_builder.build_graph(sequence)
        
        if len(graph.nodes) < 2:
            return None
        
        # Convert to matrices
        adj, node_feats = self.graph_builder.to_adjacency_matrix(
            graph, max_nodes=self.max_nodes
        )
        
        # Get pattern features
        patterns = self.pattern_detector.detect_patterns(graph)
        pattern_vec = np.zeros(len(PATTERN_FEATURES), dtype=np.float32)
        for i, name in enumerate(PATTERN_FEATURES):
            pattern_vec[i] = patterns.get(name, 0.0)
        
        # Normalize pattern features
        pattern_vec = np.clip(pattern_vec, -100, 100)
        
        # Get handcrafted features
        rec_features = rec.get('features', {})
        handcrafted_vec = np.zeros(len(self.handcrafted_feature_names), dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and not np.isnan(val) and not np.isinf(val):
                handcrafted_vec[i] = val
        
        # Normalize handcrafted features
        handcrafted_vec = np.clip(handcrafted_vec, -100, 100)
        
        # Create node mask
        num_valid_nodes = min(len(graph.nodes), self.max_nodes)
        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:num_valid_nodes] = True
        
        return {
            'node_features': node_feats,
            'adjacency': adj,
            'pattern_features': pattern_vec,
            'handcrafted_features': handcrafted_vec,
            'node_mask': node_mask,
            'label': self.label_to_id[label],
        }
    
    def __len__(self):
        return len(self.data)
    
    def __getitem__(self, idx):
        item = self.data[idx]
        return {
            'node_features': torch.from_numpy(item['node_features']),
            'adjacency': torch.from_numpy(item['adjacency']),
            'pattern_features': torch.from_numpy(item['pattern_features']),
            'handcrafted_features': torch.from_numpy(item['handcrafted_features']),
            'node_mask': torch.from_numpy(item['node_mask']),
            'label': item['label'],
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
    """Train for one epoch."""
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        adjacency = batch['adjacency'].to(device)
        pattern_features = batch['pattern_features'].to(device)
        handcrafted_features = batch['handcrafted_features'].to(device)
        node_mask = batch['node_mask'].to(device)
        labels = batch['label'].to(device)
        
        # Forward pass
        logits = model(
            node_features, adjacency, pattern_features, 
            handcrafted_features, node_mask
        )
        
        loss = criterion(logits, labels)
        loss = loss / grad_accum_steps
        
        # Backward pass
        loss.backward()
        
        if (i + 1) % grad_accum_steps == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * grad_accum_steps
        
        # Accuracy
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
    """Evaluate the model."""
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adjacency = batch['adjacency'].to(device)
        pattern_features = batch['pattern_features'].to(device)
        handcrafted_features = batch['handcrafted_features'].to(device)
        node_mask = batch['node_mask'].to(device)
        labels = batch['label'].to(device)
        
        logits = model(
            node_features, adjacency, pattern_features,
            handcrafted_features, node_mask
        )
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())
    
    accuracy = correct / total
    return accuracy, all_preds, all_labels


def plot_confusion_matrix(
    y_true: List[int],
    y_pred: List[int],
    labels: List[str],
    title: str,
    output_path: str,
):
    """Plot and save confusion matrix."""
    cm = confusion_matrix(y_true, y_pred)
    
    # Normalize
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
    
    # Add text annotations
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


def plot_training_history(history: Dict, output_path: str):
    """Plot training history."""
    fig, axes = plt.subplots(1, 3, figsize=(15, 4))
    
    # Loss
    axes[0].plot(history['train_loss'], label='Train')
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Loss')
    axes[0].set_title('Loss')
    axes[0].legend()
    axes[0].grid(True, alpha=0.3)
    
    # Accuracy
    axes[1].plot(history['train_acc'], label='Train')
    axes[1].plot(history['test_acc'], label='Test')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Accuracy')
    axes[1].set_title('Accuracy')
    axes[1].legend()
    axes[1].grid(True, alpha=0.3)
    
    # Learning rate
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
    """Load JSONL file."""
    with path.open('r') as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def main():
    parser = argparse.ArgumentParser(description='Train GNN V26')
    parser.add_argument('--data', default='data/features/combined_v22_enhanced.jsonl',
                        help='Input data path')
    parser.add_argument('--epochs', type=int, default=50, help='Number of epochs')
    parser.add_argument('--batch-size', type=int, default=32, help='Batch size')
    parser.add_argument('--lr', type=float, default=1e-3, help='Learning rate')
    parser.add_argument('--patience', type=int, default=15, help='Early stopping patience')
    parser.add_argument('--gnn-hidden', type=int, default=64, help='GNN hidden dimension')
    parser.add_argument('--gnn-layers', type=int, default=3, help='Number of GNN layers')
    parser.add_argument('--dropout', type=float, default=0.2, help='Dropout rate')
    args = parser.parse_args()
    
    print(f"Using device: {DEVICE}")
    print()
    print("=" * 60)
    print("V26: GNN with Semantic Graphs + Attack Patterns")
    print("=" * 60)
    print()
    
    # Load data
    data_path = Path(args.data)
    print(f"Loading data from {data_path}...")
    records = list(load_jsonl(data_path))
    print(f"  Loaded {len(records)} records")
    
    # Get label distribution
    label_counts = defaultdict(int)
    for rec in records:
        label = rec.get('label', 'UNKNOWN')
        label_counts[label] += 1
    
    print("\nLabel distribution:")
    labels_sorted = sorted(label_counts.keys())
    for label in labels_sorted:
        print(f"  {label}: {label_counts[label]}")
    
    # Filter out UNKNOWN
    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"\nAfter filtering: {len(records)} records")
    
    # Create label mapping
    unique_labels = sorted(set(r.get('label') for r in records))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    id_to_label = {i: l for l, i in label_to_id.items()}
    print(f"Number of classes: {len(unique_labels)}")
    
    # Get handcrafted feature names from first record
    sample_features = records[0].get('features', {})
    handcrafted_feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and not np.isnan(v) and not np.isinf(v)
    ])
    print(f"Handcrafted features: {len(handcrafted_feature_names)}")
    
    # Split data
    print("\nSplitting train/test...")
    labels = [r.get('label') for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)} samples")
    print(f"  Test:  {len(test_records)} samples")
    
    # Create graph builder and pattern detector
    graph_builder = SemanticGraphBuilder(include_sequential=True, max_def_distance=10)
    pattern_detector = AttackPatternDetector()
    
    # Create datasets
    print("\nCreating datasets...")
    train_dataset = GraphDataset(
        train_records, label_to_id, graph_builder, pattern_detector,
        handcrafted_feature_names, max_nodes=MAX_NODES
    )
    test_dataset = GraphDataset(
        test_records, label_to_id, graph_builder, pattern_detector,
        handcrafted_feature_names, max_nodes=MAX_NODES
    )
    
    # Create data loaders
    train_loader = DataLoader(
        train_dataset, batch_size=args.batch_size, shuffle=True, 
        num_workers=0, pin_memory=True
    )
    test_loader = DataLoader(
        test_dataset, batch_size=args.batch_size, shuffle=False,
        num_workers=0, pin_memory=True
    )
    
    # Create model
    print("\nInitializing Hybrid GNN model...")
    model = HybridGNNClassifier(
        node_feature_dim=NODE_FEATURE_DIM,
        gnn_hidden_dim=args.gnn_hidden,
        gnn_num_layers=args.gnn_layers,
        pattern_feature_dim=len(PATTERN_FEATURES),
        handcrafted_feature_dim=len(handcrafted_feature_names),
        num_classes=len(unique_labels),
        dropout=args.dropout,
    ).to(DEVICE)
    
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Total parameters: {total_params:,}")
    print(f"  Trainable parameters: {trainable_params:,}")
    
    # Compute class weights for imbalanced data
    train_labels = [train_dataset.data[i]['label'] for i in range(len(train_dataset))]
    class_counts = np.bincount(train_labels, minlength=len(unique_labels))
    class_weights = 1.0 / np.maximum(class_counts, 1)
    class_weights = class_weights / class_weights.sum() * len(unique_labels)
    class_weights = torch.tensor(class_weights, dtype=torch.float32).to(DEVICE)
    
    # Loss and optimizer
    criterion = nn.CrossEntropyLoss(weight=class_weights)
    optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)
    
    # Learning rate scheduler
    scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(
        optimizer, T_0=10, T_mult=2, eta_min=1e-6
    )
    
    # Training loop
    print()
    print("=" * 60)
    print("TRAINING")
    print("=" * 60)
    
    history = {
        'train_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []
    }
    
    best_test_acc = 0
    best_epoch = 0
    patience_counter = 0
    
    for epoch in range(args.epochs):
        start_time = time.time()
        
        # Train
        train_loss, train_acc = train_epoch(
            model, train_loader, optimizer, criterion, DEVICE,
            grad_accum_steps=4
        )
        
        # Evaluate
        test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
        
        # Get current learning rate
        current_lr = optimizer.param_groups[0]['lr']
        
        # Update scheduler
        scheduler.step()
        
        # Record history
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(current_lr)
        
        epoch_time = time.time() - start_time
        
        # Check for improvement
        improved = test_acc > best_test_acc
        plateau = not improved
        
        if improved:
            best_test_acc = test_acc
            best_epoch = epoch + 1
            patience_counter = 0
            
            # Save best model
            model_dir = Path('models/gnn_v26')
            model_dir.mkdir(parents=True, exist_ok=True)
            torch.save(model.state_dict(), model_dir / 'model.pt')
        else:
            patience_counter += 1
        
        status = ""
        if improved:
            status = " [BEST]"
        elif plateau:
            status = " [PLATEAU]"
        
        print(f"Epoch {epoch+1:2d}/{args.epochs} | "
              f"Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | "
              f"Test: {test_acc:.4f} | "
              f"LR: {current_lr:.2e} | "
              f"{epoch_time:.1f}s{status}")
        
        # Early stopping
        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch+1} (best: {best_epoch})")
            break
    
    # Load best model
    print(f"\nLoading best model from epoch {best_epoch}...")
    model.load_state_dict(torch.load(Path('models/gnn_v26/model.pt')))
    
    # Final evaluation
    print()
    print("=" * 60)
    print("FINAL EVALUATION")
    print("=" * 60)
    
    # Train set
    train_acc, train_preds, train_labels = evaluate(model, train_loader, DEVICE)
    print(f"\nTrain Accuracy: {train_acc:.4f}")
    
    # Test set
    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    print(f"Test Accuracy:  {test_acc:.4f}")
    
    # Classification report
    print("\nTest Set Classification Report:")
    print(classification_report(
        test_labels, test_preds,
        target_names=unique_labels,
        digits=4
    ))
    
    # Per-class metrics
    precision, recall, f1, support = precision_recall_fscore_support(
        test_labels, test_preds, average=None
    )
    
    print("\nPer-class metrics:")
    print(f"{'Class':<25} {'Precision':>10} {'Recall':>10} {'F1':>10} {'Support':>10}")
    print("-" * 65)
    for i, label in enumerate(unique_labels):
        print(f"{label:<25} {precision[i]:>10.4f} {recall[i]:>10.4f} {f1[i]:>10.4f} {support[i]:>10}")
    
    # Save outputs
    model_dir = Path('models/gnn_v26')
    viz_dir = Path('viz_v26_gnn')
    model_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    # Save model artifacts
    with open(model_dir / 'label_mapping.json', 'w') as f:
        json.dump(label_to_id, f, indent=2)
    
    with open(model_dir / 'feature_names.pkl', 'wb') as f:
        pickle.dump(handcrafted_feature_names, f)
    
    metrics = {
        'train_accuracy': train_acc,
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_epochs': epoch + 1,
        'precision': precision.tolist(),
        'recall': recall.tolist(),
        'f1': f1.tolist(),
        'support': support.tolist(),
        'class_names': unique_labels,
    }
    with open(model_dir / 'metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)
    
    # Plot confusion matrices
    print("\nGenerating visualizations...")
    plot_confusion_matrix(
        train_labels, train_preds, unique_labels,
        'V26 GNN - Train Confusion Matrix',
        str(viz_dir / 'confusion_matrix_train.png')
    )
    
    plot_confusion_matrix(
        test_labels, test_preds, unique_labels,
        'V26 GNN - Test Confusion Matrix',
        str(viz_dir / 'confusion_matrix_test.png')
    )
    
    plot_training_history(history, str(viz_dir / 'training_history.png'))
    
    print()
    print("=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print(f"  Best Test Accuracy: {best_test_acc:.4f} (epoch {best_epoch})")
    print(f"  Model saved to: {model_dir}")
    print(f"  Visualizations saved to: {viz_dir}")
    print()


if __name__ == '__main__':
    main()
