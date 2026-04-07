#!/usr/bin/env python3
"""
Graph Neural Network for Semantic Assembly Graphs

Implements a simple but effective GNN using message passing, designed to work
with the semantic graphs built by SemanticGraphBuilder.

Key features:
1. Multi-layer message passing for learning graph structure
2. Attention-based aggregation for focusing on important neighbors
3. Graph-level pooling with attention for classification
4. No external GNN library dependency (pure PyTorch)
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Tuple, Optional
import numpy as np


class GraphAttentionLayer(nn.Module):
    """
    Graph Attention Layer (GAT-style) for message passing.
    
    Computes attention weights between nodes and aggregates neighbor features.
    """
    
    def __init__(self, in_features: int, out_features: int, dropout: float = 0.1):
        super().__init__()
        
        self.in_features = in_features
        self.out_features = out_features
        
        # Linear transformations for attention
        self.W = nn.Linear(in_features, out_features, bias=False)
        self.a_src = nn.Linear(out_features, 1, bias=False)
        self.a_dst = nn.Linear(out_features, 1, bias=False)
        
        self.dropout = nn.Dropout(dropout)
        self.leaky_relu = nn.LeakyReLU(0.2)
        
    def forward(self, x: torch.Tensor, adj: torch.Tensor) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            x: Node features [batch, nodes, features]
            adj: Adjacency matrix [batch, nodes, nodes]
            
        Returns:
            Updated node features [batch, nodes, out_features]
        """
        # Transform features
        h = self.W(x)  # [batch, nodes, out_features]
        
        batch_size, num_nodes, _ = h.shape
        
        # Compute attention scores
        # e_ij = LeakyReLU(a^T [Wh_i || Wh_j])
        # We use additive attention: a_src(h_i) + a_dst(h_j)
        
        attn_src = self.a_src(h)  # [batch, nodes, 1]
        attn_dst = self.a_dst(h)  # [batch, nodes, 1]
        
        # Broadcast to get attention matrix
        # attn_src: [batch, nodes, 1] -> expand for all j
        # attn_dst: [batch, 1, nodes] -> transpose for all i
        attn = attn_src + attn_dst.transpose(1, 2)  # [batch, nodes, nodes]
        attn = self.leaky_relu(attn)
        
        # Mask non-edges with large negative value
        mask = (adj == 0)
        attn = attn.masked_fill(mask, float('-inf'))
        
        # Softmax over neighbors
        attn = F.softmax(attn, dim=-1)
        
        # Handle isolated nodes (all -inf -> nan after softmax)
        attn = torch.nan_to_num(attn, nan=0.0)
        
        attn = self.dropout(attn)
        
        # Aggregate neighbor features
        out = torch.bmm(attn, h)  # [batch, nodes, out_features]
        
        return out


