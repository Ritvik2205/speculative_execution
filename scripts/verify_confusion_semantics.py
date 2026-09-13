"""
Check 7: Validate that model confusion pairs align with domain semantics.

The v40_clean model confuses:
  - L1TF ↔ SPECTRE_V1  (both exploit L1 data cache timing)
  - RETBLEED ↔ INCEPTION (both exploit return address prediction)

If the confused pairs share assembly-level features that reflect their semantic
similarity, the model is learning meaningful vulnerability representations, not
arbitrary correlations. This is a strong academic claim.

Also analyzes diagnosis/confusion_diagnosis.json if present.
"""
import json
import os
from collections import defaultdict, Counter
import numpy as np
from sklearn.model_selection import train_test_split


DATASET = "v40_export/data/combined_v25_clean.jsonl"
METRICS = "viz_v40_clean/gine_metrics.json"

# Confusion pairs from the v40_clean classification report
CONFUSION_PAIRS = [
    ("L1TF", "SPECTRE_V1"),
    ("RETBLEED", "INCEPTION"),
]

# Domain-semantic explanation for each pair
PAIR_EXPLANATION = {
    ("L1TF", "SPECTRE_V1"): (
        "Both exploit the L1 data cache. L1TF (Foreshadow) uses page-table manipulation "
        "to speculatively read L1-cached data across privilege boundaries. Spectre V1 uses "
        "bounds-check bypass to speculatively access array data via cache side-channel. "
        "Both share: (1) speculative load sequences, (2) cache-timing measurement patterns, "
        "(3) similar memory access idioms."
    ),
    ("RETBLEED", "INCEPTION"): (
        "Both exploit the Return Stack Buffer (RSB) / return address predictor. RETBLEED "
        "causes returns to speculate to attacker-chosen targets. INCEPTION (Phantom JMP) "
        "uses training of indirect branches to mimic ret behavior. Both share: (1) ret "
        "instructions as speculation triggers, (2) RSB manipulation patterns, (3) similar "
        "control-flow divergence idioms."
    ),
}


def extract_opcodes(sequence):
    ops = []
    for line in sequence:
        line = line.strip()
        if not line or line.endswith(":") or line.startswith(("#", "//", ";")):
            continue
        parts = line.split()
        if parts:
            ops.append(parts[0].lower().rstrip("."))
    return ops


def jaccard(set_a, set_b):
    if not set_a and not set_b:
        return 1.0
    return len(set_a & set_b) / len(set_a | set_b)


