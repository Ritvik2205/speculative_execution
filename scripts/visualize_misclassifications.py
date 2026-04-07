#!/usr/bin/env python3
"""
Visualize misclassified samples as graphs, comparing them with examples from the mispredicted class.

This script:
1. Loads v20 and v21 models and their predictions
2. Identifies misclassified samples
3. Generates CFG/DFG graphs for misclassified samples
4. Finds examples from the mispredicted class
5. Creates side-by-side visualizations

Usage:
    python scripts/visualize_misclassifications.py
"""

import argparse
import json
import pickle
import random
import re
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Tuple, Optional

import matplotlib.pyplot as plt
import networkx as nx
import torch
import torch.nn as nn
from sklearn.metrics import confusion_matrix

# Import helper functions
import sys
sys.path.append(str(Path(__file__).parent))
from train_bilstm_v20 import tokens_from_sequence


def log(msg: str):
    print(msg, flush=True)


# ============================================================================
# Graph Building Functions
# ============================================================================

REG_ARM_RE = re.compile(r'\b([wx]\d+)\b', re.IGNORECASE)
REG_X86_RE = re.compile(r'\b(%?[re]?[abcd]x|%?[re]?[sd]i|%?[re]?[sb]p|%?r\d+[dwb]?|sp|fp|lr)\b', re.IGNORECASE)

def opcode_of(line: str) -> str:
    """Extract opcode from instruction line."""
    line = line.split(';', 1)[0].strip()
    line = line.split('//', 1)[0].strip()
    parts = line.split()
    if not parts:
        return ''
    return parts[0].lower()


def get_regs_in_string(s: str) -> set:
    """Extract register names from a string."""
    regs = set()
    regs.update(REG_ARM_RE.findall(s))
    regs.update(REG_X86_RE.findall(s))
    return {r.lower().replace('%', '') for r in regs}


def parse_operands(line: str) -> List[str]:
    """Parse operands from instruction line."""
    line = line.split(';', 1)[0].strip()
    parts = line.split()
    if len(parts) < 2:
        return []
    # Join remaining parts and split by comma
    operands_str = ' '.join(parts[1:])
    return [op.strip() for op in operands_str.split(',')]


def build_cfg(sequence: List[str]) -> nx.DiGraph:
    """Build Control Flow Graph from instruction sequence."""
    G = nx.DiGraph()
    branch_ops = {'b', 'bl', 'br', 'blr', 'b.eq', 'b.ne', 'b.lt', 'b.gt', 'b.le', 'b.ge',
                  'b.hs', 'b.lo', 'b.hi', 'b.ls', 'b.mi', 'b.pl', 'b.vs', 'b.vc',
                  'cbz', 'cbnz', 'tbz', 'tbnz', 'ret', 'jmp', 'je', 'jne', 'jz', 'jnz',
                  'jl', 'jle', 'jg', 'jge', 'ja', 'jae', 'jb', 'jbe', 'call', 'retq', 'retn'}
    
    for i, line in enumerate(sequence):
        op = opcode_of(line)
        if not op or op.endswith(':'):
            continue
        
        # Determine semantic type
        if op in branch_ops or op.startswith('b.') or op.startswith('j'):
            node_type = 'BRANCH'
            color = '#ffcccc'  # Red
        elif op in ['ldr', 'ldp', 'ldrb', 'ldrh', 'mov', 'movq', 'movl', 'leaq', 'pop', 'popq']:
            node_type = 'LOAD'
            color = '#cce5ff'  # Blue
        elif op in ['str', 'stp', 'strb', 'strh', 'push', 'pushq']:
            node_type = 'STORE'
            color = '#cce5ff'  # Blue
        else:
            node_type = 'COMPUTE'
            color = '#e0e0e0'  # Grey
        
        # Truncate label for display
        label = line[:50] if len(line) > 50 else line
        G.add_node(i, label=f"{i}: {label}", type=node_type, color=color, raw=line)
        
        # Add edges
        if op in ['ret', 'retq', 'retn']:
            # Return - no successors
            continue
        elif op.startswith('b.') or op in ['cbz', 'cbnz', 'tbz', 'tbnz'] or \
             (op.startswith('j') and op != 'jmp'):
            # Conditional branch: fall-through
            if i + 1 < len(sequence):
                G.add_edge(i, i + 1, edge_type='fallthrough')
        elif op in ['b', 'jmp']:
            # Unconditional branch - no fall-through
            pass
        elif op in ['bl', 'call', 'callq']:
            # Call - returns to next
            if i + 1 < len(sequence):
                G.add_edge(i, i + 1, edge_type='call_return')
        else:
            # Sequential
            if i + 1 < len(sequence):
                G.add_edge(i, i + 1, edge_type='sequential')
    
    return G


