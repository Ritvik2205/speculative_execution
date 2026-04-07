#!/usr/bin/env python3
"""
Diagnose confusion between class pairs in the GINE model.

For each confused pair (e.g., L1TF ↔ SPECTRE_V1), this script:
1. Extracts all misclassified samples and their correctly-classified counterparts
2. Compares their assembly sequences (Jaccard similarity of instruction n-grams)
3. Compares their PDG structures (node count, edge type distribution, graph edit distance proxy)
4. Checks for near-duplicate sequences across classes (augmentation leakage)
5. Analyzes which instructions appear in misclassified but not correctly-classified samples
6. Checks architecture distribution (x86 vs ARM64 vs RISC-V) in misclassified samples
7. Looks at WHERE in the sequence the classes diverge (prefix similarity analysis)

Outputs:
- Per-pair diagnostic reports (text + JSON)
- Near-duplicate analysis
- Instruction-level diff between confused pairs
- Prefix similarity histograms
"""

import argparse
import json
import sys
import hashlib
from pathlib import Path
from collections import Counter, defaultdict
from typing import List, Dict, Tuple, Set
import warnings
warnings.filterwarnings('ignore')

import numpy as np
import torch
from torch.utils.data import DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from tqdm import tqdm

sys.path.insert(0, str(Path(__file__).parent))

from pdg_builder import PDGBuilder, EDGE_TYPES, NUM_EDGE_TYPES


# =============================================================================
# CONFUSED PAIRS
# =============================================================================

CONFUSED_PAIRS = [
    ('L1TF', 'SPECTRE_V1'),
    ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'),
    ('RETBLEED', 'INCEPTION'),
    ('MDS', 'SPECTRE_V4'),
    ('L1TF', 'SPECTRE_V4'),
    ('MDS', 'SPECTRE_V1'),
]


# =============================================================================
# ANALYSIS FUNCTIONS
# =============================================================================

def get_instruction_ngrams(sequence: List[str], n: int = 2) -> Set[Tuple[str, ...]]:
    """Extract n-grams of opcodes from instruction sequence."""
    opcodes = []
    for instr in sequence:
        parts = instr.strip().split()
        if parts:
            opcodes.append(parts[0].lower())
    return set(tuple(opcodes[i:i+n]) for i in range(len(opcodes) - n + 1))


def jaccard_similarity(set_a: set, set_b: set) -> float:
    if not set_a and not set_b:
        return 1.0
    intersection = len(set_a & set_b)
    union = len(set_a | set_b)
    return intersection / union if union > 0 else 0.0


def sequence_hash(sequence: List[str]) -> str:
    """Hash a sequence for near-duplicate detection."""
    # Normalize: lowercase, strip whitespace, join
    normalized = '|'.join(s.strip().lower() for s in sequence)
    return hashlib.md5(normalized.encode()).hexdigest()


def opcode_sequence(sequence: List[str]) -> List[str]:
    """Extract just opcodes from instruction sequence."""
    opcodes = []
    for instr in sequence:
        parts = instr.strip().split()
        if parts:
            opcodes.append(parts[0].lower())
    return opcodes


def prefix_similarity(seq_a: List[str], seq_b: List[str]) -> Tuple[int, int]:
    """How many opcodes match from the start? Returns (matching, min_length)."""
    ops_a = opcode_sequence(seq_a)
    ops_b = opcode_sequence(seq_b)
    matching = 0
    min_len = min(len(ops_a), len(ops_b))
    for i in range(min_len):
        if ops_a[i] == ops_b[i]:
            matching += 1
        else:
            break
    return matching, min_len


def longest_common_subsequence_length(seq_a: List[str], seq_b: List[str]) -> int:
    """LCS length of opcode sequences (capped at 50 for speed)."""
    ops_a = opcode_sequence(seq_a)[:50]
    ops_b = opcode_sequence(seq_b)[:50]
    m, n = len(ops_a), len(ops_b)
    # Space-optimized LCS
    prev = [0] * (n + 1)
    for i in range(1, m + 1):
        curr = [0] * (n + 1)
        for j in range(1, n + 1):
            if ops_a[i-1] == ops_b[j-1]:
                curr[j] = prev[j-1] + 1
            else:
                curr[j] = max(prev[j], curr[j-1])
        prev = curr
    return prev[n]


