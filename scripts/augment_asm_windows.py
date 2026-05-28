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
# Broader conditional branch family: b.cond + cbz/cbnz + tbz/tbnz. Required
# because the SpecExec gadgets frequently use cbz/cbnz as the speculation
# trigger, which ARM64_BRANCH_COND alone does not match.
ARM64_COND_BRANCH_ANY = re.compile(
    r"\b(b\.(?:eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|cc|cs)|cbz|cbnz|tbz|tbnz)\b",
    re.IGNORECASE,
)
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
    """Bijective register rename with a single-pass substitution.

    Fixes over the previous implementation:
    - No cascade / re-rewrite bug: all renames happen in one regex pass using a
      callback, so ``x3 -> x7`` followed by ``x7 -> x2`` can never interact.
    - Strict family-scoped bijection: destinations are drawn from a disjoint
      pool per register family, so two distinct source registers can never map
      to the same destination. ``sp`` / ``xzr`` / ``wzr`` / frame pointers are
      preserved (they carry ABI meaning).
    - Preserves SP/FP/ZR: architectural-special registers are never renamed.
    - Preserves case and ``%``-prefix (AT&T) of the matched token.
    """
    preserved = {"sp", "xzr", "wzr", "lr", "fp", "pc",
                 "rsp", "rbp", "esp", "ebp"}
    used = sorted({m.group(0).lower()
                   for line in seq
                   for m in (list(ARM64_REG.finditer(line)) + list(X86_REG.finditer(line)))})
    used = [r for r in used if r not in preserved]

    by_family: Dict[str, List[str]] = defaultdict(list)
    for reg in used:
        by_family[register_family(reg)].append(reg)

    family_pools: Dict[str, List[str]] = {
        "arm_x":      [f"x{i}" for i in range(28)],   # skip 29 (fp), 30 (lr), 31 (sp/xzr)
        "arm_w":      [f"w{i}" for i in range(28)],
        "x86_r64":    ["rax", "rbx", "rcx", "rdx", "rsi", "rdi",
                       "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"],
        "x86_e":      ["eax", "ebx", "ecx", "edx", "esi", "edi"],
        "x86_r":      [f"r{i}" for i in range(8, 16)] + [f"r{i}d" for i in range(8, 16)],
        "x86_legacy": ["ax", "bx", "cx", "dx", "si", "di"],
    }

    mapping: Dict[str, str] = {}
    for fam, regs in by_family.items():
        pool = family_pools.get(fam)
        if not pool or len(regs) > len(pool):
            continue  # unsupported family or too crowded — identity map
        shuffled = pool[:]
        random.shuffle(shuffled)
        for src, dst in zip(regs, shuffled):
            mapping[src] = dst

    if not mapping:
        return seq

    keys_sorted = sorted(mapping.keys(), key=len, reverse=True)
    combined = re.compile(
        r"(?<![A-Za-z0-9_])(%?)(" + "|".join(re.escape(k) for k in keys_sorted) + r")\b",
        re.IGNORECASE,
    )

    def _sub(m: re.Match) -> str:
        prefix = m.group(1) or ""
        body = m.group(2)
        dst = mapping[body.lower()]
        if body.isupper():
            return prefix + dst.upper()
        if body.islower():
            return prefix + dst.lower()
        return prefix + dst

    return [combined.sub(_sub, line) for line in seq]


def insert_nops(seq: List[str], prob: float = 0.1, guard: int = 2) -> List[str]:
    """Insert ``nop`` after instructions with probability ``prob``, but never
    inside the speculation-critical window around a conditional branch.

    The SpecExec classifier relies on n-gram signals like ``cbz -> ldr`` /
    ``jcc -> mov (reg)`` to separate vulnerability classes. Dropping ``nop``
    between these instructions dilutes exactly the signal the model needs,
    and — worse — changes the micro-architectural issue slot so the sequence
    is no longer a faithful representation of the timing gadget. We therefore
    refuse to insert inside ``guard`` instructions on either side of any
    conditional branch or any load that follows one.
    """
    if not seq:
        return seq

    critical: Set[int] = set()
    load_re_arm = ARM64_LOAD
    load_re_x86 = X86_LOAD

    def _is_cond_branch(ln: str) -> bool:
        return bool(ARM64_COND_BRANCH_ANY.search(ln) or X86_BRANCH_COND.search(ln))

    for i, ln in enumerate(seq):
        if _is_cond_branch(ln):
            for d in range(-guard, guard + 1):
                j = i + d
                if 0 <= j < len(seq):
                    critical.add(j)
    # mark the first load following each branch as critical too (the leak site)
    for i, ln in enumerate(seq):
        if _is_cond_branch(ln):
            for j in range(i + 1, min(len(seq), i + 1 + guard + 2)):
                if load_re_arm.search(seq[j]) or load_re_x86.search(seq[j]):
                    for d in range(-guard, guard + 1):
                        k = j + d
                        if 0 <= k < len(seq):
                            critical.add(k)
                    break

    out: List[str] = []
    for i, ln in enumerate(seq):
        out.append(ln)
        if i in critical:
            continue
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