def build_dfg(sequence: List[str]) -> nx.DiGraph:
    """Build Data Flow Graph from instruction sequence."""
    G = nx.DiGraph()
    last_def = {}  # reg -> instruction index
    
    for i, line in enumerate(sequence):
        op = opcode_of(line)
        if not op or op.endswith(':'):
            continue
        
        # Extract all registers
        regs = get_regs_in_string(line)
        
        # Check for uses (add DFG edges from last def)
        for reg in regs:
            if reg in last_def:
                producer = last_def[reg]
                G.add_edge(producer, i, edge_type='data_flow', reg=reg)
        
        # Update definitions (first operand is usually dest)
        operands = parse_operands(line)
        if operands and op not in ['cmp', 'test', 'str', 'stp', 'push', 'pushq']:
            dest_regs = get_regs_in_string(operands[0])
            for reg in dest_regs:
                last_def[reg] = i
        
        # Add node
        label = line[:50] if len(line) > 50 else line
        G.add_node(i, label=f"{i}: {label}", raw=line)
    
    return G


def draw_graph(G: nx.DiGraph, ax, title: str, graph_type: str = 'CFG'):
    """Draw a graph on matplotlib axes."""
    if len(G.nodes()) == 0:
        ax.text(0.5, 0.5, 'Empty graph', ha='center', va='center')
        ax.set_title(title)
        return
    
    # Use spring layout for better visualization
    try:
        pos = nx.spring_layout(G, k=1.5, iterations=50, seed=42)
    except:
        pos = nx.circular_layout(G)
    
    # Draw nodes
    node_colors = [G.nodes[n].get('color', '#e0e0e0') for n in G.nodes()]
    node_labels = {n: G.nodes[n].get('label', str(n)) for n in G.nodes()}
    
    nx.draw_networkx_nodes(G, pos, ax=ax, node_color=node_colors, 
                          node_size=500, alpha=0.8)
    
    # Draw edges with different styles
    if graph_type == 'CFG':
        sequential_edges = [(u, v) for u, v, d in G.edges(data=True) 
                           if d.get('edge_type') == 'sequential']
        fallthrough_edges = [(u, v) for u, v, d in G.edges(data=True) 
                            if d.get('edge_type') == 'fallthrough']
        call_edges = [(u, v) for u, v, d in G.edges(data=True) 
                     if d.get('edge_type') == 'call_return']
        
        nx.draw_networkx_edges(G, pos, sequential_edges, ax=ax, 
                               edge_color='black', width=1.5, alpha=0.6, arrows=True)
        nx.draw_networkx_edges(G, pos, fallthrough_edges, ax=ax, 
                               edge_color='green', width=1.5, alpha=0.6, arrows=True, style='dashed')
        nx.draw_networkx_edges(G, pos, call_edges, ax=ax, 
                               edge_color='blue', width=1.5, alpha=0.6, arrows=True, style='dotted')
    else:  # DFG
        nx.draw_networkx_edges(G, pos, ax=ax, edge_color='red', 
                               width=1.5, alpha=0.6, arrows=True, style='dashed')
    
    # Draw labels
    nx.draw_networkx_labels(G, pos, node_labels, ax=ax, font_size=6, font_family='monospace')
    
    ax.set_title(title, fontsize=10, fontweight='bold')
    ax.axis('off')


# ============================================================================
# Model Loading and Prediction
# ============================================================================

