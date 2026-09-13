#!/usr/bin/env python3
"""
GINE Classifier v37 — Hierarchical Coarse-to-Fine with Attention Readout

Builds on v35d (attention readout) and adds:
1. Hierarchical classification: coarse (5-class mechanism groups) + fine (9-class)
2. Binary head for curriculum learning phase 1
3. All GINE message passing unchanged (sum aggregation, WL-equivalent)

Coarse groups:
  Group 0: BENIGN
  Group 1: L1TF + SPECTRE_V1       (cache-timing speculation)
  Group 2: BHI + SPECTRE_V2        (indirect branch attacks)
  Group 3: RETBLEED + INCEPTION    (return-based attacks)
  Group 4: MDS + SPECTRE_V4        (memory ordering attacks)
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Optional, List, Tuple, Dict
import numpy as np


# =============================================================================
# GINE LAYER (unchanged from v35)
# =============================================================================

class GINELayer(nn.Module):
    """GINE layer: h_v' = MLP((1+eps)*h_v + SUM ReLU(h_u + e_uv))"""

    def __init__(self, hidden_dim: int, dropout: float = 0.3):
        super().__init__()
        self.eps = nn.Parameter(torch.zeros(1))
        self.mlp = nn.Sequential(
            nn.Linear(hidden_dim, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, hidden_dim),
        )
        self.bn = nn.BatchNorm1d(hidden_dim)

    def forward(self, h, edge_index, edge_attr, node_mask=None,
                edge_mask=None, edge_weight=None):
        batch_size, max_nodes, hidden_dim = h.shape
        src_idx = edge_index[:, 0, :]
        dst_idx = edge_index[:, 1, :]

        src_idx_expanded = src_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)
        h_src = torch.gather(h, 1, src_idx_expanded)
        messages = F.relu(h_src + edge_attr)

        if edge_weight is not None:
            messages = messages * edge_weight.unsqueeze(-1)
        if edge_mask is not None:
            messages = messages * edge_mask.unsqueeze(-1).float()

        agg = torch.zeros_like(h)
        dst_idx_expanded = dst_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)
        agg.scatter_add_(1, dst_idx_expanded, messages)

        h_new = (1 + self.eps) * h + agg
        h_flat = h_new.view(-1, hidden_dim)
        h_flat = self.mlp(h_flat)
        h_new = h_flat.view(batch_size, max_nodes, hidden_dim)

        h_bn = h_new.view(-1, hidden_dim)
        h_bn = self.bn(h_bn)
        h_new = h_bn.view(batch_size, max_nodes, hidden_dim)

        if node_mask is not None:
            h_new = h_new * node_mask.unsqueeze(-1).float()
        return h_new


# =============================================================================
# VIRTUAL NODE (unchanged from v35)
# =============================================================================

class VirtualNodeUpdate(nn.Module):
    """Gated virtual node for global information flow."""

    def __init__(self, hidden_dim: int, dropout: float = 0.3):
        super().__init__()
        self.mlp = nn.Sequential(
            nn.Linear(hidden_dim, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, hidden_dim),
        )
        self.bn = nn.BatchNorm1d(hidden_dim)
        self.gate = nn.Parameter(torch.tensor(-2.0))

    def forward(self, h, vn, node_mask=None):
        if node_mask is not None:
            masked_h = h * node_mask.unsqueeze(-1).float()
        else:
            masked_h = h
        node_sum = masked_h.sum(dim=1)
        vn_new = vn + node_sum
        vn_new = self.mlp(vn_new)
        vn_new = self.bn(vn_new)
        vn_new = vn_new + vn
        gate_val = torch.sigmoid(self.gate)
        h_updated = h + gate_val * vn_new.unsqueeze(1)
        if node_mask is not None:
            h_updated = h_updated * node_mask.unsqueeze(-1).float()
        return h_updated, vn_new


# =============================================================================
# ATTENTION READOUT (from v35d)
# =============================================================================