class MessagePassingLayer(nn.Module):
    """
    Simple message passing layer with aggregation.
    
    Message: m_ij = MLP(h_i || h_j)
    Aggregate: h'_i = MLP(h_i || SUM_j(m_ij))
    """
    
    def __init__(self, in_features: int, out_features: int, dropout: float = 0.1):
        super().__init__()
        
        # Message MLP
        self.message_mlp = nn.Sequential(
            nn.Linear(in_features * 2, out_features),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # Update MLP
        self.update_mlp = nn.Sequential(
            nn.Linear(in_features + out_features, out_features),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
    
    def forward(self, x: torch.Tensor, adj: torch.Tensor) -> torch.Tensor:
        """
        Args:
            x: Node features [batch, nodes, features]
            adj: Adjacency matrix [batch, nodes, nodes]
        """
        batch_size, num_nodes, feat_dim = x.shape
        
        # Expand x for pairwise operations
        x_i = x.unsqueeze(2).expand(-1, -1, num_nodes, -1)  # [batch, nodes, nodes, feat]
        x_j = x.unsqueeze(1).expand(-1, num_nodes, -1, -1)  # [batch, nodes, nodes, feat]
        
        # Concatenate for messages
        x_ij = torch.cat([x_i, x_j], dim=-1)  # [batch, nodes, nodes, feat*2]
        
        # Compute messages
        messages = self.message_mlp(x_ij)  # [batch, nodes, nodes, out_feat]
        
        # Mask messages by adjacency
        adj_expanded = adj.unsqueeze(-1)  # [batch, nodes, nodes, 1]
        messages = messages * adj_expanded
        
        # Aggregate messages (sum)
        aggregated = messages.sum(dim=2)  # [batch, nodes, out_feat]
        
        # Update node features
        h_new = torch.cat([x, aggregated], dim=-1)
        out = self.update_mlp(h_new)
        
        return out


class GraphPooling(nn.Module):
    """
    Graph-level pooling with attention.
    
    Computes attention weights for each node and creates a weighted sum
    as the graph representation.
    """
    
    def __init__(self, in_features: int, hidden_dim: int = 64):
        super().__init__()
        
        self.attention = nn.Sequential(
            nn.Linear(in_features, hidden_dim),
            nn.Tanh(),
            nn.Linear(hidden_dim, 1),
        )
    
    def forward(self, x: torch.Tensor, mask: Optional[torch.Tensor] = None) -> torch.Tensor:
        """
        Args:
            x: Node features [batch, nodes, features]
            mask: Optional mask for valid nodes [batch, nodes]
            
        Returns:
            Graph-level features [batch, features]
        """
        # Compute attention scores
        attn = self.attention(x).squeeze(-1)  # [batch, nodes]
        
        if mask is not None:
            attn = attn.masked_fill(~mask, float('-inf'))
        
        attn = F.softmax(attn, dim=-1)
        attn = torch.nan_to_num(attn, nan=0.0)
        
        # Weighted sum
        out = torch.bmm(attn.unsqueeze(1), x).squeeze(1)  # [batch, features]
        
        return out


class SemanticGNN(nn.Module):
    """
    Complete GNN model for semantic assembly graph classification.
    
    Architecture:
    1. Node feature embedding
    2. Multiple message passing / attention layers
    3. Graph pooling with attention
    4. Classification head
    """
    
    def __init__(
        self,
        node_feature_dim: int = 21,  # 16 node types + 5 attributes
        hidden_dim: int = 64,
        num_layers: int = 3,
        num_classes: int = 9,
        dropout: float = 0.2,
        use_attention: bool = True,
    ):
        super().__init__()
        
        self.node_feature_dim = node_feature_dim
        self.hidden_dim = hidden_dim
        self.num_layers = num_layers
        self.use_attention = use_attention
        
        # Initial node embedding
        self.node_embed = nn.Sequential(
            nn.Linear(node_feature_dim, hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # Message passing layers
        self.mp_layers = nn.ModuleList()
        for i in range(num_layers):
            if use_attention:
                self.mp_layers.append(
                    GraphAttentionLayer(hidden_dim, hidden_dim, dropout)
                )
            else:
                self.mp_layers.append(
                    MessagePassingLayer(hidden_dim, hidden_dim, dropout)
                )
        
        # Layer norms for stability
        self.layer_norms = nn.ModuleList([
            nn.LayerNorm(hidden_dim) for _ in range(num_layers)
        ])
        
        # Graph pooling
        self.pooling = GraphPooling(hidden_dim, hidden_dim)
        
        # Classification head
        self.classifier = nn.Sequential(
            nn.Linear(hidden_dim, hidden_dim),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, num_classes),
        )
    
    def forward(
        self, 
        node_features: torch.Tensor, 
        adjacency: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None
    ) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            node_features: [batch, max_nodes, node_feature_dim]
            adjacency: [batch, max_nodes, max_nodes]
            node_mask: Optional [batch, max_nodes] - True for valid nodes
            
        Returns:
            logits: [batch, num_classes]
        """
        # Initial embedding
        h = self.node_embed(node_features)
        
        # Message passing with residual connections
        for i, (mp_layer, ln) in enumerate(zip(self.mp_layers, self.layer_norms)):
            h_new = mp_layer(h, adjacency)
            h = ln(h + h_new)  # Residual + LayerNorm
        
        # Graph pooling
        graph_repr = self.pooling(h, node_mask)
        
        # Classification
        logits = self.classifier(graph_repr)
        
        return logits
    
    def encode(
        self,
        node_features: torch.Tensor,
        adjacency: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None
    ) -> torch.Tensor:
        """
        Get graph-level embedding without classification.
        """
        h = self.node_embed(node_features)
        
        for mp_layer, ln in zip(self.mp_layers, self.layer_norms):
            h_new = mp_layer(h, adjacency)
            h = ln(h + h_new)
        
        graph_repr = self.pooling(h, node_mask)
        return graph_repr


class HybridGNNClassifier(nn.Module):
    """
    Hybrid classifier combining GNN graph encoding with handcrafted features.
    
    This combines:
    1. GNN encoding of the semantic graph structure
    2. Attack pattern features from the graph
    3. Original handcrafted features (193 features from RF model)
    """
    
    def __init__(
        self,
        node_feature_dim: int = 21,
        gnn_hidden_dim: int = 64,
        gnn_num_layers: int = 3,
        pattern_feature_dim: int = 30,  # From AttackPatternDetector
        handcrafted_feature_dim: int = 193,  # From RF model
        num_classes: int = 9,
        dropout: float = 0.2,
    ):
        super().__init__()
        
        # GNN encoder for graph structure
        self.gnn = SemanticGNN(
            node_feature_dim=node_feature_dim,
            hidden_dim=gnn_hidden_dim,
            num_layers=gnn_num_layers,
            num_classes=num_classes,  # Not used, we take encoding
            dropout=dropout,
            use_attention=True,
        )
        
        # Pattern feature encoder
        self.pattern_encoder = nn.Sequential(
            nn.Linear(pattern_feature_dim, 64),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(64, 32),
            nn.ReLU(),
        )
        
        # Handcrafted feature encoder
        self.handcrafted_encoder = nn.Sequential(
            nn.Linear(handcrafted_feature_dim, 256),
            nn.ReLU(),
            nn.Dropout(dropout),
            nn.Linear(256, 128),
            nn.ReLU(),
            nn.Dropout(dropout),
        )
        
        # Combined dimension: gnn_hidden + pattern(32) + handcrafted(128)
        combined_dim = gnn_hidden_dim + 32 + 128
        
        # Final classifier
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
        adjacency: torch.Tensor,
        pattern_features: torch.Tensor,
        handcrafted_features: torch.Tensor,
        node_mask: Optional[torch.Tensor] = None,
    ) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            node_features: [batch, max_nodes, node_feature_dim]
            adjacency: [batch, max_nodes, max_nodes]
            pattern_features: [batch, pattern_feature_dim]
            handcrafted_features: [batch, handcrafted_feature_dim]
            node_mask: Optional [batch, max_nodes]
            
        Returns:
            logits: [batch, num_classes]
        """
        # GNN encoding
        graph_repr = self.gnn.encode(node_features, adjacency, node_mask)
        
        # Pattern encoding
        pattern_repr = self.pattern_encoder(pattern_features)
        
        # Handcrafted encoding
        handcrafted_repr = self.handcrafted_encoder(handcrafted_features)
        
        # Combine all representations
        combined = torch.cat([graph_repr, pattern_repr, handcrafted_repr], dim=-1)
        
        # Classify
        logits = self.classifier(combined)
        
        return logits


# =============================================================================
# TESTING
# =============================================================================

if __name__ == '__main__':
    # Test the GNN
    batch_size = 4
    max_nodes = 32
    node_feature_dim = 21
    num_classes = 9
    
    # Random test data
    node_features = torch.randn(batch_size, max_nodes, node_feature_dim)
    adjacency = torch.randint(0, 2, (batch_size, max_nodes, max_nodes)).float()
    # Make symmetric
    adjacency = (adjacency + adjacency.transpose(1, 2)) / 2
    adjacency = (adjacency > 0.5).float()
    
    # Test SemanticGNN
    print("Testing SemanticGNN...")
    model = SemanticGNN(
        node_feature_dim=node_feature_dim,
        hidden_dim=64,
        num_layers=3,
        num_classes=num_classes,
    )
    
    logits = model(node_features, adjacency)
    print(f"Input shape: {node_features.shape}")
    print(f"Output shape: {logits.shape}")
    print(f"Output: {logits[0]}")
    
    # Test HybridGNNClassifier
    print("\nTesting HybridGNNClassifier...")
    pattern_features = torch.randn(batch_size, 30)
    handcrafted_features = torch.randn(batch_size, 193)
    
    hybrid_model = HybridGNNClassifier(
        node_feature_dim=node_feature_dim,
        gnn_hidden_dim=64,
        pattern_feature_dim=30,
        handcrafted_feature_dim=193,
        num_classes=num_classes,
    )
    
    logits = hybrid_model(node_features, adjacency, pattern_features, handcrafted_features)
    print(f"Output shape: {logits.shape}")
    print(f"Output: {logits[0]}")
    
    # Count parameters
    total_params = sum(p.numel() for p in hybrid_model.parameters())
    print(f"\nTotal parameters: {total_params:,}")
