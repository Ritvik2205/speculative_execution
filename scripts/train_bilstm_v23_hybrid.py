#!/usr/bin/env python3
"""
Train BiLSTM v23 Hybrid model:
1. Hybrid architecture: BiLSTM sequence encoding + handcrafted features
2. Rich token representation: opcodes + normalized operands
3. Last hidden state instead of mean pooling
4. Attention mechanism for sequence focus
"""

import argparse
import json
import pickle
import re
import sys
import time
import os
from pathlib import Path
from collections import Counter
from typing import List, Dict, Tuple

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
# Rich Token Representation
# ============================================================================

# Register normalization patterns
X86_REGS = {
    'rax', 'rbx', 'rcx', 'rdx', 'rsi', 'rdi', 'rbp', 'rsp',
    'r8', 'r9', 'r10', 'r11', 'r12', 'r13', 'r14', 'r15',
    'eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp',
    'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp',
    'al', 'bl', 'cl', 'dl', 'ah', 'bh', 'ch', 'dh',
    'xmm0', 'xmm1', 'xmm2', 'xmm3', 'xmm4', 'xmm5', 'xmm6', 'xmm7',
}

ARM_REGS = {
    'x0', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7',
    'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15',
    'x16', 'x17', 'x18', 'x19', 'x20', 'x21', 'x22', 'x23',
    'x24', 'x25', 'x26', 'x27', 'x28', 'x29', 'x30', 'sp', 'lr', 'xzr',
    'w0', 'w1', 'w2', 'w3', 'w4', 'w5', 'w6', 'w7',
    'w8', 'w9', 'w10', 'w11', 'w12', 'w13', 'w14', 'w15',
}

ALL_REGS = X86_REGS | ARM_REGS

# Patterns for operand normalization
IMM_PATTERN = re.compile(r'^[#$]?-?(?:0x[0-9a-fA-F]+|\d+)$')
MEM_PATTERN = re.compile(r'\[.*\]')
LABEL_PATTERN = re.compile(r'^\.?[A-Za-z_][A-Za-z0-9_]*$')


