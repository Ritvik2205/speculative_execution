#!/usr/bin/env python3
import argparse
import json
import math
import random
import re
import statistics
from collections import defaultdict, Counter
from itertools import combinations
from pathlib import Path
from typing import List, Dict, Tuple, Optional, Set, Union

try:
    import networkx as nx  # type: ignore
except ImportError:  # pragma: no cover - optional dependency
    nx = None

try:
    import matplotlib.pyplot as plt  # type: ignore
except ImportError:  # pragma: no cover - optional dependency
    plt = None


ARM64_BRANCH_COND = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD = re.compile(r"\b(ldr(b|h|sh|sw)?|ldr)\b", re.IGNORECASE)
ARM64_REG = re.compile(r"\b([wx])([0-9]{1,2})\b")

# x86 patterns
X86_BRANCH_COND = re.compile(r"\bj([a-z]{1,3})\b", re.IGNORECASE)  # jcc opcodes
X86_LOAD = re.compile(r"\bmov\b|\blea\b", re.IGNORECASE)
X86_REG = re.compile(r"\b(r(1[0-5]|[0-9])d?|e[abcd]x|[abcd]x|[sd]i|[sb]p)\b", re.IGNORECASE)


# --- N-GRAM ANALYSIS FUNCTIONS (INTEGRATED) ---

def extract_opcodes(sequence: List[str]) -> List[str]:
    """
    Extracts only the opcodes (first token) from a list of assembly instruction strings.
    This is used to tokenize the 'sequence' fields from the JSONL output.
    """
    tokens = []
    for line in sequence:
        # Assuming the sequence lines are already normalized and lowercased
        match = re.search(r'\b(\w+)\b', line)
        if match:
            tokens.append(match.group(1))
    return tokens

def generate_ngram_distribution(tokens: List[str], n: int) -> Counter:
    """
    Generates a frequency distribution of N-grams from a list of tokens (opcodes).
    """
    if n <= 0 or not tokens:
        return Counter()

    if len(tokens) < n and len(tokens) > 0:
        # Note: This is an expected condition for small code windows
        return Counter()

    # Generate N-grams: Create sliding windows of n tokens using zip
    n_grams = zip(*[tokens[i:] for i in range(n)])

    # Count Frequencies
    distribution = Counter(n_grams)

    return distribution

def calculate_jaccard_similarity(dist1: Counter, dist2: Counter) -> float:
    """
    Calculates the Jaccard Similarity between the feature sets (unique N-grams).
    J(A, B) = |A intersect B| / |A union B|
    """
    set1 = set(dist1.keys())
    set2 = set(dist2.keys())

    intersection = len(set1.intersection(set2))
    union = len(set1.union(set2))

    if union == 0:
        return 1.0 # Both empty, perfectly similar
    
    return intersection / union

def visualize_ngram_comparison(before_dist: Counter, after_dist: Counter, n: int, jaccard: float):
    """Prints a comparative table of top N-grams and the Jaccard similarity."""
    print("\n" + "="*80)
    print(f"       N-GRAM DISTRIBUTION COMPARISON (N={n}) - Assembly Opcodes")
    print("="*80)
    print(f"Jaccard Similarity of Unique {n}-grams (Before vs. After): {jaccard:.4f}")
    print("  (Closer to 1.0 means the unique opcode patterns were mostly preserved.)")
    print("-" * 80)

    # Get the union of the top 15 from both distributions for comparison
    top_before = set(k for k, v in before_dist.most_common(15))
    top_after = set(k for k, v in after_dist.most_common(15))
    
    # Sort by combined frequency for best visualization
    common_keys = sorted(list(top_before.union(top_after)), 
                         key=lambda x: before_dist[x] + after_dist[x], 
                         reverse=True)

    header = f"{'N-gram (Opcodes)':<30} | {'Original Count':>15} | {'Augmented Count':>15} | {'Change':>10}"
    print(header)
    print("-" * 80)

    for n_gram_tuple in common_keys:
        n_gram_str = ' '.join(n_gram_tuple)
        count_before = before_dist.get(n_gram_tuple, 0)
        count_after = after_dist.get(n_gram_tuple, 0)
        change = count_after - count_before
        change_str = f"{change:+d}"
        
        # Highlight large positive/negative changes
        if abs(change) > 5 and count_before > 0:
            # Removed the '+' from the alignment specifier. 'change_str' already contains the sign.
            row = f"{n_gram_str:<30} | {count_before:>15} | {count_after:>15} | {change_str:>10} <--" 
        else:
            # Removed the '+' from the alignment specifier.
            row = f"{n_gram_str:<30} | {count_before:>15} | {count_after:>15} | {change_str:>10}"
            
        print(row)

    print("="*80)
    

def normalize_counter(counter: Counter) -> Dict[Tuple[str, ...], float]:
    total = sum(counter.values())
    if total == 0:
        return {}
    return {k: v / total for k, v in counter.items()}


def shannon_entropy(counter: Counter) -> float:
    probs = normalize_counter(counter)
    if not probs:
        return 0.0
    return -sum(p * math.log2(p) for p in probs.values())


def cosine_similarity_counts(a: Counter, b: Counter) -> float:
    keys = set(a) | set(b)
    if not keys:
        return 1.0
    num = sum(a.get(k, 0) * b.get(k, 0) for k in keys)
    denom_a = math.sqrt(sum((a.get(k, 0)) ** 2 for k in keys))
    denom_b = math.sqrt(sum((b.get(k, 0)) ** 2 for k in keys))
    if denom_a == 0 or denom_b == 0:
        return 0.0
    return num / (denom_a * denom_b)


def jensen_shannon_divergence(a: Counter, b: Counter) -> float:
    pa = normalize_counter(a)
    pb = normalize_counter(b)
    if not pa and not pb:
        return 0.0
    keys = set(pa) | set(pb)
    m = {k: 0.5 * (pa.get(k, 0.0) + pb.get(k, 0.0)) for k in keys}

    def kl(p, q):
        total = 0.0
        for k, v in p.items():
            if v == 0:
                continue
            qv = q.get(k, 1e-12)
            total += v * math.log2(v / qv)
        return total

    js = 0.5 * (kl(pa, m) + kl(pb, m))
    return js


def top_differences(before: Counter, after: Counter, limit: int = 10) -> List[Tuple[Tuple[str, ...], int, int, int]]:
    keys = set(before) | set(after)
    deltas = sorted(
        ((k, before.get(k, 0), after.get(k, 0), after.get(k, 0) - before.get(k, 0)) for k in keys),
        key=lambda x: abs(x[3]),
        reverse=True,
    )
    return deltas[:limit]


