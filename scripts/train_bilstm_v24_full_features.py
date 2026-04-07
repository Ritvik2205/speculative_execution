#!/usr/bin/env python3
"""
Train BiLSTM v24 with FULL handcrafted features from extract_features_enhanced.py

This model uses:
1. Rich token representation (opcode + operands)
2. Last hidden state + attention
3. FULL 193 handcrafted features from the dataset (same as Random Forest)
"""

import argparse
import json
import pickle
import re
import sys
import time
from pathlib import Path
from collections import Counter
from typing import List, Dict

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# ============================================================================
# Rich Token Representation (same as v23)
# ============================================================================

X86_REGS = {
    'rax', 'rbx', 'rcx', 'rdx', 'rsi', 'rdi', 'rbp', 'rsp',
    'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15',
    'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp',
    'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp',
    'al', 'bl', 'cl', 'dl', 'ah', 'bh', 'ch', 'dh',
}

ARM_REGS = {
    'x0', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7',
    'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15',
    'x16', 'x17', 'x18', 'x19', 'x20', 'x21', 'x22', 'x23',
    'x24', 'x25', 'x26', 'x27', 'x28', 'x29', 'x30', 'sp', 'lr', 'xzr',
    'w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6', 'w7',
}

ALL_REGS = X86_REGS | ARM_REGS

IMM_PATTERN = re.compile(r'^[#$]?-?(?:0x[0-9a-fA-F]+|\d+)$')
MEM_PATTERN = re.compile(r'\[.*\]')
LABEL_PATTERN = re.compile(r'^\.?[A-Za-z_][A-Za-z0-9_]*$')


