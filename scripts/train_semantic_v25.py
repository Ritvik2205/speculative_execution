#!/usr/bin/env python3
"""
V25: Semantic-level encoding for vulnerability classification.

Key changes from previous versions:
1. Semantic tokenization - abstract away registers, focus on operation types
2. Attack pattern features - explicitly detect known attack signatures
3. Semantic flow graph features - connected graph based on operation semantics
"""

import argparse
import json
import pickle
import re
import sys
import time
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
# Semantic Instruction Classification
# ============================================================================

# Opcode categories at semantic level
SEMANTIC_CATEGORIES = {
    'LOAD': {'ldr', 'ldrb', 'ldrh', 'ldrsb', 'ldrsh', 'ldrsw', 'ldp', 'ldur',
             'mov', 'movl', 'movq', 'movzx', 'movsx', 'pop', 'popq'},
    'STORE': {'str', 'strb', 'strh', 'stp', 'stur', 'push', 'pushq'},
    'BRANCH_COND': {'b.eq', 'b.ne', 'b.lt', 'b.le', 'b.gt', 'b.ge', 'b.hi', 'b.lo',
                   'b.hs', 'b.ls', 'cbz', 'cbnz', 'tbz', 'tbnz',
                   'je', 'jne', 'jz', 'jnz', 'jl', 'jle', 'jg', 'jge', 'ja', 'jb'},
    'BRANCH_UNCOND': {'b', 'jmp'},
    'CALL': {'bl', 'blr', 'call', 'callq'},
    'RET': {'ret', 'retq', 'retn'},
    'INDIRECT': {'br', 'blr'},  # When operand is register
    'COMPARE': {'cmp', 'cmn', 'tst', 'test', 'cmpq', 'cmpl'},
    'FENCE': {'lfence', 'mfence', 'sfence', 'dmb', 'dsb', 'isb'},
    'CACHE_OP': {'clflush', 'clflushopt', 'clwb', 'invlpg', 'wbinvd',
                 'dc', 'ic'},  # dc civac, dc cvac, etc.
    'TIMING': {'rdtsc', 'rdtscp'},
    'ARITHMETIC': {'add', 'sub', 'mul', 'div', 'and', 'or', 'xor', 'not',
                   'shl', 'shr', 'sar', 'neg', 'adc', 'sbb', 'imul', 'idiv',
                   'asr', 'lsl', 'lsr', 'madd', 'msub', 'sdiv', 'udiv'},
}

# Memory addressing patterns
MEM_STACK_PATTERN = re.compile(r'\[.*(?:sp|rbp|x29|x31).*\]|\[sp\]', re.IGNORECASE)
MEM_INDEXED_PATTERN = re.compile(r'\[.*,.*\]', re.IGNORECASE)  # Base + offset/index


def classify_instruction(line: str) -> Tuple[str, Dict[str, int]]:
    """
    Classify an instruction into semantic category.
    Returns (semantic_type, attributes_dict)
    """
    line = line.strip().lower()
    if not line or line.endswith(':'):
        return None, {}
    
    parts = line.split()
    if not parts:
        return None, {}
    
    opcode = parts[0].rstrip(':')
    if opcode.endswith(':'):
        return None, {}
    
    rest = ' '.join(parts[1:]) if len(parts) > 1 else ''
    
    # Determine semantic type
    sem_type = 'COMPUTE'  # Default
    
    for category, opcodes in SEMANTIC_CATEGORIES.items():
        if opcode in opcodes:
            sem_type = category
            break
    
    # Check for indirect branches (register operand)
    if opcode in {'br', 'blr'} or (opcode in {'jmp', 'call', 'callq'} and '*' in rest):
        sem_type = 'INDIRECT'
    
    # Attributes
    attrs = {}
    
    # Memory attributes
    if sem_type in ['LOAD', 'STORE']:
        if MEM_STACK_PATTERN.search(rest):
            attrs['mem_stack'] = 1
        elif MEM_INDEXED_PATTERN.search(rest):
            attrs['mem_indexed'] = 1
        else:
            attrs['mem_other'] = 1
    
    return sem_type, attrs


