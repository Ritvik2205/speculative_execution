#!/usr/bin/env python3
"""
V36: Hierarchical GINE Classifier for Speculative Execution Vulnerabilities

Key innovation: 3-level hierarchical classification based on attack mechanism:

Level 1: BENIGN vs VULNERABLE (binary)
  - Clean separation using speculative patterns

Level 2: VULNERABLE → 3 superclasses based on PRIMARY mechanism:
  - INDIRECT_BRANCH: SPECTRE_V2, BRANCH_HISTORY_INJECTION
  - RETURN_BASED: RETBLEED, SPECTRE_V4, INCEPTION  
  - CACHE_MEMORY: L1TF, MDS, SPECTRE_V1

Level 3: Fine-grained classification within each superclass

Architecture:
- Shared GINE backbone for graph feature extraction
- Separate classification heads for each level
- Hierarchical loss with consistency constraints
"""

import argparse
import json
import sys
import time
from pathlib import Path
from collections import Counter
from typing import List, Dict, Optional, Tuple
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
from gine_classifier import GINEClassifier, SupervisedContrastiveLoss


# =============================================================================
# HIERARCHY CONFIGURATION
# =============================================================================

# Level 1: Binary (benign vs vulnerable)
LEVEL1_CLASSES = ['BENIGN', 'VULNERABLE']

# Level 2: Superclasses (mechanism-based grouping)
LEVEL2_CLASSES = ['INDIRECT_BRANCH', 'RETURN_BASED', 'CACHE_MEMORY']

# Level 3: Fine-grained classes within each superclass
LEVEL3_INDIRECT_BRANCH = ['SPECTRE_V2', 'BRANCH_HISTORY_INJECTION']
LEVEL3_RETURN_BASED = ['RETBLEED', 'SPECTRE_V4', 'INCEPTION']
LEVEL3_CACHE_MEMORY = ['L1TF', 'MDS', 'SPECTRE_V1']

# Mapping from fine-grained class to superclass
FINE_TO_SUPER = {
    'SPECTRE_V2': 'INDIRECT_BRANCH',
    'BRANCH_HISTORY_INJECTION': 'INDIRECT_BRANCH',
    'RETBLEED': 'RETURN_BASED',
    'SPECTRE_V4': 'RETURN_BASED',
    'INCEPTION': 'RETURN_BASED',
    'L1TF': 'CACHE_MEMORY',
    'MDS': 'CACHE_MEMORY',
    'SPECTRE_V1': 'CACHE_MEMORY',
    'BENIGN': 'BENIGN',  # Special case
}

# All fine-grained classes
ALL_FINE_CLASSES = ['BENIGN'] + LEVEL3_INDIRECT_BRANCH + LEVEL3_RETURN_BASED + LEVEL3_CACHE_MEMORY

# Create ID mappings
LEVEL1_TO_ID = {c: i for i, c in enumerate(LEVEL1_CLASSES)}
LEVEL2_TO_ID = {c: i for i, c in enumerate(LEVEL2_CLASSES)}
LEVEL3_INDIRECT_TO_ID = {c: i for i, c in enumerate(LEVEL3_INDIRECT_BRANCH)}
LEVEL3_RETURN_TO_ID = {c: i for i, c in enumerate(LEVEL3_RETURN_BASED)}
LEVEL3_CACHE_TO_ID = {c: i for i, c in enumerate(LEVEL3_CACHE_MEMORY)}
FINE_TO_ID = {c: i for i, c in enumerate(ALL_FINE_CLASSES)}


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64
MAX_EDGES = 512
NODE_FEATURE_DIM = 34


# =============================================================================
# HIERARCHICAL GINE MODEL
# =============================================================================

