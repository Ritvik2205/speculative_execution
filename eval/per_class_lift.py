#!/usr/bin/env python3
"""
per_class_lift.py — does fusing learned encoder features actually lift RARE
classes, or is the aggregate-accuracy TOST result (eval/full_tost_aggregate.py)
hiding a per-class story?

eval/equivalence_tost.py and eval/full_tost_aggregate.py answer "is learned
equivalent to hand overall" (macro accuracy/F1). Neither breaks that down by
class, so the claim "learned complements hand, mainly on rare classes" was
never directly measured — only inferred. This reads the per-seed
classification_report already saved by v54/train_gine_v38.py
(gine_metrics.json['classification_report'][CLASS]['recall']) across the
hand/learned/both runs in eval/full_tost/, and for each class reports the mean
recall diff (other_mode - hand) with a 95% CI, flagging classes where the CI
excludes 0 (a real, not noise-level, per-class effect).

Run (against the cached full_tost results already on disk):
  python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode both
  python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode learned
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

import numpy as np
from scipy import stats

DEFAULT_SEEDS = [42, 1, 7, 13, 21]
NON_CLASS_KEYS = {"accuracy", "macro avg", "weighted avg"}


def load_recalls(results_dir: Path, mode: str, seeds: list[int]) -> dict:
    """class name -> list of per-seed recall values, across seeds where the
    class was present in the test set's classification_report."""
    per_class = {}
    for seed in seeds:
        p = Path(results_dir) / f"viz_{mode}_s{seed}" / "gine_metrics.json"
        if not p.exists():
            continue
        report = json.loads(p.read_text())["classification_report"]
        for cls, stats_dict in report.items():
            if cls in NON_CLASS_KEYS:
                continue
            per_class.setdefault(cls, []).append(stats_dict["recall"])
    return per_class


def per_class_lift(hand: dict, other: dict) -> dict:
    """For each class present in both modes with >=2 seeds each, compute the
    mean recall diff (other - hand) and a 95% CI (paired-by-seed-index t-CI on
    the diffs would be tighter, but hand/other seed lists aren't guaranteed
    aligned 1:1 by seed value across sparse test-set class presence — use the
    unpaired two-sample CI on the difference of means, consistent with how
    eval/equivalence_tost.py treats accuracy)."""
    result = {}
    for cls in sorted(set(hand) & set(other)):
        h, o = np.asarray(hand[cls], float), np.asarray(other[cls], float)
        if len(h) < 2 or len(o) < 2:
            continue
        diff = o.mean() - h.mean()
        se = np.sqrt(h.var(ddof=1) / len(h) + o.var(ddof=1) / len(o))
        dof = (h.var(ddof=1) / len(h) + o.var(ddof=1) / len(o)) ** 2 / (
            (h.var(ddof=1) / len(h)) ** 2 / (len(h) - 1)
            + (o.var(ddof=1) / len(o)) ** 2 / (len(o) - 1)
        )
        half = se * stats.t.ppf(0.975, dof) if se > 0 else 0.0
        lo, hi = diff - half, diff + half
        result[cls] = {
            "hand_mean": h.mean(), "other_mean": o.mean(),
            "mean_diff": diff, "ci95": [lo, hi],
            "lift_significant": bool(lo > 0 or hi < 0),
        }
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", type=Path, default=Path("eval/full_tost"))
    ap.add_argument("--other-mode", choices=["learned", "both"], default="both")
    ap.add_argument("--seeds", type=int, nargs="+", default=DEFAULT_SEEDS)
    ap.add_argument("--out", type=Path, default=None,
                     help="optional path to write the full result dict as JSON")
    args = ap.parse_args()

    hand = load_recalls(args.results_dir, "hand", args.seeds)
    other = load_recalls(args.results_dir, args.other_mode, args.seeds)
    result = per_class_lift(hand, other)

    print(f"per-class recall lift: {args.other_mode} vs hand "
          f"({args.results_dir}, seeds={args.seeds})\n")
    print(f"{'class':30s} {'hand':>8s} {args.other_mode:>8s} {'diff':>8s} {'95% CI':>18s} {'sig?':>5s}")
    for cls, r in sorted(result.items(), key=lambda kv: -abs(kv[1]["mean_diff"])):
        sig = "YES" if r["lift_significant"] else "no"
        print(f"{cls:30s} {r['hand_mean']:8.3f} {r['other_mean']:8.3f} "
              f"{r['mean_diff']:+8.3f} [{r['ci95'][0]:+.3f},{r['ci95'][1]:+.3f}] {sig:>5s}")

    if args.out:
        args.out.write_text(json.dumps(result, indent=2))
        print(f"\nwritten -> {args.out}")


if __name__ == "__main__":
    main()
