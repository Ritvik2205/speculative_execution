#!/usr/bin/env python3
"""
V31: GGNN-BiLSTM with FROZEN Encoder after Contrastive Pre-training

Key difference from V29:
- After contrastive pre-training, FREEZE the encoder completely
- Only train the classifier head during fine-tuning
- Preserves the learned contrastive representations

Architecture: Same as V28 (edge-type attention GGNN-BiLSTM)
"""

import argparse
import json
import pickle
import sys
import time
from pathlib import Path
from collections import defaultdict, Counter
from typing import List, Dict, Tuple, Optional
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

from pdg_builder import PDGBuilder
from ggnn_bilstm_v28 import HybridGGNNBiLSTMv28


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
MAX_NODES = 64
NODE_FEATURE_DIM = 34

CONFUSED_CLASS_NAMES = [
    ('L1TF', 'SPECTRE_V1'),
    ('RETBLEED', 'INCEPTION'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('INCEPTION', 'BRANCH_HISTORY_INJECTION'),
]


# =============================================================================
# SUPERVISED CONTRASTIVE LOSS
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    """SupCon loss with hard negative mining"""
    
    def __init__(
        self, 
        temperature: float = 0.07,
        hard_negative_weight: float = 2.0,
        confused_pairs: Optional[List[Tuple[int, int]]] = None,
    ):
        super().__init__()
        self.temperature = temperature
        self.hard_negative_weight = hard_negative_weight
        self.confused_pairs = confused_pairs or []
    
    def forward(self, features: torch.Tensor, labels: torch.Tensor) -> torch.Tensor:
        device = features.device
        batch_size = features.shape[0]
        
        features = F.normalize(features, p=2, dim=1)
        
        labels_col = labels.contiguous().view(-1, 1)
        mask_pos = torch.eq(labels_col, labels_col.T).float().to(device)
        
        similarity_matrix = torch.matmul(features, features.T) / self.temperature
        
        logits_max, _ = torch.max(similarity_matrix, dim=1, keepdim=True)
        logits = similarity_matrix - logits_max.detach()
        
        logits_mask = torch.scatter(
            torch.ones_like(mask_pos), 1,
            torch.arange(batch_size).view(-1, 1).to(device), 0
        )
        mask_pos = mask_pos * logits_mask
        
        hard_neg_mask = torch.ones_like(mask_pos)
        for (c1, c2) in self.confused_pairs:
            is_c1 = (labels == c1).float().unsqueeze(1)
            is_c2 = (labels == c2).float().unsqueeze(0)
            hard_neg_mask = hard_neg_mask + (is_c1 * is_c2 + is_c1.T * is_c2.T) * (self.hard_negative_weight - 1)
        
        exp_logits = torch.exp(logits) * logits_mask * hard_neg_mask
        log_prob = logits - torch.log(exp_logits.sum(1, keepdim=True) + 1e-8)
        
        mean_log_prob_pos = (mask_pos * log_prob).sum(1) / (mask_pos.sum(1) + 1e-8)
        loss = -mean_log_prob_pos.mean()
        
        return loss


# =============================================================================
# MODEL WITH SEPARATE ENCODER AND CLASSIFIER
# =============================================================================

class V31Model(nn.Module):
    """V28 model with explicit encoder/classifier separation for freezing"""
    
    def __init__(
        self,
        node_feature_dim: int = 34,
        ggnn_hidden_dim: int = 64,
        ggnn_steps: int = 4,
        attention_heads: int = 4,
        lstm_hidden_dim: int = 128,
        lstm_layers: int = 2,
        num_classes: int = 9,
        handcrafted_dim: int = 193,
        projection_dim: int = 128,
        dropout: float = 0.2,
    ):
        super().__init__()
        
        # Store dimensions
        self.lstm_hidden_dim = lstm_hidden_dim
        self.handcrafted_dim = handcrafted_dim
        self.use_handcrafted = handcrafted_dim > 0
        
        # Import components from V28
        from ggnn_bilstm_v28 import EdgeTypeAttentionGGNN, BiLSTMEncoder
        
        # ENCODER PART (will be frozen after contrastive pre-training)
        self.ggnn = EdgeTypeAttentionGGNN(
            input_dim=node_feature_dim,
            hidden_dim=ggnn_hidden_dim,
            num_steps=ggnn_steps,
            num_edge_types=2,
            attention_heads=attention_heads,
            dropout=dropout,
        )
        
        self.bilstm = BiLSTMEncoder(
            input_dim=ggnn_hidden_dim,
            hidden_dim=lstm_hidden_dim,
            num_layers=lstm_layers,
            dropout=dropout,
        )
        
        self.attention = nn.Sequential(
            nn.Linear(lstm_hidden_dim, 64),
            nn.Tanh(),
            nn.Linear(64, 1),
        )
        
        if self.use_handcrafted:
            self.handcrafted_encoder = nn.Sequential(
                nn.Linear(handcrafted_dim, 128),
                nn.ReLU(),
                nn.Dropout(dropout),
                nn.Linear(128, 64),
                nn.ReLU(),
            )
            combined_dim = lstm_hidden_dim + 64
        else:
            self.handcrafted_encoder = None
            combined_dim = lstm_hidden_dim
        
        # Projection head for contrastive learning
        self.projection_head = nn.Sequential(
            nn.Linear(combined_dim, combined_dim),
            nn.ReLU(),
            nn.Linear(combined_dim, projection_dim),
        )
        
        # CLASSIFIER (will be trained separately after encoder is frozen)
        self.classifier = nn.Sequential(
            nn.Linear(combined_dim, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(128, 64),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(64, num_classes),
        )
        
        self.combined_dim = combined_dim
        
    def _get_representation(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
        handcrafted_features: torch.Tensor,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        """Get the encoder representation (before projection/classifier)"""
        batch_size, max_nodes, _ = node_features.shape
        
        # GGNN
        h_ggnn, edge_attn = self.ggnn(node_features, adj_data, adj_control, node_mask)
        
        # Reorder by topo
        idx = topo_order.unsqueeze(-1).expand(-1, -1, h_ggnn.size(-1))
        h_ordered = torch.gather(h_ggnn, 1, idx)
        
        # BiLSTM
        h_lstm_all, h_lstm_final = self.bilstm(h_ordered, seq_lengths)
        
        # Attention pooling
        lstm_seq_len = h_lstm_all.size(1)
        positions = torch.arange(lstm_seq_len, device=seq_lengths.device).unsqueeze(0)
        attn_mask = positions < seq_lengths.unsqueeze(1)
        
        attn_scores = self.attention(h_lstm_all).squeeze(-1)
        attn_scores = attn_scores.masked_fill(~attn_mask, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=-1)
        attn_weights = torch.nan_to_num(attn_weights, nan=0.0)
        
        h_pooled = torch.bmm(attn_weights.unsqueeze(1), h_lstm_all).squeeze(1)
        h_combined = h_pooled + h_lstm_final
        
        # Handcrafted features
        if self.use_handcrafted and handcrafted_features is not None:
            h_handcrafted = self.handcrafted_encoder(handcrafted_features)
            h_final = torch.cat([h_combined, h_handcrafted], dim=-1)
        else:
            h_final = h_combined
        
        return h_final, edge_attn
    
    def forward_contrastive(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
        handcrafted_features: torch.Tensor,
    ) -> torch.Tensor:
        """Forward pass for contrastive pre-training"""
        h_final, _ = self._get_representation(
            node_features, adj_data, adj_control, topo_order,
            node_mask, seq_lengths, handcrafted_features
        )
        projection = self.projection_head(h_final)
        return projection
    
    def forward_classification(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
        handcrafted_features: torch.Tensor,
        return_attention: bool = False,
    ) -> torch.Tensor:
        """Forward pass for classification"""
        h_final, edge_attn = self._get_representation(
            node_features, adj_data, adj_control, topo_order,
            node_mask, seq_lengths, handcrafted_features
        )
        logits = self.classifier(h_final)
        
        if return_attention:
            return logits, edge_attn
        return logits
    
    def freeze_encoder(self):
        """Freeze all encoder parameters"""
        for param in self.ggnn.parameters():
            param.requires_grad = False
        for param in self.bilstm.parameters():
            param.requires_grad = False
        for param in self.attention.parameters():
            param.requires_grad = False
        if self.handcrafted_encoder is not None:
            for param in self.handcrafted_encoder.parameters():
                param.requires_grad = False
        for param in self.projection_head.parameters():
            param.requires_grad = False
        
        print("  Encoder frozen! Only classifier will be trained.")
        
        # Count trainable params
        trainable = sum(p.numel() for p in self.parameters() if p.requires_grad)
        total = sum(p.numel() for p in self.parameters())
        print(f"  Trainable parameters: {trainable:,} / {total:,} ({100*trainable/total:.1f}%)")
    
    def unfreeze_encoder(self):
        """Unfreeze all encoder parameters"""
        for param in self.parameters():
            param.requires_grad = True


# =============================================================================
# DATASET
# =============================================================================

class PDGDataset(Dataset):
    def __init__(
        self,
        records: List[Dict],
        label_to_id: Dict[str, int],
        handcrafted_feature_names: List[str],
        max_nodes: int = MAX_NODES,
        speculative_window: int = 10,
    ):
        self.label_to_id = label_to_id
        self.handcrafted_feature_names = handcrafted_feature_names
        self.max_nodes = max_nodes
        self.pdg_builder = PDGBuilder(speculative_window=speculative_window)
        
        print("Pre-computing PDGs...")
        self.data = []
        for rec in tqdm(records, desc="Building PDGs"):
            item = self._process_record(rec)
            if item is not None:
                self.data.append(item)
        print(f"  Valid samples: {len(self.data)}/{len(records)}")
    
    def _process_record(self, rec: Dict) -> Optional[Dict]:
        sequence = rec.get('sequence', [])
        if len(sequence) < 3:
            return None
        
        label = rec.get('label', 'UNKNOWN')
        if label not in self.label_to_id:
            return None
        
        pdg = self.pdg_builder.build(sequence)
        if len(pdg.nodes) < 2:
            return None
        
        n_nodes = min(len(pdg.nodes), self.max_nodes)
        node_features = pdg.get_node_features(self.max_nodes)
        adj_data, adj_control = pdg.get_adjacency_matrices(self.max_nodes)
        
        topo = pdg.topological_order()
        topo_filtered = [t for t in topo if t < self.max_nodes]
        topo_padded = np.arange(self.max_nodes, dtype=np.int64)
        for i, t in enumerate(topo_filtered[:self.max_nodes]):
            topo_padded[i] = t
        
        node_mask = np.zeros(self.max_nodes, dtype=bool)
        node_mask[:n_nodes] = True
        
        rec_features = rec.get('features', {})
        handcrafted = np.zeros(len(self.handcrafted_feature_names), dtype=np.float32)
        for i, name in enumerate(self.handcrafted_feature_names):
            val = rec_features.get(name, 0.0)
            if isinstance(val, (int, float)) and np.isfinite(val):
                handcrafted[i] = np.clip(val, -100, 100)
        
        return {
            'node_features': node_features,
            'adj_data': adj_data,
            'adj_control': adj_control,
            'topo_order': topo_padded,
            'node_mask': node_mask,
            'seq_length': n_nodes,
            'handcrafted': handcrafted,
            'label': self.label_to_id[label],
        }
    
    def __len__(self):
        return len(self.data)
    
    def __getitem__(self, idx):
        item = self.data[idx]
        return {
            'node_features': torch.from_numpy(item['node_features']),
            'adj_data': torch.from_numpy(item['adj_data']),
            'adj_control': torch.from_numpy(item['adj_control']),
            'topo_order': torch.from_numpy(item['topo_order']),
            'node_mask': torch.from_numpy(item['node_mask']),
            'seq_length': torch.tensor(item['seq_length'], dtype=torch.long),
            'handcrafted': torch.from_numpy(item['handcrafted']),
            'label': item['label'],
        }


def collate_fn(batch):
    return {
        'node_features': torch.stack([x['node_features'] for x in batch]),
        'adj_data': torch.stack([x['adj_data'] for x in batch]),
        'adj_control': torch.stack([x['adj_control'] for x in batch]),
        'topo_order': torch.stack([x['topo_order'] for x in batch]),
        'node_mask': torch.stack([x['node_mask'] for x in batch]),
        'seq_length': torch.stack([x['seq_length'] for x in batch]),
        'handcrafted': torch.stack([x['handcrafted'] for x in batch]),
        'label': torch.tensor([x['label'] for x in batch], dtype=torch.long),
    }


# =============================================================================
# TRAINING FUNCTIONS
# =============================================================================

def train_contrastive_epoch(model, loader, optimizer, criterion, device, grad_accum):
    model.train()
    total_loss = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        projections = model.forward_contrastive(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted
        )
        
        loss = criterion(projections, labels)
        loss = loss / grad_accum
        
        loss.backward()
        
        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * grad_accum
    
    return total_loss / len(loader)


def train_classification_epoch(model, loader, optimizer, criterion, device, grad_accum):
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    optimizer.zero_grad()
    
    for i, batch in enumerate(loader):
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        logits = model.forward_classification(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted
        )
        
        loss = criterion(logits, labels)
        loss = loss / grad_accum
        
        loss.backward()
        
        if (i + 1) % grad_accum == 0:
            torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
            optimizer.step()
            optimizer.zero_grad()
        
        total_loss += loss.item() * grad_accum
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
    
    return total_loss / len(loader), correct / total


@torch.no_grad()
def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        logits = model.forward_classification(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted
        )
        
        preds = logits.argmax(dim=1)
        correct += (preds == labels).sum().item()
        total += labels.size(0)
        
        all_preds.extend(preds.cpu().tolist())
        all_labels.extend(labels.cpu().tolist())
    
    return correct / total, all_preds, all_labels


@torch.no_grad()
def analyze_edge_attention(model, loader, label_names, device, viz_dir):
    model.eval()
    class_data_attn = defaultdict(list)
    class_ctrl_attn = defaultdict(list)
    
    for batch in loader:
        node_features = batch['node_features'].to(device)
        adj_data = batch['adj_data'].to(device)
        adj_control = batch['adj_control'].to(device)
        topo_order = batch['topo_order'].to(device)
        node_mask = batch['node_mask'].to(device)
        seq_lengths = batch['seq_length'].to(device)
        handcrafted = batch['handcrafted'].to(device)
        labels = batch['label'].to(device)
        
        _, edge_attn = model.forward_classification(
            node_features, adj_data, adj_control,
            topo_order, node_mask, seq_lengths, handcrafted,
            return_attention=True
        )
        
        mean_attn = edge_attn.mean(dim=(0, 2))
        
        for i, label_id in enumerate(labels.cpu().tolist()):
            class_data_attn[label_id].append(mean_attn[i, 0].item())
            class_ctrl_attn[label_id].append(mean_attn[i, 1].item())
    
    print("\n  Edge-type attention per class:")
    print(f"  {'Class':<30} {'Data Deps':>12} {'Ctrl Deps':>12}")
    print("  " + "-" * 56)
    
    data_means, ctrl_means, class_names_ordered = [], [], []
    attn_data = {'classes': {}}
    
    for class_id in sorted(class_data_attn.keys()):
        class_name = label_names[class_id]
        data_mean = np.mean(class_data_attn[class_id])
        ctrl_mean = np.mean(class_ctrl_attn[class_id])
        
        print(f"  {class_name:<30} {data_mean:>12.3f} {ctrl_mean:>12.3f}")
        
        attn_data['classes'][class_name] = {
            'data_dependency': float(data_mean),
            'control_dependency': float(ctrl_mean),
        }
        
        data_means.append(data_mean)
        ctrl_means.append(ctrl_mean)
        class_names_ordered.append(class_name)
    
    with open(viz_dir / 'edge_type_attention.json', 'w') as f:
        json.dump(attn_data, f, indent=2)
    
    fig, ax = plt.subplots(figsize=(12, 6))
    x = np.arange(len(class_names_ordered))
    width = 0.35
    ax.bar(x - width/2, data_means, width, label='Data Dependencies', color='#2ecc71')
    ax.bar(x + width/2, ctrl_means, width, label='Control Dependencies', color='#e74c3c')
    ax.set_ylabel('Attention Weight')
    ax.set_title('V31: Edge-Type Attention (Frozen Encoder)')
    ax.set_xticks(x)
    ax.set_xticklabels(class_names_ordered, rotation=45, ha='right')
    ax.legend()
    ax.set_ylim(0, 1)
    plt.tight_layout()
    plt.savefig(viz_dir / 'edge_type_attention.png', dpi=150)
    plt.close()


def plot_confusion_matrix(y_true, y_pred, labels, title, output_path):
    cm = confusion_matrix(y_true, y_pred)
    fig, ax = plt.subplots(figsize=(12, 10))
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


def plot_training_history(history, output_path):
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))
    
    ax = axes[0, 0]
    ax.plot(history['contrastive_loss'], 'r-', label='Contrastive Loss')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.set_title('Stage 1: Contrastive Pre-training')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    ax = axes[0, 1]
    ax.plot(history['classification_loss'], 'b-', label='Classification Loss')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Loss')
    ax.set_title('Stage 2: Classification (Frozen Encoder)')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    ax = axes[1, 0]
    ax.plot(history['train_acc'], 'b-', label='Train Acc')
    ax.plot(history['test_acc'], 'r-', label='Test Acc')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Accuracy')
    ax.set_title('Classification Accuracy')
    ax.legend()
    ax.grid(True, alpha=0.3)
    
    ax = axes[1, 1]
    ax.plot(history['lr'], 'g-')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Learning Rate')
    ax.set_title('Learning Rate Schedule')
    ax.grid(True, alpha=0.3)
    ax.set_yscale('log')
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150)
    plt.close()


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V31: Frozen Encoder after Contrastive')
    parser.add_argument('--data', type=str, default='data/features/combined_v22_enhanced.jsonl')
    parser.add_argument('--output-dir', type=str, default='models/ggnn_bilstm_v31')
    parser.add_argument('--viz-dir', type=str, default='viz_v31_ggnn_bilstm')
    parser.add_argument('--contrastive-epochs', type=int, default=20)
    parser.add_argument('--classification-epochs', type=int, default=50)
    parser.add_argument('--patience', type=int, default=15)
    parser.add_argument('--temperature', type=float, default=0.07)
    parser.add_argument('--hard-neg-weight', type=float, default=2.0)
    parser.add_argument('--ggnn-hidden', type=int, default=64)
    parser.add_argument('--ggnn-steps', type=int, default=4)
    parser.add_argument('--attention-heads', type=int, default=4)
    parser.add_argument('--lstm-hidden', type=int, default=128)
    parser.add_argument('--lstm-layers', type=int, default=2)
    parser.add_argument('--batch-size', type=int, default=64)
    parser.add_argument('--lr', type=float, default=1e-3)
    parser.add_argument('--contrastive-lr', type=float, default=5e-4)
    parser.add_argument('--dropout', type=float, default=0.2)
    parser.add_argument('--grad-accum', type=int, default=2)
    
    args = parser.parse_args()
    
    print(f"Using device: {DEVICE}")
    print()
    print("=" * 70)
    print("V31: GGNN-BiLSTM with FROZEN Encoder after Contrastive Pre-training")
    print("=" * 70)
    print()
    print("Training Strategy:")
    print(f"  Stage 1: Contrastive pre-training ({args.contrastive_epochs} epochs)")
    print(f"  Stage 2: FREEZE encoder, train classifier only ({args.classification_epochs} epochs)")
    print()
    
    output_dir = Path(args.output_dir)
    viz_dir = Path(args.viz_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    viz_dir.mkdir(parents=True, exist_ok=True)
    
    # Load data
    print(f"Loading data from {args.data}...")
    records = []
    with open(args.data) as f:
        for line in f:
            if line.strip():
                records.append(json.loads(line))
    print(f"  Loaded {len(records)} records")
    
    label_counts = Counter(r.get('label', 'UNKNOWN') for r in records)
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        print(f"  {label}: {count}")
    
    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"\nAfter filtering: {len(records)} records")
    
    unique_labels = sorted(set(r['label'] for r in records))
    label_to_id = {label: i for i, label in enumerate(unique_labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}
    num_classes = len(unique_labels)
    print(f"Number of classes: {num_classes}")
    
    confused_pairs = []
    for name1, name2 in CONFUSED_CLASS_NAMES:
        if name1 in label_to_id and name2 in label_to_id:
            confused_pairs.append((label_to_id[name1], label_to_id[name2]))
            print(f"  Hard negative pair: {name1} ↔ {name2}")
    
    sample_features = records[0].get('features', {})
    feature_names = sorted([
        k for k, v in sample_features.items()
        if isinstance(v, (int, float)) and k not in ['sequence', 'label']
    ])
    handcrafted_dim = len(feature_names)
    print(f"Handcrafted features: {handcrafted_dim}")
    
    # Split
    print("\nSplitting train/test...")
    labels = [r['label'] for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")
    
    # Datasets
    print("\nCreating datasets...")
    train_dataset = PDGDataset(train_records, label_to_id, feature_names)
    test_dataset = PDGDataset(test_records, label_to_id, feature_names)
    
    train_loader = DataLoader(train_dataset, batch_size=args.batch_size, shuffle=True,
                              collate_fn=collate_fn, num_workers=0)
    test_loader = DataLoader(test_dataset, batch_size=args.batch_size, shuffle=False,
                             collate_fn=collate_fn, num_workers=0)
    
    # Model
    print("\nInitializing V31 model...")
    model = V31Model(
        node_feature_dim=NODE_FEATURE_DIM,
        ggnn_hidden_dim=args.ggnn_hidden,
        ggnn_steps=args.ggnn_steps,
        attention_heads=args.attention_heads,
        lstm_hidden_dim=args.lstm_hidden,
        lstm_layers=args.lstm_layers,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        dropout=args.dropout,
    ).to(DEVICE)
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"  Total parameters: {total_params:,}")
    
    history = {
        'contrastive_loss': [],
        'classification_loss': [],
        'train_acc': [],
        'test_acc': [],
        'lr': [],
    }
    
    # =================================================================
    # STAGE 1: CONTRASTIVE PRE-TRAINING
    # =================================================================
    print()
    print("=" * 70)
    print("STAGE 1: CONTRASTIVE PRE-TRAINING (Full Model)")
    print("=" * 70)
    
    con_criterion = SupervisedContrastiveLoss(
        temperature=args.temperature,
        hard_negative_weight=args.hard_neg_weight,
        confused_pairs=confused_pairs,
    )
    
    con_optimizer = optim.AdamW(model.parameters(), lr=args.contrastive_lr, weight_decay=1e-4)
    con_scheduler = optim.lr_scheduler.CosineAnnealingLR(con_optimizer, T_max=args.contrastive_epochs)
    
    for epoch in range(1, args.contrastive_epochs + 1):
        start_time = time.time()
        
        con_loss = train_contrastive_epoch(
            model, train_loader, con_optimizer, con_criterion,
            DEVICE, args.grad_accum
        )
        
        con_scheduler.step()
        
        elapsed = time.time() - start_time
        lr = con_optimizer.param_groups[0]['lr']
        
        history['contrastive_loss'].append(con_loss)
        
        print(f"Contrastive Epoch {epoch:2d}/{args.contrastive_epochs} | "
              f"Loss: {con_loss:.4f} | LR: {lr:.2e} | {elapsed:.1f}s")
    
    # Save encoder checkpoint
    torch.save(model.state_dict(), output_dir / 'encoder_pretrained.pt')
    print("\nEncoder pre-training complete. Saved to encoder_pretrained.pt")
    
    # =================================================================
    # STAGE 2: CLASSIFICATION (FROZEN ENCODER)
    # =================================================================
    print()
    print("=" * 70)
    print("STAGE 2: CLASSIFICATION (Frozen Encoder, Only Classifier Trained)")
    print("=" * 70)
    
    # Freeze encoder
    model.freeze_encoder()
    
    # Only optimize classifier parameters
    classifier_params = model.classifier.parameters()
    
    class_counts = Counter(r['label'] for r in train_records)
    total = sum(class_counts.values())
    class_weights = torch.tensor([
        total / (num_classes * class_counts.get(id_to_label[i], 1))
        for i in range(num_classes)
    ], dtype=torch.float32).to(DEVICE)
    
    ce_criterion = nn.CrossEntropyLoss(weight=class_weights)
    
    class_optimizer = optim.AdamW(classifier_params, lr=args.lr, weight_decay=1e-4)
    class_scheduler = optim.lr_scheduler.CosineAnnealingWarmRestarts(class_optimizer, T_0=10, T_mult=2)
    
    best_test_acc = 0
    patience_counter = 0
    
    for epoch in range(1, args.classification_epochs + 1):
        start_time = time.time()
        
        train_loss, train_acc = train_classification_epoch(
            model, train_loader, class_optimizer, ce_criterion,
            DEVICE, args.grad_accum
        )
        
        test_acc, _, _ = evaluate(model, test_loader, DEVICE)
        
        class_scheduler.step()
        
        elapsed = time.time() - start_time
        lr = class_optimizer.param_groups[0]['lr']
        
        history['classification_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['test_acc'].append(test_acc)
        history['lr'].append(lr)
        
        improved = test_acc > best_test_acc
        status = ""
        if improved:
            best_test_acc = test_acc
            patience_counter = 0
            status = "[BEST]"
            torch.save(model.state_dict(), output_dir / 'model_best.pt')
        else:
            patience_counter += 1
            status = "[PLATEAU]"
        
        print(f"Epoch {epoch:2d}/{args.classification_epochs} | Loss: {train_loss:.4f} | "
              f"Train: {train_acc:.4f} | Test: {test_acc:.4f} | LR: {lr:.2e} | {elapsed:.1f}s {status}")
        
        if patience_counter >= args.patience:
            print(f"\nEarly stopping at epoch {epoch}")
            break
    
    # Final evaluation
    print(f"\nLoading best model (test acc: {best_test_acc:.4f})...")
    model.load_state_dict(torch.load(output_dir / 'model_best.pt'))
    
    print()
    print("=" * 70)
    print("FINAL EVALUATION")
    print("=" * 70)
    
    train_acc, train_preds, train_labels = evaluate(model, train_loader, DEVICE)
    test_acc, test_preds, test_labels = evaluate(model, test_loader, DEVICE)
    
    print(f"\nTrain Accuracy: {train_acc:.4f}")
    print(f"Test Accuracy:  {test_acc:.4f}")
    
    print("\nTest Set Classification Report:")
    print(classification_report(test_labels, test_preds, target_names=unique_labels, digits=4))
    
    # Visualizations
    print("\nGenerating visualizations...")
    plot_confusion_matrix(train_labels, train_preds, unique_labels,
                          f'V31 Train Confusion (Acc: {train_acc:.4f})',
                          viz_dir / 'confusion_matrix_train.png')
    plot_confusion_matrix(test_labels, test_preds, unique_labels,
                          f'V31 Test Confusion (Acc: {test_acc:.4f})',
                          viz_dir / 'confusion_matrix_test.png')
    plot_training_history(history, viz_dir / 'training_history.png')
    
    print("\nAnalyzing edge-type attention...")
    analyze_edge_attention(model, test_loader, unique_labels, DEVICE, viz_dir)
    
    # Save
    torch.save(model.state_dict(), output_dir / 'model_final.pt')
    with open(output_dir / 'label_map.json', 'w') as f:
        json.dump(label_to_id, f)
    
    metrics = {
        'train_accuracy': train_acc,
        'test_accuracy': test_acc,
        'best_test_accuracy': best_test_acc,
        'contrastive_epochs': args.contrastive_epochs,
        'classification_epochs': len(history['classification_loss']),
        'total_params': total_params,
    }
    with open(output_dir / 'metrics.json', 'w') as f:
        json.dump(metrics, f, indent=2)
    
    print()
    print("=" * 70)
    print("TRAINING COMPLETE")
    print("=" * 70)
    print(f"Best Test Accuracy: {best_test_acc:.4f}")
    print(f"Model saved to: {output_dir}")


if __name__ == '__main__':
    main()