class HierarchicalGINEClassifier(nn.Module):
    """
    Hierarchical GINE classifier with shared backbone and level-specific heads.
    
    Architecture:
    - GINE backbone (shared): extracts graph-level features
    - Level 1 head: BENIGN vs VULNERABLE
    - Level 2 head: Superclass (INDIRECT_BRANCH, RETURN_BASED, CACHE_MEMORY)
    - Level 3 heads: Fine-grained class within each superclass
    """
    
    def __init__(
        self,
        node_feat_dim: int,
        hidden_dim: int = 256,
        num_layers: int = 4,
        num_edge_types: int = NUM_EDGE_TYPES,
        handcrafted_dim: int = 0,
        dropout: float = 0.3,
        jk_mode: str = 'cat',
        virtual_node: bool = True,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        self.handcrafted_dim = handcrafted_dim
        
        # Shared GINE backbone (reuse existing implementation)
        self.backbone = GINEClassifier(
            node_feat_dim=node_feat_dim,
            hidden_dim=hidden_dim,
            num_classes=2,  # Will be replaced
            num_layers=num_layers,
            num_edge_types=num_edge_types,
            handcrafted_dim=handcrafted_dim,
            dropout=dropout,
            jk_mode=jk_mode,
            use_virtual_node=virtual_node,
        )
        
        # The backbone's combined output is 512 (256 graph + 256 features)
        # from graph_projector + feature_encoder
        total_feat_dim = 512  # Fixed: backbone produces 256 + 256 = 512
        
        # Level 1 head: BENIGN vs VULNERABLE
        self.level1_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim),
            nn.LayerNorm(hidden_dim),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, 2),
        )
        
        # Level 2 head: Superclass classification
        self.level2_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim),
            nn.LayerNorm(hidden_dim),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, 3),  # 3 superclasses
        )
        
        # Level 3 heads: Fine-grained within each superclass
        self.level3_indirect_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim // 2),
            nn.LayerNorm(hidden_dim // 2),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim // 2, len(LEVEL3_INDIRECT_BRANCH)),
        )
        
        self.level3_return_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim // 2),
            nn.LayerNorm(hidden_dim // 2),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim // 2, len(LEVEL3_RETURN_BASED)),
        )
        
        self.level3_cache_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim // 2),
            nn.LayerNorm(hidden_dim // 2),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim // 2, len(LEVEL3_CACHE_MEMORY)),
        )
        
        # Direct fine-grained head (for flat comparison)
        self.fine_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim),
            nn.LayerNorm(hidden_dim),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, len(ALL_FINE_CLASSES)),
        )
        
        # Projection head for contrastive loss
        self.proj_head = nn.Sequential(
            nn.Linear(total_feat_dim, hidden_dim),
            nn.GELU(),
            nn.Linear(hidden_dim, 128),
        )
        
    def get_features(self, node_features, edge_index, edge_type, node_mask, 
                     handcrafted=None, edge_mask=None, edge_weight=None):
        """Extract features from GINE backbone."""
        # Use backbone's encode_graph method to get graph representations
        graph_repr = self.backbone.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )
        
        # Project graph representation
        graph_proj = self.backbone.graph_projector(graph_repr)
        
        # Encode handcrafted features
        if handcrafted is not None and self.handcrafted_dim > 0:
            feat_repr = self.backbone.feature_encoder(handcrafted)
            combined = torch.cat([graph_proj, feat_repr], dim=-1)
        else:
            combined = graph_proj
        
        return combined
    
    def forward(self, node_features, edge_index, edge_type, node_mask,
                handcrafted=None, edge_mask=None, edge_weight=None,
                return_all_levels=False, return_projection=False):
        """
        Forward pass through hierarchical classifier.
        
        Returns:
            If return_all_levels:
                (level1_logits, level2_logits, level3_dict, fine_logits, proj)
            Else:
                fine_logits (for compatibility)
        """
        # Extract shared features
        feats = self.get_features(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, edge_mask, edge_weight
        )
        
        # Level 1: BENIGN vs VULNERABLE
        level1_logits = self.level1_head(feats)
        
        # Level 2: Superclass
        level2_logits = self.level2_head(feats)
        
        # Level 3: Fine-grained per superclass
        level3_indirect = self.level3_indirect_head(feats)
        level3_return = self.level3_return_head(feats)
        level3_cache = self.level3_cache_head(feats)
        
        # Direct fine-grained
        fine_logits = self.fine_head(feats)
        
        # Projection for contrastive loss
        proj = self.proj_head(feats) if return_projection else None
        
        if return_all_levels:
            level3_dict = {
                'INDIRECT_BRANCH': level3_indirect,
                'RETURN_BASED': level3_return,
                'CACHE_MEMORY': level3_cache,
            }
            return level1_logits, level2_logits, level3_dict, fine_logits, proj
        
        if return_projection:
            return fine_logits, proj
        
        return fine_logits