def insert_barrier_counterfactual(seq: List[str], is_x86: bool = False) -> Tuple[List[str], bool]:
    """Insert a serialising fence before the first load that follows the
    first conditional branch, neutralising the speculation-window gadget.

    Returns ``(new_seq, is_full_mitigation)`` where ``is_full_mitigation`` is
    True only when the original window contained exactly one conditional
    branch and exactly one post-branch load (the canonical
    ``branch -> dependent-load`` gadget). In that case the caller may safely
    flip the label to BENIGN. When there are additional branches or loads
    after the first chain, the fence mitigates **one** speculation site but
    leaves other speculation gadgets intact — the caller should keep the
    original class label and annotate ``mitigated=True`` so the model can
    learn that mitigation is partial rather than memorising "fence ⇒ BENIGN".

    Also adds x86 support (``lfence``) — the previous implementation only
    handled ARM, silently skipping every x86 window.
    """
    out = seq[:]
    branch_re = X86_BRANCH_COND if is_x86 else ARM64_BRANCH_COND
    load_re = X86_LOAD if is_x86 else ARM64_LOAD
    fence = "lfence" if is_x86 else "dsb sy"

    branch_indices = [i for i, l in enumerate(out) if branch_re.search(l)]
    if not branch_indices:
        return out, False
    first_branch = branch_indices[0]
    load_idx = next((i for i in range(first_branch + 1, len(out)) if load_re.search(out[i])), None)
    if load_idx is None:
        return out, False

    post_branch_loads = sum(1 for i in range(first_branch + 1, len(seq)) if load_re.search(seq[i]))
    is_full = (len(branch_indices) == 1 and post_branch_loads == 1)

    out.insert(load_idx, fence)
    return out, is_full


