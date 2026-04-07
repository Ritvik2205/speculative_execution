#!/usr/bin/env python3
"""
V32: Ensemble Model - RF v18 + GGNN-BiLSTM V28

Combines the strengths of both models:
- RF v18: Best overall accuracy (91.19%), excellent at handcrafted features
- V28: Graph-based understanding of code structure (86.50%)

Ensemble strategies:
1. Soft voting: Average probabilities from both models
2. Weighted voting: Weight probabilities by model confidence
3. Stacking: Train a meta-classifier on predictions

Expected improvement:
- RF excels at general patterns, V28 excels at structural patterns
- Ensemble should handle edge cases better than either alone
"""

import json
import argparse
import sys
import time
from pathlib import Path
from typing import Dict, List, Tuple, Optional
from collections import Counter, defaultdict
import pickle
import warnings
warnings.filterwarnings('ignore')

import numpy as np
import joblib
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import Dataset, DataLoader
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
from sklearn.model_selection import StratifiedShuffleSplit
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import GradientBoostingClassifier
from tqdm import tqdm
import matplotlib.pyplot as plt
import seaborn as sns

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))

from semantic_graph_builder import SemanticGraphBuilder, NodeType, EdgeType


# =============================================================================
# CONFIGURATION
# =============================================================================

DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

CLASSES = [
    'BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF',
    'MDS', 'RETBLEED', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4'
]
LABEL_TO_IDX = {label: idx for idx, label in enumerate(CLASSES)}
IDX_TO_LABEL = {idx: label for label, idx in LABEL_TO_IDX.items()}


# =============================================================================
# RF MODEL WRAPPER
# =============================================================================

class RFModelWrapper:
    """Wrapper for the RF model. Can load existing or train new."""
    
    def __init__(self, model_dir: Path = None, train_from_data: bool = False):
        self.model_dir = model_dir
        self.model = None
        self.vectorizer = None
        self.train_from_data = train_from_data
        
        if not train_from_data and model_dir:
            self._load_model()
    
    def _load_model(self):
        """Load the RF model and vectorizer."""
        model_path = self.model_dir / 'rf_multiclass.joblib'
        vec_path = self.model_dir / 'rf_vectorizer.joblib'
        
        if not model_path.exists():
            raise FileNotFoundError(f"RF model not found: {model_path}")
        if not vec_path.exists():
            raise FileNotFoundError(f"RF vectorizer not found: {vec_path}")
        
        print(f"Loading RF model from {model_path}...")
        self.model = joblib.load(model_path)
        self.vectorizer = joblib.load(vec_path)
        print(f"  RF model loaded: {self.model.n_estimators} trees")
    
    def train(self, features: List[Dict], labels: List[str], n_estimators: int = 200):
        """Train a new RF model on the given data."""
        from sklearn.feature_extraction import DictVectorizer
        from sklearn.ensemble import RandomForestClassifier
        
        print(f"Training new RF model on {len(features)} samples...")
        
        self.vectorizer = DictVectorizer(sparse=True)
        X = self.vectorizer.fit_transform(features)
        
        self.model = RandomForestClassifier(
            n_estimators=n_estimators,
            max_depth=None,
            min_samples_split=5,
            min_samples_leaf=2,
            n_jobs=-1,
            random_state=42,
            class_weight='balanced',
        )
        self.model.fit(X, labels)
        print(f"  RF model trained: {n_estimators} trees, {X.shape[1]} features")
    
    def predict_proba(self, features: List[Dict]) -> np.ndarray:
        """
        Get prediction probabilities for feature dictionaries.
        
        Args:
            features: List of feature dictionaries
            
        Returns:
            Probability matrix [n_samples, n_classes]
        """
        X = self.vectorizer.transform(features)
        probs = self.model.predict_proba(X)
        
        # Ensure classes are in correct order
        model_classes = list(self.model.classes_)
        
        # Reorder to match CLASSES
        n_samples = len(features)
        n_classes = len(CLASSES)
        ordered_probs = np.zeros((n_samples, n_classes))
        
        for i, cls in enumerate(model_classes):
            if cls in LABEL_TO_IDX:
                ordered_probs[:, LABEL_TO_IDX[cls]] = probs[:, i]
        
        return ordered_probs
    
    def predict(self, features: List[Dict]) -> List[str]:
        """Get predictions."""
        probs = self.predict_proba(features)
        indices = probs.argmax(axis=1)
        return [IDX_TO_LABEL[idx] for idx in indices]


