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
    class was present in the test set's classification_report.

    NOTE: list order follows the `seeds` iteration order, but seed IDENTITY
    is not tracked here (a class missing from one seed's report would shift
    the alignment). Use `load_recalls_by_seed` when you need to pair samples
    by actual seed value (e.g. for a paired CI)."""
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


def load_recalls_by_seed(results_dir: Path, mode: str, seeds: list[int]) -> dict:
    """class name -> {seed: recall}, explicitly keyed by seed so callers can
    pair hand/other runs by the actual seed that produced them (rather than
    by list position, which breaks if a class is missing from some seed's
    classification_report)."""
    per_class: dict = {}
    for seed in seeds:
        p = Path(results_dir) / f"viz_{mode}_s{seed}" / "gine_metrics.json"
        if not p.exists():
            continue
        report = json.loads(p.read_text())["classification_report"]
        for cls, stats_dict in report.items():
            if cls in NON_CLASS_KEYS:
                continue
            per_class.setdefault(cls, {})[seed] = stats_dict["recall"]
    return per_class


def load_support_by_seed(results_dir: Path, mode: str, seeds: list[int]) -> dict:
    """class name -> {seed: support}, the number of true test-set instances
    of that class for that seed's classification_report. Used to exclude
    classes with too few real examples (e.g. SPECTRE_RSB, support=1 -> a
    single coin-flip recall value per seed) from the Bonferroni denominator —
    counting an untestable class inflates n and needlessly tightens the CI
    for classes that ARE testable."""
    per_class: dict = {}
    for seed in seeds:
        p = Path(results_dir) / f"viz_{mode}_s{seed}" / "gine_metrics.json"
        if not p.exists():
            continue
        report = json.loads(p.read_text())["classification_report"]
        for cls, stats_dict in report.items():
            if cls in NON_CLASS_KEYS:
                continue
            per_class.setdefault(cls, {})[seed] = stats_dict.get("support", 0)
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
            "significant": bool(lo > 0 or hi < 0),
            "n_hand_seeds": len(h), "n_other_seeds": len(o),
        }
    return result


def paired_per_class_lift(hand_by_seed: dict, other_by_seed: dict, seeds: list[int],
                           correction: str = "none", min_support: int = 2,
                           hand_support_by_seed: dict | None = None,
                           other_support_by_seed: dict | None = None) -> dict:
    """Paired-by-seed alternative to per_class_lift(): for each class, pairs
    hand/other recall values by the ACTUAL seed that produced them (not by
    list position), computes the per-seed diff = other - hand, then a
    one-sample paired t-CI on those diffs. This is tighter and more
    defensible than the unpaired Welch CI in per_class_lift() when hand and
    other share the same seeds (they do: both are trained from the same
    seed, only the node-feature mode differs).

    If a class is missing from some seed in one mode but not the other, that
    seed is dropped for that class (noted via `dropped_seeds`) rather than
    silently misaligning values.

    correction: "none" (95% CI, alpha=0.05) or "bonferroni" (CI width widened
    to (1 - 0.05/n_tested) confidence, where n_tested is the number of
    classes actually evaluated here — i.e. excluding classes dropped for
    insufficient paired seed coverage, AND excluding classes whose test-set
    support is below `min_support` (default 2) in every paired seed, e.g.
    SPECTRE_RSB at support=1 — a single true example gives a binary 0/1
    recall per seed that isn't a meaningful statistical test and shouldn't
    inflate n (and thus needlessly tighten the CI for classes that ARE
    testable). Low-support classes are still reported (flagged
    `low_support=True`, `excluded_from_bonferroni_denominator=True`) using
    the group's corrected alpha, for transparency, but don't count toward n.
    """
    classes = sorted(set(hand_by_seed) & set(other_by_seed))
    diffs_by_class = {}
    dropped_by_class = {}
    low_support_by_class = {}
    for cls in classes:
        h_seeds = hand_by_seed[cls]
        o_seeds = other_by_seed[cls]
        common = [s for s in seeds if s in h_seeds and s in o_seeds]
        dropped = [s for s in seeds if (s in h_seeds) != (s in o_seeds)]
        if len(common) < 2:
            continue
        diffs_by_class[cls] = np.asarray([o_seeds[s] - h_seeds[s] for s in common], float)
        dropped_by_class[cls] = dropped

        supports = []
        if hand_support_by_seed is not None:
            supports += [hand_support_by_seed.get(cls, {}).get(s, 0) for s in common]
        if other_support_by_seed is not None:
            supports += [other_support_by_seed.get(cls, {}).get(s, 0) for s in common]
        low_support_by_class[cls] = bool(supports) and max(supports) < min_support

    # n_tested (Bonferroni denominator) excludes low-support/untestable classes
    n_tested = sum(1 for cls in diffs_by_class if not low_support_by_class.get(cls, False))
    if correction == "bonferroni" and n_tested > 0:
        alpha = 0.05 / n_tested
    else:
        alpha = 0.05

    result = {}
    for cls, diffs in diffs_by_class.items():
        n = len(diffs)
        mean_diff = diffs.mean()
        sd = diffs.std(ddof=1)
        se = sd / np.sqrt(n)
        half = se * stats.t.ppf(1 - alpha / 2, n - 1) if se > 0 else 0.0
        lo, hi = mean_diff - half, mean_diff + half
        # also compute the uncorrected (alpha=0.05) verdict for side-by-side reporting
        half_uncorr = se * stats.t.ppf(0.975, n - 1) if se > 0 else 0.0
        lo_u, hi_u = mean_diff - half_uncorr, mean_diff + half_uncorr
        result[cls] = {
            "mean_diff": mean_diff,
            "std_diff": sd,
            "n_paired_seeds": n,
            "paired_seeds": [s for s in seeds if s in hand_by_seed.get(cls, {}) and s in other_by_seed.get(cls, {})],
            "dropped_seeds": dropped_by_class[cls],
            "low_support": low_support_by_class.get(cls, False),
            "excluded_from_bonferroni_denominator": low_support_by_class.get(cls, False),
            "ci95_uncorrected": [lo_u, hi_u],
            "significant_uncorrected": bool(lo_u > 0 or hi_u < 0),
            "correction": correction,
            "alpha_used": alpha,
            "n_classes_tested": n_tested,
            "ci_corrected": [lo, hi],
            "significant_corrected": bool(lo > 0 or hi < 0),
        }
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", type=Path, default=Path("eval/full_tost"))
    ap.add_argument("--other-mode", choices=["learned", "both"], default="both")
    ap.add_argument("--seeds", type=int, nargs="+", default=DEFAULT_SEEDS)
    ap.add_argument("--paired", action="store_true",
                     help="use the paired-by-seed t-CI instead of the unpaired Welch CI")
    ap.add_argument("--correction", choices=["none", "bonferroni"], default="none",
                     help="multiple-comparisons correction (only affects --paired output)")
    ap.add_argument("--out", type=Path, default=None,
                     help="optional path to write the full result dict as JSON")
    args = ap.parse_args()

    if args.paired:
        hand_bs = load_recalls_by_seed(args.results_dir, "hand", args.seeds)
        other_bs = load_recalls_by_seed(args.results_dir, args.other_mode, args.seeds)
        hand_sup = load_support_by_seed(args.results_dir, "hand", args.seeds)
        other_sup = load_support_by_seed(args.results_dir, args.other_mode, args.seeds)
        result = paired_per_class_lift(hand_bs, other_bs, args.seeds, correction=args.correction,
                                        hand_support_by_seed=hand_sup, other_support_by_seed=other_sup)

        print(f"PAIRED per-class recall lift: {args.other_mode} vs hand "
              f"({args.results_dir}, seeds={args.seeds}, correction={args.correction}, "
              f"n_classes_tested={next(iter(result.values()))['n_classes_tested'] if result else 0})\n")
        header = (f"{'class':30s} {'diff':>8s} {'n':>3s} {'95% CI (uncorr)':>20s} {'sig':>4s}  "
                  f"{'CI (corrected)':>20s} {'sig(corr)':>10s}")
        print(header)
        for cls, r in sorted(result.items(), key=lambda kv: -abs(kv[1]["mean_diff"])):
            sig_u = "YES" if r["significant_uncorrected"] else "no"
            sig_c = "YES" if r["significant_corrected"] else "no"
            lowsup = " [low-support, excluded from n]" if r["low_support"] else ""
            print(f"{cls:30s} {r['mean_diff']:+8.3f} {r['n_paired_seeds']:>3d} "
                  f"[{r['ci95_uncorrected'][0]:+.3f},{r['ci95_uncorrected'][1]:+.3f}] {sig_u:>4s}  "
                  f"[{r['ci_corrected'][0]:+.3f},{r['ci_corrected'][1]:+.3f}] {sig_c:>10s}{lowsup}")
            if r["dropped_seeds"]:
                print(f"    (dropped unpaired seeds for {cls}: {r['dropped_seeds']})")

        if args.out:
            payload = {
                "meta": {
                    "results_dir": str(args.results_dir),
                    "other_mode": args.other_mode,
                    "seeds": args.seeds,
                    "method": "paired_t_ci",
                    "correction": args.correction,
                    "generated_by": "eval/per_class_lift.py --paired",
                },
                "classes": result,
            }
            args.out.write_text(json.dumps(payload, indent=2))
            print(f"\nwritten -> {args.out}")
        return

    hand = load_recalls(args.results_dir, "hand", args.seeds)
    other = load_recalls(args.results_dir, args.other_mode, args.seeds)
    result = per_class_lift(hand, other)

    print(f"per-class recall lift: {args.other_mode} vs hand "
          f"({args.results_dir}, seeds={args.seeds})\n")
    print(f"{'class':30s} {'hand':>8s} {args.other_mode:>8s} {'diff':>8s} {'95% CI':>18s} {'sig?':>5s}")
    for cls, r in sorted(result.items(), key=lambda kv: -abs(kv[1]["mean_diff"])):
        sig = "YES" if r["significant"] else "no"
        print(f"{cls:30s} {r['hand_mean']:8.3f} {r['other_mean']:8.3f} "
              f"{r['mean_diff']:+8.3f} [{r['ci95'][0]:+.3f},{r['ci95'][1]:+.3f}] {sig:>5s}")

    if args.out:
        payload = {
            "meta": {
                "results_dir": str(args.results_dir),
                "other_mode": args.other_mode,
                "seeds": args.seeds,
                "generated_by": "eval/per_class_lift.py",
            },
            "classes": result,
        }
        args.out.write_text(json.dumps(payload, indent=2))
        print(f"\nwritten -> {args.out}")


if __name__ == "__main__":
    main()