def sequence_to_semantic_tokens(sequence: List[str]) -> List[str]:
    """
    Convert instruction sequence to semantic token sequence.
    This abstracts away register details and focuses on operation semantics.
    """
    tokens = []
    prev_type = None
    
    for line in sequence:
        sem_type, attrs = classify_instruction(line)
        if sem_type is None:
            continue
        
        # Create semantic token
        if attrs.get('mem_stack'):
            token = f"{sem_type}_STACK"
        elif attrs.get('mem_indexed'):
            token = f"{sem_type}_INDEXED"
        else:
            token = sem_type
        
        tokens.append(token)
        prev_type = sem_type
    
    return tokens


# ============================================================================
# Attack Pattern Detection
# ============================================================================

def detect_attack_patterns(semantic_seq: List[str]) -> Dict[str, float]:
    """
    Detect known attack signatures in semantic sequence.
    These are the fundamental differentiators.
    """
    feats = {}
    n = len(semantic_seq)
    seq_str = ' '.join(semantic_seq)
    
    # === SPECTRE V1: Compare → Branch → Load → Load (bounds check bypass) ===
    spectre_v1_score = 0
    for i in range(n - 3):
        if semantic_seq[i] == 'COMPARE':
            # Look for branch after compare
            for j in range(i+1, min(i+3, n)):
                if 'BRANCH' in semantic_seq[j]:
                    # Look for double load (index, then array access)
                    loads_after = 0
                    for k in range(j+1, min(j+6, n)):
                        if 'LOAD' in semantic_seq[k]:
                            loads_after += 1
                    if loads_after >= 2:
                        spectre_v1_score += 1
    feats['spectre_v1_pattern'] = min(spectre_v1_score, 3)
    
    # Check for missing fence between branch and load
    feats['branch_load_no_fence'] = 0
    for i in range(n - 2):
        if 'BRANCH' in semantic_seq[i]:
            found_fence = False
            for j in range(i+1, min(i+4, n)):
                if semantic_seq[j] == 'FENCE':
                    found_fence = True
                    break
                if 'LOAD' in semantic_seq[j] and not found_fence:
                    feats['branch_load_no_fence'] = 1
                    break
    
    # === SPECTRE V2: Indirect branches ===
    feats['indirect_branch_count'] = semantic_seq.count('INDIRECT')
    feats['has_indirect'] = 1 if 'INDIRECT' in semantic_seq else 0
    
    # === SPECTRE V4: Store-Load pattern ===
    store_load_pairs = 0
    for i in range(n):
        if 'STORE' in semantic_seq[i]:
            for j in range(i+1, min(i+5, n)):
                if 'LOAD' in semantic_seq[j]:
                    store_load_pairs += 1
                    break
    feats['store_load_pairs'] = min(store_load_pairs, 3)
    
    # === L1TF: Cache operations ===
    feats['cache_op_count'] = semantic_seq.count('CACHE_OP')
    feats['cache_then_load'] = 0
    for i in range(n - 1):
        if semantic_seq[i] == 'CACHE_OP':
            for j in range(i+1, min(i+5, n)):
                if 'LOAD' in semantic_seq[j]:
                    feats['cache_then_load'] = 1
                    break
    
    # === MDS: Double fence pattern ===
    feats['double_fence'] = 0
    for i in range(n - 1):
        if semantic_seq[i] == 'FENCE' and semantic_seq[i+1] == 'FENCE':
            feats['double_fence'] = 1
            break
    
    # === RETBLEED: Call-Ret pattern ===
    feats['call_ret_pattern'] = 0
    feats['call_ret_distance'] = 0
    for i in range(n):
        if semantic_seq[i] == 'CALL':
            for j in range(i+1, n):
                if semantic_seq[j] == 'RET':
                    feats['call_ret_pattern'] = 1
                    feats['call_ret_distance'] = j - i
                    break
    
    # === INCEPTION: Multiple indirect branches ===
    indirect_count = 0
    for s in semantic_seq:
        if s == 'INDIRECT':
            indirect_count += 1
    feats['multiple_indirect'] = 1 if indirect_count >= 2 else 0
    
    # === BHI: Branch density ===
    branch_count = sum(1 for s in semantic_seq if 'BRANCH' in s)
    feats['branch_density'] = branch_count / max(n, 1)
    feats['high_branch_density'] = 1 if feats['branch_density'] > 0.2 else 0
    
    # === BENIGN patterns ===
    feats['has_any_vuln_pattern'] = 0
    if feats['spectre_v1_pattern'] > 0 or feats['has_indirect'] or \
       feats['cache_then_load'] or feats['call_ret_pattern']:
        feats['has_any_vuln_pattern'] = 1
    
    # Timing operations (side channel indicator)
    feats['has_timing'] = 1 if 'TIMING' in semantic_seq else 0
    
    return feats


