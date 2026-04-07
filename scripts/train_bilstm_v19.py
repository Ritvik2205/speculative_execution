#!/usr/bin/env python3
"""
BiLSTM-based Multi-class Vulnerability Classifier (v19)

This script trains a Bidirectional LSTM model for classifying assembly code
snippets into different vulnerability categories. It replaces the Random Forest
approach with a neural sequence model that can better capture long-range
dependencies in instruction sequences.

Model Architecture:
    - Embedding Layer: Maps token IDs to dense vectors (vocab_size -> 128 dims)
    - BiLSTM Layer: Bidirectional LSTM (128 -> 64 per direction = 128 output)
    - Mean Pooling: Average over sequence positions
    - Classification Head: Linear layer (128 -> num_classes)

Training Configuration:
    - Optimizer: AdamW with weight decay
    - Loss: Cross-entropy with class weights and label smoothing
    - Epochs: 30
    - Batch size: 64
    - Learning rate: 1e-3

Usage:
    python scripts/train_bilstm_v19.py --in data/features/combined_v15_discriminative.jsonl
"""

import argparse
import json
import pickle
import random
import time
from collections import Counter
from pathlib import Path
from typing import Dict, List, Tuple

import numpy as np
import matplotlib.pyplot as plt
import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader
from sklearn.metrics import classification_report, confusion_matrix, ConfusionMatrixDisplay
from sklearn.model_selection import StratifiedShuffleSplit


# ============================================================================
# Logging
# ============================================================================

def log(msg: str):
    """Print with flush for real-time output."""
    print(msg, flush=True)


# ============================================================================
# Data Loading and Tokenization
# ============================================================================

def load_jsonl(path: Path):
    """Load JSONL file as generator."""
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def tokens_from_sequence(seq: List[str]) -> List[str]:
    """
    Tokenize an assembly instruction sequence.
    
    Extracts opcodes and classifies operands into categories:
    - MEM: Memory operands (contains [ or ])
    - IMM: Immediate values (starts with # or is numeric/hex)
    - REG: Register operands (everything else)
    
    Args:
        seq: List of assembly instruction lines
        
    Returns:
        List of tokens
    """
    toks = []
    for line in seq:
        # Remove comments
        line = line.split(';', 1)[0].strip()
        line = line.split('//', 1)[0].strip()
        line = line.split('@', 1)[0].strip()
        
        if not line or line.startswith('.') or line.endswith(':'):
            continue
            
        # Split into parts
        parts = line.replace(',', ' ').replace('\t', ' ').split()
        if not parts:
            continue
            
        # First part is opcode
        opcode = parts[0].lower()
        # Skip assembler directives
        if opcode.startswith('.'):
            continue
        toks.append(opcode)
        
        # Classify operands
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
    """
    Build vocabulary from tokenized records.
    
    Args:
        records: List of records with 'tokens' field
        min_freq: Minimum frequency for a token to be included
        
    Returns:
        Dictionary mapping tokens to IDs
    """
    counter = Counter()
    for r in records:
        counter.update(r['tokens'])
    
    vocab = {'<pad>': 0, '<unk>': 1}
    for tok, count in counter.most_common():
        if count >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    
    return vocab


def prepare_dataset(data_path: Path) -> Tuple[List[Dict], List[str]]:
    """
    Load and prepare dataset from JSONL file.
    
    Args:
        data_path: Path to JSONL file with 'sequence' and 'label' fields
        
    Returns:
        Tuple of (records, unique_labels)
    """
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
        if len(tokens) < 3:  # Skip very short sequences
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
    
    return records, labels


# ============================================================================
# Dataset and Model
# ============================================================================

class SeqDataset(Dataset):
    """PyTorch Dataset for sequence classification."""
    
    def __init__(
        self,
        records: List[Dict],
        vocab: Dict[str, int],
        label_to_id: Dict[str, int],
        max_len: int = 128
    ):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len
    
    def __len__(self):
        return len(self.records)
    
    def __getitem__(self, idx):
        r = self.records[idx]
        
        # Convert tokens to IDs
        ids = [self.vocab.get(t, 1) for t in r['tokens']][:self.max_len]
        
        # Pad to max_len
        if len(ids) < self.max_len:
            ids += [0] * (self.max_len - len(ids))
        
        # Get label
        y = self.label_to_id[r['label']]
        
        return torch.tensor(ids, dtype=torch.long), torch.tensor(y, dtype=torch.long)