def normalize_operand(operand: str) -> str:
    """Normalize an operand to a semantic category."""
    op = operand.strip().lower().rstrip(',')
    
    # Register
    if op in ALL_REGS or op.startswith('%') or op.startswith('$'):
        clean = op.lstrip('%$')
        if clean in ALL_REGS:
            # Categorize register type
            if clean in ('rsp', 'rbp', 'sp', 'x29', 'x31'):
                return 'REG_STACK'
            elif clean in ('rax', 'eax', 'x0', 'w0'):
                return 'REG_RET'
            elif clean in ('rdi', 'rsi', 'rdx', 'rcx', 'r8', 'r9', 'x0', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7'):
                return 'REG_ARG'
            else:
                return 'REG'
        return 'REG'
    
    # Immediate value
    if IMM_PATTERN.match(op):
        return 'IMM'
    
    # Memory access
    if MEM_PATTERN.search(operand) or '[' in operand:
        if 'sp' in op.lower() or 'rbp' in op.lower() or 'x29' in op.lower():
            return 'MEM_STACK'
        return 'MEM'
    
    # Label/symbol
    if LABEL_PATTERN.match(op):
        return 'LABEL'
    
    # Complex addressing
    if '+' in op or '-' in op or '*' in op:
        return 'MEM_COMPLEX'
    
    return 'OTHER'


def rich_tokens_from_sequence(seq: List[str]) -> List[str]:
    """
    Extract rich tokens from instruction sequence.
    Format: opcode_operand1_operand2_...
    """
    tokens = []
    for line in seq:
        line = line.strip()
        if not line:
            continue
        
        # Split instruction
        parts = line.replace(',', ' ').split()
        if not parts:
            continue
        
        opcode = parts[0].lower().rstrip(':')
        
        # Skip labels
        if opcode.endswith(':') or opcode.startswith('.'):
            continue
        
        # Normalize operands
        operands = []
        for op in parts[1:]:
            if op:
                norm_op = normalize_operand(op)
                operands.append(norm_op)
        
        # Create rich token: opcode + operand pattern
        if operands:
            # Limit to first 2 operands to avoid explosion
            token = f"{opcode}_{'-'.join(operands[:2])}"
        else:
            token = opcode
        
        tokens.append(token)
    
    return tokens


def simple_tokens_from_sequence(seq: List[str]) -> List[str]:
    """Fallback: extract opcode-only tokens."""
    tokens = []
    for line in seq:
        parts = line.strip().split()
        if parts:
            opcode = parts[0].lower().rstrip(':')
            if not opcode.endswith(':') and opcode and not opcode.startswith('.'):
                tokens.append(opcode)
    return tokens


# ============================================================================
# Feature Extraction for Hybrid Model
# ============================================================================

def extract_handcrafted_features(seq: List[str]) -> Dict[str, float]:
    """
    Extract key handcrafted features from sequence.
    Simplified version of extract_features_enhanced for speed.
    """
    feats = {}
    seq_lower = [s.lower() for s in seq]
    seq_text = ' '.join(seq_lower)
    
    # Basic counts
    feats['num_instructions'] = len(seq)
    
    # Memory operations
    feats['num_loads'] = sum(1 for s in seq_lower if any(x in s for x in ['ldr', 'mov', 'ld']))
    feats['num_stores'] = sum(1 for s in seq_lower if any(x in s for x in ['str', 'st', 'push']))
    
    # Control flow
    feats['num_branches'] = sum(1 for s in seq_lower if any(x in s for x in ['j', 'b.', 'br', 'jmp', 'je', 'jne', 'jz', 'jnz']))
    feats['num_calls'] = sum(1 for s in seq_lower if any(x in s for x in ['call', 'bl ']))
    feats['num_rets'] = sum(1 for s in seq_lower if 'ret' in s)
    
    # Barriers/fences
    feats['num_fences'] = sum(1 for s in seq_lower if any(x in s for x in ['lfence', 'mfence', 'sfence', 'dsb', 'dmb', 'isb']))
    
    # Spectre-related
    feats['has_compare_before_branch'] = 0
    for i, s in enumerate(seq_lower[:-1]):
        if any(x in s for x in ['cmp', 'test', 'tst']):
            if any(x in seq_lower[i+1] for x in ['j', 'b.']):
                feats['has_compare_before_branch'] = 1
                break
    
    # Memory access after branch (Spectre V1 pattern)
    feats['mem_after_branch'] = 0
    for i, s in enumerate(seq_lower[:-1]):
        if any(x in s for x in ['j', 'b.']):
            for j in range(i+1, min(i+5, len(seq_lower))):
                if any(x in seq_lower[j] for x in ['ldr', 'mov', '[', 'ld']):
                    feats['mem_after_branch'] = 1
                    break
    
    # Indirect branches (Spectre V2, RETBLEED)
    feats['has_indirect_branch'] = 1 if any(x in seq_text for x in ['jmp *', 'call *', 'br x', 'blr x', 'ret']) else 0
    
    # Cache operations (L1TF, MDS)
    feats['has_cache_op'] = 1 if any(x in seq_text for x in ['clflush', 'clflushopt', 'dc civac', 'dc cvac']) else 0
    
    # Timing (side channel)
    feats['has_timing'] = 1 if any(x in seq_text for x in ['rdtsc', 'rdtscp', 'cntvct']) else 0
    
    # Stack operations
    feats['stack_ops'] = sum(1 for s in seq_lower if any(x in s for x in ['push', 'pop', 'sp,', 'sp]', 'rbp', 'x29']))
    
    # Arithmetic chains
    feats['arith_ops'] = sum(1 for s in seq_lower if any(x in s for x in ['add', 'sub', 'mul', 'div', 'and', 'or', 'xor', 'shl', 'shr']))
    
    # Pattern: call followed by ret (RETBLEED)
    feats['call_ret_pattern'] = 0
    for i, s in enumerate(seq_lower):
        if 'call' in s or 'bl ' in s:
            for j in range(i+1, min(i+10, len(seq_lower))):
                if 'ret' in seq_lower[j]:
                    feats['call_ret_pattern'] = 1
                    break
    
    # Nested memory access (double dereference)
    feats['nested_mem'] = 1 if seq_text.count('[') > 1 else 0
    
    # MDS patterns (fill buffers, VERW)
    feats['has_mds_pattern'] = 1 if any(x in seq_text for x in ['verw', 'mfence; lfence']) else 0
    
    return feats


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


def build_vocab(sequences: List[List[str]], tokenizer_fn, min_freq: int = 2) -> Dict[str, int]:
    """Build vocabulary from sequences using specified tokenizer."""
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
# Dataset
# ============================================================================

class HybridDataset(Dataset):
    def __init__(self, sequences, labels, vocab, label_to_id, 
                 tokenizer_fn, max_len=128, use_features=True):
        self.sequences = sequences
        self.labels = labels
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.tokenizer_fn = tokenizer_fn
        self.max_len = max_len
        self.use_features = use_features
        
        # Pre-compute features for all sequences
        if use_features:
            self.features = [extract_handcrafted_features(seq) for seq in sequences]
            self.feature_keys = sorted(self.features[0].keys())
            self.num_features = len(self.feature_keys)
    
    def __len__(self):
        return len(self.sequences)
    
    def __getitem__(self, idx):
        seq = self.sequences[idx]
        label = self.labels[idx]
        
        # Tokenize sequence
        tokens = self.tokenizer_fn(seq)
        ids = [self.vocab.get(t, self.vocab['<UNK>']) for t in tokens[:self.max_len]]
        
        # Pad sequence
        seq_len = len(ids)
        if seq_len < self.max_len:
            ids = ids + [0] * (self.max_len - seq_len)
        
        seq_tensor = torch.tensor(ids, dtype=torch.long)
        len_tensor = torch.tensor(seq_len, dtype=torch.long)
        
        # Get handcrafted features
        if self.use_features:
            feat_values = [self.features[idx][k] for k in self.feature_keys]
            feat_tensor = torch.tensor(feat_values, dtype=torch.float32)
        else:
            feat_tensor = torch.zeros(1)
        
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
        
        # Attention layer
        self.attention = nn.Sequential(
            nn.Linear(d_model, d_model // 2),
            nn.Tanh(),
            nn.Linear(d_model // 2, 1)
        )
    
    def forward(self, x, lengths=None):
        """
        Args:
            x: (batch, seq_len) token IDs
            lengths: (batch,) actual sequence lengths
        Returns:
            (batch, d_model) sequence representation
        """
        batch_size = x.size(0)
        
        # Embed
        emb = self.embed(x)  # (batch, seq, d_model)
        emb = self.dropout(emb)
        
        # LSTM
        out, (hidden, _) = self.lstm(emb)  # out: (batch, seq, d_model)
        
        # Option 2: Last hidden state (concatenate both directions)
        # hidden: (num_layers * 2, batch, d_model // 2)
        forward_hidden = hidden[-2]  # Last layer, forward
        backward_hidden = hidden[-1]  # Last layer, backward
        last_hidden = torch.cat([forward_hidden, backward_hidden], dim=1)  # (batch, d_model)
        
        # Also compute attention-weighted representation
        attn_scores = self.attention(out)  # (batch, seq, 1)
        
        # Mask padding positions
        mask = (x != 0).unsqueeze(-1).float()  # (batch, seq, 1)
        attn_scores = attn_scores.masked_fill(mask == 0, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=1)  # (batch, seq, 1)
        
        # Attention-weighted sum
        attn_output = (out * attn_weights).sum(dim=1)  # (batch, d_model)
        
        # Combine last hidden state and attention output
        combined = last_hidden + attn_output  # (batch, d_model)
        combined = self.dropout(combined)
        
        return combined


class HybridClassifier(nn.Module):
    """
    Hybrid model combining:
    1. BiLSTM with attention for sequence encoding
    2. Handcrafted features
    """
    
    def __init__(self, vocab_size: int, num_features: int, num_classes: int,
                 d_model: int = 128, num_layers: int = 2, dropout: float = 0.3):
        super().__init__()
        
        # Sequence encoder
        self.seq_encoder = BiLSTMWithAttention(
            vocab_size, d_model, num_layers, dropout
        )
        
        # Feature encoder (project handcrafted features)
        self.feat_encoder = nn.Sequential(
            nn.Linear(num_features, 64),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(64, 64),
            nn.ReLU(),
        )
        
        # Combined classifier
        combined_dim = d_model + 64
        self.classifier = nn.Sequential(
            nn.Linear(combined_dim, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(128, num_classes)
        )
    
    def forward(self, seq_ids, lengths, features):
        """
        Args:
            seq_ids: (batch, max_len) token IDs
            lengths: (batch,) actual sequence lengths
            features: (batch, num_features) handcrafted features
        """
        # Encode sequence
        seq_repr = self.seq_encoder(seq_ids, lengths)  # (batch, d_model)
        
        # Encode features
        feat_repr = self.feat_encoder(features)  # (batch, 64)
        
        # Combine and classify
        combined = torch.cat([seq_repr, feat_repr], dim=1)  # (batch, d_model + 64)
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
        
        # Gradient clipping
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
    parser.add_argument('--rich-tokens', action='store_true', default=True,
                       help='Use rich token representation (opcode + operands)')
    args = parser.parse_args()
    
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(f"Using device: {device}", flush=True)
    
    # Choose tokenizer
    if args.rich_tokens:
        print("\nUsing RICH token representation (opcode + operands)", flush=True)
        tokenizer_fn = rich_tokens_from_sequence
    else:
        print("\nUsing simple token representation (opcode only)", flush=True)
        tokenizer_fn = simple_tokens_from_sequence
    
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
    print("\nBuilding vocabulary with rich tokens...", flush=True)
    vocab = build_vocab(train_seqs, tokenizer_fn, min_freq=2)
    print(f"  Vocabulary size: {len(vocab)}", flush=True)
    
    # Show sample tokens
    sample_tokens = tokenizer_fn(train_seqs[0])[:10]
    print(f"  Sample tokens: {sample_tokens}", flush=True)
    
    # Create datasets
    print("\nCreating datasets...", flush=True)
    train_dataset = HybridDataset(
        train_seqs, train_labels, vocab, label_to_id, 
        tokenizer_fn, args.max_len, use_features=True
    )
    test_dataset = HybridDataset(
        test_seqs, test_labels, vocab, label_to_id,
        tokenizer_fn, args.max_len, use_features=True
    )
    
    num_features = train_dataset.num_features
    print(f"  Number of handcrafted features: {num_features}", flush=True)
    print(f"  Feature keys: {train_dataset.feature_keys}", flush=True)
    
    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # Initialize model
    print("\nInitializing Hybrid BiLSTM model...", flush=True)
    print(f"  Architecture: BiLSTM + Attention + Handcrafted Features", flush=True)
    print(f"  Using last hidden state (not mean pooling)", flush=True)
    
    model = HybridClassifier(
        vocab_size=len(vocab),
        num_features=num_features,
        num_classes=num_classes,
        d_model=args.d_model,
        num_layers=args.num_layers,
        dropout=0.3
    ).to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Model parameters: {num_params:,}", flush=True)
    
    # Class weights
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
    print("TRAINING HYBRID MODEL (v23)", flush=True)
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
    
    model_dir = Path("models/bilstm_v23_hybrid")
    model_dir.mkdir(parents=True, exist_ok=True)
    
    torch.save({
        'model_state_dict': model.state_dict(),
        'vocab_size': len(vocab),
        'num_features': num_features,
        'd_model': args.d_model,
        'num_layers': args.num_layers,
        'num_classes': num_classes,
    }, model_dir / "model.pt")
    
    with open(model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    with open(model_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f, indent=2)
    
    with open(model_dir / "metrics.json", 'w') as f:
        json.dump({
            'best_test_acc': early_stopping.best_score,
            'final_report': report,
            'history': history,
            'config': {
                'rich_tokens': args.rich_tokens,
                'd_model': args.d_model,
                'num_layers': args.num_layers,
                'num_features': num_features,
            }
        }, f, indent=2)
    
    # Visualizations
    print("\n" + "=" * 60, flush=True)
    print("GENERATING VISUALIZATIONS", flush=True)
    print("=" * 60, flush=True)
    
    viz_dir = Path("viz_v23_hybrid")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    plot_confusion_matrix(train_true, train_preds, unique_labels,
                         "V23 Hybrid - Training Set", viz_dir / "confusion_matrix_train.png")
    print(f"  Saved confusion_matrix_train.png", flush=True)
    
    plot_confusion_matrix(test_true, test_preds, unique_labels,
                         "V23 Hybrid - Test Set", viz_dir / "confusion_matrix_test.png")
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
