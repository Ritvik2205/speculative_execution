#!/usr/bin/env python3
"""
V28: Hybrid GGNN-BiLSTM with Edge-Type Specific Attention

Key improvement over V27:
- Edge-type specific attention mechanism that learns to weight
  data dependencies vs control dependencies differently
- Allows model to focus on the most relevant dependency type
  for each node/context (e.g., data deps for Spectre V1, control deps for BHI)

Architecture:
1. GGNN with Edge-Type Attention for structural intelligence
2. BiLSTM for temporal intelligence
3. Combined classification with handcrafted features
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Tuple, Optional, List
import numpy as np


# =============================================================================
# EDGE-TYPE ATTENTION GGNN LAYER
# =============================================================================

class EdgeTypeAttentionGGNNLayer(nn.Module):
    """
    GGNN Layer with Edge-Type Specific Attention
    
    Instead of simply summing messages from different edge types,
    learns attention weights to dynamically weight the importance
    of data dependencies vs control dependencies.
    
    Attention equation:
    α_k = softmax(a^T [h_v || msg_k])  for edge type k
    messages = Σ_k α_k * msg_k
    h_v^{(t+1)} = GRU(h_v^{(t)}, messages)
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
        self.head_dim = hidden_dim // attention_heads
        
        # Edge-type specific message transformations
        self.edge_transforms = nn.ModuleList([
            nn.Linear(hidden_dim, hidden_dim, bias=False)
            for _ in range(num_edge_types)
        ])
        
        # Edge-type attention network
        # Takes node state and computes attention over edge types
        self.edge_type_attention = nn.Sequential(
            nn.Linear(hidden_dim * 2, hidden_dim),
            nn.ReLU(),
            nn.Linear(hidden_dim, num_edge_types),
        )
        
        # Multi-head attention for neighbor aggregation within each edge type
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
        """
        Forward pass with edge-type attention.
        
        Args:
            h: Node embeddings [batch, nodes, hidden_dim]
            adj_list: List of adjacency matrices per edge type
                     Each: [batch, nodes, nodes]
        
        Returns:
            h_new: Updated node embeddings [batch, nodes, hidden_dim]
            edge_attn: Edge-type attention weights [batch, nodes, num_edge_types]
        """
        batch_size, num_nodes, _ = h.shape
        
        # Compute messages for each edge type
        messages_per_type = []
        
        for edge_type, (edge_transform, neighbor_attn, adj) in enumerate(
            zip(self.edge_transforms, self.neighbor_attention, adj_list)
        ):
            # Transform node embeddings for this edge type
            h_transformed = edge_transform(h)  # [batch, nodes, hidden]
            
            # Create attention mask from adjacency (1 = attend, 0 = mask)
            # MultiheadAttention expects True = masked out
            attn_mask = (adj == 0)  # [batch, nodes, nodes]
            
            # Apply multi-head attention for neighbor aggregation
            # Query: h, Key/Value: h_transformed, Mask: attn_mask
            msg, _ = neighbor_attn(
                query=h,
                key=h_transformed,
                value=h_transformed,
                key_padding_mask=None,
                attn_mask=None,  # We'll use adjacency weighting instead
            )
            
            # Weight by adjacency for proper neighborhood aggregation
            msg_weighted = torch.bmm(adj, msg)  # [batch, nodes, hidden]
            
            messages_per_type.append(msg_weighted)
        
        # Stack messages: [batch, nodes, num_edge_types, hidden]
        messages_stacked = torch.stack(messages_per_type, dim=2)
        
        # Compute edge-type attention weights for each node
        # Use global pooling of messages as context
        msg_context = messages_stacked.mean(dim=2)  # [batch, nodes, hidden]
        attn_input = torch.cat([h, msg_context], dim=-1)  # [batch, nodes, hidden*2]
        
        edge_type_weights = self.edge_type_attention(attn_input)  # [batch, nodes, num_edge_types]
        edge_type_weights = F.softmax(edge_type_weights, dim=-1)
        
        # Weighted combination of messages from different edge types
        # edge_type_weights: [batch, nodes, num_edge_types, 1]
        # messages_stacked: [batch, nodes, num_edge_types, hidden]
        messages = torch.sum(
            messages_stacked * edge_type_weights.unsqueeze(-1),
            dim=2
        )  # [batch, nodes, hidden]
        
        messages = self.dropout(messages)
        
        # GRU update
        h_flat = h.view(-1, self.hidden_dim)
        msg_flat = messages.view(-1, self.hidden_dim)
        h_new_flat = self.gru(msg_flat, h_flat)
        h_new = h_new_flat.view(batch_size, num_nodes, self.hidden_dim)
        
        h_new = self.layer_norm(h_new)
        
        return h_new, edge_type_weights