class BiLSTMClassifier(nn.Module):
    """
    Bidirectional LSTM for sequence classification.
    
    Architecture:
        - Embedding: vocab_size -> d_model
        - BiLSTM: d_model -> d_model (bidirectional)
        - Mean pooling over sequence
        - Dropout for regularization
        - Linear classifier: d_model -> num_classes
    """
    
    def __init__(
        self,
        vocab_size: int,
        d_model: int = 128,
        num_layers: int = 2,
        num_classes: int = 9,
        dropout: float = 0.3
    ):
        super().__init__()
        
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(
            d_model,
            d_model // 2,
            num_layers=num_layers,
            bidirectional=True,
            batch_first=True,
            dropout=dropout if num_layers > 1 else 0
        )
        self.dropout = nn.Dropout(dropout)
        self.fc = nn.Linear(d_model, num_classes)
        
        # Initialize weights
        self._init_weights()
    
    def _init_weights(self):
        """Initialize model weights."""
        nn.init.xavier_uniform_(self.embed.weight)
        self.embed.weight.data[0] = 0  # Zero padding embedding
        
        for name, param in self.lstm.named_parameters():
            if 'weight' in name:
                nn.init.xavier_uniform_(param)
            elif 'bias' in name:
                nn.init.zeros_(param)
        
        nn.init.xavier_uniform_(self.fc.weight)
        nn.init.zeros_(self.fc.bias)
    
    def forward(self, x):
        """
        Forward pass.
        
        Args:
            x: Token IDs (batch_size, seq_len)
            
        Returns:
            Logits (batch_size, num_classes)
        """
        # Create padding mask
        mask = (x != 0).float().unsqueeze(-1)  # (batch, seq, 1)
        
        # Embed tokens
        emb = self.embed(x)  # (batch, seq, d_model)
        
        # BiLSTM
        out, _ = self.lstm(emb)  # (batch, seq, d_model)
        
        # Masked mean pooling
        out = out * mask
        lengths = mask.sum(dim=1).clamp(min=1)  # (batch, 1)
        pooled = out.sum(dim=1) / lengths  # (batch, d_model)
        
        # Classifier
        pooled = self.dropout(pooled)
        logits = self.fc(pooled)  # (batch, num_classes)
        
        return logits
    
    def encode(self, x):
        """Get sequence embeddings without classification head."""
        mask = (x != 0).float().unsqueeze(-1)
        emb = self.embed(x)
        out, _ = self.lstm(emb)
        out = out * mask
        lengths = mask.sum(dim=1).clamp(min=1)
        pooled = out.sum(dim=1) / lengths
        return pooled


# ============================================================================
# Training
# ============================================================================

def train_epoch(
    model: nn.Module,
    loader: DataLoader,
    optimizer: torch.optim.Optimizer,
    loss_fn: nn.Module,
    device: torch.device
) -> Tuple[float, float]:
    """
    Train for one epoch.
    
    Returns:
        Tuple of (average_loss, accuracy)
    """
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    for x, y in loader:
        x, y = x.to(device), y.to(device)
        
        optimizer.zero_grad()
        logits = model(x)
        loss = loss_fn(logits, y)
        loss.backward()
        
        # Gradient clipping
        torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)
        
        optimizer.step()
        
        total_loss += loss.item() * y.size(0)
        preds = logits.argmax(dim=1)
        correct += (preds == y).sum().item()
        total += y.size(0)
    
    return total_loss / total, correct / total


def evaluate(
    model: nn.Module,
    loader: DataLoader,
    device: torch.device,
    id_to_label: Dict[int, str]
) -> Tuple[List[str], List[str], Dict]:
    """
    Evaluate model on a dataset.
    
    Returns:
        Tuple of (true_labels, predicted_labels, classification_report_dict)
    """
    model.eval()
    all_true = []
    all_pred = []
    
    with torch.no_grad():
        for x, y in loader:
            x = x.to(device)
            logits = model(x)
            preds = logits.argmax(dim=1).cpu().tolist()
            
            all_true.extend(y.tolist())
            all_pred.extend(preds)
    
    # Convert to labels
    y_true = [id_to_label[i] for i in all_true]
    y_pred = [id_to_label[i] for i in all_pred]
    
    report = classification_report(y_true, y_pred, output_dict=True, zero_division=0)
    
    return y_true, y_pred, report


def plot_confusion_matrices(
    y_train_true: List[str],
    y_train_pred: List[str],
    y_test_true: List[str],
    y_test_pred: List[str],
    labels: List[str],
    out_dir: Path
):
    """Generate and save confusion matrices for train and test sets."""
    out_dir.mkdir(parents=True, exist_ok=True)
    
    # Training confusion matrix
    log("Generating training confusion matrix...")
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_train = confusion_matrix(y_train_true, y_train_pred, labels=labels)
    disp_train = ConfusionMatrixDisplay(confusion_matrix=cm_train, display_labels=labels)
    disp_train.plot(ax=ax, xticks_rotation=45, cmap='Blues')
    ax.set_title("BiLSTM v19 - Confusion Matrix (Training Set)")
    plt.tight_layout()
    train_path = out_dir / "confusion_matrix_train.png"
    plt.savefig(train_path, dpi=150)
    log(f"  Saved to {train_path}")
    plt.close()
    
    # Test confusion matrix
    log("Generating test confusion matrix...")
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_test = confusion_matrix(y_test_true, y_test_pred, labels=labels)
    disp_test = ConfusionMatrixDisplay(confusion_matrix=cm_test, display_labels=labels)
    disp_test.plot(ax=ax, xticks_rotation=45, cmap='Greens')
    ax.set_title("BiLSTM v19 - Confusion Matrix (Test Set)")
    plt.tight_layout()
    test_path = out_dir / "confusion_matrix_test.png"
    plt.savefig(test_path, dpi=150)
    log(f"  Saved to {test_path}")
    plt.close()


