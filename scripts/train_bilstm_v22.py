#!/usr/bin/env python3
"""
Train BiLSTM v22 model with enhanced discriminative features.
Uses the same architecture as v20 but with the new v22 feature set.
"""

import argparse
import json
import pickle
import sys
import time
import os
from pathlib import Path
from collections import Counter

import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# ============================================================================
# Data Loading
# ============================================================================

def load_jsonl(path: Path, max_samples: int = None):
    """Load JSONL dataset."""
    records = []
    with open(path) as f:
        for i, line in enumerate(f):
            if max_samples and i >= max_samples:
                break
            records.append(json.loads(line.strip()))
    return records


def tokens_from_sequence(seq):
    """Extract opcode tokens from instruction sequence."""
    tokens = []
    for line in seq:
        parts = line.strip().split()
        if parts:
            opcode = parts[0].lower().rstrip(':')
            # Skip labels (end with :)
            if not opcode.endswith(':') and opcode:
                tokens.append(opcode)
    return tokens


def build_vocab(sequences, min_freq=2):
    """Build vocabulary from sequences."""
    counter = Counter()
    for seq in sequences:
        tokens = tokens_from_sequence(seq)
        counter.update(tokens)
    
    vocab = {'<PAD>': 0, '<UNK>': 1}
    for token, freq in counter.most_common():
        if freq >= min_freq:
            vocab[token] = len(vocab)
    
    return vocab


# ============================================================================
# Dataset
# ============================================================================

class SeqDataset(Dataset):
    def __init__(self, sequences, labels, vocab, label_to_id, max_len=128):
        self.sequences = sequences
        self.labels = labels
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len
    
    def __len__(self):
        return len(self.sequences)
    
    def __getitem__(self, idx):
        seq = self.sequences[idx]
        label = self.labels[idx]
        
        tokens = tokens_from_sequence(seq)
        ids = [self.vocab.get(t, self.vocab['<UNK>']) for t in tokens[:self.max_len]]
        
        # Pad
        if len(ids) < self.max_len:
            ids = ids + [0] * (self.max_len - len(ids))
        
        return torch.tensor(ids, dtype=torch.long), self.label_to_id[label]


# ============================================================================
# Model
# ============================================================================

class BiLSTMClassifier(nn.Module):
    def __init__(self, vocab_size, d_model=128, num_layers=2, num_classes=9, dropout=0.3):
        super().__init__()
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(
            d_model, d_model // 2,
            num_layers=num_layers,
            bidirectional=True,
            batch_first=True,
            dropout=dropout if num_layers > 1 else 0
        )
        self.dropout = nn.Dropout(dropout)
        self.fc = nn.Linear(d_model, num_classes)
    
    def forward(self, x):
        emb = self.embed(x)
        emb = self.dropout(emb)
        out, _ = self.lstm(emb)
        # Mean pooling
        pooled = out.mean(dim=1)
        pooled = self.dropout(pooled)
        logits = self.fc(pooled)
        return logits


# ============================================================================
# Training
# ============================================================================

class EarlyStopping:
    def __init__(self, patience=7, min_delta=0.001):
        self.patience = patience
        self.min_delta = min_delta
        self.counter = 0
        self.best_score = None
        self.early_stop = False
        self.best_state = None
    
    def __call__(self, score, model):
        if self.best_score is None or score > self.best_score + self.min_delta:
            self.best_score = score
            self.best_state = {k: v.cpu().clone() for k, v in model.state_dict().items()}
            self.counter = 0
        else:
            self.counter += 1
            if self.counter >= self.patience:
                self.early_stop = True
    
    def load_best(self, model):
        if self.best_state:
            model.load_state_dict(self.best_state)


def train_epoch(model, loader, optimizer, loss_fn, device):
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    for batch_x, batch_y in loader:
        batch_x = batch_x.to(device)
        batch_y = batch_y.to(device)
        
        optimizer.zero_grad()
        logits = model(batch_x)
        loss = loss_fn(logits, batch_y)
        loss.backward()
        optimizer.step()
        
        total_loss += loss.item() * batch_x.size(0)
        preds = logits.argmax(dim=1)
        correct += (preds == batch_y).sum().item()
        total += batch_x.size(0)
    
    return total_loss / total, correct / total


def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    with torch.no_grad():
        for batch_x, batch_y in loader:
            batch_x = batch_x.to(device)
            batch_y = batch_y.to(device)
            
            logits = model(batch_x)
            preds = logits.argmax(dim=1)
            
            correct += (preds == batch_y).sum().item()
            total += batch_x.size(0)
            all_preds.extend(preds.cpu().numpy())
            all_labels.extend(batch_y.cpu().numpy())
    
    return correct / total, all_preds, all_labels


