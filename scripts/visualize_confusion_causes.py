#!/usr/bin/env python3
"""
Visualize all confusion causes beyond boilerplate dominance.

Produces figures validating each diagnostic finding:

1. Cross-class duplicates: identical sequences appearing with contradictory labels
2. Most-similar attack pairs: side-by-side instruction alignment showing the
   2-5 instructions that actually differ between confused classes
3. Feature separability heatmap: Cohen's d across all confused pairs showing
   which pairs have enough discriminative features and which don't
4. Architecture distribution: SPECTRE_V4's x86 monoculture vs mixed-arch classes
5. Sequence similarity distributions: Jaccard histograms per confused pair
"""

import json
import sys
import hashlib
import re
from pathlib import Path
from collections import Counter, defaultdict
from typing import List, Dict, Tuple

import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.gridspec as gridspec
from tqdm import tqdm

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'scripts'))

DATA_PATH  = ROOT / 'data/features/combined_v25_real_benign.jsonl'
DIAG_PATH  = ROOT / 'diagnosis/confusion_diagnosis.json'
OUTPUT_DIR = ROOT / 'viz_confusion_causes'
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

CONFUSED_PAIRS = [
    ('RETBLEED', 'INCEPTION'),
    ('L1TF', 'SPECTRE_V1'),
    ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'),
    ('MDS', 'SPECTRE_V4'),
]

ALL_CLASSES = [
    'BENIGN', 'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'L1TF',
    'MDS', 'RETBLEED', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4'
]

# Short names for plot labels
SHORT_NAMES = {
    'BRANCH_HISTORY_INJECTION': 'BHI',
    'SPECTRE_V1': 'V1', 'SPECTRE_V2': 'V2', 'SPECTRE_V4': 'V4',
    'RETBLEED': 'RETBL', 'INCEPTION': 'INCEP',
    'L1TF': 'L1TF', 'MDS': 'MDS', 'BENIGN': 'BENIGN',
}