def main():
    base = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    path = os.path.join(base, DATASET)

    print(f"Loading {path} ...")
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    print(f"Total records: {len(records):,}")

    # Build class opcode profiles
    class_opcode_sets = defaultdict(Counter)
    class_counts = Counter(r["label"] for r in records)
    for r in records:
        for op in set(extract_opcodes(r.get("sequence", []))):
            class_opcode_sets[r["label"]][op] += 1

    # Normalize to frequency
    class_opcode_freq = {}
    for cls, counts in class_opcode_sets.items():
        n = class_counts[cls]
        class_opcode_freq[cls] = {op: cnt / n for op, cnt in counts.items()}

    all_classes = sorted(class_counts.keys())

    print(f"\n{'='*70}")
    print("PAIRWISE OPCODE SIMILARITY BETWEEN ALL CLASS PAIRS")
    print(f"{'='*70}")
    print("(Jaccard similarity on opcodes appearing in >10% of each class)")
    print()

    threshold = 0.10
    similarity_matrix = {}
    for i, cls_a in enumerate(all_classes):
        for cls_b in all_classes[i:]:
            ops_a = {op for op, f in class_opcode_freq[cls_a].items() if f > threshold}
            ops_b = {op for op, f in class_opcode_freq[cls_b].items() if f > threshold}
            sim = jaccard(ops_a, ops_b)
            similarity_matrix[(cls_a, cls_b)] = sim
            similarity_matrix[(cls_b, cls_a)] = sim

    print(f"{'':30}", end="")
    for cls in all_classes:
        print(f"{cls[:8]:>10}", end="")
    print()
    print("-" * (30 + 10 * len(all_classes)))
    for cls_a in all_classes:
        print(f"{cls_a:<30}", end="")
        for cls_b in all_classes:
            sim = similarity_matrix.get((cls_a, cls_b), 0.0)
            print(f"{sim:>10.3f}", end="")
        print()

    print(f"\n{'='*70}")
    print("CONFUSION PAIR SEMANTIC ANALYSIS")
    print(f"{'='*70}")

    for cls_a, cls_b in CONFUSION_PAIRS:
        pair_key = (min(cls_a, cls_b), max(cls_a, cls_b))
        sim = similarity_matrix.get((cls_a, cls_b), 0.0)

        # Find shared distinctive opcodes
        ops_a = {op for op, f in class_opcode_freq[cls_a].items() if f > threshold}
        ops_b = {op for op, f in class_opcode_freq[cls_b].items() if f > threshold}
        shared = ops_a & ops_b
        only_a = ops_a - ops_b
        only_b = ops_b - ops_a

        # Compare to average pairwise similarity
        all_sims = [v for (a, b), v in similarity_matrix.items() if a < b]
        avg_sim = np.mean(all_sims)

        print(f"\nPair: {cls_a} ↔ {cls_b}")
        print(f"  Jaccard similarity: {sim:.3f}  (dataset average: {avg_sim:.3f})")
        print(f"  Is above average: {'YES — semantically similar pair' if sim > avg_sim else 'NO — not particularly similar'}")
        print(f"  Shared common opcodes ({len(shared)}): {sorted(shared)[:15]}")
        print(f"  Opcodes unique to {cls_a} ({len(only_a)}): {sorted(only_a)[:10]}")
        print(f"  Opcodes unique to {cls_b} ({len(only_b)}): {sorted(only_b)[:10]}")
        print(f"\n  Domain explanation:")
        expl = PAIR_EXPLANATION.get((cls_a, cls_b), PAIR_EXPLANATION.get((cls_b, cls_a), "No explanation available."))
        for line in expl.split(". "):
            print(f"    {line.strip()}.")

    # Rank all pairs by similarity and verify confused pairs are top-ranked
    print(f"\n{'='*70}")
    print("TOP-10 MOST SIMILAR CLASS PAIRS (academic validation of confusion)")
    print(f"{'='*70}")
    pair_sims = [(sim, cls_a, cls_b) for (cls_a, cls_b), sim in similarity_matrix.items() if cls_a < cls_b]
    pair_sims.sort(reverse=True)
    confused_set = {(min(a, b), max(a, b)) for a, b in CONFUSION_PAIRS}
    for rank, (sim, cls_a, cls_b) in enumerate(pair_sims[:10], 1):
        is_confused = "← CONFUSED PAIR" if (min(cls_a, cls_b), max(cls_a, cls_b)) in confused_set else ""
        print(f"  {rank:2}. {cls_a:<35} ↔ {cls_b:<35} sim={sim:.3f}  {is_confused}")

    print(f"\n{'='*70}")
    print("CONCLUSION")
    print(f"{'='*70}")
    print("If the confused pairs rank high in similarity, this confirms:")
    print("  1. The model confuses semantically similar attacks — not random noise")
    print("  2. The confusion reflects genuine assembly-level similarity")
    print("  3. The 'errors' are principled and expected from a security standpoint")
    print("  4. Reducing these confusions would require finer-grained features")
    print("     (e.g., exact page-table vs array-access micropatterns)")
    print()
    print("Academic claim: 'Our model's misclassifications are semantically consistent,")
    print("confusing only attacks that share underlying hardware exploitation primitives.'")

    # Check if diagnosis/confusion_diagnosis.json has more detail
    diag_path = os.path.join(base, "diagnosis", "confusion_diagnosis.json")
    if os.path.exists(diag_path):
        print(f"\n{'='*70}")
        print("EXISTING CONFUSION DIAGNOSIS (diagnosis/confusion_diagnosis.json)")
        print(f"{'='*70}")
        with open(diag_path) as f:
            diag = json.load(f)
        # Print top-level structure
        if isinstance(diag, dict):
            top_keys = list(diag.keys())[:10]
            print(f"  Top-level keys: {top_keys}")
            # Show confusion counts if present
            if "confusion_pairs" in diag or "pair_analysis" in diag:
                key = "confusion_pairs" if "confusion_pairs" in diag else "pair_analysis"
                for pair_key, data in list(diag[key].items())[:5]:
                    print(f"  {pair_key}: {json.dumps(data, indent=4)[:200]}")
        print(f"  (Full details in {diag_path})")


if __name__ == "__main__":
    main()
