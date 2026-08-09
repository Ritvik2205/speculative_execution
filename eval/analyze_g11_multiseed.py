#!/usr/bin/env python3
"""
analyze_g11_multiseed.py — the multi-seed G11 re-verification that was never
done (SPECDISCOVER_VERIFICATION_GAPS.md G11 follow-up, SPECDISCOVER_UPDATE.md).

The original G11 fix was assessed with ONE retrain on cleaned data compared
to ONE prior retrain on leaky data — and one of the classes that moved
(SPECTRE_V2, -14.9pp) had ZERO leaked records, meaning part of that delta was
already known to be noise. This runs the same comparison properly: 5 seeds
on the pre-fix (leaky) data vs 5 seeds on the post-fix (cleaned) data, same
code/hyperparameters throughout (current dataflow_taint mechanism included in
both — holding code constant, varying only the data, isolates the G11 data
fix specifically).

Run:  python3 eval/analyze_g11_multiseed.py
"""
from __future__ import annotations

import json
import re
from pathlib import Path

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
PRE = ROOT / "eval" / "g11_pre_fix_multiseed"
POST = ROOT / "eval" / "dataflow_taint_multiseed"
SEEDS = [42, 1, 7, 13, 21]

# Classes flagged in the original single-run comparison, worth checking
# individually: INCEPTION/L1TF had leaked records (expected to move),
# SPECTRE_V2 had zero leaked records (any large move there is pure noise).
WATCH_CLASSES = ["INCEPTION", "L1TF", "BRANCH_HISTORY_INJECTION", "SPECTRE_V2", "MDS"]


def load_metrics(viz_dir: Path):
    m = json.load(open(viz_dir / "gine_metrics.json"))
    return m


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return x.mean(), 0.0
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def paired_t(a, b):
    a, b = np.asarray(a, float), np.asarray(b, float)
    diff = b - a
    t, p = stats.ttest_rel(b, a)
    return diff.mean(), p


def main():
    pre_acc, pre_f1 = [], []
    post_acc, post_f1 = [], []
    pre_class_recall = {c: [] for c in WATCH_CLASSES}
    post_class_recall = {c: [] for c in WATCH_CLASSES}

    for sd in SEEDS:
        pre_m = load_metrics(PRE / f"viz_s{sd}")
        post_m = load_metrics(POST / f"viz_s{sd}")
        pre_acc.append(pre_m["test_accuracy"] * 100)
        post_acc.append(post_m["test_accuracy"] * 100)
        pre_f1.append(pre_m["classification_report"]["macro avg"]["f1-score"] * 100)
        post_f1.append(post_m["classification_report"]["macro avg"]["f1-score"] * 100)
        for c in WATCH_CLASSES:
            pre_r = pre_m["classification_report"].get(c, {}).get("recall")
            post_r = post_m["classification_report"].get(c, {}).get("recall")
            if pre_r is not None:
                pre_class_recall[c].append(pre_r * 100)
            if post_r is not None:
                post_class_recall[c].append(post_r * 100)

    pam, pah = ci(pre_acc); pom, poh = ci(post_acc)
    pfm, pfh = ci(pre_f1); pfom, pfoh = ci(post_f1)

    print(f"{'':20s} {'pre-fix (leaky)':>20s} {'post-fix (clean)':>20s} {'delta':>10s}")
    print("-" * 74)
    print(f"{'test-acc':20s} {pam:8.2f} ± {pah:5.2f}    {pom:8.2f} ± {poh:5.2f}    {pom-pam:+8.2f}pp")
    print(f"{'macro-F1':20s} {pfm:8.2f} ± {pfh:5.2f}    {pfom:8.2f} ± {pfoh:5.2f}    {pfom-pfm:+8.2f}pp")

    d_acc, p_acc = paired_t(pre_acc, post_acc)
    d_f1, p_f1 = paired_t(pre_f1, post_f1)
    print(f"\npaired t-test (same seed pre vs post, n={len(SEEDS)}):")
    print(f"  acc:  mean paired delta {d_acc:+.2f}pp, p={p_acc:.3f} "
          f"{'(significant at .05)' if p_acc < 0.05 else '(NOT significant at .05)'}")
    print(f"  F1:   mean paired delta {d_f1:+.2f}pp, p={p_f1:.3f} "
          f"{'(significant at .05)' if p_f1 < 0.05 else '(NOT significant at .05)'}")

    print(f"\n{'class':28s} {'pre recall':>18s} {'post recall':>18s} {'delta':>10s}  had leaked recs?")
    leaked = {"INCEPTION": "yes (87/460, 18.9%)", "L1TF": "yes (55/198, 27.8%)",
              "BRANCH_HISTORY_INJECTION": "yes (5/261, 1.9%)", "MDS": "yes (4, <1%)",
              "SPECTRE_V2": "NO (0 leaked records)"}
    for c in WATCH_CLASSES:
        pr = pre_class_recall[c]; po = post_class_recall[c]
        if not pr or not po:
            continue
        prm, prh = ci(pr); pom_, poh_ = ci(po)
        print(f"{c:28s} {prm:8.2f} ± {prh:5.2f}    {pom_:8.2f} ± {poh_:5.2f}    "
              f"{pom_-prm:+8.2f}pp  {leaked.get(c,'?')}")

    print("\nInterpretation: a class with 'NO (0 leaked records)' showing a large,\n"
          "seemingly-significant delta anyway is confirmed noise, not a G11 effect —\n"
          "exactly the check the original single-run comparison couldn't make.")


if __name__ == "__main__":
    main()