def detect_architecture(sequence: List[str]) -> str:
    """Heuristic: detect ISA from instruction mnemonics."""
    text = ' '.join(sequence).lower()
    if any(kw in text for kw in ['ldr ', 'str ', 'stp ', 'ldp ', 'blr ', 'adrp', 'mrs ']):
        return 'arm64'
    elif any(kw in text for kw in ['mov ', 'push ', 'pop ', 'rax', 'rbx', 'rsp', 'call ', 'ret']):
        return 'x86_64'
    elif any(kw in text for kw in ['addi ', 'ld ', 'sd ', 'jalr ', 'beq ', 'bne ']):
        return 'riscv'
    return 'unknown'


def get_edge_type_dist(sequence: List[str], pdg_builder: PDGBuilder) -> Dict[str, float]:
    """Get edge type distribution for a sequence."""
    pdg = pdg_builder.build(sequence)
    edge_index, edge_type = pdg.get_edge_index_and_type(64)
    n_edges = edge_index.shape[1]
    if n_edges == 0:
        return {}
    edge_names = {v: k for k, v in EDGE_TYPES.items()}
    counts = Counter(int(et) for et in edge_type[:n_edges])
    total = sum(counts.values())
    return {edge_names.get(et, f'type_{et}'): counts[et] / total for et in sorted(counts.keys())}


# =============================================================================
# MAIN DIAGNOSIS
# =============================================================================