def top_new_ngrams(before: Counter, after: Counter, limit: int = 10) -> List[Tuple[Tuple[str, ...], int]]:
    new_keys = sorted(
        ((k, after[k]) for k in after.keys() - before.keys()),
        key=lambda x: x[1],
        reverse=True,
    )
    return new_keys[:limit]


def top_dropped_ngrams(before: Counter, after: Counter, limit: int = 10) -> List[Tuple[Tuple[str, ...], int]]:
    dropped = sorted(
        ((k, before[k]) for k in before.keys() - after.keys()),
        key=lambda x: x[1],
        reverse=True,
    )
    return dropped[:limit]


def topk_coverage(counter: Counter, k: int = 10) -> float:
    total = sum(counter.values())
    if total == 0:
        return 0.0
    top_sum = sum(v for _, v in counter.most_common(k))
    return top_sum / total


def compute_window_stats(seqs: List[List[str]], n: int) -> Dict[str, float]:
    lengths = []
    unique_counts = []
    for seq in seqs:
        tokens = extract_opcodes(seq)
        lengths.append(len(tokens))
        unique_counts.append(len(generate_ngram_distribution(tokens, n)))
    def safe_mean(vals):
        return statistics.mean(vals) if vals else 0.0
    def safe_pvar(vals):
        return statistics.pvariance(vals) if len(vals) > 1 else 0.0
    return {
        "mean_len": safe_mean(lengths),
        "var_len": safe_pvar(lengths),
        "mean_unique": safe_mean(unique_counts),
        "var_unique": safe_pvar(unique_counts),
    }


def compute_ngram_stats(
    original_sequences: List[List[str]],
    augmented_sequences: List[List[str]],
    augmentation_sequences: Dict[str, List[List[str]]],
    class_sequences: Dict[str, Dict[str, List[List[str]]]],
    before_dist: Counter,
    after_dist: Counter,
    n: int,
) -> Dict[str, Union[float, int, Dict]]:
    stats: Dict[str, Union[float, int, Dict]] = {}
    unique_before = len(before_dist)
    unique_after = len(after_dist)
    stats["global"] = {
        "total_original_tokens": sum(before_dist.values()),
        "total_augmented_tokens": sum(after_dist.values()),
        "unique_before": unique_before,
        "unique_after": unique_after,
        "new_unique": unique_after - unique_before,
        "coverage_before_top10": topk_coverage(before_dist, 10),
        "coverage_after_top10": topk_coverage(after_dist, 10),
        "entropy_before": shannon_entropy(before_dist),
        "entropy_after": shannon_entropy(after_dist),
        "cosine": cosine_similarity_counts(before_dist, after_dist),
        "js_divergence": jensen_shannon_divergence(before_dist, after_dist),
        "jaccard": calculate_jaccard_similarity(before_dist, after_dist),
    }

    rare_threshold = 3
    new_ngrams = after_dist.keys() - before_dist.keys()
    dropped_ngrams = before_dist.keys() - after_dist.keys()
    promoted = sum(
        1
        for k in after_dist
        if after_dist[k] > rare_threshold and before_dist.get(k, 0) <= rare_threshold
    )
    critical_drop_threshold = 10
    critical_dropped = sum(
        1
        for k, v in before_dist.items()
        if v >= critical_drop_threshold and after_dist.get(k, 0) == 0
    )
    stats["overlap"] = {
        "new_total": len(new_ngrams),
        "dropped_total": len(dropped_ngrams),
        "top_new": top_new_ngrams(before_dist, after_dist, 10),
        "top_dropped": top_dropped_ngrams(before_dist, after_dist, 10),
        "top_deltas": top_differences(before_dist, after_dist, 10),
        "rare_promoted": promoted,
        "critical_dropped": critical_dropped,
    }

    stats["window"] = {
        "original": compute_window_stats(original_sequences, n),
        "augmented": compute_window_stats(augmented_sequences, n),
    }

    per_aug: Dict[str, Dict[str, Union[float, int, List]]] = {}
    for aug, seqs in augmentation_sequences.items():
        tokens = [op for seq in seqs for op in extract_opcodes(seq)]
        dist = generate_ngram_distribution(tokens, n)
        per_aug[aug] = {
            "count": len(seqs),
            "unique": len(dist),
            "entropy": shannon_entropy(dist),
            "jaccard": calculate_jaccard_similarity(before_dist, dist),
            "js_divergence": jensen_shannon_divergence(before_dist, dist),
            "top_new": top_new_ngrams(before_dist, dist, 5),
        }
    stats["per_augmentation"] = per_aug

    per_class: Dict[str, Dict[str, Union[float, int]]] = {}
    for cls, buckets in class_sequences.items():
        orig_tokens = [op for seq in buckets["orig"] for op in extract_opcodes(seq)]
        aug_tokens = [op for seq in buckets["aug"] for op in extract_opcodes(seq)]
        orig_dist = generate_ngram_distribution(orig_tokens, n)
        aug_dist = generate_ngram_distribution(aug_tokens, n)
        per_class[cls] = {
            "orig_windows": len(buckets["orig"]),
            "aug_windows": len(buckets["aug"]),
            "orig_unique": len(orig_dist),
            "aug_unique": len(aug_dist),
            "jaccard": calculate_jaccard_similarity(orig_dist, aug_dist),
            "js_divergence": jensen_shannon_divergence(orig_dist, aug_dist),
            "entropy_orig": shannon_entropy(orig_dist),
            "entropy_aug": shannon_entropy(aug_dist),
        }
    stats["per_class"] = per_class

    return stats


def format_ngram(t: Tuple[str, ...]) -> str:
    return " ".join(t)