# ============================================================================
# Semantic Flow Graph Features
# ============================================================================

def build_semantic_flow_graph(semantic_seq: List[str]) -> Dict[str, float]:
    """
    Build a semantic flow graph and extract structural features.
    Unlike register-based DFG, this is based on semantic relationships.
    """
    n = len(semantic_seq)
    if n == 0:
        return {
            'graph_edges': 0, 'graph_density': 0, 'max_chain_len': 0,
            'has_branch_to_load': 0, 'has_store_to_load': 0
        }
    
    # Build adjacency: semantic flow connections
    # Every instruction flows to next (sequential)
    # Special connections for data dependencies at semantic level
    
    edges = 0
    max_chain = 0
    current_chain = 1
    
    has_branch_to_load = 0
    has_store_to_load = 0
    
    for i in range(n - 1):
        curr = semantic_seq[i]
        next_s = semantic_seq[i + 1]
        
        # Sequential edge (always)
        edges += 1
        
        # Track chains of same type
        if curr == next_s or (curr.startswith('LOAD') and next_s.startswith('LOAD')):
            current_chain += 1
        else:
            max_chain = max(max_chain, current_chain)
            current_chain = 1
        
        # Semantic flow edges
        if 'BRANCH' in curr and 'LOAD' in next_s:
            has_branch_to_load = 1
            edges += 1  # Speculative edge
        
        if 'STORE' in curr and 'LOAD' in next_s:
            has_store_to_load = 1
            edges += 1  # Potential forwarding edge
        
        if curr == 'COMPARE' and 'BRANCH' in next_s:
            edges += 1  # Condition to branch edge
    
    max_chain = max(max_chain, current_chain)
    
    return {
        'graph_edges': edges,
        'graph_density': edges / max(n, 1),
        'max_chain_len': max_chain,
        'has_branch_to_load': has_branch_to_load,
        'has_store_to_load': has_store_to_load,
    }


# ============================================================================
# Combined Feature Extraction
# ============================================================================

def extract_semantic_features(sequence: List[str]) -> Tuple[List[str], Dict[str, float]]:
    """
    Extract semantic tokens and features from instruction sequence.
    """
    # Get semantic token sequence
    sem_tokens = sequence_to_semantic_tokens(sequence)
    
    # Get attack pattern features
    pattern_feats = detect_attack_patterns(sem_tokens)
    
    # Get graph features
    graph_feats = build_semantic_flow_graph(sem_tokens)
    
    # Combine
    features = {**pattern_feats, **graph_feats}
    
    # Add semantic type counts
    for cat in SEMANTIC_CATEGORIES.keys():
        features[f'count_{cat}'] = sem_tokens.count(cat)
    
    # Add special counts
    features['total_instructions'] = len(sem_tokens)
    features['load_count'] = sum(1 for t in sem_tokens if 'LOAD' in t)
    features['store_count'] = sum(1 for t in sem_tokens if 'STORE' in t)
    
    return sem_tokens, features


