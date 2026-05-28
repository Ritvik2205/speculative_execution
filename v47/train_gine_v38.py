#!/usr/bin/env python3
"""
V47: GINE — attention readout + global graph features + arch embedding + RSB_CHAIN edge

Changes from v46b:
  1. Attention readout: replaces sum-pool; learns to upweight security-critical nodes
  2. Global graph features: 5-dim instruction stats (nop/indirect/ret/verw/movntdqa fraction)
     computed from raw sequence — no label leakage (train and test computed independently)
  3. Architecture embedding: 8-dim lookup for x86_64/arm64/arm32/riscv
     from `arch` field in data records — no label leakage
  4. RSB_CHAIN: 9th PDG edge type (call→ret pairing) — distinguishes INCEPTION from RETBLEED
  5. Updated confused pairs: SPECTRE_V1↔BHI, INCEPTION↔BHI, MDS↔RETBLEED added to
     hard-negative contrastive training
"""

import argparse
import json
import os
import re
import sys
import time
from pathlib import Path
from collections import Counter
from typing import List, Dict, Optional
import warnings
warnings.filterwarnings('ignore')

import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from tqdm import tqdm

sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES
from gine_classifier_v38 import GINEClassifier, SupervisedContrastiveLoss, ARCH_VOCAB, NUM_ARCHS
from strip_boilerplate import strip_boilerplate


def select_device() -> torch.device:
    if torch.cuda.is_available():
        return torch.device('cuda')
    if hasattr(torch.backends, 'mps'):
        mps_built = bool(getattr(torch.backends.mps, "is_built", lambda: False)())
        mps_available = bool(torch.backends.mps.is_available())
        force_mps = os.environ.get('FORCE_MPS', '0') == '1'
        py314_plus = sys.version_info >= (3, 14)
        if mps_built and mps_available and (force_mps or not py314_plus):
            return torch.device('mps')
        if mps_built and mps_available and py314_plus and not force_mps:
            print("[warn] MPS disabled on Python 3.14+ (known stability issues); using CPU.")
    return torch.device('cpu')

DEVICE = select_device()
MAX_NODES = 64
MAX_EDGES = 512
# v47: node dim = 41 (same as v46b — RSB_CHAIN is an edge type, not a node feature)
# 19 opcode cats + 5 mem types + 2 reg counts + 14 spec_flags = 40 base + 1 positional
NODE_FEATURE_DIM = 41
GLOBAL_FEAT_DIM = 5   # nop_frac, indirect_frac, ret_frac, verw_frac, movntdqa_frac