class EdgeTypeAttentionGGNN(nn.Module):
    """
    Multi-step GGNN with Edge-Type Attention
    
    Performs T steps of message passing with learned attention
    over data vs control dependencies.
    """
    
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
        self.num_edge_types = num_edge_types
        
        # Initial projection
        self.input_proj = nn.Sequential(
            nn.Linear(input_dim, hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # GGNN layers with edge-type attention (one per step for more expressiveness)
        self.ggnn_layers = nn.ModuleList([
            EdgeTypeAttentionGGNNLayer(
                hidden_dim=hidden_dim,
                num_edge_types=num_edge_types,
                attention_heads=attention_heads,
                dropout=dropout,
            )
            for _ in range(num_steps)
        ])
        
        # Residual layer norms
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
        """
        Forward pass.
        
        Args:
            x: Node features [batch, nodes, input_dim]
            adj_data: Data dependency adjacency [batch, nodes, nodes]
            adj_control: Control dependency adjacency [batch, nodes, nodes]
            node_mask: Optional mask for valid nodes [batch, nodes]
            
        Returns:
            h: Node embeddings after T steps [batch, nodes, hidden_dim]
            edge_attn_all: Edge-type attention weights per step [steps, batch, nodes, num_edge_types]
        """
        # Initial projection
        h = self.input_proj(x)
        
        adj_list = [adj_data, adj_control]
        edge_attn_all = []
        
        # Message passing steps
        for t, (ggnn_layer, ln) in enumerate(zip(self.ggnn_layers, self.layer_norms)):
            h_new, edge_attn = ggnn_layer(h, adj_list)
            h = ln(h + h_new)  # Residual + LayerNorm
            edge_attn_all.append(edge_attn)
        
        # Mask invalid nodes
        if node_mask is not None:
            h = h * node_mask.unsqueeze(-1).float()
        
        edge_attn_all = torch.stack(edge_attn_all, dim=0)
        
        return h, edge_attn_all


# =============================================================================
# BiLSTM ENCODER (same as v27)
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
# V28: HYBRID GGNN-BiLSTM WITH EDGE-TYPE ATTENTION
# =============================================================================

class HybridGGNNBiLSTMv28(nn.Module):
    """
    V28: Hybrid GGNN-BiLSTM with Edge-Type Specific Attention
    
    Key improvement: Learns to weight data vs control dependencies
    differently based on context, allowing the model to focus on
    the most relevant dependency type for each attack pattern.
    
    Architecture:
    1. GGNN with edge-type attention processes PDG
    2. Nodes reordered by topological sort
    3. BiLSTM for temporal context
    4. Edge-type attention visualization available
    5. Combined with handcrafted features
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
        handcrafted_dim: int = 0,
        dropout: float = 0.2,
    ):
        super().__init__()
        
        self.ggnn_hidden_dim = ggnn_hidden_dim
        self.lstm_hidden_dim = lstm_hidden_dim
        self.use_handcrafted = handcrafted_dim > 0
        
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
        
        # Handcrafted feature encoder
        if self.use_handcrafted:
            self.handcrafted_encoder = nn.Sequential(
                nn.Linear(handcrafted_dim, 128),
                nn.ReLU(),
                nn.Dropout(dropout),
                nn.Linear(128, 64),
                nn.ReLU(),
            )
            classifier_input = lstm_hidden_dim + 64
        else:
            self.handcrafted_encoder = None
            classifier_input = lstm_hidden_dim
        
        # Classification head
        self.classifier = nn.Sequential(
            nn.Linear(classifier_input, 128),
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
        handcrafted_features: Optional[torch.Tensor] = None,
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
            handcrafted_features: Optional [batch, handcrafted_dim]
            return_attention: If True, also return edge-type attention weights
            
        Returns:
            logits: [batch, num_classes]
            (optional) edge_attn: [steps, batch, nodes, 2] edge-type attention
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
        
        # Step 5: Combine with handcrafted features
        if self.use_handcrafted and handcrafted_features is not None:
            h_handcrafted = self.handcrafted_encoder(handcrafted_features)
            h_combined = torch.cat([h_combined, h_handcrafted], dim=-1)
        
        # Step 6: Classification
        logits = self.classifier(h_combined)
        
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
    
    def get_edge_type_attention(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        node_mask: torch.Tensor,
    ) -> torch.Tensor:
        """
        Get edge-type attention weights for visualization/analysis.
        
        Returns:
            edge_attn: [steps, batch, nodes, 2]
                      Index 0 = data dependency attention
                      Index 1 = control dependency attention
        """
        _, edge_attn = self.ggnn(node_features, adj_data, adj_control, node_mask)
        return edge_attn


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    print("Testing V28 Edge-Type Attention GGNN-BiLSTM...")
    
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
    
    # Test model
    model = HybridGGNNBiLSTMv28(
        node_feature_dim=node_feature_dim,
        ggnn_hidden_dim=64,
        ggnn_steps=4,
        attention_heads=4,
        lstm_hidden_dim=128,
        lstm_layers=2,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
    )
    
    # Forward pass with attention
    logits, edge_attn = model(
        node_features, adj_data, adj_control, topo_order,
        node_mask, seq_lengths, handcrafted, return_attention=True
    )
    
    print(f"Output shape: {logits.shape}")
    print(f"Edge attention shape: {edge_attn.shape}")
    print(f"  - Steps: {edge_attn.shape[0]}")
    print(f"  - Batch: {edge_attn.shape[1]}")
    print(f"  - Nodes: {edge_attn.shape[2]}")
    print(f"  - Edge types: {edge_attn.shape[3]}")
    
    # Analyze attention weights
    mean_attn = edge_attn.mean(dim=(0, 1, 2))
    print(f"\nMean edge-type attention:")
    print(f"  Data dependencies: {mean_attn[0]:.3f}")
    print(f"  Control dependencies: {mean_attn[1]:.3f}")
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"\nTotal parameters: {total_params:,}")
