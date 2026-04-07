#!/usr/bin/env python3
"""
V29: Hybrid GGNN-BiLSTM with Contrastive Learning

Key improvements over V28:
1. All 193 handcrafted features (same as RF v18)
2. Two-stage training: contrastive pre-training + fine-tuning
3. Projection head for contrastive learning
4. Hard negative mining for confused pairs

Architecture:
1. GGNN with edge-type attention for structural intelligence
2. BiLSTM for temporal intelligence
3. All 193 handcrafted features via dedicated MLP
4. Projection head for contrastive learning (detached during fine-tuning)
5. Classification head for final predictions
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Tuple, Optional, List
import numpy as np


# =============================================================================
# EDGE-TYPE ATTENTION GGNN LAYER (from V28)
# =============================================================================

class EdgeTypeAttentionGGNNLayer(nn.Module):
    """
    GGNN Layer with Edge-Type Specific Attention
    """
    
    def __init__(
        self,
        hidden_dim: int,
        num_edge_types: int = 2,
        attention_heads: int = 4,
        dropout: float = 0.1,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        self.num_edge_types = num_edge_types
        self.attention_heads = attention_heads
        
        # Edge-type specific message transformations
        self.edge_transforms = nn.ModuleList([
            nn.Linear(hidden_dim, hidden_dim, bias=False)
            for _ in range(num_edge_types)
        ])
        
        # Edge-type attention network
        self.edge_type_attention = nn.Sequential(
            nn.Linear(hidden_dim * 2, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, num_edge_types),
        )
        
        # Multi-head attention for neighbor aggregation
        self.neighbor_attention = nn.ModuleList([
            nn.MultiheadAttention(
                embed_dim=hidden_dim,
                num_heads=attention_heads,
                dropout=dropout,
                batch_first=True,
            )
            for _ in range(num_edge_types)
        ])
        
        # GRU for node state update
        self.gru = nn.GRUCell(hidden_dim, hidden_dim)
        
        # Layer norm and dropout
        self.layer_norm = nn.LayerNorm(hidden_dim)
        self.dropout = nn.Dropout(dropout)
        
    def forward(
        self,
        h: torch.Tensor,
        adj_list: List[torch.Tensor],
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        batch_size, num_nodes, _ = h.shape
        
        # Compute messages for each edge type
        messages_per_type = []
        
        for edge_type, (edge_transform, neighbor_attn, adj) in enumerate(
            zip(self.edge_transforms, self.neighbor_attention, adj_list)
        ):
            h_transformed = edge_transform(h)
            
            msg, _ = neighbor_attn(
                query=h,
                key=h_transformed,
                value=h_transformed,
                key_padding_mask=None,
                attn_mask=None,
            )
            
            msg_weighted = torch.bmm(adj, msg)
            messages_per_type.append(msg_weighted)
        
        # Stack and compute edge-type attention
        messages_stacked = torch.stack(messages_per_type, dim=2)
        msg_context = messages_stacked.mean(dim=2)
        attn_input = torch.cat([h, msg_context], dim=-1)
        
        edge_type_weights = self.edge_type_attention(attn_input)
        edge_type_weights = F.softmax(edge_type_weights, dim=-1)
        
        # Weighted combination
        messages = torch.sum(
            messages_stacked * edge_type_weights.unsqueeze(-1),
            dim=2
        )
        
        messages = self.dropout(messages)
        
        # GRU update
        h_flat = h.view(-1, self.hidden_dim)
        msg_flat = messages.view(-1, self.hidden_dim)
        h_new_flat = self.gru(msg_flat, h_flat)
        h_new = h_new_flat.view(batch_size, num_nodes, self.hidden_dim)
        
        h_new = self.layer_norm(h_new)
        
        return h_new, edge_type_weights


class EdgeTypeAttentionGGNN(nn.Module):
    """Multi-step GGNN with Edge-Type Attention"""
    
    def __init__(
        self,
        input_dim: int,
        hidden_dim: int,
        num_steps: int = 4,
        num_edge_types: int = 2,
        attention_heads: int = 4,
        dropout: float = 0.1,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        self.num_steps = num_steps
        
        # Initial projection
        self.input_proj = nn.Sequential(
            nn.Linear(input_dim, hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # GGNN layers
        self.ggnn_layers = nn.ModuleList([
            EdgeTypeAttentionGGNNLayer(
                hidden_dim=hidden_dim,
                num_edge_types=num_edge_types,
                attention_heads=attention_heads,
                dropout=dropout,
            )
            for _ in range(num_steps)
        ])
        
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_steps)
        ])
        
    def forward(
        self,
        x: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        h = self.input_proj(x)
        
        adj_list = [adj_data, adj_control]
        edge_attn_all = []
        
        for ggnn_layer, ln in zip(self.ggnn_layers, self.layer_norms):
            h_new, edge_attn = ggnn_layer(h, adj_list)
            h = ln(h + h_new)
            edge_attn_all.append(edge_attn)
        
        if node_mask is not None:
            h = h * node_mask.unsqueeze(-1).float()
        
        edge_attn_all = torch.stack(edge_attn_all, dim=0)
        
        return h, edge_attn_all


# =============================================================================
# BiLSTM ENCODER
# =============================================================================

class BiLSTMEncoder(nn.Module):
    """Bidirectional LSTM for sequence encoding."""
    
    def __init__(
        self,
        input_dim: int,
        hidden_dim: int,
        num_layers: int = 2,
        dropout: float = 0.1,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        
        self.lstm = nn.LSTM(
            input_size=input_dim,
            hidden_size=hidden_dim // 2,
            num_layers=num_layers,
            batch_first=True,
            bidirectional=True,
            dropout=dropout if num_layers > 1 else 0,
        )
        
        self.dropout = nn.Dropout(dropout)
        
    def forward(
        self,
        x: torch.Tensor,
        lengths: Optional[torch.Tensor] = None,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        output, (h_n, _) = self.lstm(x)
        
        forward_final = h_n[-2]
        backward_final = h_n[-1]
        final = torch.cat([forward_final, backward_final], dim=-1)
        
        output = self.dropout(output)
        
        return output, final


# =============================================================================
# CONTRASTIVE LOSS
# =============================================================================

class SupervisedContrastiveLoss(nn.Module):
    """
    Supervised Contrastive Loss with Hard Negative Mining
    
    Features:
    - Pulls samples of the same class together
    - Pushes samples of different classes apart
    - Extra weight for confused class pairs (hard negatives)
    """
    
    def __init__(
        self, 
        temperature: float = 0.07,
        hard_negative_weight: float = 2.0,
        confused_pairs: Optional[List[Tuple[int, int]]] = None,
    ):
        super().__init__()
        self.temperature = temperature
        self.hard_negative_weight = hard_negative_weight
        # Pairs of class IDs that are commonly confused
        self.confused_pairs = confused_pairs or []
    
    def forward(self, features: torch.Tensor, labels: torch.Tensor) -> torch.Tensor:
        """
        Args:
            features: Normalized embeddings [batch_size, embedding_dim]
            labels: Class labels [batch_size]
        """
        device = features.device
        batch_size = features.shape[0]
        
        # Create mask for positive pairs (same class)
        labels_col = labels.contiguous().view(-1, 1)
        mask_pos = torch.eq(labels_col, labels_col.T).float().to(device)
        
        # Compute similarity matrix
        similarity_matrix = torch.matmul(features, features.T) / self.temperature
        
        # For numerical stability
        logits_max, _ = torch.max(similarity_matrix, dim=1, keepdim=True)
        logits = similarity_matrix - logits_max.detach()
        
        # Remove diagonal
        logits_mask = torch.scatter(
            torch.ones_like(mask_pos),
            1,
            torch.arange(batch_size).view(-1, 1).to(device),
            0
        )
        mask_pos = mask_pos * logits_mask
        
        # Create hard negative weight mask
        hard_neg_mask = torch.ones_like(mask_pos)
        for (c1, c2) in self.confused_pairs:
            # Find samples of class c1 and c2
            is_c1 = (labels == c1).float().unsqueeze(1)  # [batch, 1]
            is_c2 = (labels == c2).float().unsqueeze(0)  # [1, batch]
            
            # Mark pairs where one is c1 and other is c2 as hard negatives
            hard_neg_mask = hard_neg_mask + (is_c1 * is_c2 + is_c1.T * is_c2.T) * (self.hard_negative_weight - 1)
        
        # Weighted exp_logits (harder negatives get more weight)
        exp_logits = torch.exp(logits) * logits_mask * hard_neg_mask
        
        # Log probability
        log_prob = logits - torch.log(exp_logits.sum(1, keepdim=True) + 1e-8)
        
        # Mean of log-likelihood over positive pairs
        mean_log_prob_pos = (mask_pos * log_prob).sum(1) / (mask_pos.sum(1) + 1e-8)
        
        # Loss is negative log-likelihood
        loss = -mean_log_prob_pos.mean()
        
        return loss


# =============================================================================
# V29: HYBRID GGNN-BiLSTM WITH CONTRASTIVE LEARNING
# =============================================================================

class HybridGGNNBiLSTMv29(nn.Module):
    """
    V29: Hybrid GGNN-BiLSTM with Contrastive Learning
    
    Architecture:
    1. GGNN with edge-type attention processes PDG
    2. Nodes reordered by topological sort
    3. BiLSTM for temporal context
    4. Full 193 handcrafted features via dedicated MLP
    5. Projection head for contrastive learning
    6. Classification head for final predictions
    
    Training modes:
    - contrastive: Returns L2-normalized projections for contrastive loss
    - classification: Returns logits for cross-entropy
    """
    
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
        
        self.ggnn_hidden_dim = ggnn_hidden_dim
        self.lstm_hidden_dim = lstm_hidden_dim
        self.projection_dim = projection_dim
        self.handcrafted_dim = handcrafted_dim
        
        # GGNN with edge-type attention
        self.ggnn = EdgeTypeAttentionGGNN(
            input_dim=node_feature_dim,
            hidden_dim=ggnn_hidden_dim,
            num_steps=ggnn_steps,
            num_edge_types=2,
            attention_heads=attention_heads,
            dropout=dropout,
        )
        
        # BiLSTM for sequential encoding
        self.bilstm = BiLSTMEncoder(
            input_dim=ggnn_hidden_dim,
            hidden_dim=lstm_hidden_dim,
            num_layers=lstm_layers,
            dropout=dropout,
        )
        
        # Attention for graph-level pooling
        self.attention = nn.Sequential(
            nn.Linear(lstm_hidden_dim, 64),
            nn.Tanh(),
            nn.Linear(64, 1),
        )
        
        # Handcrafted feature encoder (all 193 features)
        self.handcrafted_encoder = nn.Sequential(
            nn.Linear(handcrafted_dim, 256),
            nn.ReLU(),
            nn.BatchNorm1d(256),
            nn.Dropout(dropout),
            nn.Linear(256, 128),
            nn.ReLU(),
            nn.BatchNorm1d(128),
            nn.Dropout(dropout),
            nn.Linear(128, 64),
            nn.ReLU(),
        )
        
        # Combined representation dimension
        combined_dim = lstm_hidden_dim + 64  # LSTM + handcrafted
        
        # Projection head for contrastive learning
        self.projection_head = nn.Sequential(
            nn.Linear(combined_dim, combined_dim),
            nn.ReLU(),
            nn.Linear(combined_dim, projection_dim),
        )
        
        # Classification head
        self.classifier = nn.Sequential(
            nn.Linear(combined_dim, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(128, 64),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(64, num_classes),
        )
        
    def forward(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
        handcrafted_features: torch.Tensor,
        mode: str = 'classification',
        return_attention: bool = False,
    ) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            node_features: [batch, max_nodes, node_feature_dim]
            adj_data: Data dependency adjacency [batch, max_nodes, max_nodes]
            adj_control: Control dependency adjacency [batch, max_nodes, max_nodes]
            topo_order: Topological ordering indices [batch, max_nodes]
            node_mask: Valid node mask [batch, max_nodes]
            seq_lengths: Number of valid nodes per sample [batch]
            handcrafted_features: [batch, 193]
            mode: 'contrastive' or 'classification'
            return_attention: If True, also return edge-type attention weights
            
        Returns:
            - mode='contrastive': L2-normalized projections [batch, projection_dim]
            - mode='classification': logits [batch, num_classes]
            - (optional) edge_attn: [steps, batch, nodes, 2]
        """
        batch_size, max_nodes, _ = node_features.shape
        
        # Step 1: GGNN with edge-type attention
        h_ggnn, edge_attn = self.ggnn(node_features, adj_data, adj_control, node_mask)
        
        # Step 2: Reorder by topological order
        h_ordered = self._reorder_by_topo(h_ggnn, topo_order)
        
        # Step 3: BiLSTM encoding
        h_lstm_all, h_lstm_final = self.bilstm(h_ordered, seq_lengths)
        
        # Step 4: Attention pooling
        lstm_seq_len = h_lstm_all.size(1)
        attn_mask = self._create_seq_mask(seq_lengths, lstm_seq_len)
        
        attn_scores = self.attention(h_lstm_all).squeeze(-1)
        attn_scores = attn_scores.masked_fill(~attn_mask, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=-1)
        attn_weights = torch.nan_to_num(attn_weights, nan=0.0)
        
        h_pooled = torch.bmm(attn_weights.unsqueeze(1), h_lstm_all).squeeze(1)
        h_combined = h_pooled + h_lstm_final
        
        # Step 5: Encode handcrafted features
        h_handcrafted = self.handcrafted_encoder(handcrafted_features)
        
        # Step 6: Combine LSTM output with handcrafted features
        h_final = torch.cat([h_combined, h_handcrafted], dim=-1)
        
        # Step 7: Output based on mode
        if mode == 'contrastive':
            projection = self.projection_head(h_final)
            projection = F.normalize(projection, p=2, dim=1)
            if return_attention:
                return projection, edge_attn
            return projection
        else:
            logits = self.classifier(h_final)
            if return_attention:
                return logits, edge_attn
            return logits
    
    def _reorder_by_topo(self, h: torch.Tensor, topo_order: torch.Tensor) -> torch.Tensor:
        batch_size, max_nodes, hidden_dim = h.shape
        idx = topo_order.unsqueeze(-1).expand(-1, -1, hidden_dim)
        h_ordered = torch.gather(h, 1, idx)
        return h_ordered
    
    def _create_seq_mask(self, lengths: torch.Tensor, max_len: int) -> torch.Tensor:
        positions = torch.arange(max_len, device=lengths.device).unsqueeze(0)
        mask = positions < lengths.unsqueeze(1)
        return mask
    
    def get_embedding(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
        handcrafted_features: torch.Tensor,
    ) -> torch.Tensor:
        """Get the combined embedding (before projection/classification)"""
        batch_size, max_nodes, _ = node_features.shape
        
        h_ggnn, _ = self.ggnn(node_features, adj_data, adj_control, node_mask)
        h_ordered = self._reorder_by_topo(h_ggnn, topo_order)
        h_lstm_all, h_lstm_final = self.bilstm(h_ordered, seq_lengths)
        
        lstm_seq_len = h_lstm_all.size(1)
        attn_mask = self._create_seq_mask(seq_lengths, lstm_seq_len)
        
        attn_scores = self.attention(h_lstm_all).squeeze(-1)
        attn_scores = attn_scores.masked_fill(~attn_mask, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=-1)
        attn_weights = torch.nan_to_num(attn_weights, nan=0.0)
        
        h_pooled = torch.bmm(attn_weights.unsqueeze(1), h_lstm_all).squeeze(1)
        h_combined = h_pooled + h_lstm_final
        
        h_handcrafted = self.handcrafted_encoder(handcrafted_features)
        h_final = torch.cat([h_combined, h_handcrafted], dim=-1)
        
        return h_final


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    print("Testing V29 GGNN-BiLSTM with Contrastive Learning...")
    
    batch_size = 4
    max_nodes = 32
    node_feature_dim = 34
    num_classes = 9
    handcrafted_dim = 193
    
    # Random test data
    node_features = torch.randn(batch_size, max_nodes, node_feature_dim)
    adj_data = (torch.rand(batch_size, max_nodes, max_nodes) > 0.9).float()
    adj_control = (torch.rand(batch_size, max_nodes, max_nodes) > 0.95).float()
    topo_order = torch.stack([torch.randperm(max_nodes) for _ in range(batch_size)])
    node_mask = torch.ones(batch_size, max_nodes, dtype=torch.bool)
    seq_lengths = torch.randint(10, max_nodes, (batch_size,))
    handcrafted = torch.randn(batch_size, handcrafted_dim)
    labels = torch.randint(0, num_classes, (batch_size,))
    
    # Test model
    model = HybridGGNNBiLSTMv29(
        node_feature_dim=node_feature_dim,
        ggnn_hidden_dim=64,
        ggnn_steps=4,
        attention_heads=4,
        lstm_hidden_dim=128,
        lstm_layers=2,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
        projection_dim=128,
    )
    
    # Test contrastive mode
    projections = model(
        node_features, adj_data, adj_control, topo_order,
        node_mask, seq_lengths, handcrafted, mode='contrastive'
    )
    print(f"Contrastive projection shape: {projections.shape}")
    print(f"Projection norm (should be ~1): {projections.norm(dim=1).mean():.4f}")
    
    # Test classification mode
    logits, edge_attn = model(
        node_features, adj_data, adj_control, topo_order,
        node_mask, seq_lengths, handcrafted, mode='classification',
        return_attention=True
    )
    print(f"Classification logits shape: {logits.shape}")
    print(f"Edge attention shape: {edge_attn.shape}")
    
    # Test contrastive loss
    loss_fn = SupervisedContrastiveLoss(
        temperature=0.07,
        hard_negative_weight=2.0,
        confused_pairs=[(2, 6), (3, 5)],  # Example: INCEPTION-SPECTRE_V1, L1TF-RETBLEED
    )
    con_loss = loss_fn(projections, labels)
    print(f"Contrastive loss: {con_loss.item():.4f}")
    
    # Test cross-entropy loss
    ce_loss = F.cross_entropy(logits, labels)
    print(f"Cross-entropy loss: {ce_loss.item():.4f}")
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"\nTotal parameters: {total_params:,}")