# All confused pairs from analysis — used for hard-negative contrastive training.
# These pairs are structurally similar but semantically distinct.
CONFUSED_CLASS_NAMES = [
    ('SPECTRE_V1', 'BRANCH_HISTORY_INJECTION'),  # both: cond branch + indexed load
    ('INCEPTION', 'BRANCH_HISTORY_INJECTION'),    # both: ARM-heavy, similar surrounding code
    ('MDS', 'RETBLEED'),                          # x86 MDS helpers ≈ x86 RETBLEED helpers
    ('INCEPTION', 'RETBLEED'),                    # both: RSB exploitation
    ('L1TF', 'SPECTRE_V1'),                       # both: L1 cache side-channel
    ('L1TF', 'SPECTRE_V4'),
    ('MDS', 'SPECTRE_V4'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('SPECTRE_V2', 'BRANCH_HISTORY_INJECTION'),
    ('SPECTRE_V2', 'INCEPTION'),
    ('RETBLEED', 'INCEPTION'),
]


# =============================================================================
# GLOBAL GRAPH FEATURES — computed from raw sequence (no label leakage)
# =============================================================================

def compute_global_features(sequence: List[str]) -> np.ndarray:
    """
    Compute 5 instruction-count statistics from raw instruction sequence.

    All statistics are fractions of total instructions — scale-invariant.
    Computed identically for train and test from their own sequences.
    No normalization is fit on the training set, preventing leakage.

    Returns [nop_frac, indirect_frac, ret_frac, verw_frac, movntdqa_frac].
    """
    opcodes = []
    for tok in sequence:
        tok = tok.strip()
        # Skip labels, directives, comments
        if not tok or tok.endswith(':') or tok.startswith('.') or tok.startswith('#'):
            continue
        parts = tok.split()
        if parts:
            opcodes.append(parts[0].lower())

    total = max(len(opcodes), 1)

    nop_count      = sum(1 for op in opcodes if op == 'nop')
    # Indirect branches: blr/br (ARM), jmp*/call* (x86) — key BHI signal
    indirect_count = sum(1 for op in opcodes
                         if op in ('blr', 'br') or
                         re.match(r'^(jmpq?\*|callq?\*)', op))
    # ret/retq — RSB consumption; elevated in INCEPTION and RETBLEED
    ret_count      = sum(1 for op in opcodes if op in ('ret', 'retq', 'retl', 'retw'))
    # verw — MDS mitigation trigger; near-zero in all other classes
    verw_count     = sum(1 for op in opcodes if op == 'verw')
    # movntdqa — non-temporal load; MDS store-buffer sampling
    movntdqa_count = sum(1 for op in opcodes if op == 'movntdqa')

    return np.array([
        nop_count / total,
        indirect_count / total,
        ret_count / total,
        verw_count / total,
        movntdqa_count / total,
    ], dtype=np.float32)


# =============================================================================
# DATASET
# =============================================================================

class GINEDatasetV47(Dataset):

    def __init__(
        self,
        records: List[Dict],
        label_to_id: Dict[str, int],
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        max_edges: int = MAX_EDGES,
        speculative_window: int = 10,
        strip_bp: bool = True,
    ):
        self.label_to_id = label_to_id
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.max_edges = max_edges
        self.strip_bp = strip_bp
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)

        print(f"Pre-computing PDGs (strip_boilerplate={strip_bp}) ...")
        self.data = []
        n_stripped = 0
        total_before = 0
        total_after = 0
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
                total_before += item.get('_len_before', 0)
                total_after += item.get('_len_after', 0)
                if item.get('_was_stripped', False):
                    n_stripped += 1

        print(f"  Valid samples: {len(self.data)}/{len(records)}")
        if strip_bp:
            pct = 100 * n_stripped / max(len(self.data), 1)
            reduction = 100 * (1 - total_after / max(total_before, 1))
            print(f"  Boilerplate stripped: {n_stripped} ({pct:.1f}%) samples")
            print(f"  Instructions: {total_before} -> {total_after} ({reduction:.1f}% reduction)")

        edge_counts = Counter()
        edge_names = {v: k for k, v in EDGE_TYPES.items()}
        for item in self.data:
            n_real = item['n_edges']
            for et in item['edge_type'][:n_real]:
                edge_counts[et] += 1
        print("  Edge type distribution:")
        total_edges = sum(edge_counts.values())
        for et in sorted(edge_counts.keys()):
            pct = 100.0 * edge_counts[et] / total_edges if total_edges > 0 else 0
            print(f"    {edge_names.get(et, '?'):20s}: {edge_counts[et]:>8d} ({pct:.1f}%)")

    def _process_record(self, rec: Dict) -> Optional[Dict]:
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None

        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None

        len_before = len(sequence)

        # Compute global features BEFORE stripping — on raw sequence.
        # Using raw sequence ensures global features are consistent between
        # training and inference (where raw sequence may be the only input).
        global_features = compute_global_features(sequence)

        if self.strip_bp:
            sequence = strip_boilerplate(sequence)

        len_after = len(sequence)
        was_stripped = len_after < len_before

        pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None

        n_nodes = min(len(pdg.nodes), self.max_nodes)

        # Base node features (40-dim) + positional encoding = 41-dim
        base_features = pdg.get_node_features(self.max_nodes)
        pos_enc = np.zeros((self.max_nodes, 1), dtype=np.float32)
        for i in range(n_nodes):
            pos_enc[i, 0] = i / max(n_nodes - 1, 1)
        node_features = np.concatenate([base_features, pos_enc], axis=1)

        edge_index, edge_type = pdg.get_edge_index_and_type(self.max_nodes)
        edge_weight = pdg.get_edge_weights(self.max_nodes)
        n_edges = edge_index.shape[1]

        if n_edges > self.max_edges:
            edge_index = edge_index[:, :self.max_edges]
            edge_type = edge_type[:self.max_edges]
            edge_weight = edge_weight[:self.max_edges]
            n_edges = self.max_edges
        elif n_edges < self.max_edges:
            pad = self.max_edges - n_edges
            edge_index = np.pad(edge_index, ((0, 0), (0, pad)), constant_values=0)
            edge_type = np.pad(edge_type, (0, pad), constant_values=0)
            edge_weight = np.pad(edge_weight, (0, pad), constant_values=0.0)

        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        edge_mask = np.zeros(self.max_edges, dtype=bool)
        edge_mask[:n_edges] = True

        rec_features = rec.get('features', {})
        # Always at least 1-dim to match nn.Linear(max(handcrafted_dim,1), ...)
        hc_dim = max(len(self.handcrafted_feature_names), 1)
        handcrafted = np.zeros(hc_dim, dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and np.isfinite(val):
                handcrafted[i] = np.clip(val, -100, 100)

        # Architecture ID — from `arch` field, not derived from labels
        arch_str = rec.get('arch', 'unknown')
        arch_id = ARCH_VOCAB.get(arch_str, ARCH_VOCAB['unknown'])

        return {
            'node_features': node_features.astype(np.float32),
            'edge_index': edge_index.astype(np.int64),
            'edge_type': edge_type.astype(np.int64),
            'edge_weight': edge_weight.astype(np.float32),
            'node_mask': node_mask,
            'edge_mask': edge_mask,
            'n_edges': n_edges,
            'handcrafted': handcrafted,
            'global_features': global_features,
            'arch_id': arch_id,
            'label': self.label_to_id[label],
            '_len_before': len_before,
            '_len_after': len_after,
            '_was_stripped': was_stripped,
        }

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        item = self.data[idx]
        return {
            'node_features': torch.from_numpy(item['node_features']),
            'edge_index': torch.from_numpy(item['edge_index']),
            'edge_type': torch.from_numpy(item['edge_type']),
            'edge_weight': torch.from_numpy(item['edge_weight']),
            'node_mask': torch.from_numpy(item['node_mask']),
            'edge_mask': torch.from_numpy(item['edge_mask']),
            'handcrafted': torch.from_numpy(item['handcrafted']),
            'global_features': torch.from_numpy(item['global_features']),
            'arch_id': torch.tensor(item['arch_id'], dtype=torch.long),
            'label': item['label'],
        }


def collate_fn(batch):
    return {
        'node_features': torch.stack([x['node_features'] for x in batch]),
        'edge_index': torch.stack([x['edge_index'] for x in batch]),
        'edge_type': torch.stack([x['edge_type'] for x in batch]),
        'edge_weight': torch.stack([x['edge_weight'] for x in batch]),
        'node_mask': torch.stack([x['node_mask'] for x in batch]),
        'edge_mask': torch.stack([x['edge_mask'] for x in batch]),
        'handcrafted': torch.stack([x['handcrafted'] for x in batch]),
        'global_features': torch.stack([x['global_features'] for x in batch]),
        'arch_id': torch.stack([x['arch_id'] for x in batch]),
        'label': torch.tensor([x['label'] for x in batch], dtype=torch.long),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_epoch(model, loader, optimizer, ce_criterion, con_criterion, device,
                lambda_con, grad_accum, desc="Train"):
    model.train()
    total_ce_loss = 0
    total_con_loss = 0
    correct = 0
    total = 0
    optimizer.zero_grad()

    for i, batch in enumerate(tqdm(loader, desc=desc, leave=False)):
        node_features   = batch['node_features'].to(device)
        edge_index      = batch['edge_index'].to(device)
        edge_type       = batch['edge_type'].to(device)
        edge_weight     = batch['edge_weight'].to(device)
        node_mask       = batch['node_mask'].to(device)
        edge_mask       = batch['edge_mask'].to(device)
        handcrafted     = batch['handcrafted'].to(device)
        global_features = batch['global_features'].to(device)
        arch_id         = batch['arch_id'].to(device)
        labels          = batch['label'].to(device)

        logits, proj, feat_aux_logits = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, global_features, arch_id,
            return_projection=True, edge_mask=edge_mask, edge_weight=edge_weight,
        )

        ce_loss = ce_criterion(logits, labels)
        con_loss = con_criterion(proj, labels) if lambda_con > 0 else torch.tensor(0.0, device=device)
        feat_aux_loss = ce_criterion(feat_aux_logits, labels)
        loss = (ce_loss + lambda_con * con_loss + 0.3 * feat_aux_loss) / grad_accum
        loss.backward()

        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()

        total_ce_loss += ce_loss.item()
        total_con_loss += con_loss.item()
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)

    n = len(loader)
    return total_ce_loss / n, total_con_loss / n, correct / total


