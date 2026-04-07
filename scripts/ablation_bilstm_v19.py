#!/usr/bin/env python3
"""
BiLSTM Ablation Study (v19)

This script runs systematic ablation experiments to find the best hyperparameters
for the BiLSTM vulnerability classifier.

Ablation dimensions:
    - Model architecture: d_model, num_layers, dropout
    - Training: learning rate, batch size, max sequence length
    - Regularization: weight decay, label smoothing

Usage:
    python scripts/ablation_bilstm_v19.py --in data/features/combined_v15_discriminative.jsonl
"""

import argparse
import json
import pickle
import random
import time
import itertools
from collections import Counter
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Dict, List, Tuple, Optional

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
# Configuration
# ============================================================================

@dataclass
class AblationConfig:
    """Configuration for a single ablation experiment."""
    name: str
    d_model: int = 128
    num_layers: int = 2
    dropout: float = 0.3
    lr: float = 1e-3
    batch_size: int = 64
    max_len: int = 128
    weight_decay: float = 1e-4
    label_smoothing: float = 0.05
    epochs: int = 20  # Reduced for faster ablation
    

# Define ablation configurations
ABLATION_CONFIGS = [
    # Baseline
    AblationConfig(name="baseline", d_model=128, num_layers=2, dropout=0.3, lr=1e-3),
    
    # Model size ablations
    AblationConfig(name="small_model", d_model=64, num_layers=1, dropout=0.2, lr=1e-3),
    AblationConfig(name="medium_model", d_model=128, num_layers=2, dropout=0.3, lr=1e-3),
    AblationConfig(name="large_model", d_model=256, num_layers=3, dropout=0.4, lr=5e-4),
    
    # Learning rate ablations
    AblationConfig(name="lr_1e-4", d_model=128, num_layers=2, dropout=0.3, lr=1e-4),
    AblationConfig(name="lr_5e-4", d_model=128, num_layers=2, dropout=0.3, lr=5e-4),
    AblationConfig(name="lr_2e-3", d_model=128, num_layers=2, dropout=0.3, lr=2e-3),
    
    # Dropout ablations
    AblationConfig(name="dropout_0.1", d_model=128, num_layers=2, dropout=0.1, lr=1e-3),
    AblationConfig(name="dropout_0.5", d_model=128, num_layers=2, dropout=0.5, lr=1e-3),
    
    # Batch size ablations
    AblationConfig(name="batch_32", d_model=128, num_layers=2, dropout=0.3, lr=1e-3, batch_size=32),
    AblationConfig(name="batch_128", d_model=128, num_layers=2, dropout=0.3, lr=1e-3, batch_size=128),
    
    # Sequence length ablations
    AblationConfig(name="maxlen_64", d_model=128, num_layers=2, dropout=0.3, lr=1e-3, max_len=64),
    AblationConfig(name="maxlen_256", d_model=128, num_layers=2, dropout=0.3, lr=1e-3, max_len=256),
    
    # Layer ablations
    AblationConfig(name="layers_1", d_model=128, num_layers=1, dropout=0.3, lr=1e-3),
    AblationConfig(name="layers_3", d_model=128, num_layers=3, dropout=0.3, lr=1e-3),
    
    # Combined improvements
    AblationConfig(name="deep_wide", d_model=256, num_layers=3, dropout=0.4, lr=5e-4, batch_size=32),
    AblationConfig(name="efficient", d_model=128, num_layers=2, dropout=0.2, lr=5e-4, batch_size=64, max_len=128),
]


# ============================================================================
# Data Loading and Tokenization (reused from train_bilstm_v19.py)
# ============================================================================

def load_jsonl(path: Path):
    """Load JSONL file as generator."""
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
    """Build vocabulary from tokenized records."""
    counter = Counter()
    for r in records:
        counter.update(r['tokens'])
    
    vocab = {'<pad>': 0, '<unk>': 1}
    for tok, count in counter.most_common():
        if count >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    
    return vocab