# ============================================================================
# Main
# ============================================================================

def main():
    ap = argparse.ArgumentParser(description="Train BiLSTM vulnerability classifier (v19)")
    ap.add_argument("--in", dest="inp", type=Path,
                    default=Path("data/features/combined_v15_discriminative.jsonl"),
                    help="Input JSONL file with sequences")
    ap.add_argument("--model-dir", type=Path, default=Path("models/bilstm_v19"),
                    help="Directory to save model artifacts")
    ap.add_argument("--viz-dir", type=Path, default=Path("viz_v19_bilstm"),
                    help="Directory to save visualizations")
    ap.add_argument("--epochs", type=int, default=30, help="Number of training epochs")
    ap.add_argument("--batch-size", type=int, default=64, help="Batch size")
    ap.add_argument("--lr", type=float, default=1e-3, help="Learning rate")
    ap.add_argument("--d-model", type=int, default=128, help="Model dimension")
    ap.add_argument("--num-layers", type=int, default=2, help="Number of LSTM layers")
    ap.add_argument("--dropout", type=float, default=0.3, help="Dropout rate")
    ap.add_argument("--max-len", type=int, default=128, help="Max sequence length")
    ap.add_argument("--test-size", type=float, default=0.2, help="Test split ratio")
    ap.add_argument("--seed", type=int, default=42, help="Random seed")
    args = ap.parse_args()
    
    # Set seeds for reproducibility
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(args.seed)
    
    # Create output directories
    args.model_dir.mkdir(parents=True, exist_ok=True)
    args.viz_dir.mkdir(parents=True, exist_ok=True)
    
    # Device
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    log(f"Using device: {device}")
    
    start_time = time.time()
    
    # -------------------------------------------------------------------------
    # Load and prepare data
    # -------------------------------------------------------------------------
    records, labels = prepare_dataset(args.inp)
    
    if not records:
        log("ERROR: No valid records found!")
        return
    
    # Print label distribution
    label_counts = Counter(r['label'] for r in records)
    log("\nLabel distribution:")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        log(f"  {label}: {count}")
    
    # -------------------------------------------------------------------------
    # Train/Test split
    # -------------------------------------------------------------------------
    log("\nSplitting train/test (stratified)...")
    y_all = [r['label'] for r in records]
    
    splitter = StratifiedShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
    train_idx, test_idx = next(splitter.split(records, y_all))
    
    train_records = [records[i] for i in train_idx]
    test_records = [records[i] for i in test_idx]
    
    log(f"  Train: {len(train_records)} samples")
    log(f"  Test:  {len(test_records)} samples")
    
    # -------------------------------------------------------------------------
    # Build vocabulary from training data only
    # -------------------------------------------------------------------------
    log("\nBuilding vocabulary...")
    vocab = build_vocab(train_records, min_freq=2)
    log(f"  Vocabulary size: {len(vocab)}")
    
    # Label mapping
    label_to_id = {lbl: i for i, lbl in enumerate(labels)}
    id_to_label = {i: lbl for lbl, i in label_to_id.items()}
    num_classes = len(labels)
    log(f"  Number of classes: {num_classes}")
    
    # -------------------------------------------------------------------------
    # Create datasets and dataloaders
    # -------------------------------------------------------------------------
    log("\nCreating datasets...")
    train_ds = SeqDataset(train_records, vocab, label_to_id, max_len=args.max_len)
    test_ds = SeqDataset(test_records, vocab, label_to_id, max_len=args.max_len)
    
    train_loader = DataLoader(train_ds, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_ds, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # -------------------------------------------------------------------------
    # Create model
    # -------------------------------------------------------------------------
    log("\nInitializing BiLSTM model...")
    model = BiLSTMClassifier(
        vocab_size=len(vocab),
        d_model=args.d_model,
        num_layers=args.num_layers,
        num_classes=num_classes,
        dropout=args.dropout
    )
    model.to(device)
    
    # Count parameters
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    log(f"  Model parameters: {num_params:,}")
    
    # -------------------------------------------------------------------------
    # Optimizer and loss
    # -------------------------------------------------------------------------
    optimizer = torch.optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)
    
    # Learning rate scheduler
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=args.epochs)
    
    # Class weights for imbalanced data
    train_counts = Counter(r['label'] for r in train_records)
    class_weights = torch.tensor(
        [1.0 / max(1, train_counts.get(id_to_label[i], 1)) for i in range(num_classes)],
        dtype=torch.float32,
        device=device
    )
    # Normalize weights
    class_weights = class_weights / class_weights.sum() * num_classes
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights, label_smoothing=0.05)
    
    # -------------------------------------------------------------------------
    # Training loop
    # -------------------------------------------------------------------------
    log("\n" + "=" * 60)
    log("TRAINING")
    log("=" * 60)
    
    best_test_acc = 0
    best_epoch = 0
    
    for epoch in range(args.epochs):
        epoch_start = time.time()
        
        # Train
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        
        # Evaluate on test set
        _, _, test_report = evaluate(model, test_loader, device, id_to_label)
        test_acc = test_report['accuracy']
        
        # Update scheduler
        scheduler.step()
        
        epoch_time = time.time() - epoch_start
        
        log(f"Epoch {epoch + 1:2d}/{args.epochs} | "
            f"Train Loss: {train_loss:.4f} | Train Acc: {train_acc:.4f} | "
            f"Test Acc: {test_acc:.4f} | Time: {epoch_time:.1f}s")
        
        # Save best model
        if test_acc > best_test_acc:
            best_test_acc = test_acc
            best_epoch = epoch + 1
            torch.save({
                'epoch': epoch,
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'test_acc': test_acc,
                'vocab_size': len(vocab),
                'd_model': args.d_model,
                'num_layers': args.num_layers,
                'num_classes': num_classes,
            }, args.model_dir / "bilstm_model.pt")
    
    log(f"\nBest test accuracy: {best_test_acc:.4f} at epoch {best_epoch}")
    
    # -------------------------------------------------------------------------
    # Final evaluation
    # -------------------------------------------------------------------------
    log("\n" + "=" * 60)
    log("FINAL EVALUATION")
    log("=" * 60)
    
    # Load best model
    checkpoint = torch.load(args.model_dir / "bilstm_model.pt", weights_only=False)
    model.load_state_dict(checkpoint['model_state_dict'])
    
    # Evaluate on train and test
    y_train_true, y_train_pred, train_report = evaluate(model, train_loader, device, id_to_label)
    y_test_true, y_test_pred, test_report = evaluate(model, test_loader, device, id_to_label)
    
    log("\nTest Set Classification Report:")
    log(json.dumps(test_report, indent=2))
    
    # -------------------------------------------------------------------------
    # Save artifacts
    # -------------------------------------------------------------------------
    log("\nSaving artifacts...")
    
    # Vocabulary
    with open(args.model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    log(f"  Saved vocabulary to {args.model_dir / 'vocab.pkl'}")
    
    # Label mapping
    with open(args.model_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f, indent=2)
    log(f"  Saved label mapping to {args.model_dir / 'label_mapping.json'}")
    
    # Metrics
    metrics = {
        'train_report': train_report,
        'test_report': test_report,
        'best_epoch': best_epoch,
        'best_test_acc': best_test_acc,
        'model_config': {
            'vocab_size': len(vocab),
            'd_model': args.d_model,
            'num_layers': args.num_layers,
            'num_classes': num_classes,
            'dropout': args.dropout,
            'max_len': args.max_len,
        },
        'training_config': {
            'epochs': args.epochs,
            'batch_size': args.batch_size,
            'lr': args.lr,
            'test_size': args.test_size,
            'seed': args.seed,
        }
    }
    with open(args.model_dir / "metrics.json", 'w') as f:
        json.dump(metrics, f, indent=2)
    log(f"  Saved metrics to {args.model_dir / 'metrics.json'}")
    
    # -------------------------------------------------------------------------
    # Generate confusion matrices
    # -------------------------------------------------------------------------
    log("\n" + "=" * 60)
    log("GENERATING VISUALIZATIONS")
    log("=" * 60)
    
    plot_confusion_matrices(
        y_train_true, y_train_pred,
        y_test_true, y_test_pred,
        labels,
        args.viz_dir
    )
    
    # -------------------------------------------------------------------------
    # Summary
    # -------------------------------------------------------------------------
    total_time = time.time() - start_time
    log("\n" + "=" * 60)
    log("SUMMARY")
    log("=" * 60)
    log(f"Total training time: {total_time / 60:.1f} minutes")
    log(f"Best test accuracy: {best_test_acc:.4f}")
    log(f"Model saved to: {args.model_dir}")
    log(f"Visualizations saved to: {args.viz_dir}")
    log("=" * 60)


if __name__ == "__main__":
    main()