@torch.no_grad()
def evaluate(model, loader, device, desc="Eval"):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []

    for batch in tqdm(loader, desc=desc, leave=False):
        node_features   = batch['node_features'].to(device)
        edge_index      = batch['edge_index'].to(device)
        edge_type       = batch['edge_type'].to(device)
        edge_weight     = batch['edge_weight'].to(device)
        node_mask       = batch['node_mask'].to(device)
        edge_mask       = batch['edge_mask'].to(device)
        handcrafted     = batch['handcrafted'].to(device)
        global_features = batch['global_features'].to(device)
        arch_id         = batch['arch_id'].to(device)
        labels          = batch['label'].to(device)

        logits = model(node_features, edge_index, edge_type, node_mask,
                       handcrafted, global_features, arch_id,
                       edge_mask=edge_mask, edge_weight=edge_weight)

        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())

    return correct / total, all_preds, all_labels


def plot_confusion_matrix(y_true, y_pred, labels, title, output_path):
    cm = confusion_matrix(y_true, y_pred)
    fig, ax = plt.subplots(figsize=(13, 11))
    im = ax.imshow(cm, interpolation='nearest', cmap=plt.cm.Blues)
    ax.figure.colorbar(im, ax=ax)
    ax.set(xticks=np.arange(cm.shape[1]), yticks=np.arange(cm.shape[0]),
           xticklabels=labels, yticklabels=labels,
           title=title, ylabel='True label', xlabel='Predicted label')
    plt.setp(ax.get_xticklabels(), rotation=45, ha="right", rotation_mode="anchor")
    thresh = cm.max() / 2.
    for i in range(cm.shape[0]):
        for j in range(cm.shape[1]):
            ax.text(j, i, format(cm[i, j], 'd'), ha="center", va="center",
                    color="white" if cm[i, j] > thresh else "black")
    fig.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()


