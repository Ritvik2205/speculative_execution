#!/usr/bin/env python3
"""
v52_b training — same GINE stack as v52 with methodology fixes:

  1. Default validation split is group-aware (StratifiedGroupKFold): no `group`
     appears in both train and val, removing correlated-val leakage.
  2. Use `--val-split random` to reproduce legacy record-wise stratified val.

Dataset: build with ./build_dataset.py → data/v52b_{train,test}.jsonl (stable SHA-256 dedup).
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
from sklearn.model_selection import train_test_split, StratifiedGroupKFold, GroupShuffleSplit
from sklearn.metrics import classification_report, confusion_matrix
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from tqdm import tqdm

sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES
from gine_classifier_v38 import GINEClassifier, SupervisedContrastiveLoss, ARCH_VOCAB, NUM_ARCHS
from strip_boilerplate import strip_boilerplate
from inline_features import compute_inline_features, get_feature_names


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
MAX_NODES = 256
MAX_EDGES = 1024
# v47: node dim = 41 (same as v46b — RSB_CHAIN is an edge type, not a node feature)
# 19 opcode cats + 5 mem types + 2 reg counts + 14 spec_flags = 40 base + 1 positional
NODE_FEATURE_DIM = 41
GLOBAL_FEAT_DIM = 5   # nop_frac, indirect_frac, ret_frac, verw_frac, movntdqa_frac

# All confused pairs from analysis — used for hard-negative contrastive training.
# These pairs are structurally similar but semantically distinct.
CONFUSED_CLASS_NAMES = [
    ('SPECTRE_V1', 'BRANCH_HISTORY_INJECTION'),   # both: cond branch + indexed load
    ('INCEPTION', 'BRANCH_HISTORY_INJECTION'),     # both: RSB-adjacent, similar call/ret patterns
    ('MDS', 'RETBLEED'),                           # x86 MDS helpers ≈ x86 RETBLEED helpers
    ('INCEPTION', 'RETBLEED'),                     # both: RSB exploitation
    ('L1TF', 'SPECTRE_V1'),                        # both: L1 cache side-channel
    ('L1TF', 'SPECTRE_V4'),
    ('MDS', 'SPECTRE_V4'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('SPECTRE_V2', 'BRANCH_HISTORY_INJECTION'),
    ('SPECTRE_V2', 'INCEPTION'),
    ('RETBLEED', 'INCEPTION'),
    # v48: new pairs from confusion matrix analysis
    ('MDS', 'L1TF'),             # both: clflush+load timing; distinguished by verw/movntdqa
    ('SPECTRE_V2', 'RETBLEED'),  # indirect speculation vs return speculation
]


# =============================================================================
# GLOBAL GRAPH FEATURES — computed from raw sequence (no label leakage)
# =============================================================================

_INDIRECT_GLOBAL = re.compile(
    r'\b(blr|br)\b'                    # ARM indirect branch/call
    r'|\b(jmpq?|callq?)\s*\*'          # x86 indirect: jmp *%rax, jmpq *(%rbx)
    r'|\[x[0-9]+\]',                   # ARM register indirect: ldr x0, [x1]
    re.I
)


def compute_global_features(sequence: List[str]) -> np.ndarray:
    """
    Compute 5 instruction-count statistics from raw instruction sequence.

    All statistics are fractions of total instructions — scale-invariant.
    Computed identically for train and test from their own sequences.
    No normalization is fit on the training set, preventing leakage.

    Returns [nop_frac, indirect_frac, ret_frac, verw_frac, movntdqa_frac].
    """
    opcodes = []
    raw_lines = []
    for tok in sequence:
        tok = tok.strip()
        # Skip labels, directives, comments
        if not tok or tok.endswith(':') or tok.startswith('.') or tok.startswith('#'):
            continue
        parts = tok.split()
        if parts:
            opcodes.append(parts[0].lower())
            raw_lines.append(tok)

    total = max(len(opcodes), 1)

    nop_count = sum(1 for op in opcodes if op == 'nop')
    # Indirect branches: match full line (fixes 'jmpq *%rax' missed by opcode-only regex)
    indirect_count = sum(1 for line in raw_lines if _INDIRECT_GLOBAL.search(line))
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
        node_feature_mode: str = 'hand',
        mlm=None,
        tokenizer=None,
        use_spec_builder: bool = False,
        benign_repr_H=None,
        ensemble_ctx=None,
        ensemble_thresholds=None,
        spec_engines=None,
    ):
        self.label_to_id = label_to_id
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.max_edges = max_edges
        self.strip_bp = strip_bp
        # B1: optionally build graphs from the decomposed per-ISA spec engine
        # (contamination-free, mnemonic-fixed) instead of the hardcoded builder.
        # Arch-aware: pick the ISA spec per record.
        self.use_spec_builder = use_spec_builder
        if use_spec_builder:
            spec_dir = Path(__file__).resolve().parent.parent / "spec"
            sys.path.insert(0, str(spec_dir))
            from isa_spec import load_engine
            from spec_pdg_builder import SpecBackedPDGBuilder
            _specs = {"x86_64": "x86_64.json", "arm64": "arm64.json",
                      "arm32": "arm64.json", "riscv64": "riscv.json",
                      "unknown": "base.json"}
            self.spec_builders = {
                a: SpecBackedPDGBuilder(load_engine(f), speculative_window=speculative_window)
                for a, f in _specs.items()}
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)

        # SpecDiscover Phase 1: learned node features.
        # Phase 4 (SPECDISCOVER_LEARNED_FEATURES_PLAN.md): diff_gated / diff_gated_both
        # reuse the same per-node MLM embeddings as learned/both, but soft-gate each
        # node's embedding by spec/class_diff_features.node_gate_scores — the per-node
        # analogue of Phase 1/2's diff+pruned pooling, since GINE already consumes
        # per-node embeddings directly (no flat mean-pool to fix at this layer, unlike
        # the RF ablation harness in spec/ablation_spec_features.py).
        self.node_feature_mode = node_feature_mode
        self.mlm = mlm
        self.tokenizer = tokenizer
        self.benign_repr_H = benign_repr_H
        self.ensemble_ctx = ensemble_ctx
        self.ensemble_thresholds = ensemble_thresholds or {}
        self.spec_engines = spec_engines or {}
        self.gate_uncertainty = []   # per-record, for reporting
        base_dim, pos_dim = 40, 1
        learned_dim = int(mlm.dim) if mlm is not None else 0
        if node_feature_mode == 'hand':
            self.node_feature_dim = base_dim + pos_dim            # 41
        elif node_feature_mode in ('learned', 'diff_gated', 'ensemble_gated'):
            self.node_feature_dim = learned_dim + pos_dim
        else:  # both, diff_gated_both, ensemble_gated_both
            self.node_feature_dim = base_dim + learned_dim + pos_dim
        if node_feature_mode != 'hand' and (mlm is None or tokenizer is None):
            raise ValueError("learned/both/*_gated* modes require mlm and tokenizer")
        if node_feature_mode in ('diff_gated', 'diff_gated_both') and benign_repr_H is None:
            raise ValueError("diff_gated/diff_gated_both modes require benign_repr_H")
        if node_feature_mode in ('ensemble_gated', 'ensemble_gated_both') and ensemble_ctx is None:
            raise ValueError("ensemble_gated* modes require ensemble_ctx")

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
        sequence_raw = sequence  # preserve raw for feature extraction

        # Compute global + inline features BEFORE stripping — on raw sequence.
        global_features = compute_global_features(sequence_raw)

        if self.strip_bp:
            sequence = strip_boilerplate(sequence)

        len_after = len(sequence)
        was_stripped = len_after < len_before

        if self.use_spec_builder:
            arch = rec.get('arch', 'unknown')
            builder = self.spec_builders.get(arch, self.spec_builders['unknown'])
            pdg = builder.build(sequence)
        else:
            pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None

        n_nodes = min(len(pdg.nodes), self.max_nodes)

        # Base node features (40-dim) + positional encoding = 41-dim
        base_features = pdg.get_node_features(self.max_nodes)
        pos_enc = np.zeros((self.max_nodes, 1), dtype=np.float32)
        for i in range(n_nodes):
            pos_enc[i, 0] = i / max(n_nodes - 1, 1)

        if self.node_feature_mode == 'hand':
            node_features = np.concatenate([base_features, pos_enc], axis=1)
        else:
            # Learned contextual node embeddings, aligned 1:1 with PDG nodes.
            # PDG is built from `sequence` (post-strip); tokenize the SAME sequence
            # so token i corresponds to node i (identical skip rules).
            toks = self.tokenizer.for_arch(
                rec.get('arch', 'unknown')).tokenize_sequence(sequence)
            emb = self.mlm.embed_instructions(toks)              # [m, dim]
            learned = np.zeros((self.max_nodes, self.mlm.dim), dtype=np.float32)
            m = min(n_nodes, emb.shape[0])
            if m > 0:
                learned[:m] = emb[:m]
                if self.node_feature_mode in ('diff_gated', 'diff_gated_both'):
                    from class_diff_features import node_gate_scores
                    gate = node_gate_scores(emb[:m], self.benign_repr_H)
                    learned[:m] *= gate[:, None]
                elif self.node_feature_mode in ('ensemble_gated', 'ensemble_gated_both'):
                    from class_diff_features import (
                        ensemble_gate_scores, spec_flag_relevance)
                    # spec_flag arm needs the raw instruction text, filtered the
                    # same way the tokenizer filtered it so positions align 1:1.
                    flags = None
                    eng = self.spec_engines.get(rec.get('arch', 'unknown'))
                    if eng is not None:
                        tk = self.tokenizer.for_arch(rec.get('arch', 'unknown'))
                        kept = [s for s in sequence if tk.normalize(s) is not None]
                        if len(kept) >= m:
                            flags = spec_flag_relevance(kept[:m], eng)
                    gate, unc = ensemble_gate_scores(
                        emb[:m], self.ensemble_ctx, flags=flags,
                        **self.ensemble_thresholds)
                    learned[:m] *= gate[:, None]
                    self.gate_uncertainty.append(unc)
            if self.node_feature_mode in ('learned', 'diff_gated', 'ensemble_gated'):
                node_features = np.concatenate([learned, pos_enc], axis=1)
            else:  # both, diff_gated_both, ensemble_gated_both
                node_features = np.concatenate([base_features, learned, pos_enc], axis=1)

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

        # Inline feature extraction (56 fixed features from raw sequence; incl. calls_attack_fn).
        # Computed on raw sequence (before boilerplate strip) for consistency
        # between train and any future inference. No fitting on training set —
        # all features are instruction-count statistics or binary flags.
        handcrafted = compute_inline_features(sequence_raw)

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
    axes[1, 0].plot(history['train_acc'], 'b-', label='Train (train mode)')
    axes[1, 0].plot(history['val_acc'], 'r-', label='Val (eval mode)')
    if history.get('train_eval_acc'):
        axes[1, 0].plot(history['train_eval_acc'], 'g--', label='Train (eval mode)')
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


_TRAIN_ONLY_SOURCES = frozenset(['fastspec'])  # synthetic augmentation — excluded from val


def split_train_validation_presplit(
    train_records: List[Dict],
    label_to_id: Dict[str, int],
    val_split: str,
    val_fraction: float,
    random_state: int,
):
    """
    Split pre-split train pool into train + val. Test set is never touched.

    Synthetic augmentation sources (FastSpec) are train-only: they are excluded
    from the GroupKFold pool so the val distribution reflects real compiled code
    rather than synthetic gadget templates. This prevents the val/test gap caused
    by a val set dominated by synthetic single-template variations.

    val_split='group': Prefer StratifiedGroupKFold (same group in train XOR val, stratified).
      Falls back to GroupShuffleSplit(test_size=val_fraction), then random stratified.
    val_split='random': legacy stratified shuffle by record (can duplicate groups across splits).
    """
    # Partition into val-eligible (real code) and train-only (synthetic augmentation)
    val_eligible  = [r for r in train_records if r.get('external_source') not in _TRAIN_ONLY_SOURCES]
    train_only    = [r for r in train_records if r.get('external_source') in _TRAIN_ONLY_SOURCES]
    n_to = len(train_only)
    if n_to:
        print(f"  Train-only augmentation (excluded from val): {n_to} records "
              f"({', '.join(sorted(_TRAIN_ONLY_SOURCES))})")

    if val_split == 'random':
        labels = [r['label'] for r in val_eligible]
        tr, va = train_test_split(
            val_eligible,
            test_size=val_fraction,
            stratify=labels,
            random_state=random_state,
        )
        return tr + train_only, va, 'random_stratified_records'

    n = len(val_eligible)
    groups = np.array([
        (r.get('group') or '').strip() or f'__singleton_{i}'
        for i, r in enumerate(val_eligible)
    ])
    y = np.array([label_to_id[r['label']] for r in val_eligible])
    X = np.arange(n)

    target_splits = max(2, min(n, int(round(1 / max(val_fraction, 0.05)))))
    candidates = sorted(
        {target_splits, 10, 9, 8, 7, 6, 5, 4, 3},
        reverse=True,
    )
    last_err: Optional[Exception] = None

    for n_splits in candidates:
        if n_splits < 2 or n_splits > n:
            continue
        try:
            sgkf = StratifiedGroupKFold(
                n_splits=n_splits, shuffle=True, random_state=random_state
            )
            train_idx, val_idx = next(sgkf.split(X, y, groups))
            tr = [val_eligible[i] for i in train_idx] + train_only
            va = [val_eligible[i] for i in val_idx]
            g_tr = set(groups[train_idx])
            g_va = set(groups[val_idx])
            overlap = g_tr & g_va
            assert not overlap, f"group overlap: {overlap}"
            frac_va = len(va) / max(n, 1)
            print(f"\nGroup-aware val split: StratifiedGroupKFold(n_splits={n_splits}) "
                  f"→ val_frac≈{frac_va:.3f} (target ~{val_fraction:.3f}, "
                  f"pool={n} val-eligible records)")
            print(f"  Distinct groups — train: {len(g_tr)}, val: {len(g_va)}, "
                  f"train∩val groups: {len(overlap)}")
            return tr, va, f'stratified_group_kfold_n{n_splits}'
        except ValueError as e:
            last_err = e
            continue

    try:
        gss = GroupShuffleSplit(
            n_splits=1, test_size=val_fraction, random_state=random_state
        )
        train_idx, val_idx = next(gss.split(np.zeros(n), y, groups))
        tr = [val_eligible[i] for i in train_idx] + train_only
        va = [val_eligible[i] for i in val_idx]
        g_tr = set(groups[train_idx])
        g_va = set(groups[val_idx])
        overlap = g_tr & g_va
        assert not overlap
        frac_va = len(va) / max(n, 1)
        print(f"\nGroup-aware val split: GroupShuffleSplit(test_size={val_fraction}) "
              f"→ val_frac≈{frac_va:.3f} (StratifiedGroupKFold unavailable: {last_err})")
        print(f"  Distinct groups — train: {len(g_tr)}, val: {len(g_va)}, "
              f"train∩val groups: 0")
        return tr, va, 'group_shuffle_split'
    except Exception as e2:
        print(f"[warn] GroupShuffleSplit failed ({e2}); "
              f"falling back to random stratified val split.")
    labels = [r['label'] for r in val_eligible]
    tr, va = train_test_split(
        val_eligible,
        test_size=val_fraction,
        stratify=labels,
        random_state=random_state,
    )
    return tr + train_only, va, 'random_stratified_fallback'


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='v52_b GINE — group-aware validation split')
    parser.add_argument('--data', type=str, default=None)
    parser.add_argument('--train-data', type=str, default=None)
    parser.add_argument('--test-data', type=str, default=None)
    parser.add_argument('--output-dir', type=str, default='viz_v52b')
    parser.add_argument('--viz-dir', type=str, default='viz_v52b')
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
    parser.add_argument('--speculative-window', type=int, default=20)
    parser.add_argument('--arch-emb-dim', type=int, default=8)
    # SpecDiscover Phase 1: learned node features (default 'hand' = original behavior)
    parser.add_argument('--node-feature-mode',
                        choices=['hand', 'learned', 'both', 'diff_gated', 'diff_gated_both',
                                 'ensemble_gated', 'ensemble_gated_both'],
                        default='hand',
                        help="node features: hand (40-dim PDG), learned (MLM embeds), both, "
                             "diff_gated[_both] (single-arm gate), or ensemble_gated[_both] "
                             "(multi-arm agreement gate, only suppresses on unanimity)")
    parser.add_argument('--gate-percentile', type=float, default=60.0,
                        help="percentile of the TRAIN benign-similarity distribution used "
                             "as the ensemble gate's cutoff (Confident-Learning-style "
                             "data-derived threshold instead of a hardcoded cosine constant)")
    parser.add_argument('--mlm-path', type=str, default=None,
                        help="path to trained MlmEncoder (required for learned/both)")
    parser.add_argument('--use-spec-builder', action='store_true',
                        help="B1: build graphs from the decomposed per-ISA spec "
                             "engine (contamination-free + mnemonic fixes) instead "
                             "of the hardcoded PDGBuilder")
    parser.add_argument(
        '--val-split',
        type=str,
        default='group',
        choices=['group', 'random'],
        help="Validation carve-out from train file: 'group'=StratifiedGroupKFold (default), "
             "'random'=legacy stratified record shuffle",
    )
    parser.add_argument(
        '--val-fraction',
        type=float,
        default=0.10,
        help='Target val fraction when using --val-split random; approximate for group split.',
    )
    parser.add_argument(
        '--val-split-seed',
        type=int,
        default=42,
        help='RNG seed for StratifiedGroupKFold / GroupShuffleSplit / random val split.',
    )
    parser.add_argument(
        '--log-train-eval-acc',
        action='store_true',
        help='Each epoch, measure train accuracy with model.eval() (dropout off) for ablation.',
    )
    parser.add_argument(
        '--seed', type=int, default=None,
        help='Global training seed (torch+numpy). Enables reproducible multi-seed runs.',
    )

    args = parser.parse_args()
    tag = "v52_b GINE — group-aware val + stable-hash dataset"

    if args.seed is not None:
        torch.manual_seed(args.seed)
        np.random.seed(args.seed)
        import random as _random
        _random.seed(args.seed)

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

    # Inline features replace per-record `features` dict (which is empty in v44+ data).
    # Fixed 56-dim vocabulary, computed from raw sequence — no label leakage.
    feature_names = get_feature_names()
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features (inline): {handcrafted_dim}")

    val_split_protocol = 'n/a'

    if using_presplit:
        train_records = [r for r in train_records if r.get('label', 'UNKNOWN') in label_to_id]
        test_records  = [r for r in test_records  if r.get('label', 'UNKNOWN') in label_to_id]
        train_records, val_records, val_split_protocol = split_train_validation_presplit(
            train_records,
            label_to_id,
            val_split=args.val_split,
            val_fraction=args.val_fraction,
            random_state=args.val_split_seed,
        )
        print(f"\nPre-split: Train={len(train_records)}, Val={len(val_records)}, Test={len(test_records)}")
        print(f"  Val carve-out: {val_split_protocol}")
        print("  Early stopping uses VAL accuracy. Test evaluated once at end.")
    else:
        print("\nSplitting 80/20 stratified (legacy — possible group overlap)...")
        filtered = [r for r in records if r.get('label', 'UNKNOWN') in label_to_id]
        labels_for_split = [r['label'] for r in filtered]
        train_records, test_records = train_test_split(
            filtered, test_size=0.2, stratify=labels_for_split, random_state=42
        )
        val_records = test_records  # fallback: val == test in legacy mode
        val_split_protocol = 'val_equals_test_legacy'
        print(f"  Train={len(train_records)}, Test={len(test_records)}")

    # Report global feature statistics on train set (for sanity check only)
    print("\nGlobal feature statistics (train, mean±std):")
    feat_names_gf = ['nop_frac', 'indirect_frac', 'ret_frac', 'verw_frac', 'movntdqa_frac']
    gf_matrix = np.array([compute_global_features(r['sequence']) for r in train_records[:500]])
    for j, name in enumerate(feat_names_gf):
        print(f"  {name:<20}: {gf_matrix[:, j].mean():.4f} ± {gf_matrix[:, j].std():.4f}")

    # SpecDiscover Phase 1: optional learned node encoder.
    mlm_enc, asm_tok = None, None
    if args.node_feature_mode != 'hand':
        if not args.mlm_path:
            raise ValueError("--mlm-path required for --node-feature-mode learned/both/diff_gated*")
        sys.path.insert(0, str(Path(__file__).resolve().parent.parent / 'spec'))
        from isa_spec import load_engine
        from asm_tokenizer import AsmTokenizer
        from train_mlm import MlmEncoder
        mlm_enc = MlmEncoder.load(args.mlm_path)
        # Tokenize the way this checkpoint's vocabulary was built. A canonical
        # checkpoint indexes ISA-neutral op names resolved from each ISA's own
        # spec, so a single base-engine tokenizer would miss every lookup.
        from asm_tokenizer import MultiArchTokenizer
        _tok_mode = getattr(mlm_enc, 'tokenizer_mode', 'mnemonic')
        asm_tok = MultiArchTokenizer(mode=_tok_mode)
        print(f"Loaded MLM encoder ({args.node_feature_mode}) dim={mlm_enc.dim} "
              f"vocab={len(mlm_enc.vocab)} tokenizer={_tok_mode} from {args.mlm_path}")

    # Phase 4: benign representative built from TRAIN only (no test leakage),
    # tokenized/embedded the same way node features will be.
    benign_repr_H = None
    if args.node_feature_mode in ('diff_gated', 'diff_gated_both'):
        from class_diff_features import build_class_representatives
        tr_tok_for_repr = [asm_tok.tokenize_record(r) for r in train_records]
        benign_toks = build_class_representatives(train_records, tr_tok_for_repr, mlm_enc).get('BENIGN')
        benign_repr_H = (mlm_enc.embed_instructions(benign_toks) if benign_toks is not None
                         else np.zeros((0, mlm_enc.dim), dtype=np.float32))
        print(f"  Built BENIGN representative for diff-gating: "
              f"{benign_repr_H.shape[0]} instructions")

    # Ensemble agreement gate: reference sets + data-derived thresholds, both
    # built from TRAIN records only. Thresholds are calibrated rather than
    # hardcoded (Confident Learning) because cosine scale differs per encoder.
    ensemble_ctx, ensemble_thresholds, spec_engines = None, None, None
    if args.node_feature_mode in ('ensemble_gated', 'ensemble_gated_both'):
        from class_diff_features import build_ensemble_context, calibrate_thresholds
        from isa_spec import load_engine
        tr_tok_for_repr = [asm_tok.tokenize_record(r) for r in train_records]
        ensemble_ctx = build_ensemble_context(train_records, tr_tok_for_repr, mlm_enc)
        ensemble_thresholds = calibrate_thresholds(
            tr_tok_for_repr, mlm_enc, ensemble_ctx,
            percentile=args.gate_percentile)
        spec_engines = {a: load_engine(f) for a, f in
                        {"x86_64": "x86_64.json", "arm64": "arm64.json",
                         "arm32": "arm64.json", "riscv64": "riscv.json",
                         "unknown": "base.json"}.items()}
        print(f"  Ensemble gate: benign_repr={ensemble_ctx.benign_repr_H.shape[0]} "
              f"knn={ensemble_ctx.benign_knn_H.shape[0]} "
              f"attack_reps={ensemble_ctx.attack_reps_H.shape[0]} instrs; "
              f"calibrated thresholds={ {k: round(v, 4) for k, v in ensemble_thresholds.items()} }")

    print("\nCreating datasets...")
    _ds_kw = dict(speculative_window=args.speculative_window,
                  strip_bp=not args.no_strip,
                  node_feature_mode=args.node_feature_mode,
                  mlm=mlm_enc, tokenizer=asm_tok,
                  use_spec_builder=args.use_spec_builder,
                  benign_repr_H=benign_repr_H,
                  ensemble_ctx=ensemble_ctx,
                  ensemble_thresholds=ensemble_thresholds,
                  spec_engines=spec_engines)
    train_dataset = GINEDatasetV47(train_records, label_to_id, feature_names, **_ds_kw)
    val_dataset = GINEDatasetV47(val_records, label_to_id, feature_names, **_ds_kw)
    test_dataset = GINEDatasetV47(test_records, label_to_id, feature_names, **_ds_kw)

    node_feat_dim = train_dataset.node_feature_dim
    print(f"Node feature mode: {args.node_feature_mode}  node_feat_dim={node_feat_dim}")

    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    val_loader   = DataLoader(val_dataset,   batch_size=args.batch_size, shuffle=False,
                              collate_fn=collate_fn, num_workers=0)
    test_loader  = DataLoader(test_dataset,  batch_size=args.batch_size, shuffle=False,
                              collate_fn=collate_fn, num_workers=0)

    print(f"\nInitializing GINEClassifier v47...")
    model = GINEClassifier(
        node_feat_dim=node_feat_dim,
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

    # Class weights: 1/sqrt(n_i) — softer than 1/n_i, avoids over-penalising majority.
    # BENIGN (3446) → weight≈0.017, V4 (454) → weight≈0.047 — 2.7x ratio vs 8.5x raw.
    class_counts = Counter(r['label'] for r in train_records)
    import math
    class_weights = torch.tensor([
        1.0 / math.sqrt(max(class_counts.get(id_to_label[i], 1), 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)
    # Normalise so mean weight = 1.0 (keeps LR scale stable)
    class_weights = class_weights / class_weights.mean()

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

    history = {'ce_loss': [], 'con_loss': [], 'train_acc': [], 'val_acc': [], 'lr': []}
    if args.log_train_eval_acc:
        history['train_eval_acc'] = []
    edge_scale_history = []
    best_val_acc = 0
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
        # Early stopping uses VAL set (held-out from train). Test never seen during training.
        val_acc, _, _ = evaluate(
            model, val_loader, DEVICE,
            desc=f"Epoch {epoch}/{args.epochs} val",
        )
        train_eval_acc = None
        if args.log_train_eval_acc:
            train_eval_acc, _, _ = evaluate(
                model, train_loader, DEVICE,
                desc=f"Epoch {epoch}/{args.epochs} train@eval",
            )
            history['train_eval_acc'].append(train_eval_acc)
        scheduler.step()

        elapsed = time.time() - start_time
        lr = optimizer.param_groups[0]['lr']
        history['ce_loss'].append(ce_loss)
        history['con_loss'].append(con_loss)
        history['train_acc'].append(train_acc)
        history['val_acc'].append(val_acc)
        history['lr'].append(lr)

        scales = model.get_edge_type_scales()
        edge_scale_history.append(scales)

        improved = ""
        if val_acc > best_val_acc:
            best_val_acc = val_acc
            patience_counter = 0
            improved = " *BEST*"
            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
                'epoch': epoch,
                'val_acc': val_acc,
                'label_to_id': label_to_id,
                'feature_names': feature_names,
                'edge_type_scales': scales,
                'args': vars(args),
            }, output_dir / 'gine_best.pt')
        else:
            patience_counter += 1

        te_str = f" | TrEval: {train_eval_acc:.3f}" if train_eval_acc is not None else ""
        print(f"Epoch {epoch:3d}/{args.epochs} | CE: {ce_loss:.4f} | Con: {con_loss:.4f} | "
              f"Train: {train_acc:.3f} | Val: {val_acc:.3f}{te_str} | LR: {lr:.2e} | "
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
    best_val = checkpoint.get('val_acc', 0.0)
    print(f"Best model from epoch {best_epoch} (val_acc={best_val:.4f})")

    # First and ONLY time test set is evaluated.
    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    print(f"Test accuracy: {test_acc:.4f}")
    print(f"Val/Test gap: {(best_val - test_acc)*100:+.2f}pp")

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
    acc_curve_summary = {}
    if len(history.get('train_acc', [])) >= 1:
        acc_curve_summary['epoch1_train_acc_train_mode'] = history['train_acc'][0]
        acc_curve_summary['epoch1_val_acc'] = history['val_acc'][0]
        if history.get('train_eval_acc'):
            acc_curve_summary['epoch1_train_acc_eval_mode'] = history['train_eval_acc'][0]
            acc_curve_summary['final_train_acc_eval_mode'] = history['train_eval_acc'][-1]

    metrics = {
        'test_accuracy': test_acc,
        'best_epoch': best_epoch,
        'total_params': total_params,
        'num_classes': num_classes,
        'node_feat_dim': NODE_FEATURE_DIM,
        'num_edge_types': NUM_EDGE_TYPES,
        'global_feat_dim': GLOBAL_FEAT_DIM,
        'arch_emb_dim': args.arch_emb_dim,
        'split_mode': (
            f'presplit_group_excluded_test__val_{val_split_protocol}'
            if using_presplit else 'random_stratified_legacy'
        ),
        'val_split_protocol': val_split_protocol,
        'train_count': len(train_records),
        'val_count': len(val_records),
        'test_count': len(test_records),
        'best_val_acc': best_val,
        'final_edge_type_scales': final_scales,
        'classification_report': report_dict,
        'acc_curve_summary': acc_curve_summary,
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
    print(f"Best val accuracy:  {best_val_acc*100:.2f}%  (epoch {best_epoch})")
    print(f"Final test accuracy: {test_acc*100:.2f}%")


if __name__ == '__main__':
    main()
