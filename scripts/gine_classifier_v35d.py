#!/usr/bin/env python3
"""
GINE Classifier v35d — Attention Readout

Same as v35 (gine_classifier.py) but replaces sum pooling with learned attention
readout. GINE message passing is unchanged (sum aggregation, WL-equivalent).

The attention readout learns per-node importance scores:
    score_i = a^T * tanh(W * h_jk_i + b)
    alpha_i = softmax(score_i) over valid nodes
    graph_repr = SUM(alpha_i * h_jk_i)

This lets the model focus on security-critical nodes (e.g., the branch instruction
and the cache probe) rather than treating all nodes equally.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Optional, List, Tuple
import numpy as np


# =============================================================================
# GINE LAYER (unchanged from v35)
# =============================================================================

class GINELayer(nn.Module):
    """
    Graph Isomorphism Network with Edge features (GINE) layer.

    Message passing:
        h_v^(k+1) = MLP^(k)((1 + eps^(k)) * h_v^(k) + SUM_{u in N(v)} ReLU(h_u^(k) + e_{uv}))
    """

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

    def forward(
        self,
        h: torch.Tensor,
        edge_index: torch.Tensor,
        edge_attr: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None,
        edge_mask: Optional[torch.Tensor] = None,
        edge_weight: Optional[torch.Tensor] = None,
    ) -> torch.Tensor:
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
# ATTENTION READOUT (new in v35d)
# =============================================================================

class AttentionReadout(nn.Module):
    """
    Learned attention pooling over nodes for graph-level readout.

    Instead of plain sum pooling (treating all nodes equally), this module
    learns per-node importance scores and computes a weighted sum:

        score_i = a^T * tanh(W * h_i + b)
        alpha_i = softmax(score_i) over valid nodes
        graph_repr = SUM(alpha_i * h_i)

    Combined with sum pooling in a gated mixture so the model can fall back
    to sum pooling if attention doesn't help:

        graph_repr = gate * attn_pool + (1 - gate) * sum_pool
    """

    def __init__(self, input_dim: int, hidden_dim: int = 128):
        super().__init__()
        self.W = nn.Linear(input_dim, hidden_dim)
        self.a = nn.Linear(hidden_dim, 1, bias=False)
        # Gate: learnable scalar initialized to 0.5 (equal mix of attn and sum)
        self.gate = nn.Parameter(torch.tensor(0.0))  # sigmoid(0) = 0.5

    def forward(self, h: torch.Tensor, node_mask: Optional[torch.Tensor] = None) -> torch.Tensor:
        """
        Args:
            h: [batch, max_nodes, input_dim] node features (after JK)
            node_mask: [batch, max_nodes] bool mask for valid nodes

        Returns:
            graph_repr: [batch, input_dim]
        """
        # Compute attention scores
        scores = self.a(torch.tanh(self.W(h))).squeeze(-1)  # [batch, max_nodes]

        # Mask padding nodes
        if node_mask is not None:
            mask_val = torch.finfo(scores.dtype).min
            scores = scores.masked_fill(~node_mask, mask_val)

        alpha = F.softmax(scores, dim=-1)  # [batch, max_nodes]

        # Zero out padding (softmax may assign tiny values to masked positions)
        if node_mask is not None:
            alpha = alpha * node_mask.float()

        # Attention-weighted sum
        attn_pool = (alpha.unsqueeze(-1) * h).sum(dim=1)  # [batch, input_dim]

        # Plain sum pool
        if node_mask is not None:
            sum_pool = (h * node_mask.unsqueeze(-1).float()).sum(dim=1)
        else:
            sum_pool = h.sum(dim=1)

        # Gated mixture
        g = torch.sigmoid(self.gate)
        graph_repr = g * attn_pool + (1 - g) * sum_pool

        return graph_repr


# =============================================================================
# GINE CLASSIFIER v35d
# =============================================================================

class GINEClassifier(nn.Module):
    """
    GINE model with attention readout for vulnerability classification.

    Same as v35 except:
    - Graph readout uses AttentionReadout (gated attention + sum pooling)
      instead of plain sum pooling
    - Everything else (GINE layers, virtual node, JK, dual-path fusion) unchanged
    """

    def __init__(
        self,
        node_feat_dim: int = 34,
        num_edge_types: int = 8,
        hidden_dim: int = 128,
        num_layers: int = 5,
        num_classes: int = 9,
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

        # GINE layers (unchanged)
        self.gine_layers = nn.ModuleList([
            GINELayer(hidden_dim, dropout) for _ in range(num_layers)
        ])

        # Virtual node
        if use_virtual_node:
            self.vn_updates = nn.ModuleList([
                VirtualNodeUpdate(hidden_dim, dropout) for _ in range(num_layers)
            ])
            self.vn_init = nn.Parameter(torch.zeros(1, hidden_dim))

        # Layer norms for residual connections
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_layers)
        ])

        # JK output dimension
        if jk_mode == "cat":
            raw_graph_dim = hidden_dim * (num_layers + 1)
        else:
            raw_graph_dim = hidden_dim
        self.raw_graph_dim = raw_graph_dim

        # ATTENTION READOUT (new in v35d)
        self.attention_readout = AttentionReadout(
            input_dim=raw_graph_dim,
            hidden_dim=hidden_dim,
        )

        # Balanced dual-path fusion (same as v35)
        fusion_dim = 256

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

        self.classifier = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_classes),
        )

        self.feature_aux_head = nn.Linear(fusion_dim, num_classes)

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

        # JK connection
        if self.jk_mode == "cat":
            h_jk = torch.cat(layer_outputs, dim=-1)
        elif self.jk_mode == "sum":
            h_jk = torch.stack(layer_outputs, dim=0).sum(dim=0)
        else:
            h_jk = layer_outputs[-1]

        # ATTENTION READOUT (v35d: replaces plain sum pooling)
        graph_repr = self.attention_readout(h_jk, node_mask)

        return graph_repr

    def forward(self, node_features, edge_index, edge_type, node_mask,
                handcrafted_features, return_projection=False,
                edge_mask=None, edge_weight=None):

        graph_repr_raw = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        graph_repr = self.graph_projector(graph_repr_raw)
        feat_repr = self.feature_encoder(handcrafted_features)

        combined = torch.cat([graph_repr, feat_repr], dim=-1)
        logits = self.classifier(combined)

        if return_projection:
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            feat_aux_logits = self.feature_aux_head(feat_repr)
            return logits, proj, feat_aux_logits

        return logits


# =============================================================================
# CONTRASTIVE LOSS (unchanged from v35)
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    """Supervised Contrastive Loss with hard negative mining."""

    def __init__(
        self,
        temperature: float = 0.07,
        hard_negative_weight: float = 1.5,
        confused_pairs: Optional[List[Tuple[int, int]]] = None,
    ):
        super().__init__()
        self.temperature = temperature
        self.hard_negative_weight = hard_negative_weight
        self.confused_pairs = set()
        if confused_pairs:
            for a, b in confused_pairs:
                self.confused_pairs.add((a, b))
                self.confused_pairs.add((b, a))

    def forward(self, features: torch.Tensor, labels: torch.Tensor) -> torch.Tensor:
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

        loss = -mean_log_prob.mean()
        return loss
