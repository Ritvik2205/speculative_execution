#!/usr/bin/env python3
"""
Hybrid GGNN-BiLSTM Architecture for Speculative Attack Classification

Architecture:
1. GGNN (Gated Graph Neural Network) for structural intelligence
   - Propagates "taint" information across the PDG
   - Uses GRU-based message passing for multi-step reasoning
   
2. BiLSTM for temporal intelligence
   - Captures sequential context and instruction ordering
   - Processes GNN-enriched embeddings in topological order

3. Classification head combines both representations
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Tuple, Optional, List
import numpy as np


# =============================================================================
# GGNN LAYER
# =============================================================================

class GGNNLayer(nn.Module):
    """
    Gated Graph Neural Network Layer
    
    Implements the message passing equation:
    h_v^{(t+1)} = GRU(h_v^{(t)}, sum_{u in N(v)} W * e_{uv} * h_u^{(t)})
    
    Supports multi-relational edges (data dependency, control dependency)
    """
    
    def __init__(
        self,
        hidden_dim: int,
        num_edge_types: int = 2,
        dropout: float = 0.1,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        self.num_edge_types = num_edge_types
        
        # Edge-type specific message transformations
        self.edge_mlps = nn.ModuleList([
            nn.Linear(hidden_dim, hidden_dim, bias=False)
            for _ in range(num_edge_types)
        ])
        
        # GRU for node state update
        self.gru = nn.GRUCell(hidden_dim, hidden_dim)
        
        # Dropout
        self.dropout = nn.Dropout(dropout)
        
    def forward(
        self,
        h: torch.Tensor,
        adj_list: List[torch.Tensor],
    ) -> torch.Tensor:
        """
        Forward pass for one message passing step.
        
        Args:
            h: Node embeddings [batch, nodes, hidden_dim]
            adj_list: List of adjacency matrices per edge type
                     Each: [batch, nodes, nodes]
        
        Returns:
            Updated node embeddings [batch, nodes, hidden_dim]
        """
        batch_size, num_nodes, _ = h.shape
        
        # Aggregate messages from all edge types
        messages = torch.zeros_like(h)
        
        for edge_type, (edge_mlp, adj) in enumerate(zip(self.edge_mlps, adj_list)):
            # Transform neighbor embeddings
            h_transformed = edge_mlp(h)  # [batch, nodes, hidden]
            
            # Aggregate: for each node, sum transformed embeddings of neighbors
            # adj[i,j] = 1 means edge from j to i
            msg = torch.bmm(adj, h_transformed)  # [batch, nodes, hidden]
            
            messages = messages + msg
        
        messages = self.dropout(messages)
        
        # GRU update for each node
        # Reshape for GRUCell: [batch * nodes, hidden]
        h_flat = h.view(-1, self.hidden_dim)
        msg_flat = messages.view(-1, self.hidden_dim)
        
        h_new_flat = self.gru(msg_flat, h_flat)
        
        h_new = h_new_flat.view(batch_size, num_nodes, self.hidden_dim)
        
        return h_new


class GGNN(nn.Module):
    """
    Multi-step Gated Graph Neural Network
    
    Performs T steps of message passing to propagate information
    across the graph structure.
    """
    
    def __init__(
        self,
        input_dim: int,
        hidden_dim: int,
        num_steps: int = 4,
        num_edge_types: int = 2,
        dropout: float = 0.1,
    ):
        super().__init__()
        
        self.hidden_dim = hidden_dim
        self.num_steps = num_steps
        
        # Initial projection from input features to hidden dim
        self.input_proj = nn.Sequential(
            nn.Linear(input_dim, hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # GGNN layer (shared across steps)
        self.ggnn_layer = GGNNLayer(
            hidden_dim=hidden_dim,
            num_edge_types=num_edge_types,
            dropout=dropout,
        )
        
        # Layer normalization for stability
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_steps)
        ])
        
    def forward(
        self,
        x: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None,
    ) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            x: Node features [batch, nodes, input_dim]
            adj_data: Data dependency adjacency [batch, nodes, nodes]
            adj_control: Control dependency adjacency [batch, nodes, nodes]
            node_mask: Optional mask for valid nodes [batch, nodes]
            
        Returns:
            Node embeddings after T steps [batch, nodes, hidden_dim]
        """
        # Initial projection
        h = self.input_proj(x)
        
        # Message passing steps
        adj_list = [adj_data, adj_control]
        
        for t in range(self.num_steps):
            h_new = self.ggnn_layer(h, adj_list)
            h = self.layer_norms[t](h + h_new)  # Residual + LayerNorm
        
        # Mask invalid nodes
        if node_mask is not None:
            h = h * node_mask.unsqueeze(-1).float()
        
        return h