# ============================================================================
# Visualization
# ============================================================================

def plot_confusion_matrix(y_true, y_pred, labels, title, save_path):
    cm = confusion_matrix(y_true, y_pred)
    cm_norm = cm.astype('float') / cm.sum(axis=1, keepdims=True)
    
    fig, ax = plt.subplots(figsize=(12, 10))
    im = ax.imshow(cm_norm, cmap='Blues')
    
    ax.set_xticks(range(len(labels)))
    ax.set_yticks(range(len(labels)))
    ax.set_xticklabels(labels, rotation=45, ha='right', fontsize=9)
    ax.set_yticklabels(labels, fontsize=9)
    
    for i in range(len(labels)):
        for j in range(len(labels)):
            color = 'white' if cm_norm[i, j] > 0.5 else 'black'
            ax.text(j, i, f'{cm[i, j]}\n({cm_norm[i, j]:.1%})',
                   ha='center', va='center', color=color, fontsize=8)
    
    ax.set_xlabel('Predicted')
    ax.set_ylabel('True')
    ax.set_title(title)
    plt.colorbar(im)
    plt.tight_layout()
    plt.savefig(save_path, dpi=150)
    plt.close()


def plot_training_history(history, save_path):
    fig, axes = plt.subplots(1, 3, figsize=(15, 4))
    
    # Loss
    axes[0].plot(history['train_loss'], label='Train')
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Loss')
    axes[0].set_title('Training Loss')
    axes[0].legend()
    
    # Accuracy
    axes[1].plot(history['train_acc'], label='Train')
    axes[1].plot(history['test_acc'], label='Test')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Accuracy')
    axes[1].set_title('Accuracy')
    axes[1].legend()
    
    # Learning Rate
    axes[2].plot(history['lr'])
    axes[2].set_xlabel('Epoch')
    axes[2].set_ylabel('Learning Rate')
    axes[2].set_title('Learning Rate Schedule')
    
    plt.tight_layout()
    plt.savefig(save_path, dpi=150)
    plt.close()