# =============================================================================
# GGNN-BiLSTM MODEL (V28)
# =============================================================================

# Import model architecture
try:
    from ggnn_bilstm_v28 import HybridGGNNBiLSTMv28
except ImportError:
    print("Warning: ggnn_bilstm_v28.py not found, V28 model will be unavailable")
    HybridGGNNBiLSTMv28 = None


class GGNNModelWrapper:
    """Wrapper for the GGNN-BiLSTM V28 model."""
    
    def __init__(self, model_dir: Path, config: Optional[Dict] = None):
        self.model_dir = model_dir
        self.model = None
        self.config = config or {}
        self.graph_builder = SemanticGraphBuilder()
        self._load_model()
    
    def _load_model(self):
        """Load the GGNN model."""
        model_path = self.model_dir / 'model.pt'
        
        if not model_path.exists():
            raise FileNotFoundError(f"GGNN model not found: {model_path}")
        
        print(f"Loading GGNN model from {model_path}...")
        
        # Load checkpoint
        checkpoint = torch.load(model_path, map_location=DEVICE)
        
        # Get config from checkpoint or use defaults
        config = checkpoint.get('config', self.config)
        
        # Default config
        model_config = {
            'node_feature_dim': config.get('node_feature_dim', 34),
            'ggnn_hidden_dim': config.get('ggnn_hidden', 64),
            'ggnn_steps': config.get('ggnn_steps', 4),
            'attention_heads': config.get('attention_heads', 4),
            'lstm_hidden_dim': config.get('lstm_hidden', 128),
            'lstm_layers': config.get('lstm_layers', 2),
            'num_classes': len(CLASSES),
            'handcrafted_dim': config.get('handcrafted_dim', 193),
            'dropout': config.get('dropout', 0.2),
        }
        
        # Initialize model
        self.model = HybridGGNNBiLSTMv28(**model_config)
        
        # Load weights
        if 'model_state_dict' in checkpoint:
            self.model.load_state_dict(checkpoint['model_state_dict'])
        else:
            self.model.load_state_dict(checkpoint)
        
        self.model = self.model.to(DEVICE)
        self.model.eval()
        
        self.max_nodes = config.get('max_nodes', 64)
        self.use_handcrafted = model_config['handcrafted_dim'] > 0
        
        print(f"  GGNN model loaded")
    
    def _build_pdg_tensors(
        self, 
        sequence: List[str],
        features: Optional[Dict] = None,
    ) -> Tuple[torch.Tensor, ...]:
        """Build PDG tensors from instruction sequence."""
        graph = self.graph_builder.build_graph(sequence)
        
        # Node features
        node_types = [
            NodeType.LOAD, NodeType.STORE, NodeType.LOAD_INDEXED,
            NodeType.LOAD_STACK, NodeType.STORE_STACK,
            NodeType.BRANCH_COND, NodeType.BRANCH_UNCOND,
            NodeType.CALL, NodeType.CALL_INDIRECT, NodeType.RET,
            NodeType.JUMP_INDIRECT, NodeType.COMPARE, NodeType.COMPUTE,
            NodeType.FENCE, NodeType.CACHE_OP, NodeType.TIMING,
            NodeType.NOP, NodeType.UNKNOWN,
        ]
        type_to_idx = {t: i for i, t in enumerate(node_types)}
        n_type_features = len(node_types)
        n_attr_features = 5
        n_features = n_type_features + n_attr_features
        
        max_nodes = self.max_nodes
        n_nodes = min(len(graph.nodes), max_nodes)
        
        node_features = np.zeros((max_nodes, n_features), dtype=np.float32)
        for i, node in enumerate(graph.nodes[:max_nodes]):
            type_idx = type_to_idx.get(node.node_type, len(node_types) - 1)
            if type_idx < n_type_features:
                node_features[i, type_idx] = 1.0
            node_features[i, n_type_features] = float(node.reads_memory)
            node_features[i, n_type_features + 1] = float(node.writes_memory)
            node_features[i, n_type_features + 2] = float(node.is_indirect)
            node_features[i, n_type_features + 3] = float(node.uses_stack)
            node_features[i, n_type_features + 4] = float(node.uses_index)
        
        # Adjacency matrices
        adj_data = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        adj_control = np.zeros((max_nodes, max_nodes), dtype=np.float32)
        
        for edge in graph.edges:
            if edge.src < max_nodes and edge.dst < max_nodes:
                if edge.edge_type == EdgeType.DATA_DEP:
                    adj_data[edge.src, edge.dst] = 1.0
                    adj_data[edge.dst, edge.src] = 1.0
                else:
                    adj_control[edge.src, edge.dst] = 1.0
                    adj_control[edge.dst, edge.src] = 1.0
        
        # Topological order
        topo_order = np.arange(max_nodes)
        
        # Node mask
        node_mask = np.zeros(max_nodes, dtype=np.bool_)
        node_mask[:n_nodes] = True
        
        # Convert to tensors
        node_features_t = torch.from_numpy(node_features).unsqueeze(0)
        adj_data_t = torch.from_numpy(adj_data).unsqueeze(0)
        adj_control_t = torch.from_numpy(adj_control).unsqueeze(0)
        topo_order_t = torch.from_numpy(topo_order).unsqueeze(0).long()
        node_mask_t = torch.from_numpy(node_mask).unsqueeze(0)
        seq_lengths_t = torch.tensor([n_nodes])
        
        # Handcrafted features
        if self.use_handcrafted and features:
            hc_features = self._extract_handcrafted(features)
            hc_features_t = torch.from_numpy(hc_features).unsqueeze(0)
        else:
            hc_features_t = None
        
        return (
            node_features_t,
            adj_data_t,
            adj_control_t,
            topo_order_t,
            node_mask_t,
            seq_lengths_t,
            hc_features_t,
        )
    
    def _extract_handcrafted(self, features: Dict) -> np.ndarray:
        """Extract handcrafted features in consistent order."""
        # Get all numeric features
        hc = []
        for key in sorted(features.keys()):
            val = features[key]
            if isinstance(val, (int, float)):
                hc.append(float(val))
        return np.array(hc[:193], dtype=np.float32)  # Limit to 193
    
    @torch.no_grad()
    def predict_proba(
        self, 
        sequences: List[List[str]],
        features: Optional[List[Dict]] = None,
    ) -> np.ndarray:
        """
        Get prediction probabilities.
        
        Args:
            sequences: List of instruction sequences
            features: Optional list of feature dictionaries
            
        Returns:
            Probability matrix [n_samples, n_classes]
        """
        probs_list = []
        
        for i, seq in enumerate(sequences):
            feat = features[i] if features else None
            tensors = self._build_pdg_tensors(seq, feat)
            
            # Move to device
            node_features = tensors[0].to(DEVICE)
            adj_data = tensors[1].to(DEVICE)
            adj_control = tensors[2].to(DEVICE)
            topo_order = tensors[3].to(DEVICE)
            node_mask = tensors[4].to(DEVICE)
            seq_lengths = tensors[5].to(DEVICE)
            hc_features = tensors[6].to(DEVICE) if tensors[6] is not None else None
            
            # Forward pass
            logits = self.model(
                node_features, adj_data, adj_control, topo_order,
                node_mask, seq_lengths, hc_features
            )
            
            probs = F.softmax(logits, dim=-1).cpu().numpy()
            probs_list.append(probs[0])
        
        return np.array(probs_list)
    
    def predict(self, sequences: List[List[str]], features: Optional[List[Dict]] = None) -> List[str]:
        """Get predictions."""
        probs = self.predict_proba(sequences, features)
        indices = probs.argmax(axis=1)
        return [IDX_TO_LABEL[idx] for idx in indices]


