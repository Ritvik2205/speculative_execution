#!/usr/bin/env python3
"""
Sequence Encoder for Instruction Sequences
Extracts fixed-size embeddings from instruction sequences to capture long-range dependencies.
"""

import re
import pickle
from pathlib import Path
from typing import List, Dict, Optional
from collections import Counter
import numpy as np

# Try to import torch for neural embeddings, fallback to simpler methods
try:
    import torch
    import torch.nn as nn
    HAS_TORCH = True
except ImportError:
    HAS_TORCH = False
    print("Warning: torch not available, using TF-IDF embeddings instead")


def opcode_of(line: str) -> str:
    """Extract opcode from instruction line."""
    if not line:
        return ""
    # Remove comments
    line = line.split(';')[0].split('#')[0].strip()
    if not line:
        return ""
    # Get first token (opcode)
    opcode = line.split()[0].lower().strip(',')
    return opcode


def tokenize_sequence(sequence: List[str]) -> List[str]:
    """
    Tokenize instruction sequence into opcodes.
    Returns list of opcode tokens.
    """
    tokens = []
    for line in sequence:
        opcode = opcode_of(line)
        if opcode and opcode != 'nop':
            tokens.append(opcode)
    return tokens


def build_vocab_from_sequences(sequences: List[List[str]], min_freq: int = 2) -> Dict[str, int]:
    """
    Build vocabulary from a collection of tokenized sequences.
    
    Args:
        sequences: List of tokenized sequences (each is a list of opcodes)
        min_freq: Minimum frequency for a token to be included
    
    Returns:
        Vocabulary dictionary mapping token -> id
    """
    counter = Counter()
    for seq in sequences:
        counter.update(seq)
    
    vocab = {"<pad>": 0, "<unk>": 1}
    for token, count in counter.items():
        if count >= min_freq and token not in vocab:
            vocab[token] = len(vocab)
    
    return vocab


class SimpleSequenceEncoder:
    """
    Simple sequence encoder using TF-IDF-like approach.
    Creates fixed-size embeddings without requiring neural networks.
    """
    
    def __init__(self, vocab: Dict[str, int], embedding_dim: int = 64):
        self.vocab = vocab
        self.embedding_dim = embedding_dim
        self.vocab_size = len(vocab)
        
        # Create simple embedding matrix (can be learned or fixed)
        # Using random initialization - in practice, could be learned
        np.random.seed(42)
        self.embedding_matrix = np.random.normal(0, 0.1, (self.vocab_size, embedding_dim))
        
        # Initialize with some structure: similar opcodes get similar embeddings
        self._initialize_structured_embeddings()
    
    def _initialize_structured_embeddings(self):
        """Initialize embeddings with some semantic structure."""
        # Group similar opcodes
        opcode_groups = {
            'load': ['ldr', 'ldrb', 'ldrh', 'ldp', 'ldur', 'ldursw', 'mov', 'movz', 'movk'],
            'store': ['str', 'strb', 'strh', 'stp', 'stur'],
            'branch': ['b', 'bl', 'br', 'blr', 'b.eq', 'b.ne', 'b.lt', 'b.gt', 'b.ge', 'b.le', 'b.hs', 'b.lo'],
            'call': ['call', 'callq', 'bl', 'blr'],
            'ret': ['ret', 'retq'],
            'arithmetic': ['add', 'sub', 'adds', 'subs', 'mul', 'div'],
            'compare': ['cmp', 'tst', 'test', 'subs'],
            'barrier': ['lfence', 'mfence', 'sfence', 'dsb', 'dmb', 'isb'],
            'cache': ['clflush', 'clflushopt', 'clwb'],
            'timing': ['rdtsc', 'rdtscp'],
        }
        
        # Assign similar embeddings to opcodes in the same group
        for group_name, opcodes in opcode_groups.items():
            group_embedding = np.random.normal(0, 0.1, self.embedding_dim)
            for opcode in opcodes:
                if opcode in self.vocab:
                    idx = self.vocab[opcode]
                    # Add group embedding with some noise
                    self.embedding_matrix[idx] = group_embedding + np.random.normal(0, 0.05, self.embedding_dim)
    
    def encode(self, sequence: List[str]) -> np.ndarray:
        """
        Encode a sequence into a fixed-size embedding.
        
        Args:
            sequence: List of instruction lines
        
        Returns:
            Fixed-size embedding vector (embedding_dim,)
        """
        tokens = tokenize_sequence(sequence)
        if not tokens:
            return np.zeros(self.embedding_dim)
        
        # Convert tokens to IDs
        token_ids = [self.vocab.get(tok, 1) for tok in tokens]  # 1 = <unk>
        
        # Get embeddings for each token
        embeddings = self.embedding_matrix[token_ids]
        
        # Pooling: Use mean pooling to get fixed-size representation
        # This captures the overall semantic content of the sequence
        pooled = np.mean(embeddings, axis=0)
        
        # Also add max pooling for additional information
        max_pooled = np.max(embeddings, axis=0)
        
        # Combine mean and max pooling
        combined = np.concatenate([pooled, max_pooled])
        
        # If we need exactly embedding_dim, take first half
        if len(combined) > self.embedding_dim:
            return combined[:self.embedding_dim]
        
        # Pad if needed
        if len(combined) < self.embedding_dim:
            return np.pad(combined, (0, self.embedding_dim - len(combined)))
        
        return combined