def print_stats_report(stats: Dict[str, Union[float, int, Dict]], n: int) -> None:
    print("\n" + "#" * 60)
    print(f"N-GRAM STATISTICS SUMMARY (N={n})")
    print("#" * 60)

    global_stats = stats["global"]
    print("\n[GLOBAL DISTRIBUTION]")
    print(f"Total tokens (original): {global_stats['total_original_tokens']}")
    print(f"Total tokens (augmented): {global_stats['total_augmented_tokens']}")
    print(f"Unique N-grams before/after: {global_stats['unique_before']} -> {global_stats['unique_after']} (Δ {global_stats['unique_after'] - global_stats['unique_before']})")
    print(f"Top-10 coverage before/after: {global_stats['coverage_before_top10']:.3f} -> {global_stats['coverage_after_top10']:.3f}")
    print(f"Entropy before/after: {global_stats['entropy_before']:.3f} -> {global_stats['entropy_after']:.3f}")
    print(f"Cosine similarity: {global_stats['cosine']:.4f}")
    print(f"Jensen-Shannon divergence: {global_stats['js_divergence']:.4f}")
    print(f"Jaccard overlap: {global_stats['jaccard']:.4f}")

    overlap = stats["overlap"]
    print("\n[OVERLAP]")
    print(f"New unique N-grams: {overlap['new_total']}")
    print(f"Dropped N-grams: {overlap['dropped_total']}")
    print(f"Rare N-grams promoted (<=3 -> >3): {overlap['rare_promoted']}")
    print(f"Critical N-grams dropped (>=10 -> 0): {overlap['critical_dropped']}")

    def print_change_list(title, items, include_delta=False):
        print(f"  {title}:")
        if not items:
            print("    (none)")
            return
        for entry in items:
            if include_delta:
                t, before, after, delta = entry
                print(f"    {format_ngram(t):<35}  {before:>6} -> {after:<6}  (Δ {delta:+})")
            else:
                t, count = entry
                print(f"    {format_ngram(t):<35}  count={count}")

    print_change_list("Top new", overlap["top_new"])
    print_change_list("Top dropped", overlap["top_dropped"])
    print_change_list("Largest absolute deltas", overlap["top_deltas"], include_delta=True)

    window_stats = stats["window"]
    print("\n[WINDOW-LEVEL STATS]")
    for key, values in window_stats.items():
        print(f"  {key.title()} windows: mean_len={values['mean_len']:.2f}, var_len={values['var_len']:.2f}, "
              f"mean_unique={values['mean_unique']:.2f}, var_unique={values['var_unique']:.2f}")

    print("\n[PER-AUGMENTATION]")
    for aug, info in stats["per_augmentation"].items():
        print(f"  {aug}: count={info['count']}, unique={info['unique']}, entropy={info['entropy']:.3f}, "
              f"jaccard={info['jaccard']:.3f}, js={info['js_divergence']:.3f}")
        top_new = info.get("top_new", [])
        if top_new:
            print("    top new n-grams:")
            for ngram, cnt in top_new:
                print(f"      {format_ngram(ngram):<35} count={cnt}")

    print("\n[PER-CLASS]")
    for cls, info in stats["per_class"].items():
        print(f"  {cls}: orig_windows={info['orig_windows']}, aug_windows={info['aug_windows']}, "
              f"orig_unique={info['orig_unique']}, aug_unique={info['aug_unique']}, "
              f"jaccard={info['jaccard']:.3f}, js={info['js_divergence']:.3f}, "
              f"entropy_orig={info['entropy_orig']:.3f}, entropy_aug={info['entropy_aug']:.3f}")

def run_ngram_analysis(jsonl_path: Path, n: int):
    """
    Reads the output file, separates original sequences from augmented ones,
    and performs the N-gram distribution comparison.
    """
    print(f"\n[Analysis] Reading augmented data from {jsonl_path} for N-gram analysis...")

    # 1. Separate the data
    original_sequences: List[List[str]] = []
    augmented_sequences: List[List[str]] = []

    # Keep track of unique original sequences to correctly match 'before' and 'after'
    original_seq_hashes: Set[str] = set()
    
    try:
        with jsonl_path.open('r') as f:
            for line in f:
                record = json.loads(line)
                sequence = record.get("sequence", [])
                
                # We identify "original" sequences as those without an "augmentation" key.
                # NOTE: This assumes original records are written first without an "augmentation" key.
                if "augmentation" not in record and record.get("label") == "vuln":
                    # Simple hacky way to find unique originals since a single window generates multiple records
                    seq_hash = "".join(sequence)
                    if seq_hash not in original_seq_hashes:
                         original_sequences.append(sequence)
                         original_seq_hashes.add(seq_hash)
                else:
                    # All other records are considered part of the augmented corpus
                    augmented_sequences.append(sequence)

    except FileNotFoundError:
        print(f"Error: Output file {jsonl_path} not found. Cannot run analysis.")
        return
    except json.JSONDecodeError:
        print(f"Error: Failed to parse JSON line in {jsonl_path}. Data may be corrupted.")
        return

    # Aggregate all tokens for 'before' and 'after'
    augmentation_sequences: Dict[str, List[List[str]]] = defaultdict(list)
    class_sequences: Dict[str, Dict[str, List[List[str]]]] = defaultdict(lambda: {"orig": [], "aug": []})

    try:
        with jsonl_path.open('r') as f:
            for line in f:
                record = json.loads(line)
                sequence = record.get("sequence", [])
                if "augmentation" not in record and record.get("label") == "vuln":
                    seq_hash = "".join(sequence)
                    if seq_hash not in original_seq_hashes:
                        original_sequences.append(sequence)
                        original_seq_hashes.add(seq_hash)
                        class_sequences[record.get("vuln_label", "UNKNOWN")]["orig"].append(sequence)
                else:
                    augmented_sequences.append(sequence)
                    aug_tag = record.get("augmentation", "unknown")
                    augmentation_sequences[aug_tag].append(sequence)
                    class_sequences[record.get("vuln_label", "UNKNOWN")]["aug"].append(sequence)
    except FileNotFoundError:
        print(f"Error: Output file {jsonl_path} not found. Cannot run analysis.")
        return
    except json.JSONDecodeError:
        print(f"Error: Failed to parse JSON line in {jsonl_path}. Data may be corrupted.")
        return

    print(f"[Analysis] Found {len(original_sequences)} unique original windows.")
    print(f"[Analysis] Found {len(augmented_sequences)} augmented windows.")

    all_original_opcodes = [op for seq in original_sequences for op in extract_opcodes(seq)]
    all_augmented_opcodes = [op for seq in augmented_sequences for op in extract_opcodes(seq)]

    before_dist = generate_ngram_distribution(all_original_opcodes, n)
    after_dist = generate_ngram_distribution(all_augmented_opcodes, n)

    stats = compute_ngram_stats(
        original_sequences,
        augmented_sequences,
        augmentation_sequences,
        class_sequences,
        before_dist,
        after_dist,
        n,
    )
    print_stats_report(stats, n)

    if plt and n < 4:
        try:
            plot_ngram_comparison(before_dist, after_dist, n, jsonl_path.parent / f"ngram_comparison_N{n}.png")
        except Exception as e:
            print(f"[Analysis] Matplotlib plot failed: {e}")