def load_data(path: Path):
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            label = rec.get('label', 'UNKNOWN')
            if label in ('vuln', 'benign'):
                label = rec.get('vuln_label', label.upper() if label == 'benign' else 'UNKNOWN')
            rec['label'] = label
            records.append(rec)
    return [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']


def sequence_hash(sequence: List[str]) -> str:
    normalized = '|'.join(s.strip().lower() for s in sequence)
    return hashlib.md5(normalized.encode()).hexdigest()


def opcode_hash(sequence: List[str]) -> str:
    opcodes = [s.strip().split()[0].lower() for s in sequence if s.strip()]
    return hashlib.md5('|'.join(opcodes).encode()).hexdigest()


def opcode_of(line: str) -> str:
    parts = line.strip().split()
    return parts[0].lower() if parts else ''


def detect_architecture(sequence: List[str]) -> str:
    text = ' '.join(sequence).lower()
    if any(kw in text for kw in ['ldr ', 'str ', 'stp ', 'ldp ', 'blr ', 'adrp', 'mrs ']):
        return 'ARM64'
    elif any(kw in text for kw in ['movq', 'pushq', 'popq', 'rax', 'rbx', 'rsp', 'callq', 'retq', '%e']):
        return 'x86_64'
    return 'Other'


def jaccard_bigram(seq_a: List[str], seq_b: List[str]) -> float:
    ops_a = [opcode_of(s) for s in seq_a]
    ops_b = [opcode_of(s) for s in seq_b]
    bg_a = set(tuple(ops_a[i:i+2]) for i in range(len(ops_a)-1))
    bg_b = set(tuple(ops_b[i:i+2]) for i in range(len(ops_b)-1))
    if not bg_a and not bg_b:
        return 1.0
    inter = len(bg_a & bg_b)
    union = len(bg_a | bg_b)
    return inter / union if union > 0 else 0.0


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 1: Cross-class duplicates — the accuracy ceiling
# ═══════════════════════════════════════════════════════════════════════════

def plot_cross_class_duplicates(records, output_dir):
    """Show how many exact-duplicate and opcode-duplicate sequences exist across classes."""
    print('\n  Computing cross-class duplicates...')

    # Exact duplicates
    hash_to_labels = defaultdict(set)
    hash_to_example = {}
    for rec in records:
        seq = rec.get('sequence', [])
        h = sequence_hash(seq)
        hash_to_labels[h].add(rec['label'])
        if h not in hash_to_example:
            hash_to_example[h] = seq

    exact_cross = {h: labels for h, labels in hash_to_labels.items() if len(labels) > 1}
    n_exact = sum(1 for rec in records if sequence_hash(rec.get('sequence', [])) in exact_cross)

    # Opcode-only duplicates
    ophash_to_labels = defaultdict(set)
    for rec in records:
        seq = rec.get('sequence', [])
        h = opcode_hash(seq)
        ophash_to_labels[h].add(rec['label'])

    opcode_cross = {h: labels for h, labels in ophash_to_labels.items() if len(labels) > 1}
    n_opcode = sum(1 for rec in records if opcode_hash(rec.get('sequence', [])) in opcode_cross)

    # Per-pair duplicate counts
    pair_exact = Counter()
    pair_opcode = Counter()

    for h, labels in exact_cross.items():
        for l1 in labels:
            for l2 in labels:
                if l1 < l2:
                    pair_exact[(l1, l2)] += 1
    for h, labels in opcode_cross.items():
        for l1 in labels:
            for l2 in labels:
                if l1 < l2:
                    pair_opcode[(l1, l2)] += 1

    # ── Figure: Duplicate matrix heatmap ──
    classes = ALL_CLASSES
    n = len(classes)
    exact_matrix = np.zeros((n, n), dtype=int)
    opcode_matrix = np.zeros((n, n), dtype=int)

    for (l1, l2), count in pair_exact.items():
        if l1 in classes and l2 in classes:
            i, j = classes.index(l1), classes.index(l2)
            exact_matrix[i, j] = count
            exact_matrix[j, i] = count
    for (l1, l2), count in pair_opcode.items():
        if l1 in classes and l2 in classes:
            i, j = classes.index(l1), classes.index(l2)
            opcode_matrix[i, j] = count
            opcode_matrix[j, i] = count

    short = [SHORT_NAMES.get(c, c) for c in classes]

    fig, axes = plt.subplots(1, 2, figsize=(16, 6.5))

    # Exact duplicates heatmap
    im1 = axes[0].imshow(exact_matrix, cmap='Reds', interpolation='nearest')
    axes[0].set_xticks(range(n)); axes[0].set_yticks(range(n))
    axes[0].set_xticklabels(short, rotation=45, ha='right', fontsize=8)
    axes[0].set_yticklabels(short, fontsize=8)
    for i in range(n):
        for j in range(n):
            if exact_matrix[i, j] > 0:
                axes[0].text(j, i, str(exact_matrix[i, j]), ha='center', va='center',
                             fontsize=7, color='white' if exact_matrix[i, j] > exact_matrix.max()/2 else 'black')
    axes[0].set_title(f'Exact Byte-for-Byte Duplicates\n'
                      f'{len(exact_cross)} unique sequences, {n_exact} total records',
                      fontsize=10, fontweight='bold')
    fig.colorbar(im1, ax=axes[0], shrink=0.8)

    # Opcode-only duplicates heatmap
    im2 = axes[1].imshow(opcode_matrix, cmap='Oranges', interpolation='nearest')
    axes[1].set_xticks(range(n)); axes[1].set_yticks(range(n))
    axes[1].set_xticklabels(short, rotation=45, ha='right', fontsize=8)
    axes[1].set_yticklabels(short, fontsize=8)
    for i in range(n):
        for j in range(n):
            if opcode_matrix[i, j] > 0:
                axes[1].text(j, i, str(opcode_matrix[i, j]), ha='center', va='center',
                             fontsize=7, color='white' if opcode_matrix[i, j] > opcode_matrix.max()/2 else 'black')
    axes[1].set_title(f'Opcode-Only Duplicates (ignoring operands)\n'
                      f'{len(opcode_cross)} unique opcode seqs, {n_opcode} total records',
                      fontsize=10, fontweight='bold')
    fig.colorbar(im2, ax=axes[1], shrink=0.8)

    fig.suptitle(
        f'Cross-Class Duplicate Sequences — Theoretical Accuracy Ceiling\n'
        f'Identical sequences with different labels are unlearnable by any model\n'
        f'Total: {n_exact} exact duplicates ({100*n_exact/len(records):.1f}% of dataset), '
        f'{n_opcode} opcode duplicates ({100*n_opcode/len(records):.1f}%)',
        fontsize=11, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'cross_class_duplicates_heatmap.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved cross_class_duplicates_heatmap.png')

    # ── Figure: Example duplicate pairs ──
    # Find actual duplicate examples to display
    examples = []
    for h, labels in sorted(exact_cross.items(), key=lambda x: len(x[1]), reverse=True):
        labels_list = sorted(labels)
        seq = hash_to_example[h]
        if len(seq) <= 25:  # only show short enough to display
            examples.append((labels_list, seq))
        if len(examples) >= 4:
            break

    if examples:
        fig, axes = plt.subplots(len(examples), 1, figsize=(12, 3.5 * len(examples)))
        if len(examples) == 1:
            axes = [axes]

        for idx, (labels_list, seq) in enumerate(examples):
            ax = axes[idx]
            ax.set_xlim(0, 1)
            ax.set_ylim(0, len(seq) + 1)
            ax.invert_yaxis()

            for i, instr in enumerate(seq):
                ax.text(0.02, i + 0.5, f'{i:3d}: {instr.replace(chr(9), "  ")}',
                        fontsize=6, fontfamily='monospace', color='#2c3e50',
                        verticalalignment='center')

            label_str = ' + '.join(labels_list)
            ax.set_title(
                f'Exact duplicate #{idx+1} — appears as: {label_str}\n'
                f'This identical {len(seq)}-instruction sequence has {len(labels_list)} '
                f'contradictory labels — no model can classify it correctly',
                fontsize=9, fontweight='bold', color='#e74c3c'
            )
            ax.axis('off')

        fig.suptitle(
            'Example Cross-Class Duplicates\n'
            'Byte-for-byte identical sequences carrying different vulnerability labels',
            fontsize=12, fontweight='bold', y=1.02
        )
        plt.tight_layout()
        fig.savefig(output_dir / 'duplicate_examples.png', dpi=150, bbox_inches='tight')
        plt.close()
        print(f'  Saved duplicate_examples.png')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 2: Most-similar attack sequences — instruction-level alignment
# ═══════════════════════════════════════════════════════════════════════════

def plot_similar_attack_sequences(records, output_dir):
    """For each confused pair, find the most similar cross-class pair and show alignment."""
    print('\n  Finding most-similar cross-class pairs...')

    by_class = defaultdict(list)
    for rec in records:
        by_class[rec['label']].append(rec)

    for class_a, class_b in CONFUSED_PAIRS:
        samples_a = by_class.get(class_a, [])[:200]  # limit for speed
        samples_b = by_class.get(class_b, [])[:200]

        if not samples_a or not samples_b:
            continue

        # Find the most similar pair
        best_jacc = -1
        best_pair = None
        for ra in samples_a[:50]:
            for rb in samples_b[:50]:
                j = jaccard_bigram(ra['sequence'], rb['sequence'])
                if j > best_jacc:
                    best_jacc = j
                    best_pair = (ra, rb)

        if best_pair is None:
            continue

        seq_a = best_pair[0]['sequence']
        seq_b = best_pair[1]['sequence']
        ops_a = [opcode_of(s) for s in seq_a]
        ops_b = [opcode_of(s) for s in seq_b]

        # Build diff: mark matching vs differing opcodes
        max_len = max(len(seq_a), len(seq_b))

        fig, axes = plt.subplots(1, 2, figsize=(16, max(5, 0.35 * max_len)))

        for col, (seq, ops, cls) in enumerate([(seq_a, ops_a, class_a), (seq_b, ops_b, class_b)]):
            ax = axes[col]
            ax.set_xlim(0, 1)
            ax.set_ylim(0, max(len(seq) + 1, 1))
            ax.invert_yaxis()

            for i, (instr, op) in enumerate(zip(seq, ops)):
                # Check if this opcode matches the corresponding position in the other seq
                other_ops = ops_b if col == 0 else ops_a
                if i < len(other_ops) and op == other_ops[i]:
                    color = '#27ae60'  # matching
                    weight = 'normal'
                else:
                    color = '#e74c3c'  # different
                    weight = 'bold'

                ax.text(0.02, i + 0.5, f'{i:3d}: {instr.replace(chr(9), "  ")}',
                        fontsize=6, fontfamily='monospace', color=color,
                        fontweight=weight, verticalalignment='center')

            n_match = sum(1 for i in range(min(len(ops), len(other_ops)))
                          if ops[i] == (ops_b if col == 0 else ops_a)[i])
            other_ops = ops_b if col == 0 else ops_a
            pct_match = 100 * n_match / max(min(len(ops), len(other_ops)), 1)

            ax.set_title(
                f'{cls}  ({len(seq)} instrs)\n'
                f'{n_match}/{min(len(ops), len(other_ops))} opcodes match ({pct_match:.0f}%)',
                fontsize=9, fontweight='bold'
            )
            ax.axis('off')

        fig.suptitle(
            f'Most Similar Cross-Class Pair: {class_a} vs {class_b}\n'
            f'Jaccard bigram similarity = {best_jacc:.3f}\n'
            f'Green = matching opcode at same position  |  Red/Bold = differs',
            fontsize=11, fontweight='bold', y=1.02
        )
        plt.tight_layout()
        fname = f'similar_attack_{class_a}_vs_{class_b}.png'
        fig.savefig(output_dir / fname, dpi=150, bbox_inches='tight')
        plt.close()
        print(f'  Saved {fname}')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 3: Feature separability heatmap — Cohen's d
# ═══════════════════════════════════════════════════════════════════════════

def plot_feature_separability(diag_data, output_dir):
    """Heatmap of number of discriminative features (Cohen's d > thresholds) per pair."""
    print('\n  Building feature separability heatmap...')

    pairs_in_diag = list(diag_data.keys())

    # Collect pair metrics
    pair_names = []
    n_d05 = []
    n_d08 = []
    n_d12 = []

    for pair_key in pairs_in_diag:
        data = diag_data[pair_key]
        pair_names.append(pair_key.replace('_vs_', '\nvs\n'))
        n_d05.append(data.get('n_features_d_gt_0.5', 0))
        n_d08.append(data.get('n_features_d_gt_0.8', 0))
        # Count features with d > 1.2 from top_features
        top = data.get('top_features', [])
        n_above_12 = sum(1 for f in top if f.get('cohens_d', 0) > 1.2)
        n_d12.append(n_above_12)

    # Bar chart
    fig, ax = plt.subplots(figsize=(14, 6))
    x = np.arange(len(pair_names))
    width = 0.25

    bars1 = ax.bar(x - width, n_d12, width, label="Cohen's d > 1.2 (large effect)",
                   color='#e74c3c', alpha=0.85)
    bars2 = ax.bar(x, n_d08, width, label="Cohen's d > 0.8 (medium effect)",
                   color='#f39c12', alpha=0.85)
    bars3 = ax.bar(x + width, n_d05, width, label="Cohen's d > 0.5 (small effect)",
                   color='#3498db', alpha=0.85)

    ax.set_xticks(x)
    ax.set_xticklabels(pair_names, fontsize=7, ha='center')
    ax.set_ylabel('Number of Features', fontsize=10)
    ax.legend(fontsize=8)
    ax.grid(axis='y', alpha=0.3)

    # Annotate
    for bar, val in zip(bars1, n_d12):
        ax.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 1,
                str(val), ha='center', fontsize=7, fontweight='bold', color='#e74c3c')

    ax.set_title(
        "Feature Separability per Confused Pair — Cohen's d Thresholds\n"
        "Red bars show strongly discriminative features (d>1.2). "
        "RETBLEED vs INCEPTION has 0 — indistinguishable at instruction level",
        fontsize=11, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'feature_separability_cohens_d.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved feature_separability_cohens_d.png')

    # ── Top discriminative features per pair ──
    fig, axes = plt.subplots(2, 3, figsize=(18, 10))
    axes = axes.flatten()

    for idx, pair_key in enumerate(pairs_in_diag[:6]):
        data = diag_data[pair_key]
        top = data.get('top_features', [])[:10]
        if not top:
            continue

        names = [f['name'][:25] for f in top]
        d_vals = [f['cohens_d'] for f in top]
        colors = ['#e74c3c' if d > 1.2 else '#f39c12' if d > 0.8 else '#3498db' for d in d_vals]

        ax = axes[idx]
        bars = ax.barh(range(len(names)), d_vals, color=colors, alpha=0.85)
        ax.set_yticks(range(len(names)))
        ax.set_yticklabels(names, fontsize=6)
        ax.invert_yaxis()
        ax.set_xlabel("Cohen's d", fontsize=8)
        ax.set_title(pair_key.replace('_', ' '), fontsize=8, fontweight='bold')
        ax.axvline(x=0.8, color='grey', linestyle='--', alpha=0.5, linewidth=0.8)
        ax.axvline(x=1.2, color='grey', linestyle='--', alpha=0.5, linewidth=0.8)

        for bar, val in zip(bars, d_vals):
            ax.text(bar.get_width() + 0.02, bar.get_y() + bar.get_height()/2,
                    f'{val:.2f}', va='center', fontsize=5)

    # Hide unused axes
    for idx in range(len(pairs_in_diag), len(axes)):
        axes[idx].axis('off')

    fig.suptitle(
        "Top 10 Most Discriminative Features per Confused Pair\n"
        "Red = d>1.2 (strong), Orange = d>0.8 (medium), Blue = d>0.5 (weak)",
        fontsize=12, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'top_features_per_pair.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved top_features_per_pair.png')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 4: Architecture distribution — V4 monoculture