def load_model_and_predict(model_path: Path, vocab_path: Path, label_mapping_path: Path,
                          dataset_path: Path, is_v21: bool, max_samples: int = 1000):
    """Load model and get predictions on dataset."""
    log(f"\nLoading model from {model_path}...")
    
    # Load vocab and label mapping
    with open(vocab_path, 'rb') as f:
        vocab = pickle.load(f)
    
    with open(label_mapping_path) as f:
        mapping = json.load(f)
        label_to_id = mapping['label_to_id']
        id_to_label = {int(k): v for k, v in mapping['id_to_label'].items()}
    
    # Load model
    checkpoint = torch.load(model_path, map_location='cpu', weights_only=False)
    
    # Create model
    if is_v21:
        # v21 contrastive model
        from train_bilstm_v21_contrastive import BiLSTMEncoder, BiLSTMClassifier
        encoder = BiLSTMEncoder(
            vocab_size=checkpoint['vocab_size'],
            d_model=checkpoint['d_model'],
            num_layers=checkpoint['num_layers'],
            dropout=0.3,
            embedding_dim=128
        )
        encoder.load_state_dict(checkpoint['encoder_state_dict'])
        model = BiLSTMClassifier(encoder, checkpoint['num_classes'])
        model.load_state_dict(checkpoint['model_state_dict'])
    else:
        # v20 standard model
        from train_bilstm_v20 import BiLSTMClassifier
        model = BiLSTMClassifier(
            vocab_size=checkpoint['vocab_size'],
            d_model=checkpoint['d_model'],
            num_layers=checkpoint['num_layers'],
            num_classes=checkpoint['num_classes'],
            dropout=0.3
        )
        model.load_state_dict(checkpoint['model_state_dict'])
    
    model.eval()
    
    # Load and process dataset
    log(f"Loading dataset from {dataset_path}...")
    records = []
    with open(dataset_path) as f:
        for i, line in enumerate(f):
            if i >= max_samples:
                break
            if line.strip():
                records.append(json.loads(line))
    
    # Prepare data
    predictions = []
    true_labels = []
    sequences = []
    
    for rec in records:
        label = rec.get('label', 'UNKNOWN')
        if label == 'UNKNOWN':
            continue
        
        seq = rec.get('sequence', [])
        if not seq or len(seq) < 3:
            continue
        
        tokens = tokens_from_sequence(seq)
        if len(tokens) < 3:
            continue
        
        # Convert to tensor
        ids = [vocab.get(t, 1) for t in tokens][:128]
        if len(ids) < 128:
            ids += [0] * (128 - len(ids))
        
        x = torch.tensor([ids], dtype=torch.long)
        
        with torch.no_grad():
            logits = model(x)
            pred_id = logits.argmax(dim=1).item()
            pred_label = id_to_label[pred_id]
        
        predictions.append(pred_label)
        true_labels.append(label)
        sequences.append(seq)
    
    return predictions, true_labels, sequences, vocab, label_to_id, id_to_label


# ============================================================================
# Main Visualization
# ============================================================================

