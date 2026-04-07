#!/usr/bin/env python3
"""
Training Script for SHERLOCK-style CNN (v33)

Trains a CNN model following the SHERLOCK architecture for detecting
speculative execution vulnerabilities in assembly code sequences.

Usage:
    python scripts/train_cnn_sherlock_v33.py \
        --data data/features/combined_v22_enhanced.jsonl \
        --epochs 50 \
        --batch-size 64 \
        --lr 0.005
"""

import argparse
import json
import pickle
import random
import time
from collections import Counter
from pathlib import Path
from typing import Dict, List, Tuple, Optional

import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from sklearn.metrics import (
    classification_report,
    confusion_matrix,
    ConfusionMatrixDisplay,
    accuracy_score,
    f1_score,
    precision_recall_fscore_support
)
from sklearn.model_selection import StratifiedShuffleSplit
from tqdm import tqdm

from cnn_sherlock_v33 import SherlockCNN


def log(msg: str):
    print(msg, flush=True)


# ============================================================================
# Data Loading and Tokenization
# ============================================================================

def load_jsonl(path: Path):
    """Load JSONL file line by line."""
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def tokens_from_sequence(seq: List[str]) -> List[str]:
    """
    Tokenize an assembly instruction sequence.
    
    Extracts opcodes and normalizes operands to REG/MEM/IMM categories.
    """
    toks = []
    for line in seq:
        # Remove comments
        line = line.split(';', 1)[0].strip()
        line = line.split('//', 1)[0].strip()
        line = line.split('@', 1)[0].strip()
        
        # Skip empty lines, labels, directives
        if not line or line.startswith('.') or line.endswith(':'):
            continue
        
        # Split into parts
        parts = line.replace(',', ' ').replace('\t', ' ').split()
        if not parts:
            continue
        
        # Extract opcode
        opcode = parts[0].lower()
        if opcode.startswith('.'):
            continue
        toks.append(opcode)
        
        # Normalize operands
        for op in parts[1:]:
            op = op.strip()
            if not op:
                continue
            if '[' in op or ']' in op:
                toks.append('MEM')
            elif op.lstrip('#-').isdigit() or op.startswith('0x') or op.startswith('#'):
                toks.append('IMM')
            elif op.startswith('$'):
                toks.append('IMM')
            else:
                toks.append('REG')
    
    return toks


def build_vocab(records: List[Dict], min_freq: int = 2) -> Dict[str, int]:
    """Build vocabulary from tokenized sequences."""
    counter = Counter()
    for r in records:
        counter.update(r['tokens'])
    
    vocab = {'<pad>': 0, '<unk>': 1}
    for tok, count in counter.most_common():
        if count >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    
    return vocab


def prepare_dataset(data_path: Path) -> Tuple[List[Dict], List[str]]:
    """Load and prepare dataset."""
    log(f"Loading data from {data_path}...")
    records = []
    skipped = 0
    
    for i, rec in enumerate(load_jsonl(data_path)):
        label = rec.get('label', 'UNKNOWN')
        if label == 'UNKNOWN':
            skipped += 1
            continue
        
        seq = rec.get('sequence', [])
        if not seq:
            skipped += 1
            continue
        
        tokens = tokens_from_sequence(seq)
        if len(tokens) < 3:
            skipped += 1
            continue
        
        records.append({
            'tokens': tokens,
            'label': label,
            'source': rec.get('source_file', 'unknown'),
            'group': rec.get('group', label),
        })
        
        if (i + 1) % 25000 == 0:
            log(f"  Processed {i + 1} records...")
    
    log(f"  Total valid records: {len(records)} (skipped {skipped})")
    
    labels = sorted(set(r['label'] for r in records))
    log(f"  Labels: {labels}")
    
    # Print label distribution
    label_counts = Counter(r['label'] for r in records)
    log("\nLabel distribution:")
    for label in labels:
        count = label_counts[label]
        pct = 100 * count / len(records)
        log(f"  {label}: {count} ({pct:.1f}%)")
    
    return records, labels


# ============================================================================
# Dataset
# ============================================================================