# ═══════════════════════════════════════════════════════════════════════════

def plot_architecture_distribution(records, output_dir):
    """Show ISA distribution per class, highlighting V4's x86 monoculture."""
    print('\n  Computing architecture distribution...')

    arch_counts = defaultdict(Counter)
    for rec in records:
        arch = detect_architecture(rec.get('sequence', []))
        arch_counts[rec['label']][arch] += 1

    classes = ALL_CLASSES
    archs = ['x86_64', 'ARM64', 'Other']
    arch_colors = {'x86_64': '#3498db', 'ARM64': '#e74c3c', 'Other': '#95a5a6'}

    fig, ax = plt.subplots(figsize=(14, 6))
    x = np.arange(len(classes))
    width = 0.25

    for ai, arch in enumerate(archs):
        vals = []
        for cls in classes:
            total = sum(arch_counts[cls].values())
            pct = 100 * arch_counts[cls].get(arch, 0) / max(total, 1)
            vals.append(pct)
        offset = (ai - 1) * width
        bars = ax.bar(x + offset, vals, width, label=arch, color=arch_colors[arch], alpha=0.85)

        # Annotate percentages
        for bar, val in zip(bars, vals):
            if val > 5:
                ax.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.5,
                        f'{val:.0f}%', ha='center', fontsize=6, fontweight='bold')

    short = [SHORT_NAMES.get(c, c) for c in classes]
    ax.set_xticks(x)
    ax.set_xticklabels(short, fontsize=9)
    ax.set_ylabel('% of Samples', fontsize=10)
    ax.legend(fontsize=9)
    ax.grid(axis='y', alpha=0.3)

    # Highlight V4
    v4_idx = classes.index('SPECTRE_V4')
    ax.axvspan(v4_idx - 0.4, v4_idx + 0.4, alpha=0.1, color='red')
    ax.annotate('100% x86 →\nDataset artifact',
                xy=(v4_idx, 100), xytext=(v4_idx - 1.5, 85),
                fontsize=8, fontweight='bold', color='#e74c3c',
                arrowprops=dict(arrowstyle='->', color='#e74c3c'))

    ax.set_title(
        'ISA Architecture Distribution per Class\n'
        'SPECTRE_V4 is 100% x86_64 — the model may learn x86 as a shortcut feature for V4\n'
        'rather than learning the actual store-load forwarding vulnerability pattern',
        fontsize=11, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'architecture_distribution.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved architecture_distribution.png')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 5: Sequence similarity distributions (Jaccard per pair)
