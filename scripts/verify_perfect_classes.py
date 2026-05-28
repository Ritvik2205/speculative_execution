"""
Check 3: Investigate SPECTRE_V2 and SPECTRE_V4 achieving perfect F1=1.0.

Two hypotheses:
  A) These classes have trivially-identifiable assembly fingerprints (distinctive opcodes/
     instructions that appear exclusively in V2/V4 and never elsewhere). If a simple
     keyword rule achieves ~100%, the GINE model adds no value for those classes.
  B) The model genuinely learned graph-structural patterns that happen to be perfectly
     discriminating. In this case the trivial baseline should fail.

Either outcome is academically valuable — we document the discriminating assembly
invariants that make the classes identifiable.
"""
import json
import os
import re
from collections import defaultdict, Counter
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, classification_report
import numpy as np


DATASET = "v40_export/data/combined_v25_clean.jsonl"
# Classes with perfect F1 in v40_clean
PERFECT_CLASSES = {"SPECTRE_V2", "SPECTRE_V4"}


def extract_opcodes(sequence):
    """Return set of normalized opcodes from a sequence."""
    opcodes = set()
    for line in sequence:
        line = line.strip()
        if not line or line.startswith(("#", "//", ";")):
            continue
        # Strip labels
        if line.endswith(":"):
            continue
        parts = line.split()
        if parts:
            opcode = parts[0].lower().rstrip(".")
            opcodes.add(opcode)
    return opcodes


def extract_opcode_list(sequence):
    """Return ordered list of opcodes."""
    ops = []
    for line in sequence:
        line = line.strip()
        if not line or line.endswith(":") or line.startswith(("#", "//", ";")):
            continue
        parts = line.split()
        if parts:
            ops.append(parts[0].lower().rstrip("."))
    return ops


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

    labels = [r["label"] for r in records]
    _, test_recs = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    all_labels_in_data = sorted(set(r["label"] for r in records))

    print(f"Test set: {len(test_recs):,} records")
    print(f"Classes: {all_labels_in_data}")

    # Build per-class opcode frequency tables over the FULL dataset
    # (train + test, to find class fingerprints — we're not training here)
    class_opcode_counts = defaultdict(Counter)
    class_total = Counter()
    for r in records:
        cls = r["label"]
        class_total[cls] += 1
        for op in extract_opcodes(r.get("sequence", [])):
            class_opcode_counts[cls][op] += 1

    print(f"\n{'='*70}")
    print("DISTINCTIVE OPCODE ANALYSIS")
    print(f"{'='*70}")

    fingerprints = {}  # class -> set of distinctive opcodes
    for target_cls in PERFECT_CLASSES:
        print(f"\n--- {target_cls} ---")
        n_target = class_total[target_cls]
        other_classes = [c for c in all_labels_in_data if c != target_cls]
        n_other = sum(class_total[c] for c in other_classes)

        distinctive = []
        for opcode, cnt in class_opcode_counts[target_cls].most_common():
            freq_in_target = cnt / n_target
            # Frequency in all other classes combined
            other_cnt = sum(class_opcode_counts[c].get(opcode, 0) for c in other_classes)
            freq_in_other = other_cnt / n_other if n_other > 0 else 0
            # LR = frequency ratio
            lr = freq_in_target / (freq_in_other + 1e-9)
            if freq_in_target > 0.05 and lr > 5.0:  # appears in >5% of target, 5× more often than elsewhere
                distinctive.append((opcode, freq_in_target, freq_in_other, lr))

        distinctive.sort(key=lambda x: -x[3])
        fingerprints[target_cls] = {op for op, _, _, _ in distinctive[:20]}

        print(f"  {'Opcode':<20} {'In {cls}%':>10} {'In Others%':>12} {'LR':>8}".format(cls=target_cls[:8]))
        print(f"  {'-'*52}")
        for op, fi, fo, lr in distinctive[:20]:
            print(f"  {op:<20} {100*fi:>9.1f}% {100*fo:>11.1f}% {lr:>8.1f}×")

        if not distinctive:
            print("  No distinctive opcodes found at threshold (>5% freq, >5× LR).")

    # --- Trivial baseline: keyword rule ---
    print(f"\n{'='*70}")
    print("TRIVIAL KEYWORD BASELINE")
    print(f"{'='*70}")
    print("Rule: predict the class whose fingerprint opcodes appear in the sequence.")
    print("If multiple fingerprints match, predict most-matched. Else predict BENIGN.\n")

    def trivial_predict(seq):
        ops = extract_opcodes(seq)
        hits = {}
        for cls, fps in fingerprints.items():
            hits[cls] = len(ops & fps)
        best_cls = max(hits, key=hits.get)
        if hits[best_cls] == 0:
            return "BENIGN"
        return best_cls

    y_true = [r["label"] for r in test_recs]
    y_pred = [trivial_predict(r.get("sequence", [])) for r in test_recs]

    # Per-class F1 for perfect classes
    for cls in PERFECT_CLASSES:
        y_true_bin = [1 if y == cls else 0 for y in y_true]
        y_pred_bin = [1 if y == cls else 0 for y in y_pred]
        f1 = f1_score(y_true_bin, y_pred_bin, zero_division=0)
        from sklearn.metrics import precision_score, recall_score
        prec = precision_score(y_true_bin, y_pred_bin, zero_division=0)
        rec = recall_score(y_true_bin, y_pred_bin, zero_division=0)
        print(f"  {cls:<35} Trivial baseline  P={prec:.3f}  R={rec:.3f}  F1={f1:.3f}")
        print(f"  {'':35} GINE v40 reported P=1.000  R=1.000  F1=1.000")
        if f1 > 0.95:
            print(f"  *** Trivial rule achieves >{f1:.1%} — these classes have strong assembly fingerprints.")
            print(f"      Document as 'class-specific assembly invariants' in the paper.")
        else:
            print(f"  Trivial rule is insufficient; GINE model provides genuine discriminative power.")
        print()

    # Overall trivial baseline accuracy on all 9 classes
    correct = sum(1 for yt, yp in zip(y_true, y_pred) if yt == yp)
    print(f"  Overall trivial baseline accuracy: {correct/len(y_true):.4f} ({100*correct/len(y_true):.2f}%)")
    print(f"  GINE v40 reported accuracy:        0.9671 (96.71%)")

    # --- Sequence-level opcode statistics for paper ---
    print(f"\n{'='*70}")
    print("PER-CLASS AVERAGE SEQUENCE STATISTICS (for paper Table)")
    print(f"{'='*70}")
    print(f"{'Class':<35} {'Avg len':>8} {'Unique ops':>12} {'Most common op (freq)':>30}")
    print("-" * 85)
    for cls in all_labels_in_data:
        class_recs = [r for r in records if r["label"] == cls]
        lengths = [len(extract_opcode_list(r.get("sequence", []))) for r in class_recs]
        avg_len = np.mean(lengths)
        top_op = class_opcode_counts[cls].most_common(1)
        top_str = f"{top_op[0][0]} ({100*top_op[0][1]/class_total[cls]:.0f}%)" if top_op else "N/A"
        unique_ops = len(class_opcode_counts[cls])
        print(f"{cls:<35} {avg_len:>8.1f} {unique_ops:>12} {top_str:>30}")


if __name__ == "__main__":
    main()
