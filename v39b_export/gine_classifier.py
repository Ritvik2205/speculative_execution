#!/usr/bin/env python3
"""
GINE (Graph Isomorphism Network with Edge features) Classifier

Architecture for speculative execution vulnerability classification from PDGs.
Based on Hu et al. (2020) "Strategies for Pre-training Graph Neural Networks".

Key design decisions:
- GINE is provably the most expressive standard message-passing GNN (WL-test equivalent)
- Edge features are first-class: 8 edge types embedded and directly modulate message passing
- Edge weights scale messages (vulnerability-aware weighting from PDGBuilder)
- Virtual node enables global information flow without over-smoothing
- JK (Jumping Knowledge) connections aggregate representations from all layers
- Sum pooling is provably more expressive than mean/max for graph-level tasks
- No BiLSTM: forces the model to learn from graph structure, not sequence order
- Handcrafted features (193-dim) integrated after graph readout
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Optional, List, Tuple
import numpy as np


# =============================================================================
# GINE LAYER
# =============================================================================

class GINELayer(nn.Module):
    """
    Graph Isomorphism Network with Edge features (GINE) layer.

    Message passing:
        h_v^(k+1) = MLP^(k)((1 + eps^(k)) * h_v^(k) + SUM_{u in N(v)} ReLU(h_u^(k) + e_{uv}))

    where e_{uv} is the edge embedding for the edge from u to v.
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
        """
        Args:
            h: [batch, max_nodes, hidden_dim] node features
            edge_index: [batch, 2, max_edges] (src, dst) pairs
            edge_attr: [batch, max_edges, hidden_dim] edge embeddings
            node_mask: [batch, max_nodes] bool mask for valid nodes
            edge_mask: [batch, max_edges] bool mask for valid edges
            edge_weight: [batch, max_edges] continuous edge weights (optional)

        Returns:
            h_new: [batch, max_nodes, hidden_dim] updated node features
        """
        batch_size, max_nodes, hidden_dim = h.shape

        # Aggregate neighbor messages with edge features
        # For each edge (u, v), message = ReLU(h_u + edge_embed)
        src_idx = edge_index[:, 0, :]  # [batch, max_edges]
        dst_idx = edge_index[:, 1, :]  # [batch, max_edges]

        # Gather source node features: h[batch, src_idx]
        src_idx_expanded = src_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)  # [batch, max_edges, hidden]
        h_src = torch.gather(h, 1, src_idx_expanded)  # [batch, max_edges, hidden]

        # Message: ReLU(h_src + edge_attr)
        messages = F.relu(h_src + edge_attr)  # [batch, max_edges, hidden]

        # Scale messages by edge weight (vulnerability-aware weighting from PDGBuilder)
        if edge_weight is not None:
            messages = messages * edge_weight.unsqueeze(-1)

        # Zero out messages from padded edges
        if edge_mask is not None:
            messages = messages * edge_mask.unsqueeze(-1).float()

        # Scatter-add messages to destination nodes
        agg = torch.zeros_like(h)  # [batch, max_nodes, hidden]
        dst_idx_expanded = dst_idx.unsqueeze(-1).expand(-1, -1, hidden_dim)  # [batch, max_edges, hidden]
        agg.scatter_add_(1, dst_idx_expanded, messages)

        # GINE update: MLP((1 + eps) * h + aggregated_messages)
        h_new = (1 + self.eps) * h + agg  # [batch, max_nodes, hidden]

        # Apply MLP (need to reshape for BatchNorm)
        h_flat = h_new.view(-1, hidden_dim)  # [batch*max_nodes, hidden]
        h_flat = self.mlp(h_flat)
        h_new = h_flat.view(batch_size, max_nodes, hidden_dim)

        # BatchNorm on node features
        h_bn = h_new.view(-1, hidden_dim)
        h_bn = self.bn(h_bn)
        h_new = h_bn.view(batch_size, max_nodes, hidden_dim)

        # Mask out padding nodes
        if node_mask is not None:
            h_new = h_new * node_mask.unsqueeze(-1).float()

        return h_new


# =============================================================================
# VIRTUAL NODE
# =============================================================================

