#!/usr/bin/env python3
"""
GINE Classifier v39a — Aleatoric Uncertainty for Multi-Label Classification

Based on v35 architecture (93.89% accuracy). Adds:

1. Heteroscedastic aleatoric uncertainty head (Kendall & Gal, NeurIPS 2017):
   The model predicts both class logits AND a per-sample log-variance.
   High variance = the model has learned that this sample is inherently ambiguous
   (e.g., identical sequences with multiple valid vulnerability labels).

   Loss = (1/2) * exp(-s) * L_task + (1/2) * s
   where s = log(sigma^2) is a learned scalar per sample.

   This down-weights the gradient contribution from ambiguous samples rather than
   forcing the model to memorize contradictory labels. The learned variance also
   serves as a calibrated uncertainty estimate for the generative pipeline.

2. Soft-label cross-entropy:
   Cross-class duplicates (identical sequences with different labels) are assigned
   soft label distributions proportional to their occurrence frequency.
   e.g., a sequence appearing 3x as L1TF and 2x as V1 gets [0.6, 0.4].

   Uses KL-divergence loss instead of hard CE, allowing the model to distribute
   probability mass across genuinely ambiguous classes.

All v35 architecture unchanged: GINE layers, virtual node, JK cat, dual-path fusion.
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
# GINE CLASSIFIER v39a — with aleatoric uncertainty
# =============================================================================

class GINEClassifier(nn.Module):
    """
    GINE v39a: v35 baseline + heteroscedastic aleatoric uncertainty head.

    The uncertainty head predicts log(sigma^2) per sample, which:
    - Down-weights loss from inherently ambiguous samples
    - Provides calibrated uncertainty for downstream ranking
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
        self.num_classes = num_classes

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

        # Dual-path fusion (identical to v35)
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

        # NEW: Aleatoric uncertainty head (Kendall & Gal 2017)
        # Predicts log(sigma^2) per sample — scalar uncertainty
        self.log_var_head = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, 1),
        )

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
                return_uncertainty=False,
                edge_mask=None, edge_weight=None):
        graph_repr_raw = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        graph_repr = self.graph_projector(graph_repr_raw)
        feat_repr = self.feature_encoder(handcrafted_features)
        combined = torch.cat([graph_repr, feat_repr], dim=-1)

        logits = self.classifier(combined)

        # Aleatoric uncertainty
        log_var = self.log_var_head(combined)  # [B, 1]

        if return_projection:
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            feat_aux_logits = self.feature_aux_head(feat_repr)
            if return_uncertainty:
                return logits, proj, feat_aux_logits, log_var
            return logits, proj, feat_aux_logits

        if return_uncertainty:
            return logits, log_var

        return logits


# =============================================================================
# HETEROSCEDASTIC LOSS (Kendall & Gal 2017)
# =============================================================================

class HeteroscedasticLoss(nn.Module):
    """
    Heteroscedastic aleatoric uncertainty loss for classification.

    From Kendall & Gal (NeurIPS 2017) "What Uncertainties Do We Need in
    Bayesian Deep Learning?", Eq. 12:

        L = (1/2) * exp(-s) * L_task + (1/2) * s

    where s = log(sigma^2) is the predicted log-variance per sample.

    For soft-label targets, L_task is KL-divergence.
    For hard-label targets, L_task is cross-entropy.

    The model learns to increase sigma for ambiguous samples (reducing their
    gradient contribution) and decrease sigma for clear samples (amplifying
    their signal). The regularization term (1/2)*s prevents trivial solution
    of infinite variance.
    """

    def __init__(self, num_samples: int = 10):
        super().__init__()
        self.num_samples = num_samples

    def forward(self, logits, log_var, targets, is_soft=False):
        """
        Args:
            logits: [B, C] raw logits
            log_var: [B, 1] predicted log(sigma^2)
            targets: [B, C] soft labels (if is_soft) or [B] hard labels
            is_soft: whether targets are soft probability distributions
        """
        # Clamp log_var for numerical stability
        log_var = torch.clamp(log_var, min=-10.0, max=10.0)
        precision = torch.exp(-log_var)  # [B, 1]

        if is_soft:
            # KL divergence with soft targets
            log_probs = F.log_softmax(logits, dim=-1)  # [B, C]
            # KL(target || pred) = sum(target * (log(target) - log(pred)))
            # Ignore terms where target=0 (they contribute 0)
            task_loss = -(targets * log_probs).sum(dim=-1, keepdim=True)  # [B, 1]
        else:
            # Standard cross-entropy per sample
            task_loss = F.cross_entropy(
                logits, targets, reduction='none'
            ).unsqueeze(-1)  # [B, 1]

        # Heteroscedastic loss: precision * task_loss + log_var
        loss = 0.5 * precision * task_loss + 0.5 * log_var  # [B, 1]

        return loss.mean()


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