# ═══════════════════════════════════════════════════════════════════════════

def plot_similarity_distributions(records, output_dir):
    """Histogram of pairwise Jaccard similarities within each confused pair."""
    print('\n  Computing similarity distributions (may take a minute)...')

    by_class = defaultdict(list)
    for rec in records:
        by_class[rec['label']].append(rec)

    fig, axes = plt.subplots(2, 2, figsize=(14, 10))
    axes = axes.flatten()

    for idx, (class_a, class_b) in enumerate(CONFUSED_PAIRS):
        # Sample for speed
        rng = np.random.RandomState(42)
        sa = by_class.get(class_a, [])
        sb = by_class.get(class_b, [])
        if len(sa) > 100:
            sa = [sa[i] for i in rng.choice(len(sa), 100, replace=False)]
        if len(sb) > 100:
            sb = [sb[i] for i in rng.choice(len(sb), 100, replace=False)]

        # Within-class similarity
        within_a = []
        for i in range(min(50, len(sa))):
            for j in range(i+1, min(50, len(sa))):
                within_a.append(jaccard_bigram(sa[i]['sequence'], sa[j]['sequence']))

        within_b = []
        for i in range(min(50, len(sb))):
            for j in range(i+1, min(50, len(sb))):
                within_b.append(jaccard_bigram(sb[i]['sequence'], sb[j]['sequence']))

        # Cross-class similarity
        cross = []
        for i in range(min(80, len(sa))):
            for j in range(min(80, len(sb))):
                cross.append(jaccard_bigram(sa[i]['sequence'], sb[j]['sequence']))

        ax = axes[idx]
        short_a = SHORT_NAMES.get(class_a, class_a)
        short_b = SHORT_NAMES.get(class_b, class_b)

        bins = np.linspace(0, 0.6, 30)
        if within_a:
            ax.hist(within_a, bins=bins, alpha=0.5, color='#3498db',
                    label=f'Within {short_a}', density=True)
        if within_b:
            ax.hist(within_b, bins=bins, alpha=0.5, color='#e74c3c',
                    label=f'Within {short_b}', density=True)
        if cross:
            ax.hist(cross, bins=bins, alpha=0.6, color='#2ecc71',
                    label=f'Cross {short_a}↔{short_b}', density=True, histtype='step', linewidth=2)

        cross_mean = np.mean(cross) if cross else 0
        cross_max = np.max(cross) if cross else 0
        ax.axvline(x=cross_mean, color='#2ecc71', linestyle='--', linewidth=1.5)

        ax.set_xlabel('Jaccard Bigram Similarity', fontsize=8)
        ax.set_ylabel('Density', fontsize=8)
        ax.set_title(
            f'{class_a} vs {class_b}\n'
            f'Cross mean={cross_mean:.3f}, max={cross_max:.3f}',
            fontsize=9, fontweight='bold'
        )
        ax.legend(fontsize=7)

    fig.suptitle(
        'Sequence Similarity Distributions — Within-Class vs Cross-Class\n'
        'High cross-class overlap = model cannot distinguish classes by graph structure alone',
        fontsize=12, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'similarity_distributions.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved similarity_distributions.png')