# =============================================================================
# HIERARCHICAL LOSS
# =============================================================================

class HierarchicalLoss(nn.Module):
    """
    Hierarchical cross-entropy loss with consistency constraints.
    
    Loss = α1*L1_loss + α2*L2_loss + α3*L3_loss + β*consistency_loss
    
    Where:
    - L1_loss: Binary BENIGN vs VULNERABLE
    - L2_loss: Superclass classification (only for VULNERABLE)
    - L3_loss: Fine-grained within superclass
    - consistency_loss: Penalizes predictions inconsistent with hierarchy
    """
    
    def __init__(self, alpha1=0.2, alpha2=0.3, alpha3=0.4, beta=0.1):
        super().__init__()
        self.alpha1 = alpha1
        self.alpha2 = alpha2
        self.alpha3 = alpha3
        self.beta = beta
        self.ce = nn.CrossEntropyLoss()
    
    def forward(self, level1_logits, level2_logits, level3_dict, fine_logits,
                labels_l1, labels_l2, labels_l3, labels_fine, superclass_membership):
        """
        Args:
            level1_logits: [B, 2] - BENIGN vs VULNERABLE
            level2_logits: [B, 3] - Superclass
            level3_dict: dict of [B, num_classes_in_superclass]
            fine_logits: [B, 9] - All fine classes
            labels_l1: [B] - 0=BENIGN, 1=VULNERABLE
            labels_l2: [B] - 0=INDIRECT, 1=RETURN, 2=CACHE (-1 for BENIGN)
            labels_l3: [B] - Index within superclass (-1 for BENIGN or N/A)
            labels_fine: [B] - Fine-grained class ID
            superclass_membership: [B] - Which superclass each sample belongs to
        """
        B = labels_fine.shape[0]
        device = labels_fine.device
        
        # Level 1 loss (all samples)
        l1_loss = self.ce(level1_logits, labels_l1)
        
        # Level 2 loss (only VULNERABLE samples)
        vuln_mask = labels_l1 == 1
        if vuln_mask.sum() > 0:
            l2_loss = self.ce(level2_logits[vuln_mask], labels_l2[vuln_mask])
        else:
            l2_loss = torch.tensor(0.0, device=device)
        
        # Level 3 loss (per superclass)
        l3_loss = torch.tensor(0.0, device=device)
        for super_idx, (super_name, l3_logits) in enumerate(
            [('INDIRECT_BRANCH', level3_dict['INDIRECT_BRANCH']),
             ('RETURN_BASED', level3_dict['RETURN_BASED']),
             ('CACHE_MEMORY', level3_dict['CACHE_MEMORY'])]
        ):
            mask = (superclass_membership == super_idx) & (labels_l3 >= 0)
            if mask.sum() > 0:
                l3_loss = l3_loss + self.ce(l3_logits[mask], labels_l3[mask])
        
        # Fine-grained loss (all samples, for direct supervision)
        fine_loss = self.ce(fine_logits, labels_fine)
        
        # Consistency loss: ensure predictions align with hierarchy
        # If L1 predicts BENIGN, fine should predict BENIGN (index 0)
        l1_pred = level1_logits.argmax(dim=1)
        fine_pred = fine_logits.argmax(dim=1)
        
        # Penalize: L1 says BENIGN but fine says vulnerable (or vice versa)
        benign_pred_mask = l1_pred == 0
        consistency_error = (benign_pred_mask & (fine_pred != 0)).float().mean()
        consistency_error += ((~benign_pred_mask) & (fine_pred == 0)).float().mean()
        
        total_loss = (
            self.alpha1 * l1_loss +
            self.alpha2 * l2_loss +
            self.alpha3 * (l3_loss + fine_loss) +
            self.beta * consistency_error
        )
        
        return total_loss, {
            'l1': l1_loss.item(),
            'l2': l2_loss.item() if isinstance(l2_loss, torch.Tensor) else l2_loss,
            'l3': l3_loss.item() if isinstance(l3_loss, torch.Tensor) else l3_loss,
            'fine': fine_loss.item(),
            'consistency': consistency_error.item(),
        }