def plot_ngram_comparison(dist1: Counter, dist2: Counter, n: int, out_path: Path):
    """Generates a bar chart comparison of the top N-grams using matplotlib."""
    if not plt: return

    # Get the union of the top 10 for plotting
    top_before = set(k for k, v in dist1.most_common(10))
    top_after = set(k for k, v in dist2.most_common(10))
    
    # Sort by combined frequency for plot order
    common_keys = sorted(list(top_before.union(top_after)), 
                         key=lambda x: dist1[x] + dist2[x], 
                         reverse=True)

    labels = [' '.join(k) for k in common_keys]
    counts_before = [dist1.get(k, 0) for k in common_keys]
    counts_after = [dist2.get(k, 0) for k in common_keys]

    x = range(len(labels))
    width = 0.35  # width of the bars

    fig, ax = plt.subplots(figsize=(14, 8))
    rects1 = ax.bar([i - width/2 for i in x], counts_before, width, label='Original (Before)', color='#4c72b0')
    rects2 = ax.bar([i + width/2 for i in x], counts_after, width, label='Augmented (After)', color='#dd8452')

    ax.set_ylabel('Frequency Count')
    ax.set_xlabel(f'{n}-gram (Opcode Sequence)')
    ax.set_title(f'Top {n}-gram Distribution Comparison (Original vs. Augmented)')
    ax.set_xticks(x)
    ax.set_xticklabels(labels, rotation=45, ha="right")
    ax.legend()
    ax.grid(axis='y', linestyle='--', alpha=0.6)

    fig.tight_layout()
    out_path.parent.mkdir(parents=True, exist_ok=True)
    plt.savefig(out_path, bbox_inches='tight')
    plt.close()
    print(f"[Analysis] Matplotlib comparison chart saved to: {out_path}")

# --- ORIGINAL CODE CONTINUES BELOW ---

def read_text_lines(p: Path) -> List[str]:
    return p.read_text(errors="ignore").splitlines()


def normalize_line(line: str) -> str:
    s = line.strip()
    if not s or s.startswith('.') or s.endswith(':'):
        return ""
    s = s.split(';', 1)[0].split('#', 1)[0].strip() # Also handle '#' comments
    return s


# Expanded branch patterns for window extraction (includes unconditional and calls)
ARM64_ANY_BRANCH = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le)|b|bl|blr|ret)\b", re.IGNORECASE)
X86_ANY_BRANCH = re.compile(r"\b(j[a-z]{1,3}|jmp|call|ret)\b", re.IGNORECASE)

# Attack-specific anchor patterns: instructions that mark the core of each attack.
# These take priority over generic branch anchoring.
ATTACK_ANCHOR_PATTERNS = {
    'L1TF': [
        re.compile(r'\bclflush(opt)?\b', re.IGNORECASE),       # Cache line flush
        re.compile(r'\bdc\s+civac\b', re.IGNORECASE),          # ARM cache invalidate
        re.compile(r'\brdtsc(p)?\b', re.IGNORECASE),           # Timing measurement
        re.compile(r'\bmrs\s+.*cntvct\b', re.IGNORECASE),      # ARM timing
    ],
    'MDS': [
        re.compile(r'\bmfence\b', re.IGNORECASE),              # Memory fence (buffer drain)
        re.compile(r'\blfence\b', re.IGNORECASE),              # Load fence
        re.compile(r'\bclflush(opt)?\b', re.IGNORECASE),       # Cache flush
        re.compile(r'\bverw\b', re.IGNORECASE),                # MDS mitigation
    ],
    'SPECTRE_V4': [
        re.compile(r'\bstr\b', re.IGNORECASE),                 # ARM store
        re.compile(r'\bmov\b.*\[.*\]', re.IGNORECASE),         # x86 store to memory
        re.compile(r'\bssbb\b', re.IGNORECASE),                # Speculation barrier
    ],
    'SPECTRE_V1': [
        re.compile(r'\bcmp\b', re.IGNORECASE),                 # Bounds check compare
        re.compile(r'\bsubs\b', re.IGNORECASE),                # ARM subtract and set flags
        re.compile(r'\btest\b', re.IGNORECASE),                # x86 test
    ],
    'SPECTRE_V2': [
        re.compile(r'\bblr\b', re.IGNORECASE),                 # ARM indirect branch
        re.compile(r'\bjmp\s+\*', re.IGNORECASE),              # x86 indirect jump
        re.compile(r'\bcall\s+\*', re.IGNORECASE),             # x86 indirect call
    ],
    'RETBLEED': [
        re.compile(r'\bret(q)?\b', re.IGNORECASE),             # Return instruction
    ],
    'BRANCH_HISTORY_INJECTION': [
        re.compile(r'\bb\.(eq|ne|hs|lo)\b', re.IGNORECASE),   # Conditional branch (history training)
        re.compile(r'\bj(e|ne|a|b|g|l)\b', re.IGNORECASE),    # x86 conditional branch
    ],
    'INCEPTION': [
        re.compile(r'\bret(q)?\b', re.IGNORECASE),             # Phantom speculation via return
        re.compile(r'\bcall\b', re.IGNORECASE),                # Call/ret pairs
    ],
}

# Minimum window size: sequences shorter than this are filtered out.
# At <12 instructions, most attacks are indistinguishable from each other.
MIN_WINDOW_SIZE = 12


def _detect_vuln_label(filename: str) -> str:
    """Extract vulnerability label from filename."""
    low = filename.lower()
    if 'spectre_1' in low or 'spectre_v1' in low or 'spectrev1' in low:
        return 'SPECTRE_V1'
    if 'spectre_2' in low or 'spectre_v2' in low or 'spectrev2' in low:
        return 'SPECTRE_V2'
    if 'spectre_4' in low or 'spectre_v4' in low or 'spectrev4' in low:
        return 'SPECTRE_V4'
    if 'meltdown' in low:
        return 'MELTDOWN'
    if 'retbleed' in low:
        return 'RETBLEED'
    if 'bhi' in low or 'branch_history' in low:
        return 'BRANCH_HISTORY_INJECTION'
    if 'inception' in low:
        return 'INCEPTION'
    if 'l1tf' in low or 'l1_terminal' in low:
        return 'L1TF'
    if 'mds' in low or 'zombieload' in low or 'ridl' in low:
        return 'MDS'
    if 'benign' in low or 'negative' in low:
        return 'BENIGN'
    return 'UNKNOWN'


def _find_attack_anchors(norm_lines: List[str], vuln_label: str) -> List[int]:
    """Find indices of attack-specific anchor instructions."""
    patterns = ATTACK_ANCHOR_PATTERNS.get(vuln_label, [])
    if not patterns:
        return []
    anchors = []
    for i, line in enumerate(norm_lines):
        if not line:
            continue
        for pat in patterns:
            if pat.search(line):
                anchors.append(i)
                break
    return anchors


