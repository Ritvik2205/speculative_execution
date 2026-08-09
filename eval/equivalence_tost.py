#!/usr/bin/env python3
"""
equivalence_tost.py — replace single-seed "parity" with a multi-seed
equivalence test (TOST), the statistically honest version of the Phase-1 claim.

The Phase-1 memory asserts learned node features reach "parity" with hand
features from a single-seed comparison (95.03 vs 95.63) with a *negative* gap,
leaning on run-to-run variance. That is underpowered-null reasoning: absence of
a significant difference is NOT evidence of equivalence. To claim "replaceable"
you must run an EQUIVALENCE test with a pre-registered margin.

This harness:
  1. builds the spec-backed graphs once (hand + aligned learned node feats),
  2. trains the compact proxy GINE for hand / learned / both over N seeds,
  3. reports mean +/- 95% CI (t-dist) for test acc and macro-F1,
  4. runs TOST (two one-sided tests) for `learned` vs `hand` at a
     pre-registered margin (default 0.5pp acc), and a one-sided
     non-inferiority test.

Verdict language is honest: equivalence is only claimed if the CI of the
difference falls entirely inside (-margin, +margin).

Run:  python3 eval/equivalence_tost.py --seeds 42 1 7 13 21 100 7654 8 88 999
"""

from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                 # noqa: E402
from asm_tokenizer import AsmTokenizer            # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from train_mlm import MlmEncoder                  # noqa: E402
import gine_experiment as ge                      # noqa: E402


def ci95(x):
    x = np.asarray(x, dtype=float)
    n = len(x)
    m = x.mean()
    if n < 2:
        return m, 0.0
    se = x.std(ddof=1) / np.sqrt(n)
    h = se * stats.t.ppf(0.975, n - 1)
    return m, h


def tost(hand, learned, margin):
    """Two one-sided tests for equivalence of (learned - hand) within +/-margin.
    Returns dict with the difference, its CI, per-side p-values, and verdict.
    Positive diff => learned better."""
    hand = np.asarray(hand, float)
    learned = np.asarray(learned, float)
    diff = learned.mean() - hand.mean()
    # Welch SE for difference of independent means
    s = np.sqrt(hand.var(ddof=1) / len(hand) + learned.var(ddof=1) / len(learned))
    dof = (hand.var(ddof=1)/len(hand) + learned.var(ddof=1)/len(learned))**2 / (
        (hand.var(ddof=1)/len(hand))**2/(len(hand)-1)
        + (learned.var(ddof=1)/len(learned))**2/(len(learned)-1))
    # H0a: diff <= -margin  ->  t_lower large positive rejects
    t_lower = (diff + margin) / s
    p_lower = 1 - stats.t.cdf(t_lower, dof)      # P(reject "learned worse by >= margin")
    # H0b: diff >= +margin
    t_upper = (diff - margin) / s
    p_upper = stats.t.cdf(t_upper, dof)          # P(reject "learned better by >= margin")
    # 90% CI of diff (matches alpha=0.05 TOST)
    h = s * stats.t.ppf(0.95, dof)
    ci_lo, ci_hi = diff - h, diff + h
    equivalent = (ci_lo > -margin) and (ci_hi < margin)
    non_inferior = ci_lo > -margin
    return dict(diff=diff, ci=(ci_lo, ci_hi), p_lower=p_lower, p_upper=p_upper,
                equivalent=equivalent, non_inferior=non_inferior)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+",
                    default=[42, 1, 7, 13, 21, 100, 7654, 8, 88, 999])
    ap.add_argument("--margin", type=float, default=0.5,
                    help="pre-registered equivalence margin in percentage points (acc)")
    ap.add_argument("--epochs", type=int, default=30)
    ap.add_argument("--spec-window", type=int, default=20)
    ap.add_argument("--mlm-path", default=str(ROOT / "spec" / "mlm.pt"))
    args = ap.parse_args()

    engines = {a: load_engine(f) for a, f in ge.ENGINES.items()}
    builders = {a: SpecBackedPDGBuilder(e, speculative_window=args.spec_window)
                for a, e in engines.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(args.mlm_path)
    dim_learned = mlm.dim

    train_rows, test_rows = ge.load(ge.TRAIN), ge.load(ge.TEST)
    labels = sorted({r["label"] for r in train_rows} | {r["label"] for r in test_rows})
    label_id = {c: i for i, c in enumerate(labels)}
    num_classes = len(labels)

    print("building spec-backed graphs (hand + aligned learned node feats)...")
    train_g = ge.build_graphs(train_rows, builders, tok, mlm, label_id)
    test_g = ge.build_graphs(test_rows, builders, tok, mlm, label_id)

    rng = np.random.default_rng(ge.SEED)
    perm = rng.permutation(len(train_g))
    n_val = int(0.12 * len(train_g))
    val_g = [train_g[i] for i in perm[:n_val]]
    tr_g = [train_g[i] for i in perm[n_val:]]

    cnt = Counter(g["y"] for g in tr_g)
    w = np.array([1.0 / np.sqrt(max(cnt.get(i, 1), 1)) for i in range(num_classes)])
    w = w / w.mean()
    class_w = torch.tensor(w, dtype=torch.float32)

    configs = {"hand": 41, "learned": dim_learned, "both": 41 + dim_learned}
    print(f"train={len(tr_g)} val={len(val_g)} test={len(test_g)} "
          f"classes={num_classes} learned_dim={dim_learned} "
          f"seeds={len(args.seeds)} margin={args.margin}pp\n")

    results = {}
    for key, in_dim in configs.items():
        accs, f1s = [], []
        for sd in args.seeds:
            acc, f1, _ = ge.run_config(key, in_dim, tr_g, val_g, test_g,
                                       class_w, num_classes, seed=sd,
                                       standardize=True, epochs=args.epochs)
            accs.append(acc * 100); f1s.append(f1 * 100)
        results[key] = (np.array(accs), np.array(f1s))
        am, ah = ci95(accs); fm, fh = ci95(f1s)
        print(f"{key:8s}  acc {am:6.2f} ± {ah:.2f}   macroF1 {fm:6.2f} ± {fh:.2f}"
              f"   (n={len(accs)})")

    print("\n--- TOST equivalence vs hand (pre-registered margin"
          f" = {args.margin}pp acc) ---")
    hand_acc = results["hand"][0]
    for key in ("learned", "both"):
        r = tost(hand_acc, results[key][0], args.margin)
        lo, hi = r["ci"]
        verdict = ("EQUIVALENT" if r["equivalent"]
                   else "NON-INFERIOR (not equiv)" if r["non_inferior"]
                   else "CANNOT show equivalence (complementary at best)")
        print(f"{key:8s} vs hand: diff={r['diff']:+.2f}pp  90%CI[{lo:+.2f},{hi:+.2f}]"
              f"  p_lo={r['p_lower']:.3f} p_hi={r['p_upper']:.3f}  -> {verdict}")

    print("\nNote: 'learned' replacing 'hand' is only supportable if EQUIVALENT.")


if __name__ == "__main__":
    main()
