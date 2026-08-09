#!/usr/bin/env python3
"""
GINE Classifier v47

Builds on v46b. Three model-level fixes targeting the four confused pairs:

Fix 1 — Attention readout (replaces sum pooling):
  Attention weights are learned from node embeddings. Security-critical nodes
  (high SPEC_* activations) naturally receive higher attention, preventing
  the 5-instruction exploit gadget from being diluted by 25 boilerplate nodes.

Fix 2 — Global graph features (5-dim stats concatenated before classifier):
  nop_fraction, indirect_fraction, ret_fraction, verw_fraction, movntdqa_fraction.
  These are instruction-count statistics computed from the raw sequence,
  independent of labels or test set. Directly encodes INCEPTION NOP sled signal
  (13% vs 5% in RETBLEED) and MDS verw/movntdqa presence.

Fix 3 — Architecture embedding (8-dim lookup, concatenated before classifier):
  Encodes x86_64/arm64/arm32/riscv as a learned embedding. Prevents the model
  from confusing MDS (mixed-arch) with RETBLEED (x86-heavy) by letting the
  classifier condition on ISA context.

The graph encoder (GINE layers, virtual node, JK) is unchanged from v46b.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Optional, List, Tuple
import numpy as np

# Architecture vocabulary — must match build in train_gine_v38.py
ARCH_VOCAB = {'x86_64': 0, 'arm64': 1, 'arm32': 2, 'riscv64': 3, 'unknown': 4}
NUM_ARCHS = len(ARCH_VOCAB)


# =============================================================================
# GINE LAYER (unchanged from v46b)
# =============================================================================

class GINELayer(nn.Module):
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
# VIRTUAL NODE (unchanged from v46b)
# =============================================================================

class VirtualNodeUpdate(nn.Module):
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
        masked_h = h * node_mask.unsqueeze(-1).float() if node_mask is not None else h
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
# GINE CLASSIFIER v47
# =============================================================================

class GINEClassifier(nn.Module):
    """
    v47: v46b + attention readout + global graph features + arch embedding.

    Inputs (beyond v46b):
      global_features: [B, global_feat_dim]  — instruction-count stats
      arch_id:         [B]                   — integer in [0, NUM_ARCHS)
    """

    def __init__(
        self,
        node_feat_dim: int = 41,
        num_edge_types: int = 9,
        hidden_dim: int = 128,
        num_layers: int = 3,
        num_classes: int = 11,
        handcrafted_dim: int = 0,
        global_feat_dim: int = 5,
        arch_emb_dim: int = 8,
        dropout: float = 0.5,
        use_virtual_node: bool = True,
        jk_mode: str = "cat",
    ):
        super().__init__()

        self.num_layers = num_layers
        self.hidden_dim = hidden_dim
        self.use_virtual_node = use_virtual_node
        self.jk_mode = jk_mode
        self.global_feat_dim = global_feat_dim
        self.arch_emb_dim = arch_emb_dim

        # Node encoder
        self.node_encoder = nn.Sequential(
            nn.Linear(node_feat_dim, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
        )

        # Edge encoder + per-type scaling
        self.edge_encoder = nn.Embedding(num_edge_types, hidden_dim)
        self.edge_type_scale = nn.Parameter(torch.ones(num_edge_types))

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

        # Fix 1: Attention readout network.
        # Maps each node's JK embedding → scalar logit, then softmax over nodes.
        # Replaces sum pooling — security-relevant nodes with high SPEC_* activations
        # receive higher attention weights than boilerplate instructions.
        self.attention_net = nn.Sequential(
            nn.Linear(raw_graph_dim, hidden_dim // 2),
            nn.Tanh(),
            nn.Linear(hidden_dim // 2, 1, bias=False),
        )

        fusion_dim = 256

        self.graph_projector = nn.Sequential(
            nn.Linear(raw_graph_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )

        self.feature_encoder = nn.Sequential(
            nn.Linear(max(handcrafted_dim, 1), fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(fusion_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )

        # Fix 2: Global features branch (5-dim instruction stats → 32-dim)
        global_repr_dim = 32
        self.global_repr_dim = global_repr_dim
        self.global_projector = nn.Sequential(
            nn.Linear(global_feat_dim, global_repr_dim),
            nn.BatchNorm1d(global_repr_dim),
            nn.ReLU(),
        )

        # Fix 3: Architecture embedding (5 archs → 8-dim)
        self.arch_embedding = nn.Embedding(NUM_ARCHS, arch_emb_dim)

        # Combined dimension: graph(256) + handcrafted(256) + global(32) + arch(8)
        combined_dim = fusion_dim * 2 + global_repr_dim + arch_emb_dim

        self.classifier = nn.Sequential(
            nn.Linear(combined_dim, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_classes),
        )

        self.feature_aux_head = nn.Linear(fusion_dim, num_classes)

        self.projection_head = nn.Sequential(
            nn.Linear(combined_dim, hidden_dim),
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
        type_scales = self.edge_type_scale[edge_type]
        edge_attr = edge_attr * type_scales.unsqueeze(-1)

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

        # Fix 1: Attention-weighted readout (replaces sum pooling)
        attn_logits = self.attention_net(h_jk)       # [B, N, 1]
        if node_mask is not None:
            attn_logits = attn_logits.masked_fill(
                ~node_mask.unsqueeze(-1), float('-inf'))
        attn_weights = F.softmax(attn_logits, dim=1)  # [B, N, 1]
        graph_repr = (h_jk * attn_weights).sum(dim=1) # [B, raw_graph_dim]

        return graph_repr

    def forward(self, node_features, edge_index, edge_type, node_mask,
                handcrafted_features, global_features, arch_id,
                return_projection=False, edge_mask=None, edge_weight=None):

        graph_repr_raw = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        graph_repr = self.graph_projector(graph_repr_raw)
        feat_repr = self.feature_encoder(handcrafted_features)

        # Fix 2: Global instruction-count stats
        global_repr = self.global_projector(global_features)

        # Fix 3: Architecture embedding
        arch_repr = self.arch_embedding(arch_id)

        combined = torch.cat([graph_repr, feat_repr, global_repr, arch_repr], dim=-1)

        logits = self.classifier(combined)

        if return_projection:
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            feat_aux_logits = self.feature_aux_head(feat_repr)
            return logits, proj, feat_aux_logits

        return logits

    def get_edge_type_scales(self) -> dict:
        from pdg_builder import EDGE_TYPES
        id_to_name = {v: k for k, v in EDGE_TYPES.items()}
        scales = self.edge_type_scale.detach().cpu().numpy()
        return {id_to_name.get(i, f'type_{i}'): float(scales[i])
                for i in range(len(scales))}


# =============================================================================
# CONTRASTIVE LOSS (unchanged from v46b)
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    def __init__(self, temperature=0.07, hard_negative_weight=1.5, confused_pairs=None):
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

        positive_mask = (labels.unsqueeze(1) == labels.unsqueeze(0)).float()
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

        exp_sim = (torch.exp(sim_matrix) * neg_mask * neg_weights
                   if neg_weights is not None
                   else torch.exp(sim_matrix) * neg_mask)

        log_prob = sim_matrix - torch.log(exp_sim.sum(dim=1, keepdim=True) + 1e-8)

        pos_count = positive_mask.sum(dim=1).clamp(min=1)
        mean_log_prob = (positive_mask * log_prob).sum(dim=1) / pos_count

        return -mean_log_prob.mean()