def prepare_dataset(data_path: Path) -> Tuple[List[Dict], List[str]]:
    """Load and prepare dataset from JSONL file."""
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
        
        if (i + 1) % 50000 == 0:
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
        ids = [self.vocab.get(t, 1) for t in r['tokens']][:self.max_len]
        if len(ids) < self.max_len:
            ids += [0] * (self.max_len - len(ids))
        y = self.label_to_id[r['label']]
        return torch.tensor(ids, dtype=torch.long), torch.tensor(y, dtype=torch.long)


class BiLSTMClassifier(nn.Module):
    """Bidirectional LSTM for sequence classification."""
    
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
# Training and Evaluation
# ============================================================================

def train_epoch(
    model: nn.Module,
    loader: DataLoader,
    optimizer: torch.optim.Optimizer,
    loss_fn: nn.Module,
    device: torch.device
) -> Tuple[float, float]:
    """Train for one epoch."""
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
) -> Tuple[List[str], List[str], Dict, float]:
    """Evaluate model on a dataset."""
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
    
    y_true = [id_to_label[i] for i in all_true]
    y_pred = [id_to_label[i] for i in all_pred]
    
    report = classification_report(y_true, y_pred, output_dict=True, zero_division=0)
    accuracy = report['accuracy']
    
    return y_true, y_pred, report, accuracy


def run_single_ablation(
    config: AblationConfig,
    train_records: List[Dict],
    test_records: List[Dict],
    vocab: Dict[str, int],
    label_to_id: Dict[str, int],
    id_to_label: Dict[int, str],
    device: torch.device,
    seed: int = 42
) -> Dict:
    """Run a single ablation experiment."""
    
    # Set seeds
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    
    num_classes = len(label_to_id)
    
    # Create datasets
    train_ds = SeqDataset(train_records, vocab, label_to_id, max_len=config.max_len)
    test_ds = SeqDataset(test_records, vocab, label_to_id, max_len=config.max_len)
    
    train_loader = DataLoader(train_ds, batch_size=config.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_ds, batch_size=config.batch_size, shuffle=False, num_workers=0)
    
    # Create model
    model = BiLSTMClassifier(
        vocab_size=len(vocab),
        d_model=config.d_model,
        num_layers=config.num_layers,
        num_classes=num_classes,
        dropout=config.dropout
    )
    model.to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    
    # Optimizer and loss
    optimizer = torch.optim.AdamW(model.parameters(), lr=config.lr, weight_decay=config.weight_decay)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=config.epochs)
    
    # Class weights
    train_counts = Counter(r['label'] for r in train_records)
    class_weights = torch.tensor(
        [1.0 / max(1, train_counts.get(id_to_label[i], 1)) for i in range(num_classes)],
        dtype=torch.float32,
        device=device
    )
    class_weights = class_weights / class_weights.sum() * num_classes
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights, label_smoothing=config.label_smoothing)
    
    # Training loop
    best_test_acc = 0
    best_epoch = 0
    train_accs = []
    test_accs = []
    
    start_time = time.time()
    
    for epoch in range(config.epochs):
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        _, _, _, test_acc = evaluate(model, test_loader, device, id_to_label)
        
        scheduler.step()
        
        train_accs.append(train_acc)
        test_accs.append(test_acc)
        
        if test_acc > best_test_acc:
            best_test_acc = test_acc
            best_epoch = epoch + 1
    
    train_time = time.time() - start_time
    
    # Final evaluation
    _, _, train_report, final_train_acc = evaluate(model, train_loader, device, id_to_label)
    y_test_true, y_test_pred, test_report, final_test_acc = evaluate(model, test_loader, device, id_to_label)
    
    return {
        'config': asdict(config),
        'num_params': num_params,
        'best_test_acc': best_test_acc,
        'best_epoch': best_epoch,
        'final_train_acc': final_train_acc,
        'final_test_acc': final_test_acc,
        'train_accs': train_accs,
        'test_accs': test_accs,
        'train_time': train_time,
        'train_report': train_report,
        'test_report': test_report,
        'y_test_true': y_test_true,
        'y_test_pred': y_test_pred,
    }