# ═══════════════════════════════════════════════════════════════════════════
# FIGURE 6: Discriminative opcode heatmap across pairs
# ═══════════════════════════════════════════════════════════════════════════

def plot_discriminative_opcodes(diag_data, output_dir):
    """Heatmap showing which opcodes discriminate which pairs."""
    print('\n  Building discriminative opcode heatmap...')

    # Collect top discriminative opcodes across all pairs
    all_opcodes = set()
    pair_opcode_diffs = {}
    for pair_key, data in diag_data.items():
        diffs = {}
        for entry in data.get('top_discriminative_opcodes', [])[:15]:
            op = entry['opcode']
            all_opcodes.add(op)
            diffs[op] = entry['diff']
        pair_opcode_diffs[pair_key] = diffs

    # Filter to opcodes that appear in at least 2 pairs
    opcode_counts = Counter()
    for diffs in pair_opcode_diffs.values():
        for op in diffs:
            opcode_counts[op] += 1
    shared_opcodes = sorted([op for op, c in opcode_counts.items() if c >= 2],
                            key=lambda op: sum(abs(pair_opcode_diffs[p].get(op, 0))
                                               for p in pair_opcode_diffs), reverse=True)[:20]

    if not shared_opcodes:
        return

    pair_keys = list(diag_data.keys())
    matrix = np.zeros((len(shared_opcodes), len(pair_keys)))
    for j, pk in enumerate(pair_keys):
        for i, op in enumerate(shared_opcodes):
            matrix[i, j] = pair_opcode_diffs.get(pk, {}).get(op, 0)

    fig, ax = plt.subplots(figsize=(14, 8))
    vmax = np.abs(matrix).max()
    im = ax.imshow(matrix, cmap='RdBu_r', aspect='auto', vmin=-vmax, vmax=vmax)

    ax.set_xticks(range(len(pair_keys)))
    ax.set_xticklabels([pk.replace('_vs_', '\nvs\n').replace('_', ' ') for pk in pair_keys],
                        fontsize=7, rotation=45, ha='right')
    ax.set_yticks(range(len(shared_opcodes)))
    ax.set_yticklabels(shared_opcodes, fontsize=8)

    for i in range(len(shared_opcodes)):
        for j in range(len(pair_keys)):
            val = matrix[i, j]
            if abs(val) > 0.005:
                ax.text(j, i, f'{val:.2f}', ha='center', va='center', fontsize=5,
                        color='white' if abs(val) > vmax * 0.6 else 'black')

    fig.colorbar(im, ax=ax, shrink=0.8, label='Frequency difference (class_a - class_b)')

    ax.set_title(
        'Discriminative Opcodes Across Confused Pairs\n'
        'Blue = more frequent in class A, Red = more frequent in class B\n'
        'Boilerplate opcodes (_barrier:, _rd:, dsb, mrs) appear as discriminators — a red flag',
        fontsize=11, fontweight='bold'
    )
    plt.tight_layout()
    fig.savefig(output_dir / 'discriminative_opcodes_heatmap.png', dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Saved discriminative_opcodes_heatmap.png')


# ═══════════════════════════════════════════════════════════════════════════
# MAIN
# ═══════════════════════════════════════════════════════════════════════════

def main():
    print('=' * 70)
    print('Confusion Causes — Additional Diagnostic Visualizations')
    print('=' * 70)

    print(f'\nLoading data from {DATA_PATH}...')
    records = load_data(DATA_PATH)
    print(f'  {len(records)} records')

    # Load diagnosis JSON if available
    diag_data = {}
    if DIAG_PATH.exists():
        print(f'Loading diagnosis from {DIAG_PATH}...')
        with open(DIAG_PATH) as f:
            diag_data = json.load(f)
        print(f'  {len(diag_data)} pairs')

    # Figure 1: Cross-class duplicates
    print('\n--- Figure 1: Cross-Class Duplicates ---')
    plot_cross_class_duplicates(records, OUTPUT_DIR)

    # Figure 2: Most-similar attack sequences
    print('\n--- Figure 2: Similar Attack Sequences ---')
    plot_similar_attack_sequences(records, OUTPUT_DIR)

    # Figure 3: Feature separability
    if diag_data:
        print('\n--- Figure 3: Feature Separability ---')
        plot_feature_separability(diag_data, OUTPUT_DIR)

    # Figure 4: Architecture distribution
    print('\n--- Figure 4: Architecture Distribution ---')
    plot_architecture_distribution(records, OUTPUT_DIR)

    # Figure 5: Similarity distributions
    print('\n--- Figure 5: Similarity Distributions ---')
    plot_similarity_distributions(records, OUTPUT_DIR)

    # Figure 6: Discriminative opcodes
    if diag_data:
        print('\n--- Figure 6: Discriminative Opcodes ---')
        plot_discriminative_opcodes(diag_data, OUTPUT_DIR)

    print(f'\nAll figures saved to {OUTPUT_DIR}/')
    print('Done.')


if __name__ == '__main__':
    main()
