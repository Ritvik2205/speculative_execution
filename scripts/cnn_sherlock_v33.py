#!/usr/bin/env python3
"""
SHERLOCK-style CNN Model for Speculative Execution Vulnerability Detection (v33)

This model replicates the SHERLOCK architecture from the paper:
"SHERLOCK: A Deep Learning Approach To Detect Software Vulnerabilities"

Architecture:
1. Input: Tokenized assembly instruction sequences
2. Embedding Layer: Maps tokens to dense vectors
3. Conv1D Layer: 512 filters, kernel size 9, ReLU activation
4. MaxPool1D: Down-sampling
5. Flatten
6. Dense(64, ReLU)
7. Dense(16, ReLU)
8. Output: Multi-class softmax (7 classes: SPECTRE_V1, MDS, RETBLEED, L1TF, BHI, INCEPTION, BENIGN)

Adapted for our assembly code sequences instead of C/C++ source code.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F


class SherlockCNN(nn.Module):
    """
    SHERLOCK-style CNN for vulnerability detection.
    
    Based on the architecture from:
    "SHERLOCK: A Deep Learning Approach To Detect Software Vulnerabilities"
    """
    
    def __init__(
        self,
        vocab_size: int,
        embedding_dim: int = 13,  # SHERLOCK uses 13
        num_filters: int = 512,    # SHERLOCK uses 512
        kernel_size: int = 9,      # SHERLOCK uses 9
        dense_hidden1: int = 64,   # SHERLOCK uses 64
        dense_hidden2: int = 16,   # SHERLOCK uses 16
        num_classes: int = 7,      # Our 7 vulnerability classes
        dropout: float = 0.5,      # SHERLOCK uses 0.5
        max_seq_len: int = 256     # Maximum sequence length
    ):
        super(SherlockCNN, self).__init__()
        
        self.vocab_size = vocab_size
        self.embedding_dim = embedding_dim
        self.num_filters = num_filters
        self.kernel_size = kernel_size
        self.max_seq_len = max_seq_len
        
        # 1. Embedding Layer
        # Maps integer tokens to dense vectors
        self.embedding = nn.Embedding(
            num_embeddings=vocab_size,
            embedding_dim=embedding_dim,
            padding_idx=0  # 0 is padding token
        )
        
        # 2. Convolutional Layer
        # 1D convolution to extract n-gram patterns
        self.conv1d = nn.Conv1d(
            in_channels=embedding_dim,
            out_channels=num_filters,
            kernel_size=kernel_size,
            padding=kernel_size // 2  # Same padding to preserve length
        )
        
        # 3. Pooling Layer
        # Max pooling to down-sample and retain most important features
        self.pool = nn.MaxPool1d(
            kernel_size=2,
            stride=2
        )
        
        # 4. Dense Layers
        # Calculate flattened size after conv + pool
        # After conv: max_seq_len (with same padding: kernel_size // 2 on each side)
        # After MaxPool1d(kernel=2, stride=2): max_seq_len // 2
        pooled_len = max_seq_len // 2
        flattened_size = num_filters * pooled_len
        
        self.dense1 = nn.Linear(flattened_size, dense_hidden1)
        self.dropout = nn.Dropout(dropout)
        self.dense2 = nn.Linear(dense_hidden1, dense_hidden2)
        
        # 5. Output Layer
        # Multi-class classification (single output head for our use case)
        self.output = nn.Linear(dense_hidden2, num_classes)
        
        # Initialize weights
        self._initialize_weights()
    
    def _initialize_weights(self):
        """Initialize model weights."""
        # Embedding: normal distribution
        nn.init.normal_(self.embedding.weight, mean=0.0, std=0.1)
        # Set padding to zero
        self.embedding.weight.data[0].fill_(0)
        
        # Conv1D: Xavier uniform
        nn.init.xavier_uniform_(self.conv1d.weight)
        nn.init.zeros_(self.conv1d.bias)
        
        # Dense layers: Xavier uniform
        nn.init.xavier_uniform_(self.dense1.weight)
        nn.init.zeros_(self.dense1.bias)
        
        nn.init.xavier_uniform_(self.dense2.weight)
        nn.init.zeros_(self.dense2.bias)
        
        # Output: Xavier uniform
        nn.init.xavier_uniform_(self.output.weight)
        nn.init.zeros_(self.output.bias)
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        """
        Forward pass.
        
        Args:
            x: Input tensor of shape (batch_size, seq_len) with token IDs
        
        Returns:
            Logits tensor of shape (batch_size, num_classes)
        """
        # x shape: (batch_size, seq_len)
        
        # 1. Embedding
        # (batch_size, seq_len) -> (batch_size, seq_len, embedding_dim)
        x = self.embedding(x)
        
        # 2. Conv1D expects (batch, channels, length)
        # Transpose: (batch_size, seq_len, embedding_dim) -> (batch_size, embedding_dim, seq_len)
        x = x.transpose(1, 2)
        
        # 3. Convolution + ReLU
        # (batch_size, embedding_dim, seq_len) -> (batch_size, num_filters, seq_len)
        x = F.relu(self.conv1d(x))
        
        # 4. Max Pooling
        # (batch_size, num_filters, seq_len) -> (batch_size, num_filters, seq_len // 2)
        x = self.pool(x)
        
        # 5. Flatten
        # (batch_size, num_filters, seq_len // 2) -> (batch_size, num_filters * seq_len // 2)
        batch_size = x.size(0)
        x = x.view(batch_size, -1)
        
        # 6. Dense Layers
        # (batch_size, flattened_size) -> (batch_size, dense_hidden1)
        x = F.relu(self.dense1(x))
        x = self.dropout(x)
        
        # (batch_size, dense_hidden1) -> (batch_size, dense_hidden2)
        x = F.relu(self.dense2(x))
        
        # 7. Output (no activation here, will apply softmax in loss)
        # (batch_size, dense_hidden2) -> (batch_size, num_classes)
        x = self.output(x)
        
        return x
    
    def get_embeddings(self, x: torch.Tensor) -> torch.Tensor:
        """
        Extract embeddings for visualization or analysis.
        
        Args:
            x: Input tensor of shape (batch_size, seq_len)
        
        Returns:
            Embedding tensor of shape (batch_size, seq_len, embedding_dim)
        """
        return self.embedding(x)
    
    def get_conv_features(self, x: torch.Tensor) -> torch.Tensor:
        """
        Extract convolutional features for analysis.
        
        Args:
            x: Input tensor of shape (batch_size, seq_len)
        
        Returns:
            Feature maps of shape (batch_size, num_filters, seq_len)
        """
        x = self.embedding(x)
        x = x.transpose(1, 2)
        x = F.relu(self.conv1d(x))
        return x
