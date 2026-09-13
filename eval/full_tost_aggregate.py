#!/usr/bin/env python3
"""Aggregate full-model multi-seed runs (TSV: mode seed acc f1) into mean+-CI and
TOST equivalence of learned/both vs hand (margin 0.5pp acc). This is the expensive
full-model confirmation of the compact-proxy A2 result."""
import sys
from collections import defaultdict
import numpy as np
from scipy import stats


def ci(x):
    x = np.asarray(x, float)
    if len(x) < 2:
        return x.mean(), 0.0
    return x.mean(), x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def tost(hand, arm, margin=0.5):
    hand, arm = np.asarray(hand, float), np.asarray(arm, float)
    diff = arm.mean() - hand.mean()
    s = np.sqrt(hand.var(ddof=1)/len(hand) + arm.var(ddof=1)/len(arm))
    dof = (hand.var(ddof=1)/len(hand) + arm.var(ddof=1)/len(arm))**2 / (
        (hand.var(ddof=1)/len(hand))**2/(len(hand)-1)
        + (arm.var(ddof=1)/len(arm))**2/(len(arm)-1))
    h = s * stats.t.ppf(0.95, dof)
    lo, hi = diff - h, diff + h
    return diff, (lo, hi), (lo > -margin and hi < margin), (lo > -margin)


def main(path, f1_margin=3.0):
    acc = defaultdict(list); f1 = defaultdict(list)
    for line in open(path):
        p = line.split()
        if len(p) < 3 or not p[2]:
            continue
        acc[p[0]].append(float(p[2]) * (100 if float(p[2]) < 1.5 else 1))
        if len(p) > 3 and p[3]:
            try: f1[p[0]].append(float(p[3]) * (100 if float(p[3]) < 1.5 else 1))
            except ValueError: pass
    print(f"\n{'mode':8s} {'n':>2s} {'test-acc (mean±CI)':>22s} {'macroF1 (mean±CI)':>22s}")
    for m in ("hand", "learned", "both"):
        if not acc[m]:
            continue
        am, ah = ci(acc[m])
        fm, fh = ci(f1[m]) if f1[m] else (float('nan'), 0.0)
        print(f"{m:8s} {len(acc[m]):>2d} {am:8.2f} ± {ah:4.2f}          {fm:8.2f} ± {fh:4.2f}")

    print(f"\nTOST vs hand (margin 0.5pp acc):")
    for m in ("learned", "both"):
        if acc[m] and len(acc["hand"]) > 1 and len(acc[m]) > 1:
            d, (lo, hi), eq, ni = tost(acc["hand"], acc[m])
            v = "EQUIVALENT" if eq else "NON-INFERIOR" if ni else "NOT equivalent (complementary at best)"
            print(f"  {m:8s} diff={d:+.2f}pp 90%CI[{lo:+.2f},{hi:+.2f}] -> {v}")

    # G2 fix: macro-F1 was never TOST-tested or given a CI. Accuracy and macro-F1
    # can disagree in sign (observed: full-model F1 favors learned/both while
    # accuracy favors hand) — a conclusion drawn from accuracy alone is not a
    # complete equivalence statement for an imbalanced multi-class task.
    # margin default (3.0pp) is NOT calibrated the way the 0.5pp accuracy margin
    # was (that came from a pre-registered decision); it's chosen post-hoc to
    # match the scale of macro-F1's run-to-run swing (~3pp CIs observed here).
    # Treat this as exploratory, not a pre-registered equivalence claim.
    print(f"\nTOST vs hand on macro-F1 (EXPLORATORY margin {f1_margin:.1f}pp — "
          f"not pre-registered like the 0.5pp accuracy margin; see"
          f"\nSPECDISCOVER_VERIFICATION_GAPS.md G2):")
    for m in ("learned", "both"):
        if f1[m] and len(f1["hand"]) > 1 and len(f1[m]) > 1:
            d, (lo, hi), eq, ni = tost(f1["hand"], f1[m], margin=f1_margin)
            v = "EQUIVALENT" if eq else "NON-INFERIOR" if ni else "NOT equivalent"
            print(f"  {m:8s} diff={d:+.2f}pp 90%CI[{lo:+.2f},{hi:+.2f}] -> {v}")
        else:
            print(f"  {m:8s} insufficient F1 data for TOST")

    if acc["learned"] and acc["hand"]:
        acc_sign = "hand > learned" if np.mean(acc["hand"]) > np.mean(acc["learned"]) else "learned > hand"
        f1_sign = "hand > learned" if f1["hand"] and f1["learned"] and np.mean(f1["hand"]) > np.mean(f1["learned"]) else "learned >= hand"
        if f1["hand"] and f1["learned"]:
            print(f"\nSign check: accuracy says '{acc_sign}'; macro-F1 says '{f1_sign}'.")
            if acc_sign != f1_sign:
                print("  These DISAGREE — the 'not equivalent, complementary at best' framing"
                      "\n  above is an accuracy-only conclusion and should not be read as also"
                      "\n  true for macro-F1 (the more decision-relevant metric for an imbalanced"
                      "\n  multi-class classifier).")


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "eval/full_tost/results.tsv")