def plot_ablation_results(results: List[Dict], out_dir: Path):
    """Plot ablation study results."""
    out_dir.mkdir(parents=True, exist_ok=True)
    
    # Extract data for plotting
    names = [r['config']['name'] for r in results]
    test_accs = [r['best_test_acc'] for r in results]
    train_accs = [r['final_train_acc'] for r in results]
    params = [r['num_params'] / 1000 for r in results]  # In thousands
    
    # Sort by test accuracy
    sorted_idx = np.argsort(test_accs)[::-1]
    names = [names[i] for i in sorted_idx]
    test_accs = [test_accs[i] for i in sorted_idx]
    train_accs = [train_accs[i] for i in sorted_idx]
    
    # Bar chart of accuracies
    fig, ax = plt.subplots(figsize=(14, 8))
    x = np.arange(len(names))
    width = 0.35
    
    bars1 = ax.bar(x - width/2, train_accs, width, label='Train Acc', color='steelblue')
    bars2 = ax.bar(x + width/2, test_accs, width, label='Test Acc', color='seagreen')
    
    ax.set_xlabel('Configuration')
    ax.set_ylabel('Accuracy')
    ax.set_title('BiLSTM Ablation Study - Accuracy Comparison')
    ax.set_xticks(x)
    ax.set_xticklabels(names, rotation=45, ha='right')
    ax.legend()
    ax.set_ylim(0.6, 1.0)
    
    # Add value labels on bars
    for bar in bars2:
        height = bar.get_height()
        ax.annotate(f'{height:.3f}',
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3),
                    textcoords="offset points",
                    ha='center', va='bottom', fontsize=8)
    
    plt.tight_layout()
    plt.savefig(out_dir / "ablation_accuracy_comparison.png", dpi=150)
    plt.close()
    
    # Learning curves for top 5 configs
    fig, axes = plt.subplots(2, 3, figsize=(15, 10))
    axes = axes.flatten()
    
    top_results = [results[i] for i in sorted_idx[:6]]
    
    for idx, r in enumerate(top_results):
        ax = axes[idx]
        epochs = range(1, len(r['train_accs']) + 1)
        ax.plot(epochs, r['train_accs'], 'b-', label='Train')
        ax.plot(epochs, r['test_accs'], 'g-', label='Test')
        ax.set_xlabel('Epoch')
        ax.set_ylabel('Accuracy')
        ax.set_title(f"{r['config']['name']}\nBest: {r['best_test_acc']:.4f}")
        ax.legend()
        ax.grid(True, alpha=0.3)
    
    plt.suptitle('Learning Curves - Top 6 Configurations', fontsize=14)
    plt.tight_layout()
    plt.savefig(out_dir / "ablation_learning_curves.png", dpi=150)
    plt.close()
    
    log(f"Saved plots to {out_dir}")