def extract_windows_from_file(p: Path, window_before=15, window_after=25,
                              min_window_size=MIN_WINDOW_SIZE):
    """
    Extract instruction windows from an assembly file.

    Uses a two-strategy approach:
    1. Attack-aware anchoring: center windows on attack-specific instructions
       (clflush for L1TF, mfence for MDS, cmp for Spectre V1, etc.)
    2. Branch-based anchoring: center on branch/call/ret instructions (fallback)

    Default window: 15 before + 25 after = ~40 instructions total.
    Minimum window size: 12 instructions (filters out function epilogues/prologues
    that don't contain real attack patterns).
    """
    raw = read_text_lines(p)
    norm = [normalize_line(l) for l in raw]
    is_x86 = any(tok in p.name for tok in ("x86", "x64")) or any(
        re.search(r"\b\.(text|globl)\b", ln) and re.search(r"%", ln) for ln in raw
    )

    vuln_label = _detect_vuln_label(p.name)
    seen_ranges = set()  # Deduplicate overlapping windows

    # Strategy 1: Attack-aware anchoring (higher priority)
    attack_anchors = _find_attack_anchors(norm, vuln_label)
    for i in attack_anchors:
        # Use larger window for attack anchors (they are the core of the pattern)
        wb = window_before + 5
        wa = window_after + 5
        start = max(0, i - wb)
        end = min(len(norm), i + wa + 1)
        seq = [l for l in norm[start:end] if l]
        if len(seq) >= min_window_size:
            range_key = (start // 8, end // 8)
            if range_key not in seen_ranges:
                seen_ranges.add(range_key)
                yield seq, i - start, is_x86

    # Strategy 2: Branch-based anchoring (fallback, captures remaining patterns)
    branch_re = X86_ANY_BRANCH if is_x86 else ARM64_ANY_BRANCH
    idxs = [i for i, l in enumerate(norm) if l and branch_re.search(l)]
    for i in idxs:
        start = max(0, i - window_before)
        end = min(len(norm), i + window_after + 1)
        seq = [l for l in norm[start:end] if l]
        if len(seq) >= min_window_size:
            range_key = (start // 8, end // 8)
            if range_key not in seen_ranges:
                seen_ranges.add(range_key)
                yield seq, i - start, is_x86


def collect_regs(line: str) -> Dict[str, set]:
    # very rough def/use heuristic: first operand often def, others use
    regs = [m.group(0) for m in ARM64_REG.finditer(line)] or [m.group(0) for m in X86_REG.finditer(line)]
    parts = line.split(None, 1)
    dest = set()
    use = set()
    if regs:
        if len(parts) > 1 and ',' in parts[1]:
            dest.add(regs[0])
            use.update(regs[1:])
        else:
            use.update(regs)
    return {"def": dest, "use": use}


def extract_register_tokens(line: str) -> List[str]:
    tokens = set()
    for match in ARM64_REG.finditer(line):
        tokens.add(match.group(0).lower())
    for match in X86_REG.finditer(line):
        tokens.add(match.group(0).lower().lstrip('%'))
    cleaned = set()
    for tok in tokens:
        if not tok:
            continue
        cleaned.add(tok.lstrip('%').lower())
    return list(cleaned)


def analyze_register_usage(seq: List[str]) -> Dict[str, set]:
    defined = set()
    defs = set()
    uses = set()
    free = set()
    for line in seq:
        regs = collect_regs(line)
        for reg in regs["use"]:
            r = reg.lower()
            uses.add(r)
            if r not in defined:
                free.add(r)
        for reg in regs["def"]:
            r = reg.lower()
            defs.add(r)
            defined.add(r)
    return {"defs": defs, "uses": uses, "free": free}


def is_branch_instruction(line: str, is_x86: bool) -> bool:
    lower = line.lower()
    if is_x86:
        if X86_BRANCH_COND.search(line):
            return True
        return any(op in lower for op in ("jmp", "ret"))
    if ARM64_BRANCH_COND.search(line):
        return True
    return any(op in lower for op in ("bl", "blr", "ret"))


def build_control_flow_graph(seq: List[str], is_x86: bool) -> Dict[int, List[int]]:
    graph: Dict[int, List[int]] = {i: [] for i in range(len(seq))}
    for idx in range(len(seq)):
        # sequential fall-through edge
        if idx + 1 < len(seq):
            graph[idx].append(idx + 1)
        line = seq[idx]
        if is_branch_instruction(line, is_x86):
            # Without label resolution we conservatively keep fall-through only.
            # Placeholder for future target resolution.
            continue
    return graph


def has_branch(seq: List[str], is_x86: bool) -> bool:
    branch_re = X86_BRANCH_COND if is_x86 else ARM64_BRANCH_COND
    if any(branch_re.search(line) for line in seq):
        return True
    lower_seq = [line.lower() for line in seq]
    branch_tokens = ["jmp", "ret", "call", "bl", "blr"]
    return any(any(tok in line for tok in branch_tokens) for line in lower_seq)


def draw_cfg(
    seq: List[str],
    cfg: Dict[int, List[int]],
    title: str,
    out_path: Path,
    base_color: str = "#90caf9",
    highlight: Optional[Set[int]] = None,
    highlight_color: str = "#ffb74d",
    highlights: Optional[List[Tuple[Set[int], str]]] = None,
):
    if nx is None or plt is None:
        raise RuntimeError("networkx/matplotlib not available; install them to visualize CFGs")
    graph = nx.DiGraph()
    for idx, line in enumerate(seq):
        label = f"{idx}: {line}"[:80]
        graph.add_node(idx, label=label)
    for src, targets in cfg.items():
        for dst in targets:
            graph.add_edge(src, dst)
    plt.figure(figsize=(max(6, len(seq) * 0.6), 4 + len(seq) * 0.1))
    pos = nx.spring_layout(graph, seed=42)
    colors = []
    for node in graph.nodes():
        node_col = base_color
        if highlights:
            for nodes_set, color in highlights:
                if nodes_set and node in nodes_set:
                    node_col = color
                    break
        elif highlight and node in highlight:
            node_col = highlight_color
        colors.append(node_col)
    nx.draw_networkx_nodes(graph, pos, node_size=800, node_color=colors)
    nx.draw_networkx_edges(graph, pos, arrows=True, arrowstyle="-|>", arrowsize=12)
    labels = nx.get_node_attributes(graph, "label")
    nx.draw_networkx_labels(graph, pos, labels=labels, font_size=8)
    plt.title(title)
    plt.axis('off')
    out_path.parent.mkdir(parents=True, exist_ok=True)
    plt.savefig(out_path, bbox_inches='tight')
    plt.close()


def register_family(reg: str) -> str:
    reg = reg.lower()
    if re.fullmatch(r"x\d{1,2}", reg):
        return "arm_x"
    if re.fullmatch(r"w\d{1,2}", reg):
        return "arm_w"
    if re.fullmatch(r"r\d{1,2}[dwb]?", reg):
        return "x86_r"
    if reg in {"rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp",
               "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"}:
        return "x86_r64"
    if reg in {"eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp"}:
        return "x86_e"
    if reg in {"ax", "bx", "cx", "dx", "si", "di", "bp", "sp"}:
        return "x86_legacy"
    if reg.endswith("l") or reg.endswith("h"):
        return "x86_8"
    return "generic"


def replace_register(line: str, old: str, new: str) -> str:
    pattern = re.compile(r"(?<![A-Za-z0-9_])%?" + re.escape(old) + r"\b", re.IGNORECASE)

    def repl(match: re.Match) -> str:
        token = match.group(0)
        prefix = ""
        body = token
        if token.startswith('%'):
            prefix = "%"
            body = token[1:]
        if body.isupper():
            replacement = new.upper()
        elif body.islower():
            replacement = new.lower()
        else:
            replacement = new
        return prefix + replacement

    return pattern.sub(repl, line)


def swap_register_names(seq: List[str], reg_a: str, reg_b: str) -> List[str]:
    placeholder = "__REG_TMP__"
    swapped: List[str] = []
    for line in seq:
        line = replace_register(line, reg_a, placeholder)
        line = replace_register(line, reg_b, reg_a)
        line = replace_register(line, placeholder, reg_b)
        swapped.append(line)
    return swapped


def swap_registers_if_disjoint(seq: List[str], is_x86: bool) -> List[str]:
    if not seq:
        return seq
    _ = build_control_flow_graph(seq, is_x86)
    reg_nodes: Dict[str, set] = defaultdict(set)
    for idx, line in enumerate(seq):
        for reg in extract_register_tokens(line):
            reg_nodes[reg].add(idx)
    regs = list(reg_nodes.keys())
    for reg_a, reg_b in combinations(regs, 2):
        if register_family(reg_a) != register_family(reg_b):
            continue
        if reg_nodes[reg_a].isdisjoint(reg_nodes[reg_b]):
            swapped = swap_register_names(seq, reg_a, reg_b)
            if swapped != seq:
                return swapped
    return seq


def find_longest_common_block(a: List[str], b: List[str], min_len: int = 3) -> Optional[Tuple[int, int, int, int]]:
    if not a or not b:
        return None
    len_a, len_b = len(a), len(b)
    dp = [[0] * (len_b + 1) for _ in range(len_a + 1)]
    best = 0
    end_a = 0
    end_b = 0
    for i in range(1, len_a + 1):
        ai = a[i - 1]
        for j in range(1, len_b + 1):
            if ai == b[j - 1]:
                dp[i][j] = dp[i - 1][j - 1] + 1
                if dp[i][j] > best:
                    best = dp[i][j]
                    end_a = i
                    end_b = j
            else:
                dp[i][j] = 0
    if best >= min_len:
        return end_a - best, end_a, end_b - best, end_b
    return None


def generate_cross_window_swaps(
    entry_a: Dict,
    entry_b: Dict,
    min_common: int = 3,
) -> List[Tuple[str, List[str], List[str], Dict[str, Set[int]]]]:
    seq_a = entry_a["seq"]
    seq_b = entry_b["seq"]
    if entry_a["is_x86"] != entry_b["is_x86"]:
        return []
    block = find_longest_common_block(seq_a, seq_b, min_len=min_common)
    if not block:
        return []
    start_a, end_a, start_b, end_b = block
    if end_a - start_a == len(seq_a) or end_b - start_b == len(seq_b):
        return []  # sequences identical; nothing unique to swap
    prefix_a, common, suffix_a = seq_a[:start_a], seq_a[start_a:end_a], seq_a[end_a:]
    prefix_b, suffix_b = seq_b[:start_b], seq_b[end_b:]
    results: List[Tuple[str, List[str], List[str], Dict[str, Set[int]]]] = []

    def attempt(
        new_a: List[str],
        new_b: List[str],
        tag: str,
        main_a: Set[int],
        added_a: Set[int],
        main_b: Set[int],
        added_b: Set[int],
    ):
        if new_a == seq_a and new_b == seq_b:
            return
        if len(new_a) < 5 or len(new_b) < 5:
            return
        if not has_branch(new_a, entry_a["is_x86"]) or not has_branch(new_b, entry_b["is_x86"]):
            return
        usage_a = analyze_register_usage(new_a)
        usage_b = analyze_register_usage(new_b)
        allowed_free = entry_a["usage"]["free"] | entry_b["usage"]["free"]
        if not usage_a["free"].issubset(allowed_free):
            return
        if not usage_b["free"].issubset(allowed_free):
            return
        info = {
            "main_a": set(main_a),
            "added_a": set(added_a),
            "main_b": set(main_b),
            "added_b": set(added_b),
        }
        results.append((tag, new_a, new_b, info))

    if suffix_a and suffix_b:
        new_a = prefix_a + common + suffix_b
        new_b = prefix_b + common + suffix_a
        start_main_a = len(prefix_a)
        end_main_a = start_main_a + len(common)
        added_start_a = end_main_a
        added_end_a = len(new_a)

        start_main_b = len(prefix_b)
        end_main_b = start_main_b + len(common)
        added_start_b = end_main_b
        added_end_b = len(new_b)

        main_a = set(range(start_main_a, end_main_a))
        added_a = set(range(added_start_a, added_end_a))
        main_b = set(range(start_main_b, end_main_b))
        added_b = set(range(added_start_b, added_end_b))
        attempt(new_a, new_b, "cross_swap_suffix", main_a, added_a, main_b, added_b)
    if prefix_a and prefix_b:
        new_a = prefix_b + common + suffix_a
        new_b = prefix_a + common + suffix_b
        start_main_a = len(prefix_b)
        end_main_a = start_main_a + len(common)
        added_start_a = 0
        added_end_a = len(prefix_b)

        start_main_b = len(prefix_a)
        end_main_b = start_main_b + len(common)
        added_start_b = 0
        added_end_b = len(prefix_a)

        main_a = set(range(start_main_a, end_main_a))
        added_a = set(range(added_start_a, added_end_a))
        main_b = set(range(start_main_b, end_main_b))
        added_b = set(range(added_start_b, added_end_b))
        attempt(new_a, new_b, "cross_swap_prefix", main_a, added_a, main_b, added_b)
    return results


def can_swap(a: str, b: str) -> bool:
    ra = collect_regs(a)
    rb = collect_regs(b)
    # no def-use overlap and not barriers/branches
    if ARM64_BRANCH_COND.search(a) or ARM64_BRANCH_COND.search(b):
        return False
    if any(tok in a.lower() for tok in ("dsb", "dmb", "isb", "csdb")):
        return False
    if any(tok in b.lower() for tok in ("dsb", "dmb", "isb", "csdb")):
        return False
    return not (ra["def"] & (rb["def"] | rb["use"]) or rb["def"] & (ra["def"] | ra["use"]))


def rename_registers(seq: List[str]) -> List[str]:
    # Build a random bijection for x0..x31 and w0..w31 used in window
    used = sorted({m.group(0) for line in seq for m in (list(ARM64_REG.finditer(line)) + list(X86_REG.finditer(line)))})
    mapping: Dict[str, str] = {}
    pool_x = [f"x{i}" for i in range(32)]
    pool_w = [f"w{i}" for i in range(32)]
    pool_rx = [f"r{i}" for i in range(16)] + ["rax","rbx","rcx","rdx","rsi","rdi","rbp","rsp"]
    pool_ex = ["eax","ebx","ecx","edx","esi","edi","ebp","esp"]
    random.shuffle(pool_x)
    random.shuffle(pool_w)
    random.shuffle(pool_rx)
    random.shuffle(pool_ex)
    ix = 0
    iw = 0
    for reg in used:
        reg_lower = reg.lower()
        if reg_lower.startswith('x'):
            mapping[reg] = pool_x[ix % len(pool_x)]; ix += 1
        elif reg_lower.startswith('w'):
            mapping[reg] = pool_w[iw % len(pool_w)]; iw += 1
        else:
            # x86
            if reg_lower in pool_rx:
                mapping[reg] = pool_rx[ix % len(pool_rx)]; ix += 1
            elif reg_lower in pool_ex:
                mapping[reg] = pool_ex[iw % len(pool_ex)]; iw += 1
            else:
                 # Fallback for registers not in pools (e.g., al, ah)
                mapping[reg] = reg

    def sub(line: str) -> str:
        out = line
        for src, dst in mapping.items():
            out = replace_register(out, src, dst)
        return out
    return [sub(l) for l in seq]


def insert_nops(seq: List[str], prob=0.1) -> List[str]:
    out = []
    for l in seq:
        out.append(l)
        if random.random() < prob:
            out.append("nop")
    return out


def swap_locally(seq: List[str], trials=2) -> List[str]:
    s = seq[:]
    for _ in range(trials):
        i = random.randrange(0, max(1, len(s) - 1))
        if can_swap(s[i], s[i + 1]):
            s[i], s[i + 1] = s[i + 1], s[i]
    return s


def insert_barrier_counterfactual(seq: List[str]) -> List[str]:
    # After the first load following the first conditional branch, insert dsb sy
    out = seq[:]
    branch_idx = next((i for i, l in enumerate(out) if ARM64_BRANCH_COND.search(l)), None)
    if branch_idx is None:
        return out
    load_idx = next((i for i in range(branch_idx + 1, len(out)) if ARM64_LOAD.search(out[i])), None)
    if load_idx is None:
        return out
    out.insert(load_idx, "dsb sy")
    return out


def recompose_from_slices(seq: List[str], min_len=5) -> List[str]:
    # Slice the window into up to 3 chunks and recombine in a safe order if swappable
    if len(seq) < min_len + 2:
        return seq
    a = seq[: len(seq)//3]
    b = seq[len(seq)//3 : 2*len(seq)//3]
    c = seq[2*len(seq)//3 :]
    # try b+a+c if boundary swap is safe
    if a and b and can_swap(a[-1], b[0]):
        return b + a + c
    # else a+c+b if safe
    if b and c and can_swap(b[-1], c[0]):
        return a + c + b
    return seq


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--asm-dir", type=Path, default=Path("c_vulns/asm_code"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/augmented_windows.jsonl"))
    ap.add_argument("--seed", type=int, default=123)
    ap.add_argument("--per-file-cap", type=int, default=64)
    ap.add_argument("--boost-classes", type=str, default="BRANCH_HISTORY_INJECTION,INCEPTION,RETBLEED,L1TF,MDS,SPECTRE_V1,SPECTRE_V2,SPECTRE_V4,MELTDOWN")
    ap.add_argument("--boost-factor", type=int, default=3)
    ap.add_argument("--viz-out", type=Path, default=None,
                    help="Optional directory to dump CFG visualizations (requires networkx & matplotlib)")
    ap.add_argument("--viz-limit", type=int, default=10,
                    help="Maximum number of windows per file to visualize; applied only if --viz-out is set")
    ap.add_argument("--viz-mark-swaps", action="store_true",
                    help="When set, save separate CFG images for the original and swapped registers windows")
    ap.add_argument("--enable-cross-window", action="store_true",
                    help="Enable cross-window augmentation by swapping unique segments between different windows that share a common block")
    ap.add_argument("--cross-window-per-class", type=int, default=4,
                    help="Max number of cross-window swap pairs to emit per vulnerability class when enabled")
    # New arguments for N-gram analysis
    ap.add_argument("--run-analysis", action="store_true",
                    help="Run N-gram comparison after data generation.")
    ap.add_argument("--ngram-n", type=int, default=2,
                    help="The N-gram size (N) for opcode distribution comparison.")

    args = ap.parse_args()
    random.seed(args.seed)
    args.out.parent.mkdir(parents=True, exist_ok=True)

    written = 0
    window_cache: Dict[str, List[Dict]] = {}
    
    # --- PHASE 1: GENERATE AUGMENTED DATA ---
    with args.out.open("w") as fout:
        boost_set = {c.strip().upper() for c in args.boost_classes.split(',') if c.strip()}
        all_entries: List[Dict] = []
        for asm in Path(args.asm_dir).glob("*.s"):
            count = 0
            for seq, branch_idx, is_x86 in extract_windows_from_file(asm):
                if count >= args.per_file_cap:
                    break
                cfg = build_control_flow_graph(seq, is_x86)
                if args.viz_out and count < args.viz_limit:
                    title = f"{asm.name} : window {count} (branch @ {branch_idx})"
                    out_file = args.viz_out / asm.name.replace('.s', f"_window{count}.png")
                    try:
                        draw_cfg(seq, cfg, title, out_file)
                    except RuntimeError as err:
                        print(f"[viz] {err}")
                        args.viz_out = None
                
                # ORIGINAL (assumed vulnerable)
                vuln_label = 'UNKNOWN'
                low = asm.name.lower()
                if 'spectre_1' in low or 'spectre_v1' in low:
                    vuln_label = 'SPECTRE_V1'
                elif 'spectre_2' in low or 'spectre_v2' in low:
                    vuln_label = 'SPECTRE_V2'
                elif 'spectre_4' in low or 'spectre_v4' in low:
                    vuln_label = 'SPECTRE_V4'
                elif 'meltdown' in low:
                    vuln_label = 'MELTDOWN'
                elif 'retbleed' in low:
                    vuln_label = 'RETBLEED'
                elif 'bhi' in low:
                    vuln_label = 'BRANCH_HISTORY_INJECTION'
                elif 'inception' in low:
                    vuln_label = 'INCEPTION'
                elif 'l1tf' in low:
                    vuln_label = 'L1TF'
                elif 'mds' in low:
                    vuln_label = 'MDS'
                
                rec = {"source_file": str(asm), "arch": "arm64" if "arm64" in asm.name else "unknown", "label": "vuln", "vuln_label": vuln_label, "sequence": seq}
                
                # Base record is the original sequence (used for 'before' N-gram count)
                fout.write(json.dumps(rec) + "\n"); written += 1
                
                # AUGMENTATIONS
                reg_swap_seq = swap_registers_if_disjoint(seq, is_x86)
                if reg_swap_seq != seq:
                    fout.write(json.dumps({**rec, "augmentation": "reg_swap_if_disjoint", "sequence": reg_swap_seq}) + "\n"); written += 1
                    if args.viz_out and args.viz_mark_swaps:
                        try:
                            # Visualization for swapped
                            swap_cfg = build_control_flow_graph(reg_swap_seq, is_x86)
                            draw_cfg(
                                reg_swap_seq,
                                swap_cfg,
                                f"{asm.name} swapped window {count}",
                                args.viz_out / asm.name.replace('.s', f"_window{count}_swap.png"),
                                base_color="#ffcc80",
                            )
                        except RuntimeError as err:
                            print(f"[viz-swaps] {err}")
                
                # register renaming
                fout.write(json.dumps({**rec, "augmentation": "rename_registers", "sequence": rename_registers(seq)}) + "\n"); written += 1
                # local swaps
                fout.write(json.dumps({**rec, "augmentation": "swap_locally", "sequence": swap_locally(seq)}) + "\n"); written += 1
                # nop insertion
                fout.write(json.dumps({**rec, "augmentation": "insert_nops", "sequence": insert_nops(seq)}) + "\n"); written += 1
                # recomposed variant
                fout.write(json.dumps({**rec, "augmentation": "recompose_slices", "sequence": recompose_from_slices(seq)}) + "\n"); written += 1
                # counterfactual with barrier (benign)
                fout.write(json.dumps({**rec, "label": "benign", "augmentation": "insert_barrier_cf", "sequence": insert_barrier_counterfactual(seq)}) + "\n"); written += 1
                
                # if boosted class, emit extra variants
                if vuln_label in boost_set:
                    for _ in range(max(0, args.boost_factor - 1)):
                        fout.write(json.dumps({**rec, "augmentation": "boost_variant", "sequence": rename_registers(swap_locally(seq))}) + "\n"); written += 1
                
                count += 1
                window_entry = {
                    "source": str(asm),
                    "vuln_label": vuln_label,
                    "seq": seq,
                    "is_x86": is_x86,
                    "usage": analyze_register_usage(seq),
                }
                window_cache.setdefault(vuln_label, []).append(window_entry)
                all_entries.append(window_entry)
        
        # Cross-Window Augmentation
        if args.enable_cross_window:
            for vuln_label, windows in window_cache.items():
                emitted = 0
                for i in range(len(windows)):
                    if emitted >= args.cross_window_per_class:
                        break
                    for j in range(i + 1, len(windows)):
                        for tag, new_a, new_b, info in generate_cross_window_swaps(windows[i], windows[j]):
                            rec_a = {
                                "source_file": windows[i]["source"],
                                "arch": "arm64" if "arm64" in windows[i]["source"] else "unknown",
                                "label": "vuln",
                                "vuln_label": vuln_label,
                                "augmentation": tag,
                                "sequence": new_a,
                            }
                            rec_b = {
                                "source_file": windows[j]["source"],
                                "arch": "arm64" if "arm64" in windows[j]["source"] else "unknown",
                                "label": "vuln",
                                "vuln_label": vuln_label,
                                "augmentation": tag,
                                "sequence": new_b,
                            }
                            fout.write(json.dumps(rec_a) + "\n"); written += 1
                            fout.write(json.dumps(rec_b) + "\n"); written += 1
                            emitted += 1
                            
                            # Visualization for cross-window swaps
                            if args.viz_out and args.viz_mark_swaps:
                                try:
                                    main_a = info.get("main_a", set())
                                    add_a = info.get("added_a", set())
                                    cfg_a = build_control_flow_graph(new_a, windows[i]["is_x86"])
                                    draw_cfg(
                                        new_a,
                                        cfg_a,
                                        f"cross {vuln_label} pair {emitted} A",
                                        args.viz_out / f"cross_{vuln_label}_{emitted}_A.png",
                                        base_color="#c5e1a5",
                                        highlights=[
                                            (main_a, "#26a69a"),
                                            (add_a, "#f57c00"),
                                        ],
                                    )
                                    cfg_b = build_control_flow_graph(new_b, windows[j]["is_x86"])
                                    draw_cfg(
                                        new_b,
                                        cfg_b,
                                        f"cross {vuln_label} pair {emitted} B",
                                        args.viz_out / f"cross_{vuln_label}_{emitted}_B.png",
                                        base_color="#f8bbd0",
                                        highlights=[
                                            (info.get("main_b", set()), "#f06292"),
                                            (info.get("added_b", set()), "#ef5350"),
                                        ],
                                    )
                                except RuntimeError as err:
                                    print(f"[viz-cross] {err}")
                            break
                    if emitted >= args.cross_window_per_class:
                        break
        print(f"Wrote {written} augmented windows to {args.out}")

    # --- PHASE 2: N-GRAM ANALYSIS ---
    if args.run_analysis:
        run_ngram_analysis(args.out, args.ngram_n)


if __name__ == "__main__":
    main()