class SeqDataset(Dataset):
    """Dataset for tokenized sequences."""
    
    def __init__(
        self,
        records: List[Dict],
        vocab: Dict[str, int],
        label_to_id: Dict[str, int],
        max_len: int = 256
    ):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len
    
    def __len__(self):
        return len(self.records)
    
    def __getitem__(self, idx):
        rec = self.records[idx]
        tokens = rec['tokens']
        label = rec['label']
        
        # Convert tokens to IDs
        token_ids = [self.vocab.get(tok, 1) for tok in tokens[:self.max_len]]  # 1 = <unk>
        
        # Pad or truncate
        if len(token_ids) < self.max_len:
            token_ids += [0] * (self.max_len - len(token_ids))  # 0 = <pad>
        else:
            token_ids = token_ids[:self.max_len]
        
        return (
            torch.tensor(token_ids, dtype=torch.long),
            torch.tensor(self.label_to_id[label], dtype=torch.long)
        )


# ============================================================================
# Training Functions
# ============================================================================

def train_epoch(
    model: nn.Module,
    dataloader: DataLoader,
    criterion: nn.Module,
    optimizer: optim.Optimizer,
    device: torch.device,
    epoch: int
) -> Tuple[float, float]:
    """Train for one epoch."""
    model.train()
    total_loss = 0.0
    correct = 0
    total = 0
    
    pbar = tqdm(dataloader, desc=f"Epoch {epoch} [Train]")
    for batch_idx, (seqs, labels) in enumerate(pbar):
        seqs = seqs.to(device)
        labels = labels.to(device)
        
        # Forward pass
        optimizer.zero_grad()
        logits = model(seqs)
        loss = criterion(logits, labels)
        
        # Backward pass
        loss.backward()
        optimizer.step()
        
        # Metrics
        total_loss += loss.item()
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        
        # Update progress bar
        pbar.set_postfix({
            'loss': f'{loss.item():.4f}',
            'acc': f'{100 * correct / total:.2f}%'
        })
    
    avg_loss = total_loss / len(dataloader)
    accuracy = 100 * correct / total
    
    return avg_loss, accuracy


def evaluate(
    model: nn.Module,
    dataloader: DataLoader,
    criterion: nn.Module,
    device: torch.device,
    split: str = "Val"
) -> Tuple[float, float, np.ndarray, np.ndarray]:
    """Evaluate model."""
    model.eval()
    total_loss = 0.0
    all_preds = []
    all_labels = []
    
    with torch.no_grad():
        for seqs, labels in tqdm(dataloader, desc=f"[{split}]"):
            seqs = seqs.to(device)
            labels = labels.to(device)
            
            logits = model(seqs)
            loss = criterion(logits, labels)
            
            total_loss += loss.item()
            preds = logits.argmax(dim=1)
            
            all_preds.extend(preds.cpu().numpy())
            all_labels.extend(labels.cpu().numpy())
    
    avg_loss = total_loss / len(dataloader)
    accuracy = 100 * accuracy_score(all_labels, all_preds)
    
    return avg_loss, accuracy, np.array(all_labels), np.array(all_preds)