class AttentionReadout(nn.Module):
    """Gated attention + sum pooling for graph readout."""

    def __init__(self, input_dim: int, hidden_dim: int = 128):
        super().__init__()
        self.W = nn.Linear(input_dim, hidden_dim)
        self.a = nn.Linear(hidden_dim, 1, bias=False)
        self.gate = nn.Parameter(torch.tensor(0.0))  # sigmoid(0) = 0.5

    def forward(self, h, node_mask=None):
        scores = self.a(torch.tanh(self.W(h))).squeeze(-1)
        if node_mask is not None:
            mask_val = torch.finfo(scores.dtype).min
            scores = scores.masked_fill(~node_mask, mask_val)

        alpha = F.softmax(scores, dim=-1)
        if node_mask is not None:
            alpha = alpha * node_mask.float()

        attn_pool = (alpha.unsqueeze(-1) * h).sum(dim=1)

        if node_mask is not None:
            sum_pool = (h * node_mask.unsqueeze(-1).float()).sum(dim=1)
        else:
            sum_pool = h.sum(dim=1)

        g = torch.sigmoid(self.gate)
        return g * attn_pool + (1 - g) * sum_pool


# =============================================================================
# GINE CLASSIFIER v37 — Hierarchical
# =============================================================================

class GINEClassifier(nn.Module):
    """
    GINE with hierarchical coarse-to-fine classification.

    Adds to v35d:
    - coarse_head: 5-class mechanism group prediction
    - binary_head: 2-class attack/benign prediction (for curriculum phase 1)
    - All GINE layers, virtual node, JK, attention readout unchanged
    """

    # Default coarse grouping: fine_class_id -> coarse_group_id
    # Must be set per-dataset based on label_to_id mapping
    DEFAULT_COARSE_GROUPS = {
        'BENIGN': 0,
        'L1TF': 1, 'SPECTRE_V1': 1,
        'BRANCH_HISTORY_INJECTION': 2, 'SPECTRE_V2': 2,
        'RETBLEED': 3, 'INCEPTION': 3,
        'MDS': 4, 'SPECTRE_V4': 4,
    }
    NUM_COARSE_CLASSES = 5

    def __init__(
        self,
        node_feat_dim: int = 34,
        num_edge_types: int = 8,
        hidden_dim: int = 128,
        num_layers: int = 5,
        num_classes: int = 9,
        num_coarse_classes: int = 5,
        handcrafted_dim: int = 193,
        dropout: float = 0.3,
        use_virtual_node: bool = True,
        jk_mode: str = "cat",
    ):
        super().__init__()

        self.num_layers = num_layers
        self.hidden_dim = hidden_dim
        self.use_virtual_node = use_virtual_node
        self.jk_mode = jk_mode

        # Node encoder
        self.node_encoder = nn.Sequential(
            nn.Linear(node_feat_dim, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
        )

        # Edge encoder
        self.edge_encoder = nn.Embedding(num_edge_types, hidden_dim)

        # GINE layers
        self.gine_layers = nn.ModuleList([
            GINELayer(hidden_dim, dropout) for _ in range(num_layers)
        ])

        # Virtual node
        if use_virtual_node:
            self.vn_updates = nn.ModuleList([
                VirtualNodeUpdate(hidden_dim, dropout) for _ in range(num_layers)
            ])
            self.vn_init = nn.Parameter(torch.zeros(1, hidden_dim))

        # Layer norms
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_layers)
        ])

        # JK dimension
        if jk_mode == "cat":
            raw_graph_dim = hidden_dim * (num_layers + 1)
        else:
            raw_graph_dim = hidden_dim
        self.raw_graph_dim = raw_graph_dim

        # Attention readout (from v35d)
        self.attention_readout = AttentionReadout(
            input_dim=raw_graph_dim, hidden_dim=hidden_dim,
        )

        # Dual-path fusion
        fusion_dim = 256
        self.fusion_dim = fusion_dim

        self.graph_projector = nn.Sequential(
            nn.Linear(raw_graph_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )

        self.feature_encoder = nn.Sequential(
            nn.Linear(handcrafted_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(fusion_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )

        # Fine classifier (9-class, same as v35)
        self.classifier = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_classes),
        )

        # Coarse classifier (5-class mechanism groups) — NEW in v37
        self.coarse_head = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_coarse_classes),
        )

        # Binary classifier (attack vs benign) — NEW in v37
        self.binary_head = nn.Linear(fusion_dim * 2, 2)

        # Feature-only auxiliary head
        self.feature_aux_head = nn.Linear(fusion_dim, num_classes)

        # Projection head for contrastive loss
        self.projection_head = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, 128),
        )

    def encode_graph(self, node_features, edge_index, edge_type, node_mask,
                     edge_mask=None, edge_weight=None):
        batch_size = node_features.shape[0]

        h = node_features.view(-1, node_features.shape[-1])
        h = self.node_encoder(h)
        h = h.view(batch_size, -1, self.hidden_dim)

        edge_attr = self.edge_encoder(edge_type)
        if edge_mask is not None:
            edge_attr = edge_attr * edge_mask.unsqueeze(-1).float()

        if self.use_virtual_node:
            vn = self.vn_init.expand(batch_size, -1)

        layer_outputs = [h]

        for layer_idx in range(self.num_layers):
            h_new = self.gine_layers[layer_idx](
                h, edge_index, edge_attr, node_mask, edge_mask, edge_weight
            )
            h = self.layer_norms[layer_idx](h + h_new)
            if self.use_virtual_node:
                h, vn = self.vn_updates[layer_idx](h, vn, node_mask)
            layer_outputs.append(h)

        if self.jk_mode == "cat":
            h_jk = torch.cat(layer_outputs, dim=-1)
        elif self.jk_mode == "sum":
            h_jk = torch.stack(layer_outputs, dim=0).sum(dim=0)
        else:
            h_jk = layer_outputs[-1]

        graph_repr = self.attention_readout(h_jk, node_mask)
        return graph_repr

    def forward(self, node_features, edge_index, edge_type, node_mask,
                handcrafted_features, return_projection=False,
                return_all_heads=False, edge_mask=None, edge_weight=None):
        """
        Args:
            return_all_heads: if True, return (fine_logits, coarse_logits,
                              binary_logits, proj, feat_aux_logits)
        """
        graph_repr_raw = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        graph_repr = self.graph_projector(graph_repr_raw)
        feat_repr = self.feature_encoder(handcrafted_features)
        combined = torch.cat([graph_repr, feat_repr], dim=-1)

        fine_logits = self.classifier(combined)

        if return_all_heads:
            coarse_logits = self.coarse_head(combined)
            binary_logits = self.binary_head(combined)
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            feat_aux_logits = self.feature_aux_head(feat_repr)
            return fine_logits, coarse_logits, binary_logits, proj, feat_aux_logits

        if return_projection:
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            feat_aux_logits = self.feature_aux_head(feat_repr)
            return fine_logits, proj, feat_aux_logits

        return fine_logits


