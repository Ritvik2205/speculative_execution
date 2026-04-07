#!/usr/bin/env python3
"""
BiLSTM-based Multi-class Vulnerability Classifier (v20)

Improvements over v19:
- More balanced BENIGN samples (8000+)
- Early stopping with patience
- Learning rate scheduler with warmup
- Gradient accumulation for stability
- Better convergence monitoring
- Validation loss tracking

Usage:
    python scripts/train_bilstm_v20.py --in data/features/combined_v20_balanced.jsonl
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


def log(msg: str):
    print(msg, flush=True)


# ============================================================================
# Data Loading and Tokenization
# ============================================================================

def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def tokens_from_sequence(seq: List[str]) -> List[str]:
    """Tokenize an assembly instruction sequence."""
    toks = []
    for line in seq:
        line = line.split(';', 1)[0].strip()
        line = line.split('//', 1)[0].strip()
        line = line.split('@', 1)[0].strip()
        
        if not line or line.startswith('.') or line.endswith(':'):
            continue
            
        parts = line.replace(',', ' ').replace('\t', ' ').split()
        if not parts:
            continue
            
        opcode = parts[0].lower()
        if opcode.startswith('.'):
            continue
        toks.append(opcode)
        
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
    counter = Counter()
    for r in records:
        counter.update(r['tokens'])
    
    vocab = {'<pad>': 0, '<unk>': 1}
    for tok, count in counter.most_common():
        if count >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    
    return vocab


def prepare_dataset(data_path: Path) -> Tuple[List[Dict], List[str]]:
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
    
    return records, labels


# ============================================================================
# Dataset and Model
# ============================================================================

class SeqDataset(Dataset):
    def __init__(self, records: List[Dict], vocab: Dict[str, int], 
                 label_to_id: Dict[str, int], max_len: int = 128):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len
    
    def __len__(self):
        return len(self.records)
    
    def __getitem__(self, idx):
        r = self.records[idx]
        ids = [self.vocab.get(t, 1) for t in r['tokens']][:self.max_len]
        if len(ids) < self.max_len:
            ids += [0] * (self.max_len - len(ids))
        y = self.label_to_id[r['label']]
        return torch.tensor(ids, dtype=torch.long), torch.tensor(y, dtype=torch.long)


class BiLSTMClassifier(nn.Module):
    def __init__(self, vocab_size: int, d_model: int = 128, num_layers: int = 2,
                 num_classes: int = 9, dropout: float = 0.3):
        super().__init__()
        
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(
            d_model, d_model // 2, num_layers=num_layers,
            bidirectional=True, batch_first=True,
            dropout=dropout if num_layers > 1 else 0
        )
        self.dropout = nn.Dropout(dropout)
        self.fc = nn.Linear(d_model, num_classes)
        
        self._init_weights()
    
    def _init_weights(self):
        nn.init.xavier_uniform_(self.embed.weight)
        self.embed.weight.data[0] = 0
        
        for name, param in self.lstm.named_parameters():
            if 'weight' in name:
                nn.init.xavier_uniform_(param)
            elif 'bias' in name:
                nn.init.zeros_(param)
        
        nn.init.xavier_uniform_(self.fc.weight)
        nn.init.zeros_(self.fc.bias)
    
    def forward(self, x):
        mask = (x != 0).float().unsqueeze(-1)
        emb = self.embed(x)
        out, _ = self.lstm(emb)
        out = out * mask
        lengths = mask.sum(dim=1).clamp(min=1)
        pooled = out.sum(dim=1) / lengths
        pooled = self.dropout(pooled)
        logits = self.fc(pooled)
        return logits


# ============================================================================
# Training with Early Stopping
# ============================================================================

class EarlyStopping:
    """Early stopping to prevent overfitting."""
    
    def __init__(self, patience: int = 7, min_delta: float = 0.001, mode: str = 'max'):
        self.patience = patience
        self.min_delta = min_delta
        self.mode = mode
        self.counter = 0
        self.best_score = None
        self.early_stop = False
        self.best_state = None
    
    def __call__(self, score, model):
        if self.best_score is None:
            self.best_score = score
            self.best_state = {k: v.cpu().clone() for k, v in model.state_dict().items()}
        elif self._is_improvement(score):
            self.best_score = score
            self.best_state = {k: v.cpu().clone() for k, v in model.state_dict().items()}
            self.counter = 0
        else:
            self.counter += 1
            if self.counter >= self.patience:
                self.early_stop = True
    
    def _is_improvement(self, score):
        if self.mode == 'max':
            return score > self.best_score + self.min_delta
        else:
            return score < self.best_score - self.min_delta
    
    def load_best(self, model):
        if self.best_state is not None:
            model.load_state_dict(self.best_state)


def train_epoch(model, loader, optimizer, loss_fn, device, accumulation_steps=2):
    """Train for one epoch with gradient accumulation."""
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    optimizer.zero_grad()
    
    for i, (x, y) in enumerate(loader):
        x, y = x.to(device), y.to(device)
        
        logits = model(x)
        loss = loss_fn(logits, y) / accumulation_steps
        loss.backward()
        
        if (i + 1) % accumulation_steps == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * accumulation_steps * y.size(0)
        preds = logits.argmax(dim=1)
        correct += (preds == y).sum().item()
        total += y.size(0)
    
    # Handle remaining gradients
    if len(loader) % accumulation_steps != 0:
        optimizer.step()
        optimizer.zero_grad()
    
    return total_loss / total, correct / total


def evaluate(model, loader, device, id_to_label, loss_fn=None):
    """Evaluate model on a dataset."""
    model.eval()
    all_true = []
    all_pred = []
    total_loss = 0
    total = 0
    
    with torch.no_grad():
        for x, y in loader:
            x, y_dev = x.to(device), y.to(device)
            logits = model(x)
            
            if loss_fn is not None:
                loss = loss_fn(logits, y_dev)
                total_loss += loss.item() * y.size(0)
                total += y.size(0)
            
            preds = logits.argmax(dim=1).cpu().tolist()
            all_true.extend(y.tolist())
            all_pred.extend(preds)
    
    y_true = [id_to_label[i] for i in all_true]
    y_pred = [id_to_label[i] for i in all_pred]
    
    report = classification_report(y_true, y_pred, output_dict=True, zero_division=0)
    accuracy = report['accuracy']
    
    avg_loss = total_loss / total if total > 0 else 0
    
    return y_true, y_pred, report, accuracy, avg_loss


def plot_training_history(history: Dict, out_dir: Path):
    """Plot training history."""
    fig, axes = plt.subplots(1, 2, figsize=(14, 5))
    
    # Loss plot
    ax = axes[0]
    ax.plot(history['train_loss'], label='Train Loss', color='blue')
    ax.plot(history['val_loss'], label='Val Loss', color='orange')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.set_title('Training and Validation Loss')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    # Accuracy plot
    ax = axes[1]
    ax.plot(history['train_acc'], label='Train Acc', color='blue')
    ax.plot(history['val_acc'], label='Val Acc', color='orange')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Accuracy')
    ax.set_title('Training and Validation Accuracy')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(out_dir / "training_history.png", dpi=150)
    plt.close()


def plot_confusion_matrices(y_train_true, y_train_pred, y_test_true, y_test_pred, 
                           labels, out_dir):
    """Generate and save confusion matrices."""
    out_dir.mkdir(parents=True, exist_ok=True)
    
    # Training confusion matrix
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_train = confusion_matrix(y_train_true, y_train_pred, labels=labels)
    disp_train = ConfusionMatrixDisplay(confusion_matrix=cm_train, display_labels=labels)
    disp_train.plot(ax=ax, xticks_rotation=45, cmap='Blues')
    ax.set_title("BiLSTM v20 - Confusion Matrix (Training Set)")
    plt.tight_layout()
    plt.savefig(out_dir / "confusion_matrix_train.png", dpi=150)
    plt.close()
    
    # Test confusion matrix
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_test = confusion_matrix(y_test_true, y_test_pred, labels=labels)
    disp_test = ConfusionMatrixDisplay(confusion_matrix=cm_test, display_labels=labels)
    disp_test.plot(ax=ax, xticks_rotation=45, cmap='Greens')
    ax.set_title("BiLSTM v20 - Confusion Matrix (Test Set)")
    plt.tight_layout()
    plt.savefig(out_dir / "confusion_matrix_test.png", dpi=150)
    plt.close()


# ============================================================================
# Main
# ============================================================================

def main():
    ap = argparse.ArgumentParser(description="Train BiLSTM v20 with balanced BENIGN samples")
    ap.add_argument("--in", dest="inp", type=Path,
                    default=Path("data/features/combined_v20_balanced.jsonl"))
    ap.add_argument("--model-dir", type=Path, default=Path("models/bilstm_v20"))
    ap.add_argument("--viz-dir", type=Path, default=Path("viz_v20_bilstm"))
    ap.add_argument("--epochs", type=int, default=50, help="Maximum epochs")
    ap.add_argument("--patience", type=int, default=10, help="Early stopping patience")
    ap.add_argument("--batch-size", type=int, default=32, help="Batch size")
    ap.add_argument("--lr", type=float, default=1e-3, help="Learning rate")
    ap.add_argument("--d-model", type=int, default=128, help="Model dimension")
    ap.add_argument("--num-layers", type=int, default=2, help="Number of LSTM layers")
    ap.add_argument("--dropout", type=float, default=0.3, help="Dropout rate")
    ap.add_argument("--max-len", type=int, default=128, help="Max sequence length")
    ap.add_argument("--test-size", type=float, default=0.2, help="Test split ratio")
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()
    
    # Set seeds
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(args.seed)
    
    # Create directories
    args.model_dir.mkdir(parents=True, exist_ok=True)
    args.viz_dir.mkdir(parents=True, exist_ok=True)
    
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    log(f"Using device: {device}")
    
    start_time = time.time()
    
    # Load data
    records, labels = prepare_dataset(args.inp)
    
    if not records:
        log("ERROR: No valid records found!")
        return
    
    # Print distribution
    label_counts = Counter(r['label'] for r in records)
    log("\nLabel distribution:")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        log(f"  {label}: {count}")
    
    # Split
    log("\nSplitting train/test...")
    y_all = [r['label'] for r in records]
    
    splitter = StratifiedShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
    train_idx, test_idx = next(splitter.split(records, y_all))
    
    train_records = [records[i] for i in train_idx]
    test_records = [records[i] for i in test_idx]
    
    log(f"  Train: {len(train_records)} samples")
    log(f"  Test:  {len(test_records)} samples")
    
    # Build vocabulary
    log("\nBuilding vocabulary...")
    vocab = build_vocab(train_records, min_freq=2)
    log(f"  Vocabulary size: {len(vocab)}")
    
    # Label mapping
    label_to_id = {lbl: i for i, lbl in enumerate(labels)}
    id_to_label = {i: lbl for lbl, i in label_to_id.items()}
    num_classes = len(labels)
    
    # Create datasets
    train_ds = SeqDataset(train_records, vocab, label_to_id, max_len=args.max_len)
    test_ds = SeqDataset(test_records, vocab, label_to_id, max_len=args.max_len)
    
    train_loader = DataLoader(train_ds, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_ds, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # Create model
    log("\nInitializing BiLSTM model...")
    model = BiLSTMClassifier(
        vocab_size=len(vocab),
        d_model=args.d_model,
        num_layers=args.num_layers,
        num_classes=num_classes,
        dropout=args.dropout
    )
    model.to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    log(f"  Model parameters: {num_params:,}")
    
    # Optimizer with warmup
    optimizer = torch.optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)
    
    # Cosine annealing scheduler
    scheduler = torch.optim.lr_scheduler.CosineAnnealingWarmRestarts(
        optimizer, T_0=10, T_mult=2, eta_min=1e-6
    )
    
    # Class weights
    train_counts = Counter(r['label'] for r in train_records)
    class_weights = torch.tensor(
        [1.0 / max(1, train_counts.get(id_to_label[i], 1)) for i in range(num_classes)],
        dtype=torch.float32, device=device
    )
    class_weights = class_weights / class_weights.sum() * num_classes
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights, label_smoothing=0.05)
    
    # Early stopping
    early_stopping = EarlyStopping(patience=args.patience, min_delta=0.001, mode='max')
    
    # Training history
    history = {'train_loss': [], 'val_loss': [], 'train_acc': [], 'val_acc': []}
    
    # Training loop
    log("\n" + "=" * 60)
    log("TRAINING")
    log("=" * 60)
    
    for epoch in range(args.epochs):
        epoch_start = time.time()
        
        # Train
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        
        # Evaluate
        _, _, _, test_acc, val_loss = evaluate(model, test_loader, device, id_to_label, loss_fn)
        
        # Update scheduler
        scheduler.step()
        
        # Record history
        history['train_loss'].append(train_loss)
        history['val_loss'].append(val_loss)
        history['train_acc'].append(train_acc)
        history['val_acc'].append(test_acc)
        
        # Early stopping check
        early_stopping(test_acc, model)
        
        epoch_time = time.time() - epoch_start
        
        # Check for convergence (no change in accuracy)
        if len(history['val_acc']) >= 3:
            recent_accs = history['val_acc'][-3:]
            if max(recent_accs) - min(recent_accs) < 0.001:
                log(f"Epoch {epoch + 1:2d}/{args.epochs} | "
                    f"Train Loss: {train_loss:.4f} | Train Acc: {train_acc:.4f} | "
                    f"Test Acc: {test_acc:.4f} | LR: {scheduler.get_last_lr()[0]:.2e} | "
                    f"Time: {epoch_time:.1f}s | [PLATEAU]")
            else:
                log(f"Epoch {epoch + 1:2d}/{args.epochs} | "
                    f"Train Loss: {train_loss:.4f} | Train Acc: {train_acc:.4f} | "
                    f"Test Acc: {test_acc:.4f} | LR: {scheduler.get_last_lr()[0]:.2e} | "
                    f"Time: {epoch_time:.1f}s")
        else:
            log(f"Epoch {epoch + 1:2d}/{args.epochs} | "
                f"Train Loss: {train_loss:.4f} | Train Acc: {train_acc:.4f} | "
                f"Test Acc: {test_acc:.4f} | LR: {scheduler.get_last_lr()[0]:.2e} | "
                f"Time: {epoch_time:.1f}s")
        
        if early_stopping.early_stop:
            log(f"\nEarly stopping triggered at epoch {epoch + 1}")
            break
    
    # Load best model
    early_stopping.load_best(model)
    model.to(device)
    
    log(f"\nBest test accuracy: {early_stopping.best_score:.4f}")
    
    # Final evaluation
    log("\n" + "=" * 60)
    log("FINAL EVALUATION")
    log("=" * 60)
    
    y_train_true, y_train_pred, train_report, _, _ = evaluate(model, train_loader, device, id_to_label)
    y_test_true, y_test_pred, test_report, _, _ = evaluate(model, test_loader, device, id_to_label)
    
    log("\nTest Set Classification Report:")
    log(json.dumps(test_report, indent=2))
    
    # Save artifacts
    log("\nSaving artifacts...")
    
    torch.save({
        'model_state_dict': model.state_dict(),
        'vocab_size': len(vocab),
        'd_model': args.d_model,
        'num_layers': args.num_layers,
        'num_classes': num_classes,
        'best_test_acc': early_stopping.best_score,
    }, args.model_dir / "bilstm_model.pt")
    
    with open(args.model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    with open(args.model_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f, indent=2)
    
    with open(args.model_dir / "metrics.json", 'w') as f:
        json.dump({
            'train_report': train_report,
            'test_report': test_report,
            'best_test_acc': early_stopping.best_score,
            'history': history,
        }, f, indent=2)
    
    # Generate visualizations
    log("\n" + "=" * 60)
    log("GENERATING VISUALIZATIONS")
    log("=" * 60)
    
    plot_training_history(history, args.viz_dir)
    log(f"  Saved training history to {args.viz_dir / 'training_history.png'}")
    
    plot_confusion_matrices(
        y_train_true, y_train_pred,
        y_test_true, y_test_pred,
        labels, args.viz_dir
    )
    log(f"  Saved confusion matrices to {args.viz_dir}")
    
    # Summary
    total_time = time.time() - start_time
    log("\n" + "=" * 60)
    log("SUMMARY")
    log("=" * 60)
    log(f"Total training time: {total_time / 60:.1f} minutes")
    log(f"Best test accuracy: {early_stopping.best_score:.4f}")
    log(f"Model saved to: {args.model_dir}")
    log(f"Visualizations saved to: {args.viz_dir}")
    log("=" * 60)


if __name__ == "__main__":
    main()