def main():
    parser = argparse.ArgumentParser(description='Diagnose confusion between class pairs')
    parser.add_argument('--data', type=str, default='data/features/combined_v25_real_benign.jsonl')
    parser.add_argument('--model-dir', type=str, default='viz_v35_gine_balanced',
                        help='Directory containing gine_best.pt')
    parser.add_argument('--output-dir', type=str, default='diagnosis')
    parser.add_argument('--max-samples-per-pair', type=int, default=200,
                        help='Max misclassified samples to analyze per pair')
    parser.add_argument('--top-k-duplicates', type=int, default=50)

    args = parser.parse_args()
    output_dir = Path(args.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    # Load data
    print(f"Loading data from {args.data}...")
    records = []
    with open(args.data) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                label = rec.get('label', 'UNKNOWN')
                if label in ('vuln', 'benign'):
                    label = rec.get('vuln_label', label.upper() if label == 'benign' else 'UNKNOWN')
                rec['label'] = label
                records.append(rec)

    records = [r for r in records if r.get('label', 'UNKNOWN') != 'UNKNOWN']
    print(f"  {len(records)} records")

    unique_labels = sorted(set(r['label'] for r in records))
    label_to_id = {label: i for i, label in enumerate(unique_labels)}
    id_to_label = {i: label for label, i in label_to_id.items()}

    # Same split as training (random_state=42)
    labels = [r['label'] for r in records]
    train_records, test_records = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"  Train: {len(train_records)}, Test: {len(test_records)}")

    # Index records by label
    test_by_label = defaultdict(list)
    train_by_label = defaultdict(list)
    for r in test_records:
        test_by_label[r['label']].append(r)
    for r in train_records:
        train_by_label[r['label']].append(r)

    pdg_builder = PDGBuilder(speculative_window=10)

    # =====================================================================
    # ANALYSIS 1: Near-duplicate detection across classes
    # =====================================================================
    print("\n" + "=" * 70)
    print("ANALYSIS 1: Near-duplicate sequences across classes")
    print("=" * 70)

    # Hash all sequences
    hash_to_records = defaultdict(list)
    opcode_hash_to_records = defaultdict(list)

    for r in tqdm(records, desc="Hashing sequences"):
        seq = r.get('sequence', [])
        # Exact duplicate (full instruction text)
        h = sequence_hash(seq)
        hash_to_records[h].append(r['label'])
        # Opcode-only duplicate (ignore operands)
        ops = tuple(opcode_sequence(seq))
        oh = hashlib.md5(str(ops).encode()).hexdigest()
        opcode_hash_to_records[oh].append(r['label'])

    # Find cross-class duplicates
    exact_cross_class = 0
    opcode_cross_class = 0
    cross_class_pairs = Counter()

    for h, labels_list in hash_to_records.items():
        unique = set(labels_list)
        if len(unique) > 1:
            exact_cross_class += len(labels_list)
            for l1 in unique:
                for l2 in unique:
                    if l1 < l2:
                        cross_class_pairs[(l1, l2)] += 1

    opcode_cross_pairs = Counter()
    for h, labels_list in opcode_hash_to_records.items():
        unique = set(labels_list)
        if len(unique) > 1:
            opcode_cross_class += len(labels_list)
            for l1 in unique:
                for l2 in unique:
                    if l1 < l2:
                        opcode_cross_pairs[(l1, l2)] += 1

    print(f"\nExact duplicates across classes: {exact_cross_class} samples")
    print(f"Opcode-only duplicates across classes: {opcode_cross_class} samples")
    if cross_class_pairs:
        print("\nExact cross-class duplicate pairs:")
        for (l1, l2), count in cross_class_pairs.most_common(20):
            print(f"  {l1} <-> {l2}: {count}")
    if opcode_cross_pairs:
        print("\nOpcode-only cross-class duplicate pairs:")
        for (l1, l2), count in opcode_cross_pairs.most_common(20):
            print(f"  {l1} <-> {l2}: {count}")

    # =====================================================================
    # ANALYSIS 2: Per-pair structural comparison
    # =====================================================================
    print("\n" + "=" * 70)
    print("ANALYSIS 2: Per-pair structural comparison")
    print("=" * 70)

    pair_reports = {}

    for class_a, class_b in CONFUSED_PAIRS:
        if class_a not in label_to_id or class_b not in label_to_id:
            continue

        print(f"\n--- {class_a} vs {class_b} ---")

        samples_a = test_by_label[class_a][:args.max_samples_per_pair]
        samples_b = test_by_label[class_b][:args.max_samples_per_pair]

        # Architecture distribution
        arch_a = Counter(detect_architecture(r['sequence']) for r in samples_a)
        arch_b = Counter(detect_architecture(r['sequence']) for r in samples_b)
        print(f"  Architecture distribution:")
        print(f"    {class_a}: {dict(arch_a)}")
        print(f"    {class_b}: {dict(arch_b)}")

        # Sequence length distribution
        len_a = [len(r['sequence']) for r in samples_a]
        len_b = [len(r['sequence']) for r in samples_b]
        print(f"  Sequence length: {class_a} mean={np.mean(len_a):.1f} std={np.std(len_a):.1f} | "
              f"{class_b} mean={np.mean(len_b):.1f} std={np.std(len_b):.1f}")

        # Cross-class Jaccard similarity (bigram)
        print(f"  Computing cross-class Jaccard similarity (bigrams)...")
        jaccard_scores = []
        n_compare = min(100, len(samples_a), len(samples_b))
        for i in range(n_compare):
            ngrams_a = get_instruction_ngrams(samples_a[i]['sequence'], n=2)
            ngrams_b = get_instruction_ngrams(samples_b[i]['sequence'], n=2)
            jaccard_scores.append(jaccard_similarity(ngrams_a, ngrams_b))

        print(f"    Jaccard (bigram): mean={np.mean(jaccard_scores):.3f} "
              f"std={np.std(jaccard_scores):.3f} "
              f"max={np.max(jaccard_scores):.3f}")

        # Within-class Jaccard for reference
        within_a = []
        for i in range(min(50, len(samples_a))):
            for j in range(i+1, min(50, len(samples_a))):
                ng_i = get_instruction_ngrams(samples_a[i]['sequence'], n=2)
                ng_j = get_instruction_ngrams(samples_a[j]['sequence'], n=2)
                within_a.append(jaccard_similarity(ng_i, ng_j))
        if within_a:
            print(f"    Within-{class_a} Jaccard: mean={np.mean(within_a):.3f}")

        # LCS analysis (opcode-level)
        print(f"  Computing LCS (opcode-level, capped at 50)...")
        lcs_scores = []
        for i in range(n_compare):
            lcs = longest_common_subsequence_length(
                samples_a[i]['sequence'], samples_b[i]['sequence']
            )
            min_len = min(len(opcode_sequence(samples_a[i]['sequence'])[:50]),
                         len(opcode_sequence(samples_b[i]['sequence'])[:50]))
            if min_len > 0:
                lcs_scores.append(lcs / min_len)
        if lcs_scores:
            print(f"    LCS ratio: mean={np.mean(lcs_scores):.3f} "
                  f"std={np.std(lcs_scores):.3f} "
                  f"max={np.max(lcs_scores):.3f}")

        # Discriminative opcodes: which opcodes appear in A but not B, and vice versa?
        opcodes_a = Counter()
        opcodes_b = Counter()
        for r in samples_a:
            for op in opcode_sequence(r['sequence']):
                opcodes_a[op] += 1
        for r in samples_b:
            for op in opcode_sequence(r['sequence']):
                opcodes_b[op] += 1

        # Normalize
        total_a = sum(opcodes_a.values())
        total_b = sum(opcodes_b.values())
        freq_a = {op: c / total_a for op, c in opcodes_a.items()}
        freq_b = {op: c / total_b for op, c in opcodes_b.items()}

        # Find opcodes with biggest frequency difference
        all_ops = set(freq_a.keys()) | set(freq_b.keys())
        diffs = []
        for op in all_ops:
            fa = freq_a.get(op, 0)
            fb = freq_b.get(op, 0)
            diffs.append((op, fa - fb, fa, fb))
        diffs.sort(key=lambda x: abs(x[1]), reverse=True)

        print(f"  Top discriminative opcodes ({class_a} vs {class_b}):")
        print(f"    {'Opcode':<15} {'Freq_A':>8} {'Freq_B':>8} {'Diff':>8}")
        for op, diff, fa, fb in diffs[:15]:
            print(f"    {op:<15} {fa:>8.4f} {fb:>8.4f} {diff:>+8.4f}")

        # Edge type comparison
        print(f"  Computing edge type distributions...")
        edge_dists_a = []
        edge_dists_b = []
        for r in samples_a[:50]:
            dist = get_edge_type_dist(r['sequence'], pdg_builder)
            if dist:
                edge_dists_a.append(dist)
        for r in samples_b[:50]:
            dist = get_edge_type_dist(r['sequence'], pdg_builder)
            if dist:
                edge_dists_b.append(dist)

        if edge_dists_a and edge_dists_b:
            # Average edge type proportions
            edge_types_all = set()
            for d in edge_dists_a + edge_dists_b:
                edge_types_all.update(d.keys())

            print(f"    {'Edge Type':<20} {'Mean_A':>8} {'Mean_B':>8} {'Diff':>8}")
            for et in sorted(edge_types_all):
                mean_a = np.mean([d.get(et, 0) for d in edge_dists_a])
                mean_b = np.mean([d.get(et, 0) for d in edge_dists_b])
                diff = mean_a - mean_b
                print(f"    {et:<20} {mean_a:>8.4f} {mean_b:>8.4f} {diff:>+8.4f}")

        # Prefix similarity (how far do they match from the start?)
        print(f"  Prefix similarity analysis...")
        prefix_lens = []
        for i in range(n_compare):
            match, total = prefix_similarity(samples_a[i]['sequence'],
                                             samples_b[i]['sequence'])
            prefix_lens.append(match)
        print(f"    Prefix match: mean={np.mean(prefix_lens):.1f} "
              f"std={np.std(prefix_lens):.1f} "
              f"max={max(prefix_lens)}")

        # Source file overlap: do confused samples come from same source files?
        sources_a = Counter(r.get('source_file', 'unknown') for r in samples_a)
        sources_b = Counter(r.get('source_file', 'unknown') for r in samples_b)
        shared_sources = set(sources_a.keys()) & set(sources_b.keys())
        shared_sources.discard('unknown')
        print(f"  Source file overlap: {len(shared_sources)} shared files "
              f"(A has {len(sources_a)}, B has {len(sources_b)})")
        if shared_sources:
            print(f"    Shared sources: {list(shared_sources)[:5]}")

        # Store report
        pair_reports[f"{class_a}_vs_{class_b}"] = {
            'arch_a': dict(arch_a),
            'arch_b': dict(arch_b),
            'len_a_mean': float(np.mean(len_a)),
            'len_b_mean': float(np.mean(len_b)),
            'jaccard_mean': float(np.mean(jaccard_scores)),
            'jaccard_max': float(np.max(jaccard_scores)),
            'lcs_ratio_mean': float(np.mean(lcs_scores)) if lcs_scores else 0,
            'prefix_match_mean': float(np.mean(prefix_lens)),
            'n_shared_sources': len(shared_sources),
            'top_discriminative_opcodes': [
                {'opcode': op, 'freq_a': fa, 'freq_b': fb, 'diff': diff}
                for op, diff, fa, fb in diffs[:20]
            ],
        }

    # =====================================================================
    # ANALYSIS 3: Handcrafted feature overlap
    # =====================================================================
    print("\n" + "=" * 70)
    print("ANALYSIS 3: Handcrafted feature separability per pair")
    print("=" * 70)

    for class_a, class_b in CONFUSED_PAIRS:
        if class_a not in label_to_id or class_b not in label_to_id:
            continue

        samples_a = test_by_label[class_a][:200]
        samples_b = test_by_label[class_b][:200]

        # Gather all feature names
        all_feats = set()
        for r in samples_a + samples_b:
            feats = r.get('features', {})
            for k, v in feats.items():
                if isinstance(v, (int, float)):
                    all_feats.add(k)

        # Find features with biggest mean difference
        feat_diffs = []
        for feat_name in all_feats:
            vals_a = [r.get('features', {}).get(feat_name, 0) for r in samples_a]
            vals_b = [r.get('features', {}).get(feat_name, 0) for r in samples_b]
            mean_a = np.mean(vals_a)
            mean_b = np.mean(vals_b)
            std_pooled = np.sqrt((np.var(vals_a) + np.var(vals_b)) / 2) + 1e-8
            # Cohen's d effect size
            cohens_d = abs(mean_a - mean_b) / std_pooled
            feat_diffs.append((feat_name, mean_a, mean_b, cohens_d))

        feat_diffs.sort(key=lambda x: x[3], reverse=True)

        print(f"\n--- {class_a} vs {class_b}: Top discriminative features (Cohen's d) ---")
        print(f"  {'Feature':<45} {'Mean_A':>8} {'Mean_B':>8} {'Cohen_d':>8}")
        for feat, ma, mb, d in feat_diffs[:20]:
            print(f"  {feat:<45} {ma:>8.3f} {mb:>8.3f} {d:>8.3f}")

        # Count features with Cohen's d > 0.5 (medium effect)
        n_medium = sum(1 for _, _, _, d in feat_diffs if d > 0.5)
        n_large = sum(1 for _, _, _, d in feat_diffs if d > 0.8)
        n_vlarge = sum(1 for _, _, _, d in feat_diffs if d > 1.2)
        print(f"  Features with Cohen's d > 0.5: {n_medium}, > 0.8: {n_large}, > 1.2: {n_vlarge}")

        if f"{class_a}_vs_{class_b}" in pair_reports:
            pair_reports[f"{class_a}_vs_{class_b}"]['n_features_d_gt_0.5'] = n_medium
            pair_reports[f"{class_a}_vs_{class_b}"]['n_features_d_gt_0.8'] = n_large
            pair_reports[f"{class_a}_vs_{class_b}"]['top_features'] = [
                {'name': f, 'mean_a': float(ma), 'mean_b': float(mb), 'cohens_d': float(d)}
                for f, ma, mb, d in feat_diffs[:20]
            ]

    # =====================================================================
    # ANALYSIS 4: Sequence length vs confusion
    # =====================================================================
    print("\n" + "=" * 70)
    print("ANALYSIS 4: Short sequences (potential low-information samples)")
    print("=" * 70)

    for label in unique_labels:
        samples = test_by_label[label]
        lengths = [len(r['sequence']) for r in samples]
        short = sum(1 for l in lengths if l <= 10)
        very_short = sum(1 for l in lengths if l <= 5)
        print(f"  {label:30s}: mean={np.mean(lengths):5.1f}, "
              f"<=10 instrs: {short:4d} ({100*short/len(samples):.1f}%), "
              f"<=5: {very_short:4d}")

    # =====================================================================
    # SAVE REPORTS
    # =====================================================================
    report_path = output_dir / 'confusion_diagnosis.json'
    with open(report_path, 'w') as f:
        json.dump(pair_reports, f, indent=2)
    print(f"\nFull reports saved to: {report_path}")

    # =====================================================================
    # ANALYSIS 5: Example misclassified-looking pairs
    # =====================================================================
    print("\n" + "=" * 70)
    print("ANALYSIS 5: Most similar cross-class sample pairs")
    print("=" * 70)
    print("(Finding sample pairs across confused classes with highest Jaccard)")

    for class_a, class_b in CONFUSED_PAIRS[:4]:  # top 4 pairs
        if class_a not in label_to_id or class_b not in label_to_id:
            continue

        samples_a = test_by_label[class_a][:100]
        samples_b = test_by_label[class_b][:100]

        best_sim = 0
        best_pair = (None, None)

        for i, ra in enumerate(samples_a[:50]):
            ngrams_a = get_instruction_ngrams(ra['sequence'], n=2)
            for j, rb in enumerate(samples_b[:50]):
                ngrams_b = get_instruction_ngrams(rb['sequence'], n=2)
                sim = jaccard_similarity(ngrams_a, ngrams_b)
                if sim > best_sim:
                    best_sim = sim
                    best_pair = (ra, rb)

        if best_pair[0] is not None:
            print(f"\n--- Most similar pair: {class_a} vs {class_b} (Jaccard={best_sim:.3f}) ---")
            ra, rb = best_pair
            print(f"  {class_a} sample ({len(ra['sequence'])} instrs, "
                  f"src={ra.get('source_file', '?')}):")
            for instr in ra['sequence'][:15]:
                print(f"    {instr}")
            if len(ra['sequence']) > 15:
                print(f"    ... ({len(ra['sequence'])-15} more)")

            print(f"  {class_b} sample ({len(rb['sequence'])} instrs, "
                  f"src={rb.get('source_file', '?')}):")
            for instr in rb['sequence'][:15]:
                print(f"    {instr}")
            if len(rb['sequence']) > 15:
                print(f"    ... ({len(rb['sequence'])-15} more)")

            # Show opcode diff
            ops_a = opcode_sequence(ra['sequence'])
            ops_b = opcode_sequence(rb['sequence'])
            only_a = set(ops_a) - set(ops_b)
            only_b = set(ops_b) - set(ops_a)
            print(f"  Opcodes only in {class_a}: {only_a or '{none}'}")
            print(f"  Opcodes only in {class_b}: {only_b or '{none}'}")

    print("\n" + "=" * 70)
    print("DIAGNOSIS COMPLETE")
    print("=" * 70)


if __name__ == '__main__':
    main()