# =============================================================================
# DATASET
# =============================================================================

class HierarchicalGINEDataset(Dataset):
    """Dataset with hierarchical labels."""
    
    def __init__(
        self,
        records: List[Dict],
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        max_edges: int = MAX_EDGES,
        speculative_window: int = 10,
    ):
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.max_edges = max_edges
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)
        
        print(f"Pre-computing PDGs with hierarchical labels...")
        self.data = []
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")
        
        # Edge type distribution
        edge_counts = Counter()
        for item in self.data:
            n_real = item['n_edges']
            for et in item['edge_type'][:n_real]:
                edge_counts[et] += 1
        edge_names = {v: k for k, v in EDGE_TYPES.items()}
        print("  Edge type distribution:")
        total_edges = sum(edge_counts.values())
        for et in sorted(edge_counts.keys()):
            pct = 100.0 * edge_counts[et] / total_edges if total_edges > 0 else 0
            print(f"    {edge_names.get(et, '?'):15s}: {edge_counts[et]:>8d} ({pct:.1f}%)")
    
    def _process_record(self, rec: Dict) -> Optional[Dict]:
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None
        
        label = rec.get('label', 'UNKNOWN')
        if label not in ALL_FINE_CLASSES:
            return None
        
        pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None
        
        n_nodes = min(len(pdg.nodes), self.max_nodes)
        
        # Node features
        node_features = pdg.get_node_features(self.max_nodes)
        
        # Edge data
        edge_index, edge_type = pdg.get_edge_index_and_type(self.max_nodes)
        edge_weight = pdg.get_edge_weights(self.max_nodes)
        n_edges = edge_index.shape[1]
        
        # Pad/truncate edges
        if n_edges > self.max_edges:
            edge_index = edge_index[:, :self.max_edges]
            edge_type = edge_type[:self.max_edges]
            edge_weight = edge_weight[:self.max_edges]
            n_edges = self.max_edges
        elif n_edges < self.max_edges:
            pad_size = self.max_edges - n_edges
            edge_index = np.pad(edge_index, ((0, 0), (0, pad_size)), constant_values=0)
            edge_type = np.pad(edge_type, (0, pad_size), constant_values=0)
            edge_weight = np.pad(edge_weight, (0, pad_size), constant_values=0.0)
        
        # Masks
        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        edge_mask = np.zeros(self.max_edges, dtype=bool)
        edge_mask[:n_edges] = True
        
        # Handcrafted features
        rec_features = rec.get('features', {})
        handcrafted = np.zeros(len(self.handcrafted_feature_names), dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and np.isfinite(val):
                handcrafted[i] = np.clip(val, -100, 100)
        
        # Compute hierarchical labels
        label_fine = FINE_TO_ID[label]
        
        # Level 1: BENIGN (0) vs VULNERABLE (1)
        label_l1 = 0 if label == 'BENIGN' else 1
        
        # Level 2: Superclass
        if label == 'BENIGN':
            label_l2 = -1  # Not applicable
            superclass_idx = -1
        else:
            superclass = FINE_TO_SUPER[label]
            label_l2 = LEVEL2_TO_ID[superclass]
            superclass_idx = label_l2
        
        # Level 3: Within superclass
        if label == 'BENIGN':
            label_l3 = -1
        elif label in LEVEL3_INDIRECT_BRANCH:
            label_l3 = LEVEL3_INDIRECT_TO_ID[label]
        elif label in LEVEL3_RETURN_BASED:
            label_l3 = LEVEL3_RETURN_TO_ID[label]
        elif label in LEVEL3_CACHE_MEMORY:
            label_l3 = LEVEL3_CACHE_TO_ID[label]
        else:
            label_l3 = -1
        
        return {
            'node_features': node_features.astype(np.float32),
            'edge_index': edge_index.astype(np.int64),
            'edge_type': edge_type.astype(np.int64),
            'edge_weight': edge_weight.astype(np.float32),
            'node_mask': node_mask,
            'edge_mask': edge_mask,
            'n_edges': n_edges,
            'handcrafted': handcrafted,
            'label_fine': label_fine,
            'label_l1': label_l1,
            'label_l2': label_l2,
            'label_l3': label_l3,
            'superclass_idx': superclass_idx,
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
            'label_fine': item['label_fine'],
            'label_l1': item['label_l1'],
            'label_l2': item['label_l2'],
            'label_l3': item['label_l3'],
            'superclass_idx': item['superclass_idx'],
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
        'label_fine': torch.tensor([x['label_fine'] for x in batch], dtype=torch.long),
        'label_l1': torch.tensor([x['label_l1'] for x in batch], dtype=torch.long),
        'label_l2': torch.tensor([x['label_l2'] for x in batch], dtype=torch.long),
        'label_l3': torch.tensor([x['label_l3'] for x in batch], dtype=torch.long),
        'superclass_idx': torch.tensor([x['superclass_idx'] for x in batch], dtype=torch.long),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_epoch(model, loader, optimizer, hier_loss, con_criterion, device,
                lambda_con, grad_accum):
    """Training with hierarchical + contrastive loss."""
    model.train()
    total_loss = 0
    loss_components = Counter()
    correct_fine = 0
    correct_l1 = 0
    total = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        
        labels_fine = batch['label_fine'].to(device)
        labels_l1 = batch['label_l1'].to(device)
        labels_l2 = batch['label_l2'].to(device)
        labels_l3 = batch['label_l3'].to(device)
        superclass_idx = batch['superclass_idx'].to(device)
        
        # Forward
        l1_logits, l2_logits, l3_dict, fine_logits, proj = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, edge_mask, edge_weight,
            return_all_levels=True, return_projection=True
        )
        
        # Hierarchical loss
        hier_loss_val, components = hier_loss(
            l1_logits, l2_logits, l3_dict, fine_logits,
            labels_l1, labels_l2, labels_l3, labels_fine, superclass_idx
        )
        
        # Contrastive loss on fine labels
        con_loss = con_criterion(proj, labels_fine) if lambda_con > 0 else torch.tensor(0.0, device=device)
        
        loss = (hier_loss_val + lambda_con * con_loss) / grad_accum
        loss.backward()
        
        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += hier_loss_val.item()
        for k, v in components.items():
            loss_components[k] += v
        
        # Accuracy
        preds_fine = fine_logits.argmax(dim=1)
        preds_l1 = l1_logits.argmax(dim=1)
        correct_fine += (preds_fine == labels_fine).sum().item()
        correct_l1 += (preds_l1 == labels_l1).sum().item()
        total += labels_fine.size(0)
    
    n = len(loader)
    return {
        'loss': total_loss / n,
        'components': {k: v / n for k, v in loss_components.items()},
        'acc_fine': correct_fine / total,
        'acc_l1': correct_l1 / total,
    }


@torch.no_grad()
def evaluate(model, loader, device):
    """Evaluate at all hierarchy levels."""
    model.eval()
    correct_fine = 0
    correct_l1 = 0
    correct_l2 = 0
    total = 0
    total_vuln = 0
    
    all_preds_fine = []
    all_labels_fine = []
    all_preds_l1 = []
    all_labels_l1 = []
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        edge_index = batch['edge_index'].to(device)
        edge_type = batch['edge_type'].to(device)
        edge_weight = batch['edge_weight'].to(device)
        node_mask = batch['node_mask'].to(device)
        edge_mask = batch['edge_mask'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        
        labels_fine = batch['label_fine'].to(device)
        labels_l1 = batch['label_l1'].to(device)
        labels_l2 = batch['label_l2'].to(device)
        
        l1_logits, l2_logits, l3_dict, fine_logits, _ = model(
            node_features, edge_index, edge_type, node_mask,
            handcrafted, edge_mask, edge_weight,
            return_all_levels=True, return_projection=False
        )
        
        preds_fine = fine_logits.argmax(dim=1)
        preds_l1 = l1_logits.argmax(dim=1)
        preds_l2 = l2_logits.argmax(dim=1)
        
        correct_fine += (preds_fine == labels_fine).sum().item()
        correct_l1 += (preds_l1 == labels_l1).sum().item()
        
        # L2 accuracy (only for VULNERABLE samples)
        vuln_mask = labels_l1 == 1
        if vuln_mask.sum() > 0:
            correct_l2 += (preds_l2[vuln_mask] == labels_l2[vuln_mask]).sum().item()
            total_vuln += vuln_mask.sum().item()
        
        total += labels_fine.size(0)
        
        all_preds_fine.extend(preds_fine.cpu().tolist())
        all_labels_fine.extend(labels_fine.cpu().tolist())
        all_preds_l1.extend(preds_l1.cpu().tolist())
        all_labels_l1.extend(labels_l1.cpu().tolist())
    
    return {
        'acc_fine': correct_fine / total,
        'acc_l1': correct_l1 / total,
        'acc_l2': correct_l2 / total_vuln if total_vuln > 0 else 0,
        'preds_fine': all_preds_fine,
        'labels_fine': all_labels_fine,
        'preds_l1': all_preds_l1,
        'labels_l1': all_labels_l1,
    }


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description="V36: Hierarchical GINE Classifier")
    parser.add_argument('--data', type=str, default='data/features/combined_v25_real_benign.jsonl')
    parser.add_argument('--output-dir', type=str, default='viz_v36_hierarchical')
    parser.add_argument('--epochs', type=int, default=100)
    parser.add_argument('--patience', type=int, default=20)
    parser.add_argument('--hidden-dim', type=int, default=256)
    parser.add_argument('--num-layers', type=int, default=4)
    parser.add_argument('--batch-size', type=int, default=32)
    parser.add_argument('--lr', type=float, default=0.001)
    parser.add_argument('--weight-decay', type=float, default=1e-4)
    parser.add_argument('--dropout', type=float, default=0.3)
    parser.add_argument('--lambda-con', type=float, default=0.3)
    parser.add_argument('--grad-accum', type=int, default=2)
    parser.add_argument('--speculative-window', type=int, default=10)
    args = parser.parse_args()
    
    output_dir = Path(args.output_dir)
    output_dir.mkdir(exist_ok=True)
    
    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print("V36: HIERARCHICAL GINE CLASSIFIER")
    print("=" * 70)
    print()
    print("Hierarchy:")
    print("  Level 1: BENIGN vs VULNERABLE")
    print("  Level 2: INDIRECT_BRANCH | RETURN_BASED | CACHE_MEMORY")
    print("  Level 3:")
    print(f"    INDIRECT_BRANCH: {LEVEL3_INDIRECT_BRANCH}")
    print(f"    RETURN_BASED: {LEVEL3_RETURN_BASED}")
    print(f"    CACHE_MEMORY: {LEVEL3_CACHE_MEMORY}")
    print()
    print(f"Architecture:")
    print(f"  GINE layers: {args.num_layers}")
    print(f"  Hidden dim: {args.hidden_dim}")
    print(f"  Dropout: {args.dropout}")
    print()
    
    # Load data
    print(f"Loading data from {args.data}...")
    records = []
    with open(args.data) as f:
        for line in f:
            rec = json.loads(line)
            if rec.get('label') in ALL_FINE_CLASSES:
                records.append(rec)
    print(f"  Loaded {len(records)} records")
    
    # Label distribution
    print("\nLabel distribution:")
    label_counts = Counter(r['label'] for r in records)
    for label in ALL_FINE_CLASSES:
        print(f"  {label}: {label_counts.get(label, 0)}")
    
    # Get feature names
    sample_features = records[0].get('features', {})
    handcrafted_feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float))
    ])
    print(f"\nHandcrafted features: {len(handcrafted_feature_names)}")
    
    # Split
    print("\nSplitting train/test...")
    train_records, test_records = train_test_split(
        records, test_size=0.2, random_state=42,
        stratify=[r['label'] for r in records]
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")
    
    # Create datasets
    print("\nCreating datasets...")
    train_dataset = HierarchicalGINEDataset(
        train_records, handcrafted_feature_names,
        speculative_window=args.speculative_window
    )
    test_dataset = HierarchicalGINEDataset(
        test_records, handcrafted_feature_names,
        speculative_window=args.speculative_window
    )
    
    train_loader = DataLoader(
        train_dataset, batch_size=args.batch_size, shuffle=True,
        collate_fn=collate_fn, num_workers=0
    )
    test_loader = DataLoader(
        test_dataset, batch_size=args.batch_size, shuffle=False,
        collate_fn=collate_fn, num_workers=0
    )
    
    # Initialize model
    print("\nInitializing hierarchical model...")
    model = HierarchicalGINEClassifier(
        node_feat_dim=NODE_FEATURE_DIM,
        hidden_dim=args.hidden_dim,
        num_layers=args.num_layers,
        handcrafted_dim=len(handcrafted_feature_names),
        dropout=args.dropout,
    ).to(DEVICE)
    
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"  Total parameters: {total_params:,}")
    print(f"  Trainable parameters: {trainable_params:,}")
    
    # Loss and optimizer
    hier_loss = HierarchicalLoss(alpha1=0.2, alpha2=0.3, alpha3=0.4, beta=0.1)
    con_criterion = SupervisedContrastiveLoss(temperature=0.07)
    optimizer = optim.AdamW(model.parameters(), lr=args.lr, weight_decay=args.weight_decay)
    scheduler = optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=args.epochs)
    
    # Training
    print()
    print("=" * 70)
    print("TRAINING")
    print("=" * 70)
    
    best_acc = 0
    best_epoch = 0
    patience_counter = 0
    history = {'train_acc': [], 'test_acc': [], 'test_l1': [], 'test_l2': []}
    
    for epoch in range(1, args.epochs + 1):
        t0 = time.time()
        
        train_metrics = train_epoch(
            model, train_loader, optimizer, hier_loss, con_criterion,
            DEVICE, args.lambda_con, args.grad_accum
        )
        
        test_metrics = evaluate(model, test_loader, DEVICE)
        
        scheduler.step()
        
        elapsed = time.time() - t0
        lr = scheduler.get_last_lr()[0]
        
        history['train_acc'].append(train_metrics['acc_fine'])
        history['test_acc'].append(test_metrics['acc_fine'])
        history['test_l1'].append(test_metrics['acc_l1'])
        history['test_l2'].append(test_metrics['acc_l2'])
        
        is_best = test_metrics['acc_fine'] > best_acc
        if is_best:
            best_acc = test_metrics['acc_fine']
            best_epoch = epoch
            patience_counter = 0
            torch.save(model.state_dict(), output_dir / 'best_model.pt')
        else:
            patience_counter += 1
        
        print(f"Epoch {epoch:3d}/{args.epochs} | "
              f"Loss: {train_metrics['loss']:.4f} | "
              f"Train: {train_metrics['acc_fine']:.3f} | "
              f"Test: {test_metrics['acc_fine']:.3f} (L1: {test_metrics['acc_l1']:.3f}, L2: {test_metrics['acc_l2']:.3f}) | "
              f"LR: {lr:.2e} | {elapsed:.1f}s" +
              (" *BEST*" if is_best else ""))
        
        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch}")
            break
    
    # Final evaluation
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)
    
    model.load_state_dict(torch.load(output_dir / 'best_model.pt'))
    final_metrics = evaluate(model, test_loader, DEVICE)
    
    print(f"\nBest model from epoch {best_epoch}")
    print(f"  Level 1 accuracy (BENIGN vs VULNERABLE): {final_metrics['acc_l1']:.4f}")
    print(f"  Level 2 accuracy (Superclass): {final_metrics['acc_l2']:.4f}")
    print(f"  Fine-grained accuracy: {final_metrics['acc_fine']:.4f}")
    
    # Classification report
    print("\nFine-grained Classification Report:")
    target_names = ALL_FINE_CLASSES
    print(classification_report(
        final_metrics['labels_fine'],
        final_metrics['preds_fine'],
        target_names=target_names
    ))
    
    # Confusion matrix
    cm = confusion_matrix(final_metrics['labels_fine'], final_metrics['preds_fine'])
    
    fig, ax = plt.subplots(figsize=(12, 10))
    im = ax.imshow(cm, cmap='Blues')
    ax.set_xticks(range(len(target_names)))
    ax.set_yticks(range(len(target_names)))
    ax.set_xticklabels(target_names, rotation=45, ha='right', fontsize=9)
    ax.set_yticklabels(target_names, fontsize=9)
    ax.set_xlabel('Predicted')
    ax.set_ylabel('True')
    ax.set_title('V36 Hierarchical GINE - Confusion Matrix')
    
    for i in range(len(target_names)):
        for j in range(len(target_names)):
            val = cm[i, j]
            color = 'white' if val > cm.max() / 2 else 'black'
            ax.text(j, i, str(val), ha='center', va='center', color=color, fontsize=8)
    
    plt.colorbar(im)
    plt.tight_layout()
    plt.savefig(output_dir / 'confusion_matrix.png', dpi=150)
    plt.close()
    
    # Training history
    fig, axes = plt.subplots(1, 2, figsize=(14, 5))
    
    axes[0].plot(history['train_acc'], label='Train')
    axes[0].plot(history['test_acc'], label='Test')
    axes[0].set_xlabel('Epoch')
    axes[0].set_ylabel('Fine-grained Accuracy')
    axes[0].set_title('Classification Accuracy')
    axes[0].legend()
    axes[0].grid(True, alpha=0.3)
    
    axes[1].plot(history['test_l1'], label='L1 (Benign/Vuln)')
    axes[1].plot(history['test_l2'], label='L2 (Superclass)')
    axes[1].plot(history['test_acc'], label='Fine-grained')
    axes[1].set_xlabel('Epoch')
    axes[1].set_ylabel('Test Accuracy')
    axes[1].set_title('Hierarchical Level Accuracies')
    axes[1].legend()
    axes[1].grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_dir / 'training_history.png', dpi=150)
    plt.close()
    
    print(f"\nResults saved to: {output_dir}/")
    print(f"\nBest fine-grained accuracy: {best_acc:.4f}")


if __name__ == "__main__":
    main()