# =============================================================================
# ENSEMBLE MODEL
# =============================================================================

class EnsembleModel:
    """
    Ensemble of RF v18 and GGNN-BiLSTM V28.
    
    Ensemble strategies:
    1. soft_voting: Average probabilities
    2. weighted_voting: Weight by model confidence
    3. stacking: Meta-classifier on predictions
    """
    
    def __init__(
        self,
        rf_model: RFModelWrapper,
        ggnn_model: Optional[GGNNModelWrapper] = None,
        strategy: str = 'weighted_voting',
        rf_weight: float = 0.6,
        ggnn_weight: float = 0.4,
    ):
        self.rf_model = rf_model
        self.ggnn_model = ggnn_model
        self.strategy = strategy
        self.rf_weight = rf_weight
        self.ggnn_weight = ggnn_weight
        self.meta_classifier = None
    
    def _get_model_probs(
        self,
        features: List[Dict],
        sequences: Optional[List[List[str]]] = None,
    ) -> Tuple[np.ndarray, Optional[np.ndarray]]:
        """Get probabilities from both models."""
        rf_probs = self.rf_model.predict_proba(features)
        
        if self.ggnn_model and sequences:
            ggnn_probs = self.ggnn_model.predict_proba(sequences, features)
        else:
            ggnn_probs = None
        
        return rf_probs, ggnn_probs
    
    def fit_stacking(
        self,
        features: List[Dict],
        sequences: List[List[str]],
        labels: List[str],
    ):
        """
        Train the meta-classifier for stacking ensemble.
        
        Args:
            features: Training feature dictionaries
            sequences: Training instruction sequences
            labels: True labels
        """
        print("Training stacking meta-classifier...")
        
        # Get predictions from both models
        rf_probs, ggnn_probs = self._get_model_probs(features, sequences)
        
        # Combine predictions as meta-features
        if ggnn_probs is not None:
            meta_features = np.concatenate([rf_probs, ggnn_probs], axis=1)
        else:
            meta_features = rf_probs
        
        # Train meta-classifier
        y = [LABEL_TO_IDX[label] for label in labels]
        
        self.meta_classifier = GradientBoostingClassifier(
            n_estimators=100,
            max_depth=3,
            learning_rate=0.1,
            random_state=42,
        )
        self.meta_classifier.fit(meta_features, y)
        
        print(f"  Meta-classifier trained on {len(labels)} samples")
    
    def predict_proba(
        self,
        features: List[Dict],
        sequences: Optional[List[List[str]]] = None,
    ) -> np.ndarray:
        """
        Get ensemble prediction probabilities.
        
        Args:
            features: Feature dictionaries
            sequences: Instruction sequences (for GGNN)
            
        Returns:
            Probability matrix [n_samples, n_classes]
        """
        rf_probs, ggnn_probs = self._get_model_probs(features, sequences)
        
        if self.strategy == 'soft_voting':
            if ggnn_probs is not None:
                return (rf_probs + ggnn_probs) / 2
            return rf_probs
        
        elif self.strategy == 'weighted_voting':
            if ggnn_probs is not None:
                return self.rf_weight * rf_probs + self.ggnn_weight * ggnn_probs
            return rf_probs
        
        elif self.strategy == 'stacking':
            if self.meta_classifier is None:
                raise ValueError("Meta-classifier not trained. Call fit_stacking first.")
            
            if ggnn_probs is not None:
                meta_features = np.concatenate([rf_probs, ggnn_probs], axis=1)
            else:
                meta_features = rf_probs
            
            return self.meta_classifier.predict_proba(meta_features)
        
        else:
            raise ValueError(f"Unknown strategy: {self.strategy}")
    
    def predict(
        self,
        features: List[Dict],
        sequences: Optional[List[List[str]]] = None,
    ) -> List[str]:
        """Get ensemble predictions."""
        probs = self.predict_proba(features, sequences)
        indices = probs.argmax(axis=1)
        return [IDX_TO_LABEL[idx] for idx in indices]