class VirtualNodeUpdate(nn.Module):
    """
    Virtual node that aggregates global graph information and broadcasts back.

    The virtual node is connected to ALL real nodes. After each GINE layer:
    1. Aggregate all node features into the virtual node (sum)
    2. Transform the virtual node
    3. Add virtual node features back to all real nodes

    This enables global information flow in 1 hop, critical for small graphs.
    """

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
        # Learnable gate: controls how much global info flows back to nodes.
        # Initialized to -2 so sigmoid(-2) ≈ 0.12, starting with weak global influence.
        # The model can learn to increase this if global context helps.
        self.gate = nn.Parameter(torch.tensor(-2.0))

    def forward(
        self,
        h: torch.Tensor,
        vn: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        """
        Args:
            h: [batch, max_nodes, hidden_dim]
            vn: [batch, hidden_dim] virtual node embedding
            node_mask: [batch, max_nodes] bool mask

        Returns:
            h_updated: [batch, max_nodes, hidden_dim] with virtual node info
            vn_updated: [batch, hidden_dim] updated virtual node
        """
        # Aggregate all node features to virtual node
        if node_mask is not None:
            masked_h = h * node_mask.unsqueeze(-1).float()
        else:
            masked_h = h

        # Sum pooling of all nodes into virtual node
        node_sum = masked_h.sum(dim=1)  # [batch, hidden_dim]

        # Update virtual node: residual + MLP
        vn_new = vn + node_sum  # [batch, hidden_dim]
        vn_new = self.mlp(vn_new)
        vn_new = self.bn(vn_new)
        vn_new = vn_new + vn  # Residual connection

        # Gated broadcast: model learns how much global context to inject.
        # sigmoid(gate) controls mixing ratio — starts weak (~0.12), can grow.
        gate_val = torch.sigmoid(self.gate)
        h_updated = h + gate_val * vn_new.unsqueeze(1)  # [batch, max_nodes, hidden_dim]

        if node_mask is not None:
            h_updated = h_updated * node_mask.unsqueeze(-1).float()

        return h_updated, vn_new


# =============================================================================
# GINE CLASSIFIER
# =============================================================================

class GINEClassifier(nn.Module):
    """
    Full GINE model for graph-level vulnerability classification.

    Architecture:
    1. Node encoder: Linear(34 -> hidden_dim) + BN
    2. Edge encoder: Embedding(4, hidden_dim) for 4 edge types
    3. GINE layers: 5 x GINELayer with BN, residual connections
    4. Virtual node: VirtualNodeUpdate (global aggregation after each layer)
    5. JK connections: Concatenate all layer outputs
    6. Graph readout: Sum pooling (provably most expressive)
    7. Feature encoder: Linear(193 -> 64) for handcrafted features
    8. Classifier: MLP(graph_dim + 64 -> 128 -> num_classes)
    9. Projection head: MLP(graph_dim -> 128) for optional contrastive loss
    """

    def __init__(
        self,
        node_feat_dim: int = 34,
        num_edge_types: int = 4,
        hidden_dim: int = 128,
        num_layers: int = 5,
        num_classes: int = 9,
        handcrafted_dim: int = 193,
        dropout: float = 0.3,
        use_virtual_node: bool = True,
        jk_mode: str = "cat",  # "cat", "last", or "sum"
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

        # Edge encoder: embed edge type index into hidden_dim
        self.edge_encoder = nn.Embedding(num_edge_types, hidden_dim)

        # GINE layers
        self.gine_layers = nn.ModuleList([
            GINELayer(hidden_dim, dropout) for _ in range(num_layers)
        ])

        # Virtual node updates (one per layer)
        if use_virtual_node:
            self.vn_updates = nn.ModuleList([
                VirtualNodeUpdate(hidden_dim, dropout) for _ in range(num_layers)
            ])
            self.vn_init = nn.Parameter(torch.zeros(1, hidden_dim))

        # Residual layer norms
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_layers)
        ])

        # JK output dimension
        if jk_mode == "cat":
            raw_graph_dim = hidden_dim * (num_layers + 1)  # +1 for initial embedding
        else:
            raw_graph_dim = hidden_dim
        self.raw_graph_dim = raw_graph_dim

        # Balanced dual-path architecture:
        # Both graph and handcrafted features are projected to the same dimension (256)
        # so neither dominates the classifier.
        fusion_dim = 256

        # Graph projection: 768 -> 256 (compress graph to match feature path)
        self.graph_projector = nn.Sequential(
            nn.Linear(raw_graph_dim, fusion_dim),
            nn.BatchNorm1d(fusion_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )

        # Feature encoder: 207 -> 256 (expand, not compress, features)
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

        # Joint classifier: 256 + 256 = 512 -> num_classes
        self.classifier = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.BatchNorm1d(hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_classes),
        )

        # Feature-only auxiliary head: ensures features alone can classify.
        # During training, this adds an auxiliary loss so the feature encoder
        # learns discriminative representations independently of the graph.
        self.feature_aux_head = nn.Linear(fusion_dim, num_classes)

        # Projection head for contrastive learning (uses combined representation)
        self.projection_head = nn.Sequential(
            nn.Linear(fusion_dim * 2, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, 128),
        )

    def encode_graph(
        self,
        node_features: torch.Tensor,
        edge_index: torch.Tensor,
        edge_type: torch.Tensor,
        node_mask: torch.Tensor,
        edge_mask: Optional[torch.Tensor] = None,
        edge_weight: Optional[torch.Tensor] = None,
    ) -> torch.Tensor:
        """
        Encode a batch of graphs into fixed-size representations.

        Args:
            node_features: [batch, max_nodes, 34] node features
            edge_index: [batch, 2, max_edges] COO edge indices
            edge_type: [batch, max_edges] edge type indices (0-7)
            node_mask: [batch, max_nodes] bool mask for valid nodes
            edge_mask: [batch, max_edges] bool mask for valid edges
            edge_weight: [batch, max_edges] continuous edge weights (optional)

        Returns:
            graph_repr: [batch, graph_dim] graph-level representation
        """
        batch_size = node_features.shape[0]

        # Encode nodes
        h = node_features.view(-1, node_features.shape[-1])
        h = self.node_encoder(h)
        h = h.view(batch_size, -1, self.hidden_dim)  # [batch, max_nodes, hidden]

        # Encode edges
        edge_attr = self.edge_encoder(edge_type)  # [batch, max_edges, hidden]

        # Zero out edge embeddings for padded edges so they don't leak signal
        if edge_mask is not None:
            edge_attr = edge_attr * edge_mask.unsqueeze(-1).float()

        # Initialize virtual node
        if self.use_virtual_node:
            vn = self.vn_init.expand(batch_size, -1)  # [batch, hidden]

        # Collect layer outputs for JK
        layer_outputs = [h]

        # Message passing
        for layer_idx in range(self.num_layers):
            # GINE message passing (with edge weights)
            h_new = self.gine_layers[layer_idx](
                h, edge_index, edge_attr, node_mask, edge_mask, edge_weight
            )

            # Residual + LayerNorm
            h = self.layer_norms[layer_idx](h + h_new)

            # Virtual node update
            if self.use_virtual_node:
                h, vn = self.vn_updates[layer_idx](h, vn, node_mask)

            layer_outputs.append(h)

        # JK connection
        if self.jk_mode == "cat":
            h_jk = torch.cat(layer_outputs, dim=-1)  # [batch, max_nodes, hidden*(layers+1)]
        elif self.jk_mode == "sum":
            h_jk = torch.stack(layer_outputs, dim=0).sum(dim=0)
        else:  # "last"
            h_jk = layer_outputs[-1]

        # Graph readout: sum pooling (provably most expressive per GIN paper)
        if node_mask is not None:
            h_jk = h_jk * node_mask.unsqueeze(-1).float()
        graph_repr = h_jk.sum(dim=1)  # [batch, graph_dim]

        return graph_repr

    def forward(
        self,
        node_features: torch.Tensor,
        edge_index: torch.Tensor,
        edge_type: torch.Tensor,
        node_mask: torch.Tensor,
        handcrafted_features: torch.Tensor,
        return_projection: bool = False,
        edge_mask: Optional[torch.Tensor] = None,
        edge_weight: Optional[torch.Tensor] = None,
    ) -> torch.Tensor:
        """
        Forward pass for classification.

        Args:
            node_features: [batch, max_nodes, 34]
            edge_index: [batch, 2, max_edges]
            edge_type: [batch, max_edges]
            node_mask: [batch, max_nodes]
            handcrafted_features: [batch, handcrafted_dim]
            return_projection: if True, also return projection for contrastive loss
            edge_mask: [batch, max_edges] bool mask for valid edges
            edge_weight: [batch, max_edges] continuous edge weights (optional)

        Returns:
            logits: [batch, num_classes]
            (optional) projection: [batch, 128] normalized projection vectors
        """
        # Encode graph structure
        graph_repr_raw = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        # Project graph to fusion dimension (768 -> 256)
        graph_repr = self.graph_projector(graph_repr_raw)  # [batch, 256]

        # Encode handcrafted features (207 -> 256)
        feat_repr = self.feature_encoder(handcrafted_features)  # [batch, 256]

        # Combine (balanced: 256 + 256 = 512) and classify
        combined = torch.cat([graph_repr, feat_repr], dim=-1)
        logits = self.classifier(combined)

        if return_projection:
            proj = self.projection_head(combined)
            proj = F.normalize(proj, p=2, dim=-1)
            # Also return feature-only auxiliary logits for auxiliary loss
            feat_aux_logits = self.feature_aux_head(feat_repr)
            return logits, proj, feat_aux_logits

        return logits

    def get_edge_type_importance(
        self,
        node_features: torch.Tensor,
        edge_index: torch.Tensor,
        edge_type: torch.Tensor,
        node_mask: torch.Tensor,
        edge_mask: Optional[torch.Tensor] = None,
        edge_weight: Optional[torch.Tensor] = None,
        num_edge_types: int = 8,
    ) -> dict:
        """
        Compute edge type importance via gradient-based attribution.

        For each edge type, compute the average gradient magnitude
        of the graph representation with respect to edge embeddings of that type.

        Returns:
            dict mapping edge type index -> average gradient magnitude
        """
        self.eval()
        edge_attr = self.edge_encoder(edge_type)
        edge_attr.requires_grad_(True)

        graph_repr = self.encode_graph(
            node_features, edge_index, edge_type, node_mask, edge_mask, edge_weight
        )

        # Compute gradient of graph repr norm w.r.t. edge embeddings
        target = graph_repr.sum()
        target.backward()

        importance = {}
        if edge_attr.grad is not None:
            grad = edge_attr.grad  # [batch, max_edges, hidden]
            grad_mag = grad.norm(dim=-1)  # [batch, max_edges]

            for etype in range(num_edge_types):
                mask = (edge_type == etype)
                if mask.any():
                    importance[etype] = grad_mag[mask].mean().item()
                else:
                    importance[etype] = 0.0

        return importance