# ============================================================================
# Dataset
# ============================================================================

def load_jsonl(path: Path, max_samples: int = None):
    records = []
    with open(path) as f:
        for i, line in enumerate(f):
            if max_samples and i >= max_samples:
                break
            records.append(json.loads(line.strip()))
    return records


def build_vocab(token_sequences: List[List[str]], min_freq: int = 2) -> Dict[str, int]:
    counter = Counter()
    for seq in token_sequences:
        counter.update(seq)
    
    vocab = {'<PAD>': 0, '<UNK>': 1}
    for token, freq in counter.most_common():
        if freq >= min_freq:
            vocab[token] = len(vocab)
    
    return vocab


class SemanticDataset(Dataset):
    def __init__(self, records, vocab, label_to_id, max_len=64):
        self.records = records
        self.vocab = vocab
        self.label_to_id = label_to_id
        self.max_len = max_len
        
        # Pre-extract semantic features
        self.processed = []
        for rec in records:
            seq = rec['sequence']
            sem_tokens, feats = extract_semantic_features(seq)
            self.processed.append((sem_tokens, feats, rec['label']))
        
        # Determine feature keys from first record
        if self.processed:
            self.feature_keys = sorted(self.processed[0][1].keys())
            self.num_features = len(self.feature_keys)
    
    def __len__(self):
        return len(self.processed)
    
    def __getitem__(self, idx):
        sem_tokens, feats, label = self.processed[idx]
        
        # Tokenize
        ids = [self.vocab.get(t, self.vocab['<UNK>']) for t in sem_tokens[:self.max_len]]
        seq_len = len(ids)
        if seq_len < self.max_len:
            ids = ids + [0] * (self.max_len - seq_len)
        
        seq_tensor = torch.tensor(ids, dtype=torch.long)
        len_tensor = torch.tensor(seq_len, dtype=torch.long)
        
        # Features
        feat_values = [feats.get(k, 0) for k in self.feature_keys]
        feat_tensor = torch.tensor(feat_values, dtype=torch.float32)
        
        return seq_tensor, len_tensor, feat_tensor, self.label_to_id[label]


# ============================================================================
# Model
# ============================================================================