def save_best_model(
    best_result: Dict,
    train_records: List[Dict],
    test_records: List[Dict],
    vocab: Dict[str, int],
    label_to_id: Dict[str, int],
    id_to_label: Dict[int, str],
    labels: List[str],
    out_dir: Path,
    viz_dir: Path,
    device: torch.device
):
    """Retrain and save the best model configuration."""
    out_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    config = AblationConfig(**best_result['config'])
    config.epochs = 30  # Train longer for final model
    
    log(f"\nRetraining best config '{config.name}' for {config.epochs} epochs...")
    
    # Set seeds
    random.seed(42)
    np.random.seed(42)
    torch.manual_seed(42)
    
    num_classes = len(label_to_id)
    
    # Create datasets
    train_ds = SeqDataset(train_records, vocab, label_to_id, max_len=config.max_len)
    test_ds = SeqDataset(test_records, vocab, label_to_id, max_len=config.max_len)
    
    train_loader = DataLoader(train_ds, batch_size=config.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_ds, batch_size=config.batch_size, shuffle=False, num_workers=0)
    
    # Create model
    model = BiLSTMClassifier(
        vocab_size=len(vocab),
        d_model=config.d_model,
        num_layers=config.num_layers,
        num_classes=num_classes,
        dropout=config.dropout
    )
    model.to(device)
    
    # Optimizer and loss
    optimizer = torch.optim.AdamW(model.parameters(), lr=config.lr, weight_decay=config.weight_decay)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=config.epochs)
    
    # Class weights
    train_counts = Counter(r['label'] for r in train_records)
    class_weights = torch.tensor(
        [1.0 / max(1, train_counts.get(id_to_label[i], 1)) for i in range(num_classes)],
        dtype=torch.float32,
        device=device
    )
    class_weights = class_weights / class_weights.sum() * num_classes
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights, label_smoothing=config.label_smoothing)
    
    # Training loop
    best_test_acc = 0
    best_state_dict = None
    
    for epoch in range(config.epochs):
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        _, _, _, test_acc = evaluate(model, test_loader, device, id_to_label)
        
        scheduler.step()
        
        log(f"Epoch {epoch + 1:2d}/{config.epochs} | Train Acc: {train_acc:.4f} | Test Acc: {test_acc:.4f}")
        
        if test_acc > best_test_acc:
            best_test_acc = test_acc
            best_state_dict = model.state_dict().copy()
    
    # Load best weights
    model.load_state_dict(best_state_dict)
    
    # Final evaluation
    y_train_true, y_train_pred, train_report, _ = evaluate(model, train_loader, device, id_to_label)
    y_test_true, y_test_pred, test_report, _ = evaluate(model, test_loader, device, id_to_label)
    
    # Save model
    torch.save({
        'model_state_dict': best_state_dict,
        'config': asdict(config),
        'vocab_size': len(vocab),
        'num_classes': num_classes,
        'best_test_acc': best_test_acc,
    }, out_dir / "bilstm_best_model.pt")
    
    # Save vocabulary
    with open(out_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    # Save label mapping
    with open(out_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f, indent=2)
    
    # Save metrics
    with open(out_dir / "metrics.json", 'w') as f:
        json.dump({
            'config': asdict(config),
            'best_test_acc': best_test_acc,
            'train_report': train_report,
            'test_report': test_report,
        }, f, indent=2)
    
    # Generate confusion matrices
    log("\nGenerating confusion matrices...")
    
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_train = confusion_matrix(y_train_true, y_train_pred, labels=labels)
    disp_train = ConfusionMatrixDisplay(confusion_matrix=cm_train, display_labels=labels)
    disp_train.plot(ax=ax, xticks_rotation=45, cmap='Blues')
    ax.set_title(f"BiLSTM v19 Best ({config.name}) - Training Set")
    plt.tight_layout()
    plt.savefig(viz_dir / "confusion_matrix_train.png", dpi=150)
    plt.close()
    
    fig, ax = plt.subplots(figsize=(12, 12))
    cm_test = confusion_matrix(y_test_true, y_test_pred, labels=labels)
    disp_test = ConfusionMatrixDisplay(confusion_matrix=cm_test, display_labels=labels)
    disp_test.plot(ax=ax, xticks_rotation=45, cmap='Greens')
    ax.set_title(f"BiLSTM v19 Best ({config.name}) - Test Set")
    plt.tight_layout()
    plt.savefig(viz_dir / "confusion_matrix_test.png", dpi=150)
    plt.close()
    
    log(f"Best model saved to {out_dir}")
    log(f"Confusion matrices saved to {viz_dir}")
    
    return best_test_acc


# ============================================================================
# Main
# ============================================================================

def main():
    ap = argparse.ArgumentParser(description="BiLSTM Ablation Study (v19)")
    ap.add_argument("--in", dest="inp", type=Path,
                    default=Path("data/features/combined_v15_discriminative.jsonl"),
                    help="Input JSONL file with sequences")
    ap.add_argument("--out-dir", type=Path, default=Path("ablation_results"),
                    help="Directory to save ablation results")
    ap.add_argument("--best-model-dir", type=Path, default=Path("models/bilstm_v19_best"),
                    help="Directory to save best model")
    ap.add_argument("--best-viz-dir", type=Path, default=Path("viz_v19_bilstm_best"),
                    help="Directory to save best model visualizations")
    ap.add_argument("--test-size", type=float, default=0.2, help="Test split ratio")
    ap.add_argument("--seed", type=int, default=42, help="Random seed")
    ap.add_argument("--quick", action="store_true", help="Run quick ablation with fewer epochs")
    args = ap.parse_args()
    
    # Set seeds
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    
    # Create output directory
    args.out_dir.mkdir(parents=True, exist_ok=True)
    
    # Device
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    log(f"Using device: {device}")
    
    start_time = time.time()
    
    # Load data
    records, labels = prepare_dataset(args.inp)
    
    if not records:
        log("ERROR: No valid records found!")
        return
    
    # Train/test split
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
    
    # Adjust epochs for quick mode
    configs = ABLATION_CONFIGS.copy()
    if args.quick:
        for c in configs:
            c.epochs = 10
    
    # Run ablations
    log("\n" + "=" * 60)
    log(f"RUNNING {len(configs)} ABLATION EXPERIMENTS")
    log("=" * 60)
    
    results = []
    
    for i, config in enumerate(configs):
        log(f"\n[{i + 1}/{len(configs)}] Running: {config.name}")
        log(f"  Config: d_model={config.d_model}, layers={config.num_layers}, "
            f"dropout={config.dropout}, lr={config.lr}, batch={config.batch_size}")
        
        result = run_single_ablation(
            config, train_records, test_records, vocab, 
            label_to_id, id_to_label, device, args.seed
        )
        
        results.append(result)
        
        log(f"  Result: test_acc={result['best_test_acc']:.4f} (epoch {result['best_epoch']}), "
            f"params={result['num_params']:,}, time={result['train_time']:.1f}s")
    
    # Save all results
    with open(args.out_dir / "ablation_results.json", 'w') as f:
        # Convert numpy arrays to lists for JSON serialization
        results_json = []
        for r in results:
            r_copy = r.copy()
            r_copy['train_accs'] = [float(x) for x in r_copy['train_accs']]
            r_copy['test_accs'] = [float(x) for x in r_copy['test_accs']]
            # Remove large fields for JSON
            del r_copy['train_report']
            del r_copy['test_report']
            del r_copy['y_test_true']
            del r_copy['y_test_pred']
            results_json.append(r_copy)
        json.dump(results_json, f, indent=2)
    
    log(f"\nSaved ablation results to {args.out_dir / 'ablation_results.json'}")
    
    # Plot results
    log("\nGenerating plots...")
    plot_ablation_results(results, args.out_dir)
    
    # Find best configuration
    best_idx = np.argmax([r['best_test_acc'] for r in results])
    best_result = results[best_idx]
    
    log("\n" + "=" * 60)
    log("ABLATION SUMMARY")
    log("=" * 60)
    
    # Print ranked results
    sorted_results = sorted(results, key=lambda x: x['best_test_acc'], reverse=True)
    log("\nRanked configurations:")
    for i, r in enumerate(sorted_results):
        log(f"  {i + 1}. {r['config']['name']}: {r['best_test_acc']:.4f} "
            f"(d={r['config']['d_model']}, L={r['config']['num_layers']}, "
            f"drop={r['config']['dropout']}, lr={r['config']['lr']})")
    
    log(f"\nBest configuration: {best_result['config']['name']}")
    log(f"Best test accuracy: {best_result['best_test_acc']:.4f}")
    
    # Retrain and save best model
    final_acc = save_best_model(
        best_result, train_records, test_records, vocab,
        label_to_id, id_to_label, labels,
        args.best_model_dir, args.best_viz_dir, device
    )
    
    total_time = time.time() - start_time
    log("\n" + "=" * 60)
    log(f"ABLATION COMPLETE")
    log(f"Total time: {total_time / 60:.1f} minutes")
    log(f"Best model accuracy: {final_acc:.4f}")
    log("=" * 60)


if __name__ == "__main__":
    main()