# =============================================================================
# CONTRASTIVE LOSS (adapted from v31)
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    """
    Supervised Contrastive Loss with hard negative mining.
    Adapted from train_ggnn_bilstm_v31.py.
    """

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
        """
        Args:
            features: [batch, proj_dim] L2-normalized projections
            labels: [batch] class labels
        """
        device = features.device
        batch_size = features.shape[0]

        if batch_size <= 1:
            return torch.tensor(0.0, device=device, requires_grad=True)

        # Similarity matrix
        sim_matrix = torch.matmul(features, features.T) / self.temperature

        # Mask for positive pairs (same class, different sample)
        labels_col = labels.unsqueeze(0)  # [1, batch]
        labels_row = labels.unsqueeze(1)  # [batch, 1]
        positive_mask = (labels_row == labels_col).float()
        positive_mask.fill_diagonal_(0)  # Exclude self

        # Hard negative weighting
        if self.confused_pairs:
            neg_weights = torch.ones(batch_size, batch_size, device=device)
            for i in range(batch_size):
                for j in range(batch_size):
                    if (labels[i].item(), labels[j].item()) in self.confused_pairs:
                        neg_weights[i, j] = self.hard_negative_weight
        else:
            neg_weights = None

        # For numerical stability
        sim_max, _ = sim_matrix.max(dim=1, keepdim=True)
        sim_matrix = sim_matrix - sim_max.detach()

        # Denominator: all samples except self
        self_mask = torch.eye(batch_size, device=device)
        neg_mask = 1.0 - self_mask

        if neg_weights is not None:
            exp_sim = torch.exp(sim_matrix) * neg_mask * neg_weights
        else:
            exp_sim = torch.exp(sim_matrix) * neg_mask

        log_prob = sim_matrix - torch.log(exp_sim.sum(dim=1, keepdim=True) + 1e-8)

        # Average over positive pairs
        pos_count = positive_mask.sum(dim=1)
        pos_count = torch.clamp(pos_count, min=1)
        mean_log_prob = (positive_mask * log_prob).sum(dim=1) / pos_count

        loss = -mean_log_prob.mean()
        return loss


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    from pdg_builder import NUM_EDGE_TYPES as PDG_NUM_EDGE_TYPES, EDGE_TYPES as PDG_EDGE_TYPES

    # Quick test with synthetic data
    batch_size = 4
    max_nodes = 16
    max_edges = 40
    node_feat_dim = 34
    handcrafted_dim = 207
    num_classes = 9

    model = GINEClassifier(
        node_feat_dim=node_feat_dim,
        num_edge_types=PDG_NUM_EDGE_TYPES,
        hidden_dim=128,
        num_layers=5,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        dropout=0.3,
        use_virtual_node=True,
        jk_mode="cat",
    )

    # Count parameters
    total_params = sum(p.numel() for p in model.parameters())
    trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(f"Total parameters: {total_params:,}")
    print(f"Trainable parameters: {trainable_params:,}")

    # Synthetic input
    n_real_edges = 20
    node_features = torch.randn(batch_size, max_nodes, node_feat_dim)
    edge_index = torch.zeros(batch_size, 2, max_edges, dtype=torch.long)
    edge_index[:, :, :n_real_edges] = torch.randint(0, 12, (batch_size, 2, n_real_edges))
    edge_type = torch.zeros(batch_size, max_edges, dtype=torch.long)
    edge_type[:, :n_real_edges] = torch.randint(0, PDG_NUM_EDGE_TYPES, (batch_size, n_real_edges))
    node_mask = torch.ones(batch_size, max_nodes, dtype=torch.bool)
    node_mask[:, 12:] = False  # Last 4 nodes are padding
    edge_mask = torch.zeros(batch_size, max_edges, dtype=torch.bool)
    edge_mask[:, :n_real_edges] = True  # Only first 20 edges are real
    edge_weight = torch.ones(batch_size, max_edges)
    edge_weight[:, :n_real_edges] = torch.rand(batch_size, n_real_edges) * 3.0  # Random weights 0-3
    edge_weight[:, n_real_edges:] = 0.0  # Zero for padding
    handcrafted = torch.randn(batch_size, handcrafted_dim)

    # Forward pass
    model.train()
    logits, proj, feat_aux = model(
        node_features, edge_index, edge_type, node_mask,
        handcrafted, return_projection=True, edge_mask=edge_mask,
        edge_weight=edge_weight,
    )

    print(f"\nLogits shape: {logits.shape}")  # [4, 9]
    print(f"Projection shape: {proj.shape}")  # [4, 128]
    print(f"Feature aux shape: {feat_aux.shape}")  # [4, 9]
    print(f"Projection L2 norm: {proj.norm(dim=-1)}")  # Should be ~1.0

    # Test classification loss
    labels = torch.randint(0, num_classes, (batch_size,))
    ce_loss = F.cross_entropy(logits, labels)
    print(f"CE loss: {ce_loss.item():.4f}")

    # Test contrastive loss
    con_loss_fn = SupervisedContrastiveLoss(
        temperature=0.07,
        confused_pairs=[(0, 1), (2, 3)],
    )
    con_loss = con_loss_fn(proj, labels)
    print(f"SupCon loss: {con_loss.item():.4f}")

    # Backward pass
    total_loss = ce_loss + 0.5 * con_loss
    total_loss.backward()

    # Check gradients flow
    grad_norms = []
    for name, param in model.named_parameters():
        if param.grad is not None:
            grad_norms.append((name, param.grad.norm().item()))

    print(f"\nGradient flow check ({len(grad_norms)} params have gradients):")
    for name, norm in grad_norms[:5]:
        print(f"  {name}: {norm:.6f}")
    print(f"  ... ({len(grad_norms)} total parameters with gradients)")

    # Edge type importance
    model.zero_grad()
    importance = model.get_edge_type_importance(
        node_features, edge_index, edge_type, node_mask,
        edge_weight=edge_weight, num_edge_types=PDG_NUM_EDGE_TYPES,
    )
    print(f"\nEdge type importance (gradient-based):")
    for etype_name, etype_id in sorted(PDG_EDGE_TYPES.items(), key=lambda x: x[1]):
        print(f"  {etype_name}: {importance.get(etype_id, 0):.6f}")