class BiLSTMSequenceEncoder:
    """
    BiLSTM-based sequence encoder (requires torch).
    More powerful but requires training.
    """
    
    def __init__(self, vocab: Dict[str, int], embedding_dim: int = 64, hidden_dim: int = 32):
        if not HAS_TORCH:
            raise ImportError("torch is required for BiLSTMSequenceEncoder")
        
        self.vocab = vocab
        self.embedding_dim = embedding_dim
        self.hidden_dim = hidden_dim
        self.vocab_size = len(vocab)
        
        # Build model
        self.model = nn.Sequential(
            nn.Embedding(self.vocab_size, embedding_dim, padding_idx=0),
            nn.LSTM(embedding_dim, hidden_dim, batch_first=True, bidirectional=True),
        )
        # Extract LSTM from Sequential
        self.embedding = self.model[0]
        self.lstm = self.model[1]
        
        # Initialize weights
        self._initialize_weights()
    
    def _initialize_weights(self):
        """Initialize model weights."""
        for module in self.model:
            if isinstance(module, nn.Embedding):
                nn.init.normal_(module.weight, 0, 0.1)
            elif isinstance(module, nn.LSTM):
                for name, param in module.named_parameters():
                    if 'weight' in name:
                        nn.init.xavier_uniform_(param)
                    elif 'bias' in name:
                        nn.init.zeros_(param)
    
    def encode(self, sequence: List[str], max_len: int = 128) -> np.ndarray:
        """
        Encode a sequence using BiLSTM.
        
        Args:
            sequence: List of instruction lines
            max_len: Maximum sequence length
        
        Returns:
            Fixed-size embedding vector
        """
        tokens = tokenize_sequence(sequence)
        if not tokens:
            return np.zeros(self.embedding_dim)
        
        # Convert to IDs
        token_ids = [self.vocab.get(tok, 1) for tok in tokens[:max_len]]
        
        # Pad or truncate
        if len(token_ids) < max_len:
            token_ids += [0] * (max_len - len(token_ids))
        else:
            token_ids = token_ids[:max_len]
        
        # Convert to tensor
        x = torch.tensor([token_ids], dtype=torch.long)
        
        # Encode
        self.model.eval()
        with torch.no_grad():
            emb = self.embedding(x)
            lstm_out, (h_n, c_n) = self.lstm(emb)
            
            # Use final hidden states (forward + backward)
            # h_n shape: (num_layers * num_directions, batch, hidden_size)
            # For bidirectional: h_n[0] = forward, h_n[1] = backward
            if h_n.shape[0] == 2:  # bidirectional
                forward_hidden = h_n[0].squeeze(0)  # (hidden_dim,)
                backward_hidden = h_n[1].squeeze(0)  # (hidden_dim,)
                combined = torch.cat([forward_hidden, backward_hidden])  # (embedding_dim,)
            else:
                combined = h_n.squeeze(0)
            
            # Also use mean pooling of all outputs
            mean_pooled = lstm_out.mean(dim=1).squeeze(0)  # (embedding_dim,)
            
            # Combine final hidden state and mean pooling
            final = torch.cat([combined, mean_pooled])[:self.embedding_dim]
            
            return final.numpy()


def build_sequence_encoder(
    vocab_path: Optional[Path] = None,
    encoder_type: str = "simple",
    embedding_dim: int = 64
) -> SimpleSequenceEncoder:
    """
    Build or load a sequence encoder.
    
    Args:
        vocab_path: Path to saved vocabulary (if exists)
        encoder_type: "simple" or "bilstm"
        embedding_dim: Dimension of output embeddings
    
    Returns:
        Sequence encoder instance
    """
    if vocab_path and vocab_path.exists():
        with open(vocab_path, 'rb') as f:
            vocab = pickle.load(f)
    else:
        # Return a dummy encoder that will be built later
        vocab = {"<pad>": 0, "<unk>": 1}
    
    if encoder_type == "simple":
        return SimpleSequenceEncoder(vocab, embedding_dim)
    elif encoder_type == "bilstm":
        if not HAS_TORCH:
            print("Warning: torch not available, falling back to simple encoder")
            return SimpleSequenceEncoder(vocab, embedding_dim)
        return BiLSTMSequenceEncoder(vocab, embedding_dim)
    else:
        raise ValueError(f"Unknown encoder_type: {encoder_type}")


def extract_sequence_embedding(
    sequence: List[str],
    encoder: SimpleSequenceEncoder,
    feature_prefix: str = "seq_emb"
) -> Dict[str, float]:
    """
    Extract sequence embedding features from a sequence.
    
    Args:
        sequence: List of instruction lines
        encoder: Sequence encoder instance
        feature_prefix: Prefix for feature names
    
    Returns:
        Dictionary of embedding features
    """
    embedding = encoder.encode(sequence)
    
    # Convert to feature dictionary
    features = {}
    for i, val in enumerate(embedding):
        features[f"{feature_prefix}_{i}"] = float(val)
    
    return features


if __name__ == "__main__":
    # Test the encoder
    test_sequence = [
        "ldr x0, [x1]",
        "cmp x0, #10",
        "b.ge label",
        "ldr x2, [x3, x0, lsl #3]",
        "ret"
    ]
    
    # Build vocab from test sequence
    tokens = tokenize_sequence(test_sequence)
    vocab = build_vocab_from_sequences([tokens], min_freq=1)
    
    # Create encoder
    encoder = SimpleSequenceEncoder(vocab, embedding_dim=64)
    
    # Encode
    embedding = encoder.encode(test_sequence)
    print(f"Sequence embedding shape: {embedding.shape}")
    print(f"First 10 values: {embedding[:10]}")
    
    # Extract features
    features = extract_sequence_embedding(test_sequence, encoder)
    print(f"\nExtracted {len(features)} embedding features")
    print(f"Feature names: {list(features.keys())[:5]}...")