def visualize_misclassifications(v20_dir: Path, v21_dir: Path, dataset_path: Path, 
                                 output_dir: Path, num_examples: int = 5):
    """Visualize misclassified samples for both v20 and v21."""
    
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Load predictions for both models
    log("=" * 60)
    log("LOADING MODELS AND GENERATING PREDICTIONS")
    log("=" * 60)
    
    v20_preds, v20_true, v20_seqs, v20_vocab, v20_label_to_id, v20_id_to_label = \
        load_model_and_predict(
            v20_dir / "bilstm_model.pt",
            v20_dir / "vocab.pkl",
            v20_dir / "label_mapping.json",
            dataset_path,
            is_v21=False,
            max_samples=5000
        )
    
    v21_preds, v21_true, v21_seqs, v21_vocab, v21_label_to_id, v21_id_to_label = \
        load_model_and_predict(
            v21_dir / "bilstm_model.pt",
            v21_dir / "vocab.pkl",
            v21_dir / "label_mapping.json",
            dataset_path,
            is_v21=True,
            max_samples=5000
        )
    
    # Find misclassifications
    log("\n" + "=" * 60)
    log("ANALYZING MISCLASSIFICATIONS")
    log("=" * 60)
    
    v20_misclass = [(true, pred, seq) for true, pred, seq in zip(v20_true, v20_preds, v20_seqs) 
                    if true != pred]
    v21_misclass = [(true, pred, seq) for true, pred, seq in zip(v21_true, v21_preds, v21_seqs) 
                    if true != pred]
    
    log(f"v20 misclassifications: {len(v20_misclass)}")
    log(f"v21 misclassifications: {len(v21_misclass)}")
    
    # Group by misclassification type
    v20_misclass_by_type = defaultdict(list)
    for true, pred, seq in v20_misclass:
        v20_misclass_by_type[(true, pred)].append(seq)
    
    v21_misclass_by_type = defaultdict(list)
    for true, pred, seq in v21_misclass:
        v21_misclass_by_type[(true, pred)].append(seq)
    
    # Find correct examples from mispredicted classes
    log("\nFinding correct examples from mispredicted classes...")
    
    def find_correct_examples(true_label: str, pred_label: str, 
                             all_true: List[str], all_pred: List[str], all_seqs: List[List[str]],
                             num: int = 3) -> List[List[str]]:
        """Find correctly classified examples from pred_label class."""
        examples = []
        for t, p, seq in zip(all_true, all_pred, all_seqs):
            if t == pred_label and p == pred_label and len(seq) >= 5:
                examples.append(seq)
                if len(examples) >= num:
                    break
        return examples
    
    # Visualize top misclassification patterns
    log("\n" + "=" * 60)
    log("GENERATING VISUALIZATIONS")
    log("=" * 60)
    
    for model_name, misclass_by_type, all_true, all_pred, all_seqs in [
        ('v20', v20_misclass_by_type, v20_true, v20_preds, v20_seqs),
        ('v21', v21_misclass_by_type, v21_true, v21_preds, v21_seqs)
    ]:
        # Get top misclassification patterns
        top_patterns = sorted(misclass_by_type.items(), key=lambda x: -len(x[1]))[:num_examples]
        
        for pattern_idx, ((true_label, pred_label), misclass_seqs) in enumerate(top_patterns):
            log(f"\n{model_name} - Pattern {pattern_idx + 1}: {true_label} -> {pred_label} ({len(misclass_seqs)} samples)")
            
            # Pick a misclassified sample
            misclass_seq = random.choice(misclass_seqs)
            
            # Find correct examples from pred_label
            correct_examples = find_correct_examples(true_label, pred_label, 
                                                    all_true, all_pred, all_seqs, num=2)
            
            if not correct_examples:
                log(f"  No correct examples found for {pred_label}")
                continue
            
            # Create visualization
            fig, axes = plt.subplots(2, 3, figsize=(18, 12))
            fig.suptitle(f'{model_name.upper()}: {true_label} misclassified as {pred_label}', 
                        fontsize=14, fontweight='bold')
            
            # Row 1: Misclassified sample
            misclass_cfg = build_cfg(misclass_seq)
            misclass_dfg = build_dfg(misclass_seq)
            
            draw_graph(misclass_cfg, axes[0, 0], 
                      f'Misclassified ({true_label})\nCFG', 'CFG')
            draw_graph(misclass_dfg, axes[0, 1], 
                      f'Misclassified ({true_label})\nDFG', 'DFG')
            
            # Show sequence text
            axes[0, 2].axis('off')
            seq_text = '\n'.join([f"{i}: {line[:60]}" for i, line in enumerate(misclass_seq[:15])])
            axes[0, 2].text(0.05, 0.95, f'Sequence:\n{seq_text}', 
                           transform=axes[0, 2].transAxes, 
                           fontsize=8, family='monospace', verticalalignment='top')
            
            # Row 2: Correct example from pred_label
            correct_seq = random.choice(correct_examples)
            correct_cfg = build_cfg(correct_seq)
            correct_dfg = build_dfg(correct_seq)
            
            draw_graph(correct_cfg, axes[1, 0], 
                      f'Correct Example ({pred_label})\nCFG', 'CFG')
            draw_graph(correct_dfg, axes[1, 1], 
                      f'Correct Example ({pred_label})\nDFG', 'DFG')
            
            # Show sequence text
            axes[1, 2].axis('off')
            seq_text = '\n'.join([f"{i}: {line[:60]}" for i, line in enumerate(correct_seq[:15])])
            axes[1, 2].text(0.05, 0.95, f'Sequence:\n{seq_text}', 
                           transform=axes[1, 2].transAxes, 
                           fontsize=8, family='monospace', verticalalignment='top')
            
            plt.tight_layout()
            
            # Save
            safe_true = true_label.replace(' ', '_').replace('/', '_')
            safe_pred = pred_label.replace(' ', '_').replace('/', '_')
            output_path = output_dir / f"{model_name}_misclass_{safe_true}_to_{safe_pred}_{pattern_idx}.png"
            plt.savefig(output_path, dpi=150, bbox_inches='tight')
            plt.close()
            
            log(f"  Saved to {output_path}")


def main():
    parser = argparse.ArgumentParser(description="Visualize misclassified samples as graphs")
    parser.add_argument("--v20-dir", type=Path, default=Path("models/bilstm_v20"),
                        help="v20 model directory")
    parser.add_argument("--v21-dir", type=Path, default=Path("models/bilstm_v21_contrastive"),
                        help="v21 model directory")
    parser.add_argument("--dataset", type=Path, 
                        default=Path("data/features/combined_v20_balanced.jsonl"),
                        help="Dataset path")
    parser.add_argument("--output-dir", type=Path, default=Path("viz_misclassifications"),
                        help="Output directory for visualizations")
    parser.add_argument("--num-examples", type=int, default=5,
                        help="Number of misclassification patterns to visualize")
    args = parser.parse_args()
    
    visualize_misclassifications(
        args.v20_dir, args.v21_dir, args.dataset, 
        args.output_dir, args.num_examples
    )
    
    log("\n" + "=" * 60)
    log("VISUALIZATION COMPLETE")
    log("=" * 60)


if __name__ == "__main__":
    main()