class SemanticBiLSTM(nn.Module):
    def __init__(self, vocab_size, num_features, num_classes, 
                 d_model=64, num_layers=2, dropout=0.3):
        super().__init__()
        
        # Smaller embedding for semantic tokens (fewer unique tokens)
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(
            d_model, d_model // 2,
            num_layers=num_layers,
            bidirectional=True,
            batch_first=True,
            dropout=dropout if num_layers > 1 else 0
        )
        
        # Attention
        self.attention = nn.Linear(d_model, 1)
        
        # Feature encoder
        self.feat_encoder = nn.Sequential(
            nn.Linear(num_features, 64),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # Classifier
        self.classifier = nn.Sequential(
            nn.Linear(d_model + 64, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(128, num_classes)
        )
        
        self.dropout = nn.Dropout(dropout)
    
    def forward(self, seq_ids, lengths, features):
        # Embed and encode sequence
        emb = self.embed(seq_ids)
        emb = self.dropout(emb)
        
        out, (hidden, _) = self.lstm(emb)
        
        # Last hidden state
        forward_h = hidden[-2]
        backward_h = hidden[-1]
        last_hidden = torch.cat([forward_h, backward_h], dim=1)
        
        # Attention
        attn_scores = self.attention(out)
        mask = (seq_ids != 0).unsqueeze(-1).float()
        attn_scores = attn_scores.masked_fill(mask == 0, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=1)
        attn_out = (out * attn_weights).sum(dim=1)
        
        # Combine
        seq_repr = last_hidden + attn_out
        seq_repr = self.dropout(seq_repr)
        
        # Features
        feat_repr = self.feat_encoder(features)
        
        # Classify
        combined = torch.cat([seq_repr, feat_repr], dim=1)
        return self.classifier(combined)


# ============================================================================
# Training
# ============================================================================

class EarlyStopping:
    def __init__(self, patience=10, min_delta=0.001):
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
    
    axes[1].plot(history['train_acc'], label='Train')
    axes[1].plot(history['test_acc'], label='Test')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Accuracy')
    axes[1].set_title('Accuracy')
    axes[1].legend()
    
    axes[2].plot(history['lr'])
    axes[2].set_xlabel('Epoch')
    axes[2].set_ylabel('Learning Rate')
    axes[2].set_title('LR Schedule')
    
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
    parser.add_argument('--patience', type=int, default=12)
    parser.add_argument('--d-model', type=int, default=64)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--max-len', type=int, default=64)
    args = parser.parse_args()
    
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(f"Device: {device}", flush=True)
    print("\n" + "=" * 60, flush=True)
    print("V25: SEMANTIC-LEVEL ENCODING", flush=True)
    print("=" * 60, flush=True)
    print("\nKey changes:", flush=True)
    print("  - Semantic tokenization (not register-level)", flush=True)
    print("  - Attack pattern detection features", flush=True)
    print("  - Semantic flow graph features", flush=True)
    
    # Load data
    print(f"\nLoading {args.input}...", flush=True)
    records = load_jsonl(Path(args.input))
    print(f"  Loaded {len(records)} records", flush=True)
    
    # Show sample semantic conversion
    sample_seq = records[0]['sequence'][:10]
    sample_sem, sample_feats = extract_semantic_features(sample_seq)
    print(f"\nSample semantic conversion:", flush=True)
    print(f"  Original: {sample_seq[:3]}", flush=True)
    print(f"  Semantic: {sample_sem[:10]}", flush=True)
    print(f"  Pattern features: spectre_v1={sample_feats.get('spectre_v1_pattern', 0)}, "
          f"indirect={sample_feats.get('has_indirect', 0)}, "
          f"cache_load={sample_feats.get('cache_then_load', 0)}", flush=True)
    
    # Labels
    labels = [r['label'] for r in records]
    label_counts = Counter(labels)
    print("\nLabel distribution:", flush=True)
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}", flush=True)
    
    unique_labels = sorted(set(labels))
    label_to_id = {l: i for i, l in enumerate(unique_labels)}
    id_to_label = {i: l for l, i in label_to_id.items()}
    num_classes = len(unique_labels)
    
    # Split
    print("\nSplitting train/test...", flush=True)
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=[r['label'] for r in records], random_state=42
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}", flush=True)
    
    # Build vocab from semantic tokens
    print("\nBuilding semantic vocabulary...", flush=True)
    train_sem_seqs = [sequence_to_semantic_tokens(r['sequence']) for r in train_records]
    vocab = build_vocab(train_sem_seqs, min_freq=1)
    print(f"  Vocabulary size: {len(vocab)}", flush=True)
    print(f"  Tokens: {list(vocab.keys())[:15]}", flush=True)
    
    # Create datasets
    print("\nCreating datasets...", flush=True)
    train_dataset = SemanticDataset(train_records, vocab, label_to_id, args.max_len)
    test_dataset = SemanticDataset(test_records, vocab, label_to_id, args.max_len)
    
    num_features = train_dataset.num_features
    print(f"  Semantic features: {num_features}", flush=True)
    print(f"  Feature keys: {train_dataset.feature_keys[:10]}...", flush=True)
    
    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    
    # Model
    print("\nInitializing model...", flush=True)
    model = SemanticBiLSTM(
        vocab_size=len(vocab),
        num_features=num_features,
        num_classes=num_classes,
        d_model=args.d_model,
        num_layers=2,
        dropout=0.3
    ).to(device)
    
    num_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Parameters: {num_params:,}", flush=True)
    
    # Training setup
    class_weights = torch.tensor([
        len(train_records) / (num_classes * label_counts[label])
        for label in unique_labels
    ], dtype=torch.float32).to(device)
    
    loss_fn = nn.CrossEntropyLoss(weight=class_weights)
    optimizer = torch.optim.AdamW(model.parameters(), lr=args.lr)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingWarmRestarts(optimizer, T_0=10, T_mult=2)
    early_stopping = EarlyStopping(patience=args.patience)
    
    # Train
    print("\n" + "=" * 60, flush=True)
    print("TRAINING", flush=True)
    print("=" * 60, flush=True)
    
    history = {'train_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []}
    start = time.time()
    
    for epoch in range(1, args.epochs + 1):
        ep_start = time.time()
        
        train_loss, train_acc = train_epoch(model, train_loader, optimizer, loss_fn, device)
        test_acc, _, _ = evaluate(model, test_loader, device)
        
        lr = optimizer.param_groups[0]['lr']
        scheduler.step()
        
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)
        
        marker = ""
        if epoch > 5 and test_acc <= max(history['test_acc'][:-1]):
            marker = " [PLATEAU]"
        
        print(f"Epoch {epoch:2d}/{args.epochs} | Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | Test: {test_acc:.4f} | "
              f"LR: {lr:.2e} | {time.time()-ep_start:.1f}s{marker}", flush=True)
        
        early_stopping(test_acc, model)
        if early_stopping.early_stop:
            print(f"\nEarly stopping at epoch {epoch}", flush=True)
            break
    
    early_stopping.load_best(model)
    print(f"\nBest test accuracy: {early_stopping.best_score:.4f}", flush=True)
    
    # Final eval
    print("\n" + "=" * 60, flush=True)
    print("FINAL EVALUATION", flush=True)
    print("=" * 60, flush=True)
    
    _, train_preds, train_true = evaluate(model, train_loader, device)
    test_acc, test_preds, test_true = evaluate(model, test_loader, device)
    
    test_labels_str = [id_to_label[i] for i in test_true]
    test_preds_str = [id_to_label[i] for i in test_preds]
    
    print("\nClassification Report:", flush=True)
    report = classification_report(test_labels_str, test_preds_str, output_dict=True)
    print(classification_report(test_labels_str, test_preds_str), flush=True)
    
    # Save
    print("\nSaving artifacts...", flush=True)
    
    model_dir = Path("models/semantic_v25")
    model_dir.mkdir(parents=True, exist_ok=True)
    
    torch.save({
        'model_state_dict': model.state_dict(),
        'vocab_size': len(vocab),
        'num_features': num_features,
        'd_model': args.d_model,
        'num_classes': num_classes,
    }, model_dir / "model.pt")
    
    with open(model_dir / "vocab.pkl", 'wb') as f:
        pickle.dump(vocab, f)
    
    with open(model_dir / "label_mapping.json", 'w') as f:
        json.dump({'label_to_id': label_to_id, 'id_to_label': {str(k): v for k, v in id_to_label.items()}}, f)
    
    with open(model_dir / "metrics.json", 'w') as f:
        json.dump({
            'best_test_acc': early_stopping.best_score,
            'final_report': report,
            'history': history,
        }, f, indent=2)
    
    # Viz
    viz_dir = Path("viz_v25_semantic")
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    plot_confusion_matrix(train_true, train_preds, unique_labels,
                         "V25 Semantic - Train", viz_dir / "confusion_matrix_train.png")
    plot_confusion_matrix(test_true, test_preds, unique_labels,
                         "V25 Semantic - Test", viz_dir / "confusion_matrix_test.png")
    plot_training_history(history, viz_dir / "training_history.png")
    
    print(f"\nTotal time: {(time.time()-start)/60:.1f} min", flush=True)
    print(f"Best accuracy: {early_stopping.best_score:.4f}", flush=True)
    print(f"Model: {model_dir}", flush=True)
    print(f"Visualizations: {viz_dir}", flush=True)
    print("=" * 60, flush=True)


if __name__ == "__main__":
    main()