# =============================================================================
# CONTRASTIVE LOSS (unchanged from v35)
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    """Supervised Contrastive Loss with hard negative mining."""

    def __init__(self, temperature=0.07, hard_negative_weight=1.5,
                 confused_pairs=None):
        super().__init__()
        self.temperature = temperature
        self.hard_negative_weight = hard_negative_weight
        self.confused_pairs = set()
        if confused_pairs:
            for a, b in confused_pairs:
                self.confused_pairs.add((a, b))
                self.confused_pairs.add((b, a))

    def forward(self, features, labels):
        device = features.device
        batch_size = features.shape[0]

        if batch_size <= 1:
            return torch.tensor(0.0, device=device, requires_grad=True)

        sim_matrix = torch.matmul(features, features.T) / self.temperature

        labels_col = labels.unsqueeze(0)
        labels_row = labels.unsqueeze(1)
        positive_mask = (labels_row == labels_col).float()
        positive_mask.fill_diagonal_(0)

        if self.confused_pairs:
            neg_weights = torch.ones(batch_size, batch_size, device=device)
            for i in range(batch_size):
                for j in range(batch_size):
                    if (labels[i].item(), labels[j].item()) in self.confused_pairs:
                        neg_weights[i, j] = self.hard_negative_weight
        else:
            neg_weights = None

        sim_max, _ = sim_matrix.max(dim=1, keepdim=True)
        sim_matrix = sim_matrix - sim_max.detach()

        self_mask = torch.eye(batch_size, device=device)
        neg_mask = 1.0 - self_mask

        if neg_weights is not None:
            exp_sim = torch.exp(sim_matrix) * neg_mask * neg_weights
        else:
            exp_sim = torch.exp(sim_matrix) * neg_mask

        log_prob = sim_matrix - torch.log(exp_sim.sum(dim=1, keepdim=True) + 1e-8)

        pos_count = positive_mask.sum(dim=1)
        pos_count = torch.clamp(pos_count, min=1)
        mean_log_prob = (positive_mask * log_prob).sum(dim=1) / pos_count

        return -mean_log_prob.mean()