def normalize_operand(operand: str) -> str:
    """Normalize an operand to a semantic category."""
    op = operand.strip().lower().rstrip(',')
    
    if op in ALL_REGS or op.startswith('%') or op.startswith('$'):
        clean = op.lstrip('%$')
        if clean in ALL_REGS:
            if clean in ('rsp', 'rbp', 'sp', 'x29', 'x31'):
                return 'REG_STACK'
            elif clean in ('rax', 'eax', 'x0', 'w0'):
                return 'REG_RET'
            elif clean in ('rdi', 'rsi', 'rdx', 'rcx', 'r8', 'r9', 'x0', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7'):
                return 'REG_ARG'
            else:
                return 'REG'
        return 'REG'
    
    if IMM_PATTERN.match(op):
        return 'IMM'
    
    if MEM_PATTERN.search(operand) or '[' in operand:
        if 'sp' in op.lower() or 'rbp' in op.lower() or 'x29' in op.lower():
            return 'MEM_STACK'
        return 'MEM'
    
    if LABEL_PATTERN.match(op):
        return 'LABEL'
    
    if '+' in op or '-' in op or '*' in op:
        return 'MEM_COMPLEX'
    
    return 'OTHER'


def rich_tokens_from_sequence(seq: List[str]) -> List[str]:
    """Extract rich tokens from instruction sequence."""
    tokens = []
    for line in seq:
        line = line.strip()
        if not line:
            continue
        
        parts = line.replace(',', ' ').split()
        if not parts:
            continue
        
        opcode = parts[0].lower().rstrip(':')
        
        if opcode.endswith(':') or opcode.startswith('.'):
            continue
        
        operands = []
        for op in parts[1:]:
            if op:
                norm_op = normalize_operand(op)
                operands.append(norm_op)
        
        if operands:
            token = f"{opcode}_{'-'.join(operands[:2])}"
        else:
            token = opcode
        
        tokens.append(token)
    
    return tokens


# ============================================================================
# Data Loading
# ============================================================================

def load_jsonl(path: Path, max_samples: int = None):
    """Load JSONL dataset with pre-computed features."""
    records = []
    with open(path) as f:
        for i, line in enumerate(f):
            if max_samples and i >= max_samples:
                break
            records.append(json.loads(line.strip()))
    return records


def build_vocab(sequences: List[List[str]], tokenizer_fn, min_freq: int = 2) -> Dict[str, int]:
    """Build vocabulary from sequences."""
    counter = Counter()
    for seq in sequences:
        tokens = tokenizer_fn(seq)
        counter.update(tokens)
    
    vocab = {'<PAD>': 0, '<UNK>': 1}
    for token, freq in counter.most_common():
        if freq >= min_freq:
            vocab[token] = len(vocab)
    
    return vocab


# ============================================================================
# Dataset with Pre-computed Features
# ============================================================================

class HybridDatasetFullFeatures(Dataset):
    """
    Dataset that uses pre-computed features from the JSONL file
    (same features used by Random Forest).
    """
    
    def __init__(self, records, vocab, label_to_id, tokenizer_fn, 
                 feature_keys, max_len=128):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.tokenizer_fn = tokenizer_fn
        self.feature_keys = feature_keys
        self.max_len = max_len
        self.num_features = len(feature_keys)
    
    def __len__(self):
        return len(self.records)
    
    def __getitem__(self, idx):
        rec = self.records[idx]
        seq = rec['sequence']
        label = rec['label']
        features_dict = rec.get('features', {})
        
        # Tokenize sequence
        tokens = self.tokenizer_fn(seq)
        ids = [self.vocab.get(t, self.vocab['<UNK>']) for t in tokens[:self.max_len]]
        
        # Pad sequence
        seq_len = len(ids)
        if seq_len < self.max_len:
            ids = ids + [0] * (self.max_len - seq_len)
        
        seq_tensor = torch.tensor(ids, dtype=torch.long)
        len_tensor = torch.tensor(seq_len, dtype=torch.long)
        
        # Extract features in consistent order
        feat_values = []
        for key in self.feature_keys:
            val = features_dict.get(key, 0)
            if isinstance(val, bool):
                val = float(val)
            elif not isinstance(val, (int, float)):
                val = 0.0
            feat_values.append(float(val))
        
        feat_tensor = torch.tensor(feat_values, dtype=torch.float32)
        
        return seq_tensor, len_tensor, feat_tensor, self.label_to_id[label]


# ============================================================================
# Models
# ============================================================================

class BiLSTMWithAttention(nn.Module):
    """BiLSTM with self-attention and last hidden state."""
    
    def __init__(self, vocab_size: int, d_model: int = 128, 
                 num_layers: int = 2, dropout: float = 0.3):
        super().__init__()
        self.d_model = d_model
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(
            d_model, d_model // 2,
            num_layers=num_layers,
            bidirectional=True,
            batch_first=True,
            dropout=dropout if num_layers > 1 else 0
        )
        self.dropout = nn.Dropout(dropout)
        
        self.attention = nn.Sequential(
            nn.Linear(d_model, d_model // 2),
            nn.Tanh(),
            nn.Linear(d_model // 2, 1)
        )
    
    def forward(self, x, lengths=None):
        batch_size = x.size(0)
        
        emb = self.embed(x)
        emb = self.dropout(emb)
        
        out, (hidden, _) = self.lstm(emb)
        
        # Last hidden state (both directions)
        forward_hidden = hidden[-2]
        backward_hidden = hidden[-1]
        last_hidden = torch.cat([forward_hidden, backward_hidden], dim=1)
        
        # Attention
        attn_scores = self.attention(out)
        mask = (x != 0).unsqueeze(-1).float()
        attn_scores = attn_scores.masked_fill(mask == 0, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=1)
        attn_output = (out * attn_weights).sum(dim=1)
        
        # Combine
        combined = last_hidden + attn_output
        combined = self.dropout(combined)
        
        return combined


class HybridClassifierFullFeatures(nn.Module):
    """
    Hybrid model with:
    1. BiLSTM + Attention for sequence encoding
    2. Full handcrafted features (193 features from RF)
    """
    
    def __init__(self, vocab_size: int, num_features: int, num_classes: int,
                 d_model: int = 128, num_layers: int = 2, dropout: float = 0.3):
        super().__init__()
        
        self.seq_encoder = BiLSTMWithAttention(
            vocab_size, d_model, num_layers, dropout
        )
        
        # Feature encoder - larger network for 193 features
        self.feat_encoder = nn.Sequential(
            nn.Linear(num_features, 256),
            nn.BatchNorm1d(256),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(256, 128),
            nn.BatchNorm1d(128),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # Combined classifier
        combined_dim = d_model + 128
        self.classifier = nn.Sequential(
            nn.Linear(combined_dim, 256),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(256, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(128, num_classes)
        )
    
    def forward(self, seq_ids, lengths, features):
        seq_repr = self.seq_encoder(seq_ids, lengths)
        feat_repr = self.feat_encoder(features)
        combined = torch.cat([seq_repr, feat_repr], dim=1)
        logits = self.classifier(combined)
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
    
    for batch_seq, batch_len, batch_feat, batch_y in loader:
        batch_seq = batch_seq.to(device)
        batch_len = batch_len.to(device)
        batch_feat = batch_feat.to(device)
        batch_y = batch_y.to(device)
        
        optimizer.zero_grad()
        logits = model(batch_seq, batch_len, batch_feat)
        loss = loss_fn(logits, batch_y)
        loss.backward()
        
        torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
        optimizer.step()
        
        total_loss += loss.item() * batch_seq.size(0)
        preds = logits.argmax(dim=1)
        correct += (preds == batch_y).sum().item()
        total += batch_seq.size(0)
    
    return total_loss / total, correct / total


def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    with torch.no_grad():
        for batch_seq, batch_len, batch_feat, batch_y in loader:
            batch_seq = batch_seq.to(device)
            batch_len = batch_len.to(device)
            batch_feat = batch_feat.to(device)
            batch_y = batch_y.to(device)
            
            logits = model(batch_seq, batch_len, batch_feat)
            preds = logits.argmax(dim=1)
            
            correct += (preds == batch_y).sum().item()
            total += batch_seq.size(0)
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
    
    axes[0].plot(history['train_loss'], label='Train')
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Loss')
    axes[0].set_title('Training Loss')
    axes[0].legend()
    
    axes[1].plot(history['train_acc'], label='Train')
    axes[1].plot(history['test_acc'], label='Test')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Accuracy')
    axes[1].set_title('Accuracy')
    axes[1].legend()
    
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
    parser.add_argument('--input', default='data/features/combined_v22_enhanced.jsonl')
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
    print("\n" + "=" * 60, flush=True)
    print("V24: BiLSTM + FULL Handcrafted Features (193 features)", flush=True)
    print("=" * 60, flush=True)
    
    # Load data
    print(f"\nLoading data from {args.input}...", flush=True)
    records = load_jsonl(Path(args.input))
    print(f"  Loaded {len(records)} records", flush=True)
    
    # Determine feature keys from first record
    sample_features = records[0].get('features', {})
    feature_keys = sorted([k for k, v in sample_features.items() 
                          if isinstance(v, (int, float, bool))])
    num_features = len(feature_keys)
    print(f"\nUsing {num_features} handcrafted features from dataset", flush=True)
    print(f"  Sample features: {feature_keys[:10]}...", flush=True)
    
    # Extract sequences and labels
    sequences = [r['sequence'] for r in records]
    labels = [r['label'] for r in records]
    
    # Label distribution
    label_counts = Counter(labels)
    print("\nLabel distribution:", flush=True)
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}", flush=True)
    
    unique_labels = sorted(set(labels))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    id_to_label = {i: l for l, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"\nNumber of classes: {num_classes}", flush=True)
    
    # Train/test split (split records, not just sequences)
    print("\nSplitting train/test...", flush=True)
    train_records, test_records = train_test_split(
        records, test_size=0.2, 
        stratify=[r['label'] for r in records], 
        random_state=42
    )
    print(f"  Train: {len(train_records)} samples", flush=True)
    print(f"  Test:  {len(test_records)} samples", flush=True)
    
    # Build vocabulary
    print("\nBuilding vocabulary with rich tokens...", flush=True)
    train_seqs = [r['sequence'] for r in train_records]
    vocab = build_vocab(train_seqs, rich_tokens_from_sequence, min_freq=2)
    print(f"  Vocabulary size: {len(vocab)}", flush=True)
    
    # Create datasets
    print("\nCreating datasets with full features...", flush=True)
    train_dataset = HybridDatasetFullFeatures(
        train_records, vocab, label_to_id, 
        rich_tokens_from_sequence, feature_keys, args.max_len
    )
    test_dataset = HybridDatasetFullFeatures(
        test_records, vocab, label_to_id,
        rich_tokens_from_sequence, feature_keys, args.max_len
    )
    
    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # Initialize model
    print("\nInitializing Hybrid BiLSTM model with FULL features...", flush=True)
    print(f"  Sequence encoder: BiLSTM + Attention (d_model={args.d_model})", flush=True)
    print(f"  Feature encoder: MLP ({num_features} -> 256 -> 128)", flush=True)
    print(f"  Classifier: MLP (256 -> 128 -> {num_classes})", flush=True)
    
    model = HybridClassifierFullFeatures(
        vocab_size=len(vocab),
        num_features=num_features,
        num_classes=num_classes,
        d_model=args.d_model,
        num_layers=args.num_layers,
        dropout=0.3
    ).to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Total parameters: {num_params:,}", flush=True)
    
    # Class weights
    class_weights = torch.tensor([
        len(train_records) / (num_classes * label_counts[label])
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
        
        marker = ""
        if epoch > 5 and test_acc <= max(history['test_acc'][:-1]):
            marker = " [PLATEAU]"
        
        print(f"Epoch {epoch:2d}/{args.epochs} | "
              f"Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | "
              f"Test: {test_acc:.4f} | "
              f"LR: {current_lr:.2e} | "
              f"{epoch_time:.1f}s{marker}", flush=True)
        
        early_stopping(test_acc, model)
        if early_stopping.early_stop:
            print(f"\nEarly stopping at epoch {epoch}", flush=True)
            break
    
    early_stopping.load_best(model)
    print(f"\nBest test accuracy: {early_stopping.best_score:.4f}", flush=True)
    
    # Final evaluation
    print("\n" + "=" * 60, flush=True)
    print("FINAL EVALUATION", flush=True)
    print("=" * 60, flush=True)
    
    _, train_preds, train_true = evaluate(model, train_loader, device)
    test_acc, test_preds, test_true = evaluate(model, test_loader, device)
    
    test_labels_str = [id_to_label[i] for i in test_true]
    test_preds_str = [id_to_label[i] for i in test_preds]
    
    print("\nTest Set Classification Report:", flush=True)
    report = classification_report(test_labels_str, test_preds_str, output_dict=True)
    print(classification_report(test_labels_str, test_preds_str), flush=True)
    
    # Save artifacts
    print("\nSaving artifacts...", flush=True)
    
    model_dir = Path("models/bilstm_v24_full_features")
    model_dir.mkdir(parents=True, exist_ok=True)
    
    torch.save({
        'model_state_dict': model.state_dict(),
        'vocab_size': len(vocab),
        'num_features': num_features,
        'd_model': args.d_model,
        'num_layers': args.num_layers,
        'num_classes': num_classes,
        'feature_keys': feature_keys,
    }, model_dir / "model.pt")
    
    with open(model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    with open(model_dir / "label_mapping.json", 'w') as f:
        json.dump({
            'label_to_id': label_to_id, 
            'id_to_label': {str(k): v for k, v in id_to_label.items()}
        }, f, indent=2)
    
    with open(model_dir / "metrics.json", 'w') as f:
        json.dump({
            'best_test_acc': early_stopping.best_score,
            'final_report': report,
            'history': history,
            'config': {
                'num_features': num_features,
                'd_model': args.d_model,
                'num_layers': args.num_layers,
            }
        }, f, indent=2)
    
    # Visualizations
    print("\n" + "=" * 60, flush=True)
    print("GENERATING VISUALIZATIONS", flush=True)
    print("=" * 60, flush=True)
    
    viz_dir = Path("viz_v24_full_features")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    plot_confusion_matrix(train_true, train_preds, unique_labels,
                         "V24 Full Features - Training Set", viz_dir / "confusion_matrix_train.png")
    print(f"  Saved confusion_matrix_train.png", flush=True)
    
    plot_confusion_matrix(test_true, test_preds, unique_labels,
                         "V24 Full Features - Test Set", viz_dir / "confusion_matrix_test.png")
    print(f"  Saved confusion_matrix_test.png", flush=True)
    
    plot_training_history(history, viz_dir / "training_history.png")
    print(f"  Saved training_history.png", flush=True)
    
    total_time = time.time() - start_time
    print("\n" + "=" * 60, flush=True)
    print("SUMMARY", flush=True)
    print("=" * 60, flush=True)
    print(f"Total training time: {total_time/60:.1f} minutes", flush=True)
    print(f"Best test accuracy: {early_stopping.best_score:.4f}", flush=True)
    print(f"Number of features used: {num_features}", flush=True)
    print(f"Model saved to: {model_dir}", flush=True)
    print(f"Visualizations saved to: {viz_dir}", flush=True)
    print("=" * 60, flush=True)
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