# =============================================================================
# BiLSTM ENCODER
# =============================================================================

class BiLSTMEncoder(nn.Module):
    """
    Bidirectional LSTM for sequence encoding.
    
    Processes the GNN-enriched node embeddings in topological order
    to capture sequential context.
    """
    
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
            hidden_size=hidden_dim // 2,  # Bidirectional -> concat
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
        """
        Forward pass.
        
        Args:
            x: Sequence of embeddings [batch, seq_len, input_dim]
            lengths: Sequence lengths (unused, for API compatibility)
            
        Returns:
            output: All hidden states [batch, seq_len, hidden_dim]
            final: Final hidden state [batch, hidden_dim]
        """
        # Don't pack - process full sequence (simpler and avoids size mismatches)
        output, (h_n, _) = self.lstm(x)
        
        # Combine forward and backward final states
        # h_n shape: [num_layers * 2, batch, hidden_dim//2]
        forward_final = h_n[-2]  # Last layer, forward
        backward_final = h_n[-1]  # Last layer, backward
        final = torch.cat([forward_final, backward_final], dim=-1)
        
        output = self.dropout(output)
        
        return output, final


# =============================================================================
# HYBRID GGNN-BiLSTM MODEL
# =============================================================================

class HybridGGNNBiLSTM(nn.Module):
    """
    Hybrid GGNN + BiLSTM architecture for attack classification.
    
    Architecture:
    1. GGNN processes the PDG to learn structural dependencies
    2. Nodes are reordered via topological sort
    3. BiLSTM processes the sequence for temporal context
    4. Final hidden state is used for classification
    
    Optionally combines with handcrafted features.
    """
    
    def __init__(
        self,
        node_feature_dim: int = 34,
        ggnn_hidden_dim: int = 64,
        ggnn_steps: int = 4,
        lstm_hidden_dim: int = 128,
        lstm_layers: int = 2,
        num_classes: int = 9,
        handcrafted_dim: int = 0,  # Set > 0 to use handcrafted features
        dropout: float = 0.2,
    ):
        super().__init__()
        
        self.ggnn_hidden_dim = ggnn_hidden_dim
        self.lstm_hidden_dim = lstm_hidden_dim
        self.use_handcrafted = handcrafted_dim > 0
        
        # GGNN for structural encoding
        self.ggnn = GGNN(
            input_dim=node_feature_dim,
            hidden_dim=ggnn_hidden_dim,
            num_steps=ggnn_steps,
            num_edge_types=2,
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
        
        # Handcrafted feature encoder (optional)
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
            
        Returns:
            logits: [batch, num_classes]
        """
        batch_size, max_nodes, _ = node_features.shape
        
        # Step 1: GGNN message passing
        h_ggnn = self.ggnn(node_features, adj_data, adj_control, node_mask)
        # h_ggnn: [batch, max_nodes, ggnn_hidden_dim]
        
        # Step 2: Reorder nodes by topological order
        h_ordered = self._reorder_by_topo(h_ggnn, topo_order)
        
        # Step 3: BiLSTM encoding
        h_lstm_all, h_lstm_final = self.bilstm(h_ordered, seq_lengths)
        # h_lstm_all: [batch, max_nodes, lstm_hidden_dim]
        # h_lstm_final: [batch, lstm_hidden_dim]
        
        # Step 4: Attention pooling over sequence
        # Create mask for attention - use actual LSTM output size
        lstm_seq_len = h_lstm_all.size(1)
        attn_mask = self._create_seq_mask(seq_lengths, lstm_seq_len)  # [batch, lstm_seq_len]
        
        attn_scores = self.attention(h_lstm_all).squeeze(-1)  # [batch, lstm_seq_len]
        attn_scores = attn_scores.masked_fill(~attn_mask, float('-inf'))
        attn_weights = F.softmax(attn_scores, dim=-1)
        attn_weights = torch.nan_to_num(attn_weights, nan=0.0)
        
        h_pooled = torch.bmm(attn_weights.unsqueeze(1), h_lstm_all).squeeze(1)
        # h_pooled: [batch, lstm_hidden_dim]
        
        # Combine with final hidden state
        h_combined = h_pooled + h_lstm_final
        
        # Step 5: Combine with handcrafted features (if available)
        if self.use_handcrafted and handcrafted_features is not None:
            h_handcrafted = self.handcrafted_encoder(handcrafted_features)
            h_combined = torch.cat([h_combined, h_handcrafted], dim=-1)
        
        # Step 6: Classification
        logits = self.classifier(h_combined)
        
        return logits
    
    def _reorder_by_topo(
        self,
        h: torch.Tensor,
        topo_order: torch.Tensor,
    ) -> torch.Tensor:
        """Reorder node embeddings according to topological order"""
        batch_size, max_nodes, hidden_dim = h.shape
        
        # Gather embeddings in topological order
        # topo_order[b, i] = index of i-th node in topological order
        idx = topo_order.unsqueeze(-1).expand(-1, -1, hidden_dim)
        h_ordered = torch.gather(h, 1, idx)
        
        return h_ordered
    
    def _create_seq_mask(
        self,
        lengths: torch.Tensor,
        max_len: int,
    ) -> torch.Tensor:
        """Create boolean mask for valid sequence positions"""
        batch_size = lengths.size(0)
        positions = torch.arange(max_len, device=lengths.device).unsqueeze(0)
        mask = positions < lengths.unsqueeze(1)
        return mask
    
    def encode(
        self,
        node_features: torch.Tensor,
        adj_data: torch.Tensor,
        adj_control: torch.Tensor,
        topo_order: torch.Tensor,
        node_mask: torch.Tensor,
        seq_lengths: torch.Tensor,
    ) -> torch.Tensor:
        """Get embeddings without classification (for analysis)"""
        h_ggnn = self.ggnn(node_features, adj_data, adj_control, node_mask)
        h_ordered = self._reorder_by_topo(h_ggnn, topo_order)
        _, h_lstm_final = self.bilstm(h_ordered, seq_lengths)
        return h_lstm_final


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    # Test the model
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
    
    # Test model without handcrafted features
    print("Testing HybridGGNNBiLSTM (no handcrafted)...")
    model = HybridGGNNBiLSTM(
        node_feature_dim=node_feature_dim,
        ggnn_hidden_dim=64,
        ggnn_steps=3,
        lstm_hidden_dim=128,
        lstm_layers=2,
        num_classes=num_classes,
        handcrafted_dim=0,
    )
    
    logits = model(node_features, adj_data, adj_control, topo_order, node_mask, seq_lengths)
    print(f"Output shape: {logits.shape}")
    
    total_params = sum(p.numel() for p in model.parameters())
    print(f"Total parameters: {total_params:,}")
    
    # Test model with handcrafted features
    print("\nTesting HybridGGNNBiLSTM (with handcrafted)...")
    model_hybrid = HybridGGNNBiLSTM(
        node_feature_dim=node_feature_dim,
        ggnn_hidden_dim=64,
        ggnn_steps=3,
        lstm_hidden_dim=128,
        lstm_layers=2,
        num_classes=num_classes,
        handcrafted_dim=handcrafted_dim,
    )
    
    logits = model_hybrid(
        node_features, adj_data, adj_control, topo_order, 
        node_mask, seq_lengths, handcrafted
    )
    print(f"Output shape: {logits.shape}")
    
    total_params = sum(p.numel() for p in model_hybrid.parameters())
    print(f"Total parameters: {total_params:,}")