def plot_training_history(history, output_path, tag):
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))
    axes[0, 0].plot(history['ce_loss'], 'b-')
    axes[0, 0].set_title('Cross-Entropy Loss'); axes[0, 0].grid(True, alpha=0.3)
    axes[0, 1].plot(history['con_loss'], 'r-')
    axes[0, 1].set_title('Supervised Contrastive Loss'); axes[0, 1].grid(True, alpha=0.3)
    axes[1, 0].plot(history['train_acc'], 'b-', label='Train')
    axes[1, 0].plot(history['test_acc'], 'r-', label='Test')
    axes[1, 0].set_title('Accuracy'); axes[1, 0].legend(); axes[1, 0].grid(True, alpha=0.3)
    axes[1, 1].plot(history['lr'], 'g-')
    axes[1, 1].set_title('Learning Rate'); axes[1, 1].grid(True, alpha=0.3)
    axes[1, 1].set_yscale('log')
    plt.suptitle(f'{tag} Training History', fontsize=14)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


def plot_edge_type_scales(scales_history, edge_names, output_path):
    fig, ax = plt.subplots(figsize=(12, 6))
    for name in edge_names:
        vals = [h.get(name, 1.0) for h in scales_history]
        ax.plot(vals, label=name.replace('_', ' ').title(), linewidth=2)
    ax.axhline(y=1.0, color='grey', linestyle='--', alpha=0.5)
    ax.set_xlabel('Epoch'); ax.set_ylabel('Learned Scale')
    ax.set_title('Learned Edge-Type Scales (>1=amplified, <1=dampened)')
    ax.legend(fontsize=8, ncol=2); ax.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V47: GINE + attention + global feats + arch emb + RSB_CHAIN')
    parser.add_argument('--data', type=str, default=None)
    parser.add_argument('--train-data', type=str, default=None)
    parser.add_argument('--test-data', type=str, default=None)
    parser.add_argument('--output-dir', type=str, default='viz_v47')
    parser.add_argument('--viz-dir', type=str, default='viz_v47')
    parser.add_argument('--epochs', type=int, default=100)
    parser.add_argument('--patience', type=int, default=10)
    parser.add_argument('--hidden-dim', type=int, default=128)
    parser.add_argument('--num-layers', type=int, default=3)
    parser.add_argument('--jk-mode', type=str, default='cat', choices=['cat', 'sum', 'last'])
    parser.add_argument('--batch-size', type=int, default=32)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--weight-decay', type=float, default=5e-4)
    parser.add_argument('--dropout', type=float, default=0.5)
    parser.add_argument('--lambda-con', type=float, default=0.5)
    parser.add_argument('--temperature', type=float, default=0.07)
    parser.add_argument('--hard-neg-weight', type=float, default=2.0)
    parser.add_argument('--grad-accum', type=int, default=2)
    parser.add_argument('--no-virtual-node', action='store_true')
    parser.add_argument('--no-strip', action='store_true')
    parser.add_argument('--speculative-window', type=int, default=10)
    parser.add_argument('--arch-emb-dim', type=int, default=8)

    args = parser.parse_args()
    tag = "V47 GINE — Attention+GlobalFeats+ArchEmb+RSBChain"

    print(f"Device: {DEVICE}")
    print(f"\n{'='*70}")
    print(tag)
    print(f"{'='*70}")
    print(f"Node features: {NODE_FEATURE_DIM}  Edge types: {NUM_EDGE_TYPES} (incl. RSB_CHAIN)")
    print(f"Global features: {GLOBAL_FEAT_DIM}  Arch embedding: {args.arch_emb_dim}-dim")
    print()

    output_dir = Path(args.output_dir)
    viz_dir = Path(args.viz_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)

    using_presplit = args.train_data is not None and args.test_data is not None
    using_combined = args.data is not None
    if not using_presplit and not using_combined:
        parser.error("Provide either --data or both --train-data and --test-data.")
    if using_presplit and using_combined:
        parser.error("--data is mutually exclusive with --train-data/--test-data.")

    def _load_records(path):
        recs = []
        with open(path) as f:
            for line in f:
                if line.strip():
                    rec = json.loads(line)
                    label = rec.get('label', 'UNKNOWN')
                    if label in ('vuln', 'benign'):
                        label = rec.get('vuln_label', label.upper() if label == 'benign' else 'UNKNOWN')
                    rec['label'] = label
                    recs.append(rec)
        return recs

    if using_presplit:
        print(f"Loading pre-split train: {args.train_data}")
        train_records = _load_records(args.train_data)
        print(f"  {len(train_records)} records")
        print(f"Loading pre-split test: {args.test_data}")
        test_records = _load_records(args.test_data)
        print(f"  {len(test_records)} records")
        records = train_records + test_records
    else:
        print(f"Loading: {args.data}")
        records = _load_records(args.data)
        print(f"  {len(records)} records (will split 80/20)")

    label_counts = Counter(r.get('label', 'UNKNOWN') for r in records)
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        print(f"  {label}: {count}")

    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']

    # Build label vocab from train only — test labels must NOT influence encoding
    label_source = train_records if using_presplit else records
    unique_labels = sorted(set(r['label'] for r in label_source
                               if r.get('label', 'UNKNOWN') != 'UNKNOWN'))
    label_to_id = {label: i for i, label in enumerate(unique_labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"\nClasses ({num_classes}): {unique_labels}")

    confused_pairs = []
    for name1, name2 in CONFUSED_CLASS_NAMES:
        if name1 in label_to_id and name2 in label_to_id:
            confused_pairs.append((label_to_id[name1], label_to_id[name2]))
            print(f"  Hard negative: {name1} <-> {name2}")

    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ['sequence', 'label']
    ])
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features: {handcrafted_dim}")

    if using_presplit:
        train_records = [r for r in train_records if r.get('label', 'UNKNOWN') in label_to_id]
        test_records  = [r for r in test_records  if r.get('label', 'UNKNOWN') in label_to_id]
        print(f"\nPre-split: Train={len(train_records)}, Test={len(test_records)}")
    else:
        print("\nSplitting 80/20 stratified (legacy — possible group overlap)...")
        filtered = [r for r in records if r.get('label', 'UNKNOWN') in label_to_id]
        labels_for_split = [r['label'] for r in filtered]
        train_records, test_records = train_test_split(
            filtered, test_size=0.2, stratify=labels_for_split, random_state=42
        )
        print(f"  Train={len(train_records)}, Test={len(test_records)}")

    # Report global feature statistics on train set (for sanity check only)
    print("\nGlobal feature statistics (train, mean±std):")
    feat_names_gf = ['nop_frac', 'indirect_frac', 'ret_frac', 'verw_frac', 'movntdqa_frac']
    gf_matrix = np.array([compute_global_features(r['sequence']) for r in train_records[:500]])
    for j, name in enumerate(feat_names_gf):
        print(f"  {name:<20}: {gf_matrix[:, j].mean():.4f} ± {gf_matrix[:, j].std():.4f}")

    print("\nCreating datasets...")
    train_dataset = GINEDatasetV47(
        train_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )
    test_dataset = GINEDatasetV47(
        test_records, label_to_id, feature_names,
        speculative_window=args.speculative_window,
        strip_bp=not args.no_strip,
    )

    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    test_loader  = DataLoader(test_dataset,  batch_size=args.batch_size, shuffle=False,
                              collate_fn=collate_fn, num_workers=0)

    print(f"\nInitializing GINEClassifier v47...")
    model = GINEClassifier(
        node_feat_dim=NODE_FEATURE_DIM,
        num_edge_types=NUM_EDGE_TYPES,
        hidden_dim=args.hidden_dim,
        num_layers=args.num_layers,
        num_classes=num_classes,
        handcrafted_dim=max(handcrafted_dim, 1),
        global_feat_dim=GLOBAL_FEAT_DIM,
        arch_emb_dim=args.arch_emb_dim,
        dropout=args.dropout,
        use_virtual_node=not args.no_virtual_node,
        jk_mode=args.jk_mode,
    ).to(DEVICE)

    total_params = sum(p.numel() for p in model.parameters())
    print(f"  Total parameters: {total_params:,}")
    print(f"  Edge types: {NUM_EDGE_TYPES} (RSB_CHAIN added)")

    class_counts = Counter(r['label'] for r in train_records)
    total_train = sum(class_counts.values())
    class_weights = torch.tensor([
        total_train / (num_classes * class_counts.get(id_to_label[i], 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)

    ce_criterion = nn.CrossEntropyLoss(weight=class_weights)
    con_criterion = SupervisedContrastiveLoss(
        temperature=args.temperature,
        hard_negative_weight=args.hard_neg_weight,
        confused_pairs=confused_pairs,
    )

    optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=args.weight_decay)
    scheduler = optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=args.epochs)

    print(f"\n{'='*70}")
    print("TRAINING")
    print(f"{'='*70}")

    history = {'ce_loss': [], 'con_loss': [], 'train_acc': [], 'test_acc': [], 'lr': []}
    edge_scale_history = []
    best_test_acc = 0
    patience_counter = 0

    for epoch in range(1, args.epochs + 1):
        start_time = time.time()
        warmup_epochs = 10
        lambda_con = args.lambda_con * (epoch / warmup_epochs) if epoch <= warmup_epochs else args.lambda_con

        ce_loss, con_loss, train_acc = train_epoch(
            model, train_loader, optimizer, ce_criterion, con_criterion,
            DEVICE, lambda_con, args.grad_accum,
            desc=f"Epoch {epoch}/{args.epochs} train",
        )
        test_acc, test_preds, test_labels = evaluate(
            model, test_loader, DEVICE,
            desc=f"Epoch {epoch}/{args.epochs} eval",
        )
        scheduler.step()

        elapsed = time.time() - start_time
        lr = optimizer.param_groups[0]['lr']
        history['ce_loss'].append(ce_loss)
        history['con_loss'].append(con_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)

        scales = model.get_edge_type_scales()
        edge_scale_history.append(scales)

        improved = ""
        if test_acc > best_test_acc:
            best_test_acc = test_acc
            patience_counter = 0
            improved = " *BEST*"
            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'epoch': epoch,
                'test_acc': test_acc,
                'label_to_id': label_to_id,
                'feature_names': feature_names,
                'edge_type_scales': scales,
                'args': vars(args),
            }, output_dir / 'gine_best.pt')
        else:
            patience_counter += 1

        print(f"Epoch {epoch:3d}/{args.epochs} | CE: {ce_loss:.4f} | Con: {con_loss:.4f} | "
              f"Train: {train_acc:.3f} | Test: {test_acc:.3f} | LR: {lr:.2e} | "
              f"{elapsed:.1f}s{improved}")

        if epoch % 10 == 0 or improved:
            scale_str = " | ".join(f"{k[:8]}={v:.2f}" for k, v in sorted(scales.items()))
            print(f"  Edge scales: {scale_str}")

        if patience_counter >= args.patience:
            print(f"\nEarly stop at epoch {epoch}")
            break

    # =================================================================
    # FINAL EVALUATION
    # =================================================================
    print(f"\n{'='*70}")
    print("FINAL EVALUATION")
    print(f"{'='*70}")

    checkpoint = torch.load(output_dir / 'gine_best.pt', map_location=DEVICE, weights_only=False)
    model.load_state_dict(checkpoint['model_state_dict'])
    best_epoch = checkpoint['epoch']
    print(f"Best model from epoch {best_epoch}")

    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    print(f"Test accuracy: {test_acc:.4f}")

    final_scales = model.get_edge_type_scales()
    print("\nFinal edge-type scales:")
    for name, scale in sorted(final_scales.items()):
        direction = "UP" if scale > 1.05 else ("DOWN" if scale < 0.95 else "~1.0")
        print(f"  {name:20s}: {scale:.4f}  ({direction})")

    present_ids = sorted(set(test_labels))
    present_names = [id_to_label[i] for i in present_ids]
    print("\nClassification Report:")
    report = classification_report(test_labels, test_preds,
                                   labels=present_ids, target_names=present_names)
    print(report)

    report_dict = classification_report(test_labels, test_preds,
                                        labels=present_ids, target_names=present_names,
                                        output_dict=True)
    metrics = {
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_params': total_params,
        'num_classes': num_classes,
        'node_feat_dim': NODE_FEATURE_DIM,
        'num_edge_types': NUM_EDGE_TYPES,
        'global_feat_dim': GLOBAL_FEAT_DIM,
        'arch_emb_dim': args.arch_emb_dim,
        'split_mode': 'group_aware_deduped' if using_presplit else 'random_stratified',
        'train_count': len(train_records),
        'test_count': len(test_records),
        'final_edge_type_scales': final_scales,
        'classification_report': report_dict,
        'args': vars(args),
    }
    with open(output_dir / 'gine_metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)

    plot_confusion_matrix(
        test_labels, test_preds, present_names,
        f'{tag}\nConfusion Matrix (Acc={test_acc:.3f})',
        viz_dir / 'confusion_matrix.png',
    )
    plot_training_history(history, viz_dir / 'training_history.png', tag)
    if edge_scale_history:
        plot_edge_type_scales(edge_scale_history, list(EDGE_TYPES.keys()),
                              viz_dir / 'edge_type_scale_evolution.png')

    with open(viz_dir / 'training_history.json', 'w') as f:
        json.dump(history, f, indent=2)
    with open(viz_dir / 'edge_scale_history.json', 'w') as f:
        json.dump(edge_scale_history, f, indent=2)

    print(f"\nResults saved to {output_dir}/gine_metrics.json")
    print(f"Best test accuracy: {best_test_acc*100:.2f}%")


if __name__ == '__main__':
    main()
