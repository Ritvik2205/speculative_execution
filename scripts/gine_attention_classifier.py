#!/usr/bin/env python3
"""
GINE + GATv2 Attention Classifier (v35c)

Hybrid architecture: GINE message computation with GATv2-style attention aggregation.

Key difference from plain GINE (v34/v35):
  - GINE computes messages as ReLU(h_src + edge_embed), then SUM-aggregates.
  - This model computes the same messages, but weights them with learned attention
    scores before aggregating. Attention is computed GATv2-style:
        e_ij = a^T * LeakyReLU(W_attn * [h_dst || h_src || edge_embed])
        alpha_ij = softmax_j(e_ij)   (over all edges pointing to node i)
    This lets the model dynamically focus on security-critical neighbors
    per-instance, rather than treating all edges uniformly.

Multi-head attention is used (4 heads by default) for richer attention patterns.
The rest of the architecture (virtual node, JK, dual-path fusion) is unchanged.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Optional, List, Tuple
import numpy as np


# =============================================================================
# GINE + GATv2 ATTENTION LAYER
# =============================================================================

class GINEAttentionLayer(nn.Module):
    """
    GINE message passing with GATv2 multi-head attention aggregation.

    Message:    m_ij = ReLU(h_j + edge_embed_ij)
    Attention:  e_ij = a^T * LeakyReLU(W * [h_i || h_j || edge_embed_ij])
                alpha_ij = softmax over neighbors of i (masked for padding)
    Aggregate:  agg_i = SUM_j alpha_ij * m_ij
    Update:     h_i' = MLP((1 + eps) * h_i + agg_i)
    """

    def __init__(self, hidden_dim: int, num_heads: int = 4, dropout: float = 0.3):
        super().__init__()
        assert hidden_dim % num_heads == 0
        self.hidden_dim = hidden_dim
        self.num_heads = num_heads
        self.head_dim = hidden_dim // num_heads
        self.eps = nn.Parameter(torch.zeros(1))

        # GATv2 attention: project concatenation of [h_dst, h_src, edge_embed]
        # into num_heads scalar scores
        self.W_attn = nn.Linear(3 * hidden_dim, num_heads * self.head_dim, bias=False)
        self.a = nn.Parameter(torch.randn(num_heads, self.head_dim))
        nn.init.xavier_uniform_(self.a.unsqueeze(0))  # proper init

        self.attn_dropout = nn.Dropout(dropout)

        # MLP for node update (same as GINE)
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
        """
        Args:
            h: [batch, max_nodes, hidden_dim]
            edge_index: [batch, 2, max_edges]
            edge_attr: [batch, max_edges, hidden_dim]
            node_mask: [batch, max_nodes] bool
            edge_mask: [batch, max_edges] bool
            edge_weight: [batch, max_edges] float (optional)
        Returns:
            h_new: [batch, max_nodes, hidden_dim]
        """
        batch_size, max_nodes, hidden_dim = h.shape
        max_edges = edge_index.shape[2]

        src_idx = edge_index[:, 0, :]  # [batch, max_edges]
        dst_idx = edge_index[:, 1, :]  # [batch, max_edges]

        # Gather source and destination node features
        idx_expand = src_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)
        h_src = torch.gather(h, 1, idx_expand)  # [batch, max_edges, hidden]
        idx_expand_dst = dst_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)
        h_dst = torch.gather(h, 1, idx_expand_dst)  # [batch, max_edges, hidden]

        # --- GINE messages ---
        messages = F.relu(h_src + edge_attr)  # [batch, max_edges, hidden]
        if edge_weight is not None:
            messages = messages * edge_weight.unsqueeze(-1)

        # --- GATv2 attention scores ---
        # Concatenate [h_dst, h_src, edge_attr] for each edge
        attn_input = torch.cat([h_dst, h_src, edge_attr], dim=-1)  # [batch, max_edges, 3*hidden]

        # Project and reshape for multi-head
        attn_proj = self.W_attn(attn_input)  # [batch, max_edges, num_heads * head_dim]
        attn_proj = attn_proj.view(batch_size, max_edges, self.num_heads, self.head_dim)

        # LeakyReLU then dot with per-head attention vector
        attn_proj = F.leaky_relu(attn_proj, negative_slope=0.2)
        # a: [num_heads, head_dim] -> broadcast dot product
        e = (attn_proj * self.a.unsqueeze(0).unsqueeze(0)).sum(dim=-1)  # [batch, max_edges, num_heads]

        # Mask out padded edges with large negative value before softmax
        if edge_mask is not None:
            mask_val = torch.finfo(e.dtype).min
            e = e.masked_fill(~edge_mask.unsqueeze(-1), mask_val)

        # Softmax per destination node: need to do scatter-based softmax
        # For each destination node, softmax over all incoming edges
        # Use the log-sum-exp trick with scatter
        alpha = self._masked_softmax(e, dst_idx, max_nodes, edge_mask)  # [batch, max_edges, num_heads]
        alpha = self.attn_dropout(alpha)

        # Average attention across heads -> single scalar per edge
        alpha_mean = alpha.mean(dim=-1)  # [batch, max_edges]

        # Scale messages by attention
        messages = messages * alpha_mean.unsqueeze(-1)  # [batch, max_edges, hidden]

        # Zero out padded edges
        if edge_mask is not None:
            messages = messages * edge_mask.unsqueeze(-1).float()

        # Scatter-add to destination nodes
        agg = torch.zeros_like(h)
        dst_expand = dst_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)
        agg.scatter_add_(1, dst_expand, messages)

        # GINE update
        h_new = (1 + self.eps) * h + agg

        # MLP + BN
        h_flat = h_new.view(-1, hidden_dim)
        h_flat = self.mlp(h_flat)
        h_new = h_flat.view(batch_size, max_nodes, hidden_dim)

        h_bn = h_new.view(-1, hidden_dim)
        h_bn = self.bn(h_bn)
        h_new = h_bn.view(batch_size, max_nodes, hidden_dim)

        if node_mask is not None:
            h_new = h_new * node_mask.unsqueeze(-1).float()

        return h_new

    def _masked_softmax(
        self,
        e: torch.Tensor,
        dst_idx: torch.Tensor,
        max_nodes: int,
        edge_mask: Optional[torch.Tensor],
    ) -> torch.Tensor:
        """
        Compute softmax of e grouped by destination node.

        Args:
            e: [batch, max_edges, num_heads] raw attention scores
            dst_idx: [batch, max_edges] destination node indices
            max_nodes: int
            edge_mask: [batch, max_edges] bool
        Returns:
            alpha: [batch, max_edges, num_heads] attention weights
        """
        batch_size, max_edges, num_heads = e.shape

        # For numerical stability: subtract max per destination node
        # Compute max per destination node
        dst_expand = dst_idx.unsqueeze(-1).expand(-1, -1, num_heads)  # [batch, max_edges, heads]

        # Scatter-max: find max score per destination node
        neg_inf = torch.full((batch_size, max_nodes, num_heads), float('-inf'),
                             device=e.device, dtype=e.dtype)
        e_for_max = e.clone()
        if edge_mask is not None:
            e_for_max = e_for_max.masked_fill(~edge_mask.unsqueeze(-1), float('-inf'))
        neg_inf.scatter_reduce_(1, dst_expand, e_for_max, reduce='amax', include_self=True)

        # Gather max back to edges
        e_max = torch.gather(neg_inf, 1, dst_expand)  # [batch, max_edges, heads]
        e_max = e_max.detach()  # don't backprop through max selection

        # Stabilized exp
        e_stable = e - e_max
        if edge_mask is not None:
            e_stable = e_stable.masked_fill(~edge_mask.unsqueeze(-1), float('-inf'))
        exp_e = torch.exp(e_stable)  # [batch, max_edges, heads]

        # Sum of exp per destination node
        sum_exp = torch.zeros(batch_size, max_nodes, num_heads, device=e.device, dtype=e.dtype)
        sum_exp.scatter_add_(1, dst_expand, exp_e)
        sum_exp = sum_exp.clamp(min=1e-8)

        # Gather sum back to edges
        sum_exp_edge = torch.gather(sum_exp, 1, dst_expand)  # [batch, max_edges, heads]

        alpha = exp_e / sum_exp_edge

        # Zero out padding
        if edge_mask is not None:
            alpha = alpha * edge_mask.unsqueeze(-1).float()

        return alpha


# =============================================================================
# VIRTUAL NODE (same as v34)
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
# GINE + ATTENTION CLASSIFIER
# =============================================================================

class GINEAttentionClassifier(nn.Module):
    """
    GINE + GATv2 Attention model for vulnerability classification.

    Same architecture as GINEClassifier (v34/v35) but with attention-weighted
    message aggregation in each GINE layer.
    """

    def __init__(
        self,
        node_feat_dim: int = 34,
        num_edge_types: int = 8,
        hidden_dim: int = 128,
        num_layers: int = 5,
        num_classes: int = 9,
        handcrafted_dim: int = 210,
        dropout: float = 0.3,
        num_heads: int = 4,
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

        # GINE + Attention layers
        self.gine_layers = nn.ModuleList([
            GINEAttentionLayer(hidden_dim, num_heads=num_heads, dropout=dropout)
            for _ in range(num_layers)
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

        if self.jk_mode == "cat":
            h_jk = torch.cat(layer_outputs, dim=-1)
        elif self.jk_mode == "sum":
            h_jk = torch.stack(layer_outputs, dim=0).sum(dim=0)
        else:
            h_jk = layer_outputs[-1]

        if node_mask is not None:
            h_jk = h_jk * node_mask.unsqueeze(-1).float()
        graph_repr = h_jk.sum(dim=1)

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