def recompose_from_slices(seq: List[str], min_len: int = 5) -> List[str]:
    """Split the window into three chunks and reorder only when the reorder
    preserves the whole-program dataflow.

    The previous implementation only validated the first adjacent pair at the
    seam, which is unsound: ``b + a + c`` creates **two** new seams and also
    moves chunk ``a`` past every instruction in ``b``. If ``b`` defines a
    register that ``a`` later reads, the original code was correct but the
    recomposition silently breaks def-use order.

    This version:
    1. Refuses to reorder any chunk that contains control flow (branch / call /
       ret / unconditional jump) — moving a branch across instructions changes
       reachability.
    2. Validates the candidate ordering with a live-set walk: every chunk's
       free-use set (registers read before defined inside the chunk) must be
       satisfied either by the window's original live-in set or by a chunk that
       now precedes it. Any newly exposed undefined use is rejected.
    """
    if len(seq) < min_len + 2:
        return seq
    third = max(1, len(seq) // 3)
    a = seq[:third]
    b = seq[third: 2 * third]
    c = seq[2 * third:]
    if not (a and b and c):
        return seq

    def _has_control_flow(chunk: List[str]) -> bool:
        for ln in chunk:
            if ARM64_BRANCH_COND.search(ln) or X86_BRANCH_COND.search(ln):
                return True
            lower = ln.lower().strip()
            # unconditional / indirect transfers — safe to match on opcode prefix
            if any(lower.startswith(op + " ") or lower == op
                   for op in ("jmp", "call", "ret", "bl", "blr", "br", "b")):
                return True
            if "ret" in lower.split():
                return True
        return False

    if _has_control_flow(a) or _has_control_flow(b) or _has_control_flow(c):
        return seq

    # Live-in of the original window: any register that was used before being
    # defined in the window must also be available after recomposition.
    original_live_in = analyze_register_usage(seq)["free"]

    def _ordering_is_safe(order: List[List[str]]) -> bool:
        available = set(original_live_in)
        for chunk in order:
            usage = analyze_register_usage(chunk)
            if not usage["free"].issubset(available):
                return False
            available |= usage["defs"]
        return True

    candidates = [
        [b, a, c],   # swap first two chunks
        [a, c, b],   # swap last two chunks
        [c, b, a],   # reverse outer chunks
    ]
    random.shuffle(candidates)
    for order in candidates:
        if _ordering_is_safe(order):
            result = order[0] + order[1] + order[2]
            if result != seq:
                return result
    return seq


# =============================================================================
# Domain-aware augmentations (added 2026-04-13)
# -----------------------------------------------------------------------------
# The transforms below were chosen specifically for speculative-execution
# vulnerability classification. Each is designed to be class-preserving: the
# micro-architectural mechanism (mis-speculated branch -> dependent load ->
# cache-observable probe) remains intact after the transform.
# =============================================================================

# Immediate values that carry cache-timing / bounds-check semantics. These
# must NEVER be perturbed because they are part of the attack signature
# (page stride, cache-line stride, byte iteration, boolean guards).
_CRITICAL_IMMEDIATES: Set[int] = {
    0, 1, -1,
    4096, 0x1000,   # page stride
    64,  0x40,      # cache-line stride
    128, 0x80,      # half page / prefetch window
    256, 0x100,     # secret byte iteration length
    0xff, 255,
    8, 16, 32,      # common word / dword / qword offsets
}

_ARM64_IMM_RE = re.compile(r"#(-?(?:0x[0-9a-fA-F]+|[0-9]+))")
_X86_IMM_RE = re.compile(r"\$(-?(?:0x[0-9a-fA-F]+|[0-9]+))")


def perturb_immediates(seq: List[str], is_x86: bool = False) -> List[str]:
    """Replace non-critical immediate operands with nearby values.

    Assembly emitted by different compilers / optimisation levels produces
    different constants for the same gadget (stack-frame sizes, alignment
    padding, loop-unroll counts). Randomising non-semantic immediates
    teaches the model to look past compiler-specific constants. The
    :data:`_CRITICAL_IMMEDIATES` table protects values that **do** carry
    semantic meaning for cache-timing attacks.
    """
    pattern = _X86_IMM_RE if is_x86 else _ARM64_IMM_RE
    prefix = "$" if is_x86 else "#"

    def _repl(m: re.Match) -> str:
        raw = m.group(1)
        try:
            val = int(raw, 0)
        except ValueError:
            return m.group(0)
        if val in _CRITICAL_IMMEDIATES or abs(val) in _CRITICAL_IMMEDIATES:
            return m.group(0)
        magnitude = max(1, abs(val) // 4)
        new_val = val + random.randint(-magnitude, magnitude)
        if new_val == 0 or new_val in _CRITICAL_IMMEDIATES:
            new_val = val  # don't accidentally create a critical constant
        return f"{prefix}{new_val}"

    return [pattern.sub(_repl, ln) for ln in seq]


# Idiom-level equivalences. Each rule is a tuple
# ``(pattern, builder, changes_flags)``. When ``changes_flags`` is True on
# x86 we must verify no dependent conditional jump / setcc / cmovcc would
# observe the altered flag state before the next flag-clobbering
# instruction; otherwise the substitution silently flips the branch target
# and neutralises the speculative-execution attack. ARM instructions
# without the ``s`` suffix (``add``, ``eor``, ``mov``) do NOT write NZCV,
# so all ARM rules below are flag-neutral.
_ARM_EQUIV_RULES: List[Tuple[re.Pattern, callable, bool]] = [
    # mov xN, #0  <=>  eor xN, xN, xN  (neither writes flags without `s`)
    (re.compile(r"^(\s*)mov\s+(x\d+|w\d+)\s*,\s*#0\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}eor {m.group(2)}, {m.group(2)}, {m.group(2)}",
     False),
    (re.compile(r"^(\s*)eor\s+(x\d+|w\d+)\s*,\s*\2\s*,\s*\2\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}mov {m.group(2)}, #0",
     False),
    # add xN, xN, #0  ->  mov xN, xN  (both flag-neutral)
    (re.compile(r"^(\s*)add\s+(x\d+|w\d+)\s*,\s*\2\s*,\s*#0\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}mov {m.group(2)}, {m.group(2)}",
     False),
]

# x86 equivalences. Every pair below changes the flag effect, so the caller
# MUST verify flag safety at the substitution site before applying.
_X86_EQUIV_RULES: List[Tuple[re.Pattern, callable, bool]] = [
    # xor %rX, %rX (writes ZF=1, CF=0) <=> mov $0, %rX (no flag effect)
    (re.compile(r"^(\s*)xor\s+(%?[re][abcd]x|%?r\d+d?)\s*,\s*\2\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}mov $0, {m.group(2)}",
     True),
    (re.compile(r"^(\s*)mov\s+\$0\s*,\s*(%?[re][abcd]x|%?r\d+d?)\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}xor {m.group(2)}, {m.group(2)}",
     True),
    # add $0, %rX (writes flags) -> mov %rX, %rX (no flag effect)
    (re.compile(r"^(\s*)add\s+\$0\s*,\s*(%?[re][abcd]x|%?r\d+d?)\b", re.IGNORECASE),
     lambda m: f"{m.group(1)}mov {m.group(2)}, {m.group(2)}",
     True),
]

# Any instruction that reads the x86 flag state. A flag-dependent
# conditional jump observed before a flag-clobbering instruction means we
# cannot freely swap a flag-writing idiom for a flag-neutral one.
_X86_FLAG_CONSUMER = re.compile(
    r"\b(j(e|ne|z|nz|l|le|ge|g|b|be|ae|a|c|nc|o|no|s|ns|p|pe|np|po)|"
    r"set(e|ne|z|nz|l|le|ge|g|b|be|ae|a|c|nc|o|no|s|ns|p|pe|np|po)|"
    r"cmov[a-z]+)\b",
    re.IGNORECASE,
)
# Any arithmetic / logical instruction that overwrites NZCF. After such an
# instruction the downstream flags no longer carry the altered value, so
# substitutions earlier in the window become safe again.
_X86_FLAG_CLOBBER = re.compile(
    r"\b(add|sub|adc|sbb|cmp|test|and|or|xor|inc|dec|neg|mul|imul|div|idiv|"
    r"shl|shr|sar|sal|rol|ror|rcl|rcr|bt|bts|btr|btc)\b",
    re.IGNORECASE,
)


def _x86_subst_is_flag_safe(seq: List[str], idx: int) -> bool:
    """Would changing the flag-side-effect of ``seq[idx]`` alter any flag
    seen by a downstream flag consumer before the flags are clobbered?

    Returns True when the substitution is safe (no consumer, or a clobber
    intervenes first); False when a consumer would observe the altered
    flags.
    """
    for j in range(idx + 1, len(seq)):
        ln = seq[j]
        if _X86_FLAG_CONSUMER.search(ln):
            return False
        if _X86_FLAG_CLOBBER.search(ln):
            return True
    return True


def substitute_equivalent(seq: List[str], is_x86: bool = False) -> List[str]:
    """Rewrite instructions with semantically equivalent alternate idioms.

    Two different compilers commonly emit ``mov xN, #0`` vs
    ``eor xN, xN, xN`` for the same source-level zero-init, and similarly
    ``mov $0, %rX`` vs ``xor %rX, %rX`` on x86. A classifier that has
    memorised one encoding will miss the gadget under the other. This
    augmentation rewrites one idiom to the other.

    Safety: ARM substitutions use flag-neutral ops and are unconditionally
    safe. x86 substitutions cross the flag-writing / flag-neutral boundary;
    each site is guarded by :func:`_x86_subst_is_flag_safe` so we never
    silently flip a downstream ``j.cc`` / ``set.cc`` / ``cmov.cc`` — which
    would change the branch outcome and neutralise the attack.
    """
    rules = _X86_EQUIV_RULES if is_x86 else _ARM_EQUIV_RULES
    out: List[str] = []
    for idx, ln in enumerate(seq):
        replaced = ln
        for pat, builder, changes_flags in rules:
            m = pat.match(ln)
            if m:
                if is_x86 and changes_flags and not _x86_subst_is_flag_safe(seq, idx):
                    continue  # try next rule; this site is flag-sensitive
                replaced = builder(m)
                break
        out.append(replaced)
    return out


_ARM_BARRIER_SYNONYMS: Dict[str, List[str]] = {
    # Within each bucket, every variant has effects that are a superset of
    # the weakest one, so substituting a stronger barrier is safe for a
    # speculation mitigation. We deliberately do NOT downgrade (e.g.
    # dsb sy -> dmb ish) because that could leave the gadget exploitable.
    "dsb sy":    ["dsb sy", "dsb ish", "dsb ishst"],
    "dsb ish":   ["dsb ish", "dsb sy"],
    "dsb ishst": ["dsb ishst", "dsb ish", "dsb sy"],
    "dmb sy":    ["dmb sy", "dmb ish"],
    "dmb ish":   ["dmb ish", "dmb sy"],
    "isb":       ["isb", "isb sy"],
}

_X86_BARRIER_SYNONYMS: Dict[str, List[str]] = {
    # mfence is strictly stronger than lfence for speculation purposes.
    "lfence": ["lfence", "mfence"],
    "mfence": ["mfence"],
}


def swap_barrier_variants(seq: List[str], is_x86: bool = False) -> List[str]:
    """Substitute one serialising barrier with a strictly-stronger variant.

    Different codebases encode the "stop speculation here" pragma with
    different barrier forms. This augmentation teaches invariance across
    those forms without weakening the mitigation — we only replace a
    barrier with one from the same or stronger class.
    """
    table = _X86_BARRIER_SYNONYMS if is_x86 else _ARM_BARRIER_SYNONYMS
    out: List[str] = []
    changed = False
    for ln in seq:
        stripped = ln.strip().lower()
        leading = ln[: len(ln) - len(ln.lstrip())]
        replacement = ln
        for canonical, variants in table.items():
            if stripped == canonical or stripped.startswith(canonical + " "):
                choice = random.choice(variants)
                if choice != canonical:
                    replacement = leading + choice
                    changed = True
                break
        out.append(replacement)
    return out if changed else seq


_STRIDE_SYNONYMS: Dict[str, List[str]] = {
    # Swap between hex and decimal forms of attack-relevant strides. The
    # constant's value is preserved — only its textual representation
    # changes, so this is safe for every vulnerability class. Exercises
    # the tokeniser's invariance to the base used by the compiler.
    "4096":   ["0x1000"],  "0x1000": ["4096"],      # page stride
    "2048":   ["0x800"],   "0x800":  ["2048"],      # half page
    "1024":   ["0x400"],   "0x400":  ["1024"],      # quarter page
    "512":    ["0x200"],   "0x200":  ["512"],       # 8 cache lines
    "256":    ["0x100"],   "0x100":  ["256"],       # secret byte range
    "128":    ["0x80"],    "0x80":   ["128"],
    "64":     ["0x40"],    "0x40":   ["64"],        # cache line stride
    "32":     ["0x20"],    "0x20":   ["32"],
    "16":     ["0x10"],    "0x10":   ["16"],
    "8":      ["0x8"],     "0x8":    ["8"],
    "255":    ["0xff"],    "0xff":   ["255"],       # secret byte mask
    "65535":  ["0xffff"],  "0xffff": ["65535"],
}


def stride_synonym_swap(seq: List[str]) -> List[str]:
    """Rewrite cache-relevant strides between hex / decimal forms.

    Preserves value exactly — this is purely a textual augmentation that
    tests whether the classifier has tied its prediction to a particular
    numeric encoding rather than the underlying constant.
    """
    pattern = re.compile(r"(?<=[#\$])(0x[0-9a-fA-F]+|[0-9]+)")
    changed = False

    def _repl(m: re.Match) -> str:
        nonlocal changed
        v = m.group(0)
        if v in _STRIDE_SYNONYMS:
            alt = random.choice(_STRIDE_SYNONYMS[v])
            if alt != v:
                changed = True
                return alt
        return v

    out = [pattern.sub(_repl, ln) for ln in seq]
    return out if changed else seq


# Paired-inverse conditional branch opcodes. Each key ↔ value pair has
# opposite semantics on the same flag state (e.g. ``b.eq`` takes when Z=1,
# ``b.ne`` takes when Z=0). Real compilers emit either polarity for the
# same C-level bounds check depending on how the source is written, so
# a classifier that has memorised one polarity will miss the gadget in
# the other encoding.
_ARM_BRANCH_INVERSE: Dict[str, str] = {
    "b.eq": "b.ne", "b.ne": "b.eq",
    "b.lt": "b.ge", "b.ge": "b.lt",
    "b.le": "b.gt", "b.gt": "b.le",
    "b.lo": "b.hs", "b.hs": "b.lo",
    "b.cc": "b.cs", "b.cs": "b.cc",
    "b.ls": "b.hi", "b.hi": "b.ls",
    "b.mi": "b.pl", "b.pl": "b.mi",
    "b.vs": "b.vc", "b.vc": "b.vs",
    "cbz": "cbnz", "cbnz": "cbz",
    "tbz": "tbnz", "tbnz": "tbz",
}

_X86_BRANCH_INVERSE: Dict[str, str] = {
    "je": "jne",  "jne": "je",
    "jz": "jnz",  "jnz": "jz",
    "jl": "jge",  "jge": "jl",
    "jle": "jg",  "jg": "jle",
    "jb": "jae",  "jae": "jb",
    "jnb": "jnae", "jnae": "jnb",
    "jc": "jnc",  "jnc": "jc",
    "jbe": "ja",  "ja": "jbe",
    "jna": "jnbe", "jnbe": "jna",
    "jo": "jno",  "jno": "jo",
    "js": "jns",  "jns": "js",
    "jp": "jnp",  "jnp": "jp",
    "jpe": "jpo", "jpo": "jpe",
}


def flip_branch_polarity(seq: List[str], is_x86: bool = False) -> List[str]:
    """Negate the first conditional branch in the window.

    **Why this is sound as a *training-time* augmentation but not as a
    compiler transform:** on normalised windows the label definitions
    (``.L1:``) are stripped by :func:`normalize_line`, so we cannot
    locate the taken-block to swap it with the fall-through. That means
    the flipped sequence is not a semantically-equivalent program.
    However, a GINE/CNN classifier that reads opcode/edge tokens will
    see a sequence whose structure — conditional branch followed by
    dependent memory access / indexed load — is unchanged. The polarity
    token (``b.eq`` vs ``b.ne``) is exactly the compiler-specific
    artifact we want the model to abstract over, because real source
    code emits both polarities for the same bounds-check pattern.

    **Safety guards:**
    1. Refuse when the window contains any indirect transfer
       (``ret``, ``br``, ``blr``, indirect ``jmp``/``call``) — those are
       the attack vehicle for RETBLEED / INCEPTION / BHI / SPECTRE_V2
       and their classification must not be confused with conditional-
       branch polarity.
    2. Only flip the *first* conditional branch. Flipping multiple
       branches compounds confusion and moves the sequence too far from
       the training distribution.
    3. Only flip opcodes whose paired inverse is well-defined (listed
       in :data:`_ARM_BRANCH_INVERSE` / :data:`_X86_BRANCH_INVERSE`).
    """
    # Guard against return-based gadgets
    for ln in seq:
        low = ln.strip().lower()
        if not low:
            continue
        first = low.split()[0]
        if first in ("ret", "retq", "br", "blr"):
            return seq
        if first in ("jmp", "call") and "*" in low:
            return seq

    table = _X86_BRANCH_INVERSE if is_x86 else _ARM_BRANCH_INVERSE
    out: List[str] = []
    flipped = False
    for ln in seq:
        if flipped:
            out.append(ln)
            continue
        stripped = ln.lstrip()
        leading = ln[: len(ln) - len(stripped)]
        m = re.match(r"(\S+)(.*)", stripped)
        if not m:
            out.append(ln)
            continue
        op = m.group(1)
        rest = m.group(2)
        op_lc = op.lower()
        if op_lc in table:
            new_op = table[op_lc]
            if op.isupper():
                new_op = new_op.upper()
            out.append(leading + new_op + rest)
            flipped = True
        else:
            out.append(ln)
    return out if flipped else seq


def strip_housekeeping(seq: List[str]) -> List[str]:
    """Trim leading / trailing stack-frame boilerplate.

    **Critical safety note:** Return-based speculation classes
    (RETBLEED, INCEPTION, BHI, SPECTRE_V2) use ``ret`` / ``br`` /
    ``blr`` / indirect ``jmp``/``call`` as the *speculation trigger*.
    Stripping an epilogue ``ldp x29, x30, [sp], #N ; ret`` from those
    windows would remove the attack vehicle and corrupt the class label.
    We therefore refuse the transform on any window that contains an
    indirect transfer, regardless of position.

    Forward-branch gadgets (SPECTRE_V1, L1TF, MDS, SPECTRE_V4) do not
    depend on the epilogue, so trimming there is safe — but we still
    require (a) the trimmed window retains at least one conditional
    branch (the speculation trigger) and (b) the trim keeps ≥5 lines.
    """
    # Guard 1: never strip when the window's vulnerability could be
    # return/indirect-branch based.
    for ln in seq:
        low = ln.strip().lower()
        if not low:
            continue
        first = low.split()[0]
        if first in ("ret", "retq", "br", "blr"):
            return seq
        if first in ("jmp", "call") and "*" in low:
            return seq
        # ARM BR/BLR through a register, e.g. ``br x5``
        if first in ("br", "blr"):
            return seq

    housekeeping_prefixes = (
        "stp x29", "stp x30", "ldp x29", "ldp x30",
        "sub sp,", "add sp,", "mov x29,", "mov fp,",
        "push %rbp", "pop %rbp", "push rbp", "pop rbp",
        "leave", "enter",
    )

    def _is_housekeeping(ln: str) -> bool:
        low = ln.strip().lower()
        return any(low.startswith(p) for p in housekeeping_prefixes)

    start = 0
    while start < len(seq) and _is_housekeeping(seq[start]):
        start += 1
    end = len(seq)
    while end > start and _is_housekeeping(seq[end - 1]):
        end -= 1
    trimmed = seq[start:end]
    # Guard 2: minimum size and preservation of a conditional branch.
    if len(trimmed) < 5:
        return seq
    if not (any(ARM64_COND_BRANCH_ANY.search(l) for l in trimmed)
            or any(X86_BRANCH_COND.search(l) for l in trimmed)):
        return seq
    # Guard 3: do not remove more than 50% of the window — preserves
    # enough surrounding context that the gadget stays in its local
    # control-flow neighborhood.
    if len(trimmed) < len(seq) // 2:
        return seq
    return trimmed


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
                
                # --- all per-window augmentations, with de-duplication ---
                emitted_hashes: Set[int] = {hash(tuple(seq))}

                def _emit(tag: str, new_seq: List[str], extra: Optional[Dict] = None) -> None:
                    nonlocal written
                    if len(new_seq) < 3:
                        return
                    h = hash(tuple(new_seq))
                    if h in emitted_hashes:
                        return
                    emitted_hashes.add(h)
                    payload = {**rec, "augmentation": tag, "sequence": new_seq}
                    if extra:
                        payload.update(extra)
                    fout.write(json.dumps(payload) + "\n")
                    written += 1

                # fixed legacy transforms
                _emit("rename_registers", rename_registers(seq))
                _emit("swap_locally", swap_locally(seq))
                _emit("insert_nops", insert_nops(seq))
                _emit("recompose_slices", recompose_from_slices(seq))

                # barrier counterfactual — label flip only for a clean
                # single-gadget window; otherwise keep the class label and
                # mark as partially mitigated.
                cf_seq, is_full_mitigation = insert_barrier_counterfactual(seq, is_x86)
                if cf_seq != seq:
                    cf_extra: Dict[str, Union[str, bool]] = {"mitigated": True}
                    if is_full_mitigation:
                        cf_extra["label"] = "benign"
                        cf_extra["vuln_label"] = "BENIGN"
                    _emit("insert_barrier_cf", cf_seq, cf_extra)

                # new domain-aware transforms
                _emit("perturb_immediates", perturb_immediates(seq, is_x86))
                _emit("substitute_equivalent", substitute_equivalent(seq, is_x86))
                _emit("swap_barrier_variants", swap_barrier_variants(seq, is_x86))
                _emit("stride_synonym_swap", stride_synonym_swap(seq))
                _emit("strip_housekeeping", strip_housekeeping(seq))
                _emit("flip_branch_polarity", flip_branch_polarity(seq, is_x86))

                # boosted classes: extra combined variants, still deduped
                if vuln_label in boost_set:
                    for _ in range(max(0, args.boost_factor - 1)):
                        boosted = rename_registers(swap_locally(perturb_immediates(seq, is_x86)))
                        _emit("boost_variant", boosted)
                
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