# ============================================================================
# Main
# ============================================================================

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--in', dest='input', default='data/features/combined_v22_enhanced.jsonl')
    parser.add_argument('--epochs', type=int, default=50)
    parser.add_argument('--batch-size', type=int, default=32)
    parser.add_argument('--patience', type=int, default=10)
    parser.add_argument('--d-model', type=int, default=128)
    parser.add_argument('--num-layers', type=int, default=2)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--max-len', type=int, default=128)
    args = parser.parse_args()
    
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(f"Using device: {device}", flush=True)
    
    # Load data
    print(f"\nLoading data from {args.input}...", flush=True)
    records = load_jsonl(Path(args.input))
    print(f"  Loaded {len(records)} records", flush=True)
    
    # Extract sequences and labels
    sequences = [r['sequence'] for r in records]
    labels = [r['label'] for r in records]
    
    # Label distribution
    label_counts = Counter(labels)
    print("\nLabel distribution:", flush=True)
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}", flush=True)
    
    # Create label mapping
    unique_labels = sorted(set(labels))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    id_to_label = {i: l for l, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"\nNumber of classes: {num_classes}", flush=True)
    
    # Train/test split
    print("\nSplitting train/test...", flush=True)
    train_seqs, test_seqs, train_labels, test_labels = train_test_split(
        sequences, labels, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_seqs)} samples", flush=True)
    print(f"  Test:  {len(test_seqs)} samples", flush=True)
    
    # Build vocabulary
    print("\nBuilding vocabulary...", flush=True)
    vocab = build_vocab(train_seqs, min_freq=2)
    print(f"  Vocabulary size: {len(vocab)}", flush=True)
    
    # Create datasets
    train_dataset = SeqDataset(train_seqs, train_labels, vocab, label_to_id, args.max_len)
    test_dataset = SeqDataset(test_seqs, test_labels, vocab, label_to_id, args.max_len)
    
    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # Initialize model
    print("\nInitializing BiLSTM model...", flush=True)
    model = BiLSTMClassifier(
        vocab_size=len(vocab),
        d_model=args.d_model,
        num_layers=args.num_layers,
        num_classes=num_classes,
        dropout=0.3
    ).to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Model parameters: {num_params:,}", flush=True)
    
    # Class weights for imbalanced data
    class_weights = torch.tensor([
        len(train_labels) / (num_classes * label_counts[label])
        for label in unique_labels
    ], dtype=torch.float32).to(device)
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights)
    optimizer = torch.optim.AdamW(model.parameters(), lr=args.lr)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingWarmRestarts(optimizer, T_0=10, T_mult=2)
    early_stopping = EarlyStopping(patience=args.patience)
    
    # Training
    print("\n" + "=" * 60, flush=True)
    print("TRAINING", flush=True)
    print("=" * 60, flush=True)
    
    history = {'train_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []}
    start_time = time.time()
    
    for epoch in range(1, args.epochs + 1):
        epoch_start = time.time()
        
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        test_acc, _, _ = evaluate(model, test_loader, device)
        
        current_lr = optimizer.param_groups[0]['lr']
        scheduler.step()
        
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(current_lr)
        
        epoch_time = time.time() - epoch_start
        
        plateau_marker = ""
        if epoch > 5 and test_acc <= max(history['test_acc'][:-1]):
            plateau_marker = " [PLATEAU]"
        
        print(f"Epoch {epoch:2d}/{args.epochs} | "
              f"Train Loss: {train_loss:.4f} | "
              f"Train Acc: {train_acc:.4f} | "
              f"Test Acc: {test_acc:.4f} | "
              f"LR: {current_lr:.2e} | "
              f"Time: {epoch_time:.1f}s{plateau_marker}", flush=True)
        
        early_stopping(test_acc, model)
        if early_stopping.early_stop:
            print(f"\nEarly stopping triggered at epoch {epoch}", flush=True)
            break
    
    # Load best model
    early_stopping.load_best(model)
    
    print(f"\nBest test accuracy: {early_stopping.best_score:.4f}", flush=True)
    
    # Final evaluation
    print("\n" + "=" * 60, flush=True)
    print("FINAL EVALUATION", flush=True)
    print("=" * 60, flush=True)
    
    _, train_preds, train_true = evaluate(model, train_loader, device)
    test_acc, test_preds, test_true = evaluate(model, test_loader, device)
    
    train_labels_str = [id_to_label[i] for i in train_true]
    train_preds_str = [id_to_label[i] for i in train_preds]
    test_labels_str = [id_to_label[i] for i in test_true]
    test_preds_str = [id_to_label[i] for i in test_preds]
    
    print("\nTest Set Classification Report:", flush=True)
    report = classification_report(test_labels_str, test_preds_str, output_dict=True)
    print(json.dumps(report, indent=2), flush=True)
    
    # Save artifacts
    print("\nSaving artifacts...", flush=True)
    
    model_dir = Path("models/bilstm_v22")
    model_dir.mkdir(parents=True, exist_ok=True)
    
    # Save model
    torch.save({
        'model_state_dict': model.state_dict(),
        'vocab_size': len(vocab),
        'd_model': args.d_model,
        'num_layers': args.num_layers,
        'num_classes': num_classes,
    }, model_dir / "bilstm_model.pt")
    
    # Save vocab
    with open(model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    # Save label mapping
    with open(model_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f, indent=2)
    
    # Save metrics
    with open(model_dir / "metrics.json", 'w') as f:
        json.dump({
            'best_test_acc': early_stopping.best_score,
            'final_report': report,
            'history': history,
        }, f, indent=2)
    
    # Visualizations
    print("\n" + "=" * 60, flush=True)
    print("GENERATING VISUALIZATIONS", flush=True)
    print("=" * 60, flush=True)
    
    viz_dir = Path("viz_v22_bilstm")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    plot_confusion_matrix(train_true, train_preds, unique_labels, 
                         "V22 BiLSTM - Training Set", viz_dir / "confusion_matrix_train.png")
    print(f"  Saved confusion_matrix_train.png", flush=True)
    
    plot_confusion_matrix(test_true, test_preds, unique_labels,
                         "V22 BiLSTM - Test Set", viz_dir / "confusion_matrix_test.png")
    print(f"  Saved confusion_matrix_test.png", flush=True)
    
    plot_training_history(history, viz_dir / "training_history.png")
    print(f"  Saved training_history.png", flush=True)
    
    total_time = time.time() - start_time
    print("\n" + "=" * 60, flush=True)
    print("SUMMARY", flush=True)
    print("=" * 60, flush=True)
    print(f"Total training time: {total_time/60:.1f} minutes", flush=True)
    print(f"Best test accuracy: {early_stopping.best_score:.4f}", flush=True)
    print(f"Model saved to: {model_dir}", flush=True)
    print(f"Visualizations saved to: {viz_dir}", flush=True)
    print("=" * 60, flush=True)
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
