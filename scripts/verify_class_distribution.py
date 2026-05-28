"""
Check 2: Verify class distribution integrity across train/test split.

Stratified split should produce near-identical class proportions in train and test.
Any significant deviation suggests a bug in the split or severe class imbalance
that the stratification couldn't handle.
"""
import json
import os
from collections import Counter
from sklearn.model_selection import train_test_split
from scipy.stats import chi2_contingency


DATASET = "v40_export/data/combined_v25_clean.jsonl"


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
    train_recs, test_recs = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )

    train_counts = Counter(r["label"] for r in train_recs)
    test_counts = Counter(r["label"] for r in test_recs)
    all_classes = sorted(set(train_counts) | set(test_counts))

    total_train = len(train_recs)
    total_test = len(test_recs)
    total_all = len(records)

    print(f"\n{'='*75}")
    print(f"CLASS DISTRIBUTION: train={total_train:,}  test={total_test:,}  total={total_all:,}")
    print(f"{'='*75}")
    header = f"{'Class':<35} {'Total':>7} {'Train':>7} {'Test':>6} {'Train%':>7} {'Test%':>6} {'Diff%':>6}"
    print(header)
    print("-" * 75)

    obs_train = []
    obs_test = []
    max_diff = 0.0
    for cls in all_classes:
        tr = train_counts.get(cls, 0)
        te = test_counts.get(cls, 0)
        tot = tr + te
        tr_pct = 100 * tr / total_train
        te_pct = 100 * te / total_test
        diff = abs(tr_pct - te_pct)
        max_diff = max(max_diff, diff)
        flag = " *** DEVIATION" if diff > 1.0 else ""
        print(f"{cls:<35} {tot:>7,} {tr:>7,} {te:>6,} {tr_pct:>6.2f}% {te_pct:>5.2f}% {diff:>5.2f}%{flag}")
        obs_train.append(tr)
        obs_test.append(te)

    # Chi-square test: are train and test drawn from the same distribution?
    contingency = [obs_train, obs_test]
    chi2, p_value, dof, expected = chi2_contingency(contingency)

    print(f"\n{'='*75}")
    print("STATISTICAL TEST: Chi-square for proportionality of train vs test")
    print(f"{'='*75}")
    print(f"  Chi² statistic: {chi2:.4f}")
    print(f"  Degrees of freedom: {dof}")
    print(f"  p-value: {p_value:.6f}")
    print(f"  Max class deviation: {max_diff:.4f}%")
    print()
    if p_value > 0.99:
        print("  RESULT: p > 0.99 — train and test are proportionally distributed.")
        print("          The stratified split is working correctly.")
    elif p_value > 0.05:
        print("  RESULT: p > 0.05 — no statistically significant deviation.")
    else:
        print("  RESULT: p < 0.05 — significant imbalance detected in split.")
        print("          Investigate the classes flagged with *** above.")

    # Check if test support matches the metrics file (viz_v40_clean/gine_metrics.json)
    metrics_path = os.path.join(base, "viz_v40_clean", "gine_metrics.json")
    if os.path.exists(metrics_path):
        with open(metrics_path) as f:
            metrics = json.load(f)
        reported_support = {
            k: int(v["support"])
            for k, v in metrics.get("classification_report", {}).items()
            if isinstance(v, dict) and "support" in v
        }
        print(f"\n{'='*75}")
        print("CROSS-CHECK: Computed test counts vs. gine_metrics.json support values")
        print(f"{'='*75}")
        print(f"{'Class':<35} {'Computed':>10} {'Reported':>10} {'Match':>7}")
        print("-" * 65)
        all_match = True
        for cls in all_classes:
            computed = test_counts.get(cls, 0)
            reported = reported_support.get(cls, "N/A")
            match = "OK" if computed == reported else "MISMATCH"
            if match == "MISMATCH":
                all_match = False
            print(f"{cls:<35} {computed:>10,} {str(reported):>10} {match:>7}")
        print()
        if all_match:
            print("  RESULT: All class support values match. The metrics file is consistent")
            print("          with reproducing the exact split (random_state=42, test_size=0.2).")
        else:
            print("  *** MISMATCH: metrics.json support values don't match the reproduced split.")
            print("  This means the training script may have used different split parameters,")
            print("  or the dataset was modified after training.")


if __name__ == "__main__":
    main()