def main():
    parser = argparse.ArgumentParser(description='Train SHERLOCK-style CNN (v33)')
    parser.add_argument(
        '--data',
        type=Path,
        default=Path('data/features/combined_v22_enhanced.jsonl'),
        help='Path to data file'
    )
    parser.add_argument(
        '--output-dir',
        type=Path,
        default=Path('models/cnn_sherlock_v33'),
        help='Output directory for model and artifacts'
    )
    parser.add_argument(
        '--viz-dir',
        type=Path,
        default=Path('viz_v33_cnn_sherlock'),
        help='Visualization output directory'
    )
    parser.add_argument(
        '--epochs',
        type=int,
        default=50,
        help='Number of training epochs'
    )
    parser.add_argument(
        '--batch-size',
        type=int,
        default=64,
        help='Batch size'
    )
    parser.add_argument(
        '--lr',
        type=float,
        default=0.005,
        help='Learning rate (SHERLOCK uses 0.005)'
    )
    parser.add_argument(
        '--embedding-dim',
        type=int,
        default=13,
        help='Embedding dimension (SHERLOCK uses 13)'
    )
    parser.add_argument(
        '--num-filters',
        type=int,
        default=512,
        help='Number of Conv1D filters (SHERLOCK uses 512)'
    )
    parser.add_argument(
        '--kernel-size',
        type=int,
        default=9,
        help='Conv1D kernel size (SHERLOCK uses 9)'
    )
    parser.add_argument(
        '--max-len',
        type=int,
        default=256,
        help='Maximum sequence length'
    )
    parser.add_argument(
        '--min-freq',
        type=int,
        default=2,
        help='Minimum token frequency for vocabulary'
    )
    parser.add_argument(
        '--patience',
        type=int,
        default=10,
        help='Early stopping patience'
    )
    parser.add_argument(
        '--seed',
        type=int,
        default=42,
        help='Random seed'
    )
    parser.add_argument(
        '--test-split',
        type=float,
        default=0.1,
        help='Test set split ratio'
    )
    parser.add_argument(
        '--val-split',
        type=float,
        default=0.1,
        help='Validation set split ratio'
    )
    args = parser.parse_args()
    
    # Set random seeds
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(args.seed)
    
    # Device
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    log(f"Using device: {device}")
    
    # Create output directories
    args.output_dir.mkdir(parents=True, exist_ok=True)
    args.viz_dir.mkdir(parents=True, exist_ok=True)
    
    log("=" * 70)
    log("SHERLOCK-STYLE CNN TRAINING (v33)")
    log("=" * 70)
    
    # Load and prepare data
    records, labels = prepare_dataset(args.data)
    
    # Build vocabulary
    log("\nBuilding vocabulary...")
    vocab = build_vocab(records, min_freq=args.min_freq)
    log(f"  Vocabulary size: {len(vocab)}")
    
    # Save vocabulary
    vocab_path = args.output_dir / 'vocab.pkl'
    with open(vocab_path, 'wb') as f:
        pickle.dump(vocab, f)
    log(f"  Saved vocabulary to {vocab_path}")
    
    # Create label mapping
    label_to_id = {label: i for i, label in enumerate(labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}
    num_classes = len(labels)
    log(f"\nNumber of classes: {num_classes}")
    log(f"Labels: {labels}")
    
    # Split data
    log("\nSplitting data...")
    labels_list = [r['label'] for r in records]
    
    # First split: train+val vs test
    sss1 = StratifiedShuffleSplit(n_splits=1, test_size=args.test_split, random_state=args.seed)
    train_val_idx, test_idx = next(sss1.split(records, labels_list))
    
    train_val_records = [records[i] for i in train_val_idx]
    test_records = [records[i] for i in test_idx]
    train_val_labels = [labels_list[i] for i in train_val_idx]
    
    # Second split: train vs val
    val_size = args.val_split / (1 - args.test_split)
    sss2 = StratifiedShuffleSplit(n_splits=1, test_size=val_size, random_state=args.seed)
    train_idx, val_idx = next(sss2.split(train_val_records, train_val_labels))
    
    train_records = [train_val_records[i] for i in train_idx]
    val_records = [train_val_records[i] for i in val_idx]
    
    log(f"  Train: {len(train_records)}")
    log(f"  Val: {len(val_records)}")
    log(f"  Test: {len(test_records)}")
    
    # Create datasets
    train_dataset = SeqDataset(train_records, vocab, label_to_id, max_len=args.max_len)
    val_dataset = SeqDataset(val_records, vocab, label_to_id, max_len=args.max_len)
    test_dataset = SeqDataset(test_records, vocab, label_to_id, max_len=args.max_len)
    
    # Create dataloaders
    train_loader = DataLoader(
        train_dataset,
        batch_size=args.batch_size,
        shuffle=True,
        num_workers=2,
        pin_memory=True if torch.cuda.is_available() else False
    )
    val_loader = DataLoader(
        val_dataset,
        batch_size=args.batch_size,
        shuffle=False,
        num_workers=2,
        pin_memory=True if torch.cuda.is_available() else False
    )
    test_loader = DataLoader(
        test_dataset,
        batch_size=args.batch_size,
        shuffle=False,
        num_workers=2,
        pin_memory=True if torch.cuda.is_available() else False
    )
    
    # Create model
    log("\nCreating model...")
    model = SherlockCNN(
        vocab_size=len(vocab),
        embedding_dim=args.embedding_dim,
        num_filters=args.num_filters,
        kernel_size=args.kernel_size,
        num_classes=num_classes,
        max_seq_len=args.max_len
    ).to(device)
    
    # Count parameters
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    log(f"  Total parameters: {total_params:,}")
    log(f"  Trainable parameters: {trainable_params:,}")
    
    # Loss and optimizer (matching SHERLOCK)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=args.lr)
    
    # Training loop
    log("\n" + "=" * 70)
    log("TRAINING")
    log("=" * 70)
    
    train_losses = []
    train_accs = []
    val_losses = []
    val_accs = []
    
    best_val_acc = 0.0
    best_epoch = 0
    patience_counter = 0
    
    for epoch in range(1, args.epochs + 1):
        # Train
        train_loss, train_acc = train_epoch(
            model, train_loader, criterion, optimizer, device, epoch
        )
        train_losses.append(train_loss)
        train_accs.append(train_acc)
        
        # Validate
        val_loss, val_acc, val_labels, val_preds = evaluate(
            model, val_loader, criterion, device, "Val"
        )
        val_losses.append(val_loss)
        val_accs.append(val_acc)
        
        log(f"\nEpoch {epoch}/{args.epochs}:")
        log(f"  Train Loss: {train_loss:.4f}, Train Acc: {train_acc:.2f}%")
        log(f"  Val Loss: {val_loss:.4f}, Val Acc: {val_acc:.2f}%")
        
        # Early stopping
        if val_acc > best_val_acc:
            best_val_acc = val_acc
            best_epoch = epoch
            patience_counter = 0
            
            # Save best model
            model_path = args.output_dir / 'best_model.pt'
            torch.save({
                'epoch': epoch,
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'val_acc': val_acc,
                'vocab': vocab,
                'label_to_id': label_to_id,
                'id_to_label': id_to_label,
                'args': vars(args)
            }, model_path)
            log(f"  ✓ Saved best model (val_acc: {val_acc:.2f}%)")
        else:
            patience_counter += 1
            if patience_counter >= args.patience:
                log(f"\nEarly stopping at epoch {epoch}")
                log(f"Best validation accuracy: {best_val_acc:.2f}% at epoch {best_epoch}")
                break
    
    # Load best model for testing
    log("\n" + "=" * 70)
    log("TESTING")
    log("=" * 70)
    
    checkpoint = torch.load(args.output_dir / 'best_model.pt', map_location=device)
    model.load_state_dict(checkpoint['model_state_dict'])
    log(f"Loaded best model from epoch {checkpoint['epoch']}")
    
    # Test evaluation
    test_loss, test_acc, test_labels, test_preds = evaluate(
        model, test_loader, criterion, device, "Test"
    )
    
    log(f"\nTest Results:")
    log(f"  Loss: {test_loss:.4f}")
    log(f"  Accuracy: {test_acc:.2f}%")
    
    # Classification report
    log("\nClassification Report:")
    report = classification_report(
        test_labels,
        test_preds,
        target_names=[id_to_label[i] for i in range(num_classes)],
        digits=4
    )
    log(report)
    
    # Confusion matrix
    cm = confusion_matrix(test_labels, test_preds)
    
    # Plot confusion matrix
    plt.figure(figsize=(10, 8))
    disp = ConfusionMatrixDisplay(
        confusion_matrix=cm,
        display_labels=[id_to_label[i] for i in range(num_classes)]
    )
    disp.plot(xticks_rotation=45, values_format='d')
    plt.title('Test Confusion Matrix - SHERLOCK CNN (v33)')
    plt.tight_layout()
    plt.savefig(args.viz_dir / 'confusion_matrix_test.png', dpi=150, bbox_inches='tight')
    plt.close()
    
    # Training history
    plt.figure(figsize=(12, 5))
    
    plt.subplot(1, 2, 1)
    plt.plot(train_losses, label='Train', marker='o')
    plt.plot(val_losses, label='Val', marker='s')
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.title('Training History - Loss')
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.subplot(1, 2, 2)
    plt.plot(train_accs, label='Train', marker='o')
    plt.plot(val_accs, label='Val', marker='s')
    plt.xlabel('Epoch')
    plt.ylabel('Accuracy (%)')
    plt.title('Training History - Accuracy')
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(args.viz_dir / 'training_history.png', dpi=150, bbox_inches='tight')
    plt.close()
    
    # Save metrics
    metrics = {
        'test_accuracy': float(test_acc),
        'test_loss': float(test_loss),
        'best_val_accuracy': float(best_val_acc),
        'best_epoch': int(best_epoch),
        'classification_report': report,
        'confusion_matrix': cm.tolist(),
        'label_mapping': id_to_label
    }
    
    import json
    with open(args.output_dir / 'metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)
    
    log(f"\nResults saved to {args.output_dir}")
    log(f"Visualizations saved to {args.viz_dir}")
    log("\n" + "=" * 70)
    log("TRAINING COMPLETE")
    log("=" * 70)


if __name__ == '__main__':
    main()