# =============================================================================
# TRAINING AND EVALUATION
# =============================================================================

def load_data(data_path: Path) -> List[Dict]:
    """Load data from JSONL file."""
    print(f"Loading data from {data_path}...")
    records = []
    with open(data_path) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                records.append(rec)
    print(f"  Loaded {len(records)} records")
    return records


def evaluate_models(
    rf_model: RFModelWrapper,
    ggnn_model: Optional[GGNNModelWrapper],
    ensemble: EnsembleModel,
    test_records: List[Dict],
    output_dir: Path,
):
    """Evaluate all models and generate comparison visualizations."""
    print("\nEvaluating models...")
    
    # Prepare test data
    features = [rec['features'] for rec in test_records]
    sequences = [rec.get('sequence', []) for rec in test_records]
    labels = [rec['label'] for rec in test_records]
    
    # Get predictions
    results = {}
    
    # RF predictions
    print("  Evaluating RF v18...")
    rf_preds = rf_model.predict(features)
    rf_acc = accuracy_score(labels, rf_preds)
    results['RF v18'] = {
        'predictions': rf_preds,
        'accuracy': rf_acc,
    }
    print(f"    Accuracy: {rf_acc:.4f}")
    
    # GGNN predictions (if available)
    if ggnn_model:
        print("  Evaluating GGNN V28...")
        ggnn_preds = ggnn_model.predict(sequences, features)
        ggnn_acc = accuracy_score(labels, ggnn_preds)
        results['GGNN V28'] = {
            'predictions': ggnn_preds,
            'accuracy': ggnn_acc,
        }
        print(f"    Accuracy: {ggnn_acc:.4f}")
    
    # Ensemble predictions
    print(f"  Evaluating Ensemble ({ensemble.strategy})...")
    ens_preds = ensemble.predict(features, sequences)
    ens_acc = accuracy_score(labels, ens_preds)
    results['Ensemble'] = {
        'predictions': ens_preds,
        'accuracy': ens_acc,
    }
    print(f"    Accuracy: {ens_acc:.4f}")
    
    # Generate comparison visualization
    fig, axes = plt.subplots(1, len(results), figsize=(7 * len(results), 6))
    if len(results) == 1:
        axes = [axes]
    
    for ax, (model_name, res) in zip(axes, results.items()):
        cm = confusion_matrix(labels, res['predictions'], labels=CLASSES)
        cm_pct = cm.astype('float') / cm.sum(axis=1, keepdims=True) * 100
        
        sns.heatmap(
            cm_pct, annot=True, fmt='.1f', cmap='Blues',
            xticklabels=CLASSES, yticklabels=CLASSES, ax=ax
        )
        ax.set_xlabel('Predicted')
        ax.set_ylabel('True')
        ax.set_title(f'{model_name}\nAccuracy: {res["accuracy"]:.4f}')
        ax.tick_params(axis='x', rotation=45)
        ax.tick_params(axis='y', rotation=0)
    
    plt.tight_layout()
    plt.savefig(output_dir / 'ensemble_comparison.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f"\nSaved comparison to {output_dir / 'ensemble_comparison.png'}")
    
    # Print detailed reports
    print("\n" + "=" * 70)
    print("DETAILED CLASSIFICATION REPORTS")
    print("=" * 70)
    
    for model_name, res in results.items():
        print(f"\n{model_name}:")
        print("-" * 40)
        print(classification_report(labels, res['predictions'], target_names=CLASSES))
    
    return results


def find_disagreements(
    rf_preds: List[str],
    ggnn_preds: List[str],
    ens_preds: List[str],
    labels: List[str],
    records: List[Dict],
) -> Dict:
    """Find cases where models disagree and analyze patterns."""
    disagreements = {
        'rf_correct_ggnn_wrong': [],
        'ggnn_correct_rf_wrong': [],
        'both_wrong_ens_correct': [],
        'all_wrong': [],
    }
    
    for i, (rf_p, ggnn_p, ens_p, true_l) in enumerate(zip(rf_preds, ggnn_preds, ens_preds, labels)):
        rf_correct = rf_p == true_l
        ggnn_correct = ggnn_p == true_l
        ens_correct = ens_p == true_l
        
        if rf_correct and not ggnn_correct:
            disagreements['rf_correct_ggnn_wrong'].append({
                'idx': i,
                'true': true_l,
                'rf': rf_p,
                'ggnn': ggnn_p,
                'ens': ens_p,
            })
        elif ggnn_correct and not rf_correct:
            disagreements['ggnn_correct_rf_wrong'].append({
                'idx': i,
                'true': true_l,
                'rf': rf_p,
                'ggnn': ggnn_p,
                'ens': ens_p,
            })
        elif not rf_correct and not ggnn_correct and ens_correct:
            disagreements['both_wrong_ens_correct'].append({
                'idx': i,
                'true': true_l,
                'rf': rf_p,
                'ggnn': ggnn_p,
                'ens': ens_p,
            })
        elif not rf_correct and not ggnn_correct and not ens_correct:
            disagreements['all_wrong'].append({
                'idx': i,
                'true': true_l,
                'rf': rf_p,
                'ggnn': ggnn_p,
                'ens': ens_p,
            })
    
    return disagreements


# =============================================================================
# MAIN
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='V32: Ensemble Model Training')
    parser.add_argument(
        '--data',
        type=Path,
        default=Path('data/features/filtered_v2_with_seq_emb.jsonl'),
        help='Path to data file (default: v18 data with seq embeddings)'
    )
    parser.add_argument(
        '--rf-model-dir',
        type=Path,
        default=Path('models/rf_v18_seq_emb'),
        help='RF v18 model directory'
    )
    parser.add_argument(
        '--ggnn-model-dir',
        type=Path,
        default=Path('models/ggnn_bilstm_v28'),
        help='GGNN V28 model directory'
    )
    parser.add_argument(
        '--output-dir',
        type=Path,
        default=Path('viz_v32_ensemble'),
        help='Output directory'
    )
    parser.add_argument(
        '--strategy',
        choices=['soft_voting', 'weighted_voting', 'stacking'],
        default='weighted_voting',
        help='Ensemble strategy'
    )
    parser.add_argument(
        '--rf-weight',
        type=float,
        default=0.6,
        help='RF weight for weighted voting'
    )
    parser.add_argument(
        '--ggnn-weight',
        type=float,
        default=0.4,
        help='GGNN weight for weighted voting'
    )
    parser.add_argument(
        '--test-size',
        type=float,
        default=0.2,
        help='Test set size'
    )
    parser.add_argument(
        '--seed',
        type=int,
        default=42,
        help='Random seed'
    )
    parser.add_argument(
        '--rf-only',
        action='store_true',
        help='Run RF only (skip GGNN)'
    )
    parser.add_argument(
        '--train-rf',
        action='store_true',
        help='Train RF model on same data (instead of loading pre-trained)'
    )
    parser.add_argument(
        '--rf-estimators',
        type=int,
        default=200,
        help='Number of RF trees'
    )
    args = parser.parse_args()
    
    args.output_dir.mkdir(parents=True, exist_ok=True)
    
    print("=" * 70)
    print("V32: ENSEMBLE MODEL - RF v18 + GGNN-BiLSTM V28")
    print("=" * 70)
    print(f"\nDevice: {DEVICE}")
    print(f"Strategy: {args.strategy}")
    if args.strategy == 'weighted_voting':
        print(f"  RF weight: {args.rf_weight}")
        print(f"  GGNN weight: {args.ggnn_weight}")
    
    # Load data first (needed for RF training if enabled)
    print("\n" + "-" * 40)
    print("LOADING DATA")
    print("-" * 40)
    
    records = load_data(args.data)
    
    # Check if data has sequences (needed for GGNN)
    has_sequences = any(r.get('sequence') for r in records[:100])
    if has_sequences:
        # Filter records with sequences (for GGNN)
        records_filtered = [r for r in records if r.get('sequence')]
        print(f"Records with sequences: {len(records_filtered)}")
    else:
        # No sequences - RF only mode
        records_filtered = records
        print(f"No sequences in data - RF-only mode")
        args.rf_only = True
    
    # Print label distribution
    label_counts = Counter(r['label'] for r in records_filtered)
    print("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        print(f"  {label}: {count}")
    
    # Split data
    print("\n" + "-" * 40)
    print("SPLITTING DATA")
    print("-" * 40)
    
    labels = [r['label'] for r in records_filtered]
    splitter = StratifiedShuffleSplit(n_splits=1, test_size=args.test_size, random_state=args.seed)
    train_idx, test_idx = next(splitter.split(records_filtered, labels))
    
    train_records = [records_filtered[i] for i in train_idx]
    test_records = [records_filtered[i] for i in test_idx]
    
    print(f"Train: {len(train_records)}")
    print(f"Test: {len(test_records)}")
    
    # Load/train models
    print("\n" + "-" * 40)
    print("LOADING/TRAINING MODELS")
    print("-" * 40)
    
    if args.train_rf:
        # Train RF on same data
        rf_model = RFModelWrapper(train_from_data=True)
        train_features = [r['features'] for r in train_records]
        train_labels = [r['label'] for r in train_records]
        rf_model.train(train_features, train_labels, n_estimators=args.rf_estimators)
    else:
        rf_model = RFModelWrapper(args.rf_model_dir)
    
    ggnn_model = None
    if not args.rf_only and HybridGGNNBiLSTMv28 is not None:
        try:
            ggnn_model = GGNNModelWrapper(args.ggnn_model_dir)
        except FileNotFoundError as e:
            print(f"Warning: {e}")
            print("Continuing with RF only...")
    
    # Create ensemble
    print("\n" + "-" * 40)
    print("CREATING ENSEMBLE")
    print("-" * 40)
    
    ensemble = EnsembleModel(
        rf_model=rf_model,
        ggnn_model=ggnn_model,
        strategy=args.strategy,
        rf_weight=args.rf_weight,
        ggnn_weight=args.ggnn_weight,
    )
    
    # Train stacking if needed
    if args.strategy == 'stacking':
        train_features = [r['features'] for r in train_records]
        train_sequences = [r.get('sequence', []) for r in train_records]
        train_labels = [r['label'] for r in train_records]
        
        ensemble.fit_stacking(train_features, train_sequences, train_labels)
    
    # Evaluate
    print("\n" + "-" * 40)
    print("EVALUATION")
    print("-" * 40)
    
    results = evaluate_models(
        rf_model=rf_model,
        ggnn_model=ggnn_model,
        ensemble=ensemble,
        test_records=test_records,
        output_dir=args.output_dir,
    )
    
    # Analyze disagreements (if GGNN available)
    if ggnn_model:
        print("\n" + "-" * 40)
        print("DISAGREEMENT ANALYSIS")
        print("-" * 40)
        
        rf_preds = results['RF v18']['predictions']
        ggnn_preds = results['GGNN V28']['predictions']
        ens_preds = results['Ensemble']['predictions']
        labels = [r['label'] for r in test_records]
        
        disagreements = find_disagreements(rf_preds, ggnn_preds, ens_preds, labels, test_records)
        
        print(f"\nRF correct, GGNN wrong: {len(disagreements['rf_correct_ggnn_wrong'])}")
        print(f"GGNN correct, RF wrong: {len(disagreements['ggnn_correct_rf_wrong'])}")
        print(f"Both wrong, Ensemble correct: {len(disagreements['both_wrong_ens_correct'])}")
        print(f"All wrong: {len(disagreements['all_wrong'])}")
        
        # Save disagreement analysis
        with open(args.output_dir / 'disagreements.json', 'w') as f:
            json.dump(disagreements, f, indent=2)
        print(f"\nSaved disagreements to {args.output_dir / 'disagreements.json'}")
    
    # Summary
    print("\n" + "=" * 70)
    print("SUMMARY")
    print("=" * 70)
    
    print("\nModel Accuracies:")
    for model_name, res in sorted(results.items(), key=lambda x: -x[1]['accuracy']):
        print(f"  {model_name}: {res['accuracy']:.4f}")
    
    best_model = max(results.items(), key=lambda x: x[1]['accuracy'])
    print(f"\nBest Model: {best_model[0]} ({best_model[1]['accuracy']:.4f})")
    
    # Save results
    results_summary = {
        'strategy': args.strategy,
        'rf_weight': args.rf_weight,
        'ggnn_weight': args.ggnn_weight,
        'test_size': len(test_records),
        'accuracies': {name: res['accuracy'] for name, res in results.items()},
    }
    
    with open(args.output_dir / 'results.json', 'w') as f:
        json.dump(results_summary, f, indent=2)
    
    print(f"\nResults saved to {args.output_dir}/")


if __name__ == '__main__':
    main()
