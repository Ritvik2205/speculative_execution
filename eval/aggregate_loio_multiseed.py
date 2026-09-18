#!/usr/bin/env python3
"""aggregate_loio_multiseed.py — turn eval/leave_one_isa_out.py's
--metrics-out JSON (one record per split x feature-tier x seed, each holding
per-class recall + benign-FP-rate + macro-F1 + support — see
eval.leave_one_isa_out.per_class_metrics) into a paper-ready, multi-seed
RISC-V-held-out report: per-class attack RECALL and the benign
false-positive rate, each with a 95% CI across seeds, plus an honest
per-class "transfers" / "does NOT transfer" / "underpowered" verdict.

Why this exists: the project's prior "~15 macro-F1" number for the
riscv64-held-out direction was a single aggregate figure from a single seed.
It hides which attack classes actually transfer to riscv64 (some may, most
may not) and carries no notion of statistical power — a class with 3
held-out records is not evidence either way. This script fixes both: it
reports PER CLASS, WITH a seed-count-aware CI, and flags low-support classes
explicitly rather than letting them read as ordinary findings.

CI convention: mirrors gen/aggregate_rl_multiseed.py's `_ci` helper exactly
(mean ± 1.96 * stdev/sqrt(n), the normal approximation, n annotated) — reusing
the one multi-seed CI convention already established in this repo rather than
inventing a second one for this report.

Transfer threshold: a class's recall CI *lower bound* must clear the
chance-level floor for that split — 1/K where K is the number of classes
scored in this split (uniform-random K-way guessing's expected per-class
recall) — to be called "transfers". This is deliberately conservative: it is
the natural "not distinguishable from a random classifier" floor, not a
performance bar. A lower bound at or below it is reported as "does NOT
transfer / underpowered" (the CI cannot rule out chance performance); a class
with held-out support below --low-support (default 5) is flagged
"underpowered, not evidence" outright, regardless of its point estimate — a
group of 3 held-out records is not enough independent evidence to call
either way (see eval/group_stats.py's effective_n reasoning, which this
script does not re-derive but shares the spirit of).

Run (after eval/leave_one_isa_out.py --metrics-out eval/loio_metrics.json):
    python3 eval/aggregate_loio_multiseed.py
    # -> eval/loio_multiseed.md
"""
from __future__ import annotations

import argparse
import collections
import json
import statistics as st
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# ---------------------------------------------------------------------------
# Pure helpers — covered by tests/eval/test_aggregate_loio_multiseed.py, no
# sklearn/torch/filesystem dependency beyond a plain JSON file.
# ---------------------------------------------------------------------------


def _ci(xs):
    """Mean ± 95% CI (normal approximation) across seeds, with the count of
    non-null values used. Mirrors gen/aggregate_rl_multiseed.py's `_ci`
    exactly: None/NaN entries (a class with zero held-out support that seed,
    or an unmeasurable benign-FP rate) are dropped before averaging, never
    treated as zero."""
    xs = [x for x in xs if x is not None and x == x]
    if not xs:
        return (float("nan"), float("nan"), 0)
    m = sum(xs) / len(xs)
    if len(xs) < 2:
        return (m, 0.0, len(xs))
    return (m, 1.96 * st.stdev(xs) / len(xs) ** 0.5, len(xs))


def _fmt(mhn):
    m, h, n = mhn
    return f"{m:.3f}±{h:.3f} (n={n})" if m == m else "n/a"


def load_metrics(path) -> list:
    with open(path) as f:
        return json.load(f)


def filter_held_out(records, held_out: str) -> list:
    """Restrict to the records whose held-out ISA is `held_out` (default
    caller usage: 'riscv64') — a --metrics-out file may contain all five
    leave-one-ISA-out directions; this report is scoped to one."""
    return [r for r in records if r.get("held_out") == held_out]


def collect_recall_by_class(records):
    """-> {tier: {class: [recall_seed0, recall_seed1, ...]}}. None entries
    (zero held-out support for that class in that seed's record) are kept
    and filtered out by `_ci`, not silently dropped here — so a class that
    is unmeasurable in every seed still shows up as "n/a", not simply
    missing from the table."""
    out: dict = collections.defaultdict(lambda: collections.defaultdict(list))
    for r in records:
        tier = r["tier"]
        for cls, val in r.get("recall", {}).items():
            out[tier][cls].append(val)
    return out


def collect_benign_fp(records):
    """-> {tier: [benign_fp_rate_seed0, ...]}."""
    out: dict = collections.defaultdict(list)
    for r in records:
        out[r["tier"]].append(r.get("benign_fp_rate"))
    return out


def collect_macro_f1(records):
    """-> {tier: [macro_f1_seed0, ...]}."""
    out: dict = collections.defaultdict(list)
    for r in records:
        out[r["tier"]].append(r.get("macro_f1"))
    return out


def collect_support(records):
    """-> {tier: {class: support_int}}. Held-out support is a property of
    the test set, not the model seed, so it should be identical across
    seeds for a given (split, tier); this takes the first value seen per
    (tier, class) rather than averaging."""
    out: dict = {}
    for r in records:
        tier = r["tier"]
        out.setdefault(tier, {})
        for cls, n in r.get("support", {}).items():
            out[tier].setdefault(cls, n)
    return out


def chance_threshold(n_classes: int) -> float:
    """1/K — the expected per-class recall of a uniform-random K-way
    guesser. The natural, split-specific floor a class's recall CI lower
    bound must clear to be called 'transfers' (see module docstring)."""
    return 1.0 / n_classes if n_classes > 0 else float("nan")


def verdict_for_class(ci, support, threshold: float, low_support_n: int = 5) -> str:
    """One-line honest verdict for a single (class, tier) recall CI.

    Order of checks matters: low support overrides everything else — a
    tight-looking CI built from too few held-out records is not evidence,
    regardless of where its bounds sit relative to the chance threshold.
    """
    if support is not None and support < low_support_n:
        return "underpowered, not evidence"
    m, h, n = ci
    if m != m:  # NaN mean: no data at all
        return "no data"
    lo = m - h
    if threshold == threshold and lo > threshold:
        return "transfers"
    return "does NOT transfer / underpowered"


def best_tier_for_class(recall_ci, cls: str, tiers) -> str | None:
    """Pick the feature tier with the highest mean recall for `cls`, to
    drive ONE headline verdict line per class (the per-tier numbers are
    still shown in the table above it)."""
    best_t, best_m = None, float("-inf")
    for t in tiers:
        m, _, _ = recall_ci.get(t, {}).get(cls, (float("nan"), float("nan"), 0))
        if m == m and m > best_m:
            best_t, best_m = t, m
    return best_t


# ---------------------------------------------------------------------------
# Report
# ---------------------------------------------------------------------------


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--metrics-in", default=str(ROOT / "eval" / "loio_metrics.json"),
                    help="--metrics-out JSON from eval/leave_one_isa_out.py")
    ap.add_argument("--held-out", default="riscv64",
                    help="which held-out ISA's records to report on (default: riscv64)")
    ap.add_argument("--low-support", type=int, default=5,
                    help="held-out support below this is flagged 'underpowered, "
                         "not evidence' (default 5)")
    ap.add_argument("--out", default=str(ROOT / "eval" / "loio_multiseed.md"))
    args = ap.parse_args(argv)

    metrics_path = Path(args.metrics_in)
    if not metrics_path.exists():
        print(f"ERROR: {metrics_path} does not exist — run "
              f"eval/leave_one_isa_out.py --metrics-out {metrics_path} first")
        return 1

    all_records = load_metrics(metrics_path)
    records = filter_held_out(all_records, args.held_out)
    if not records:
        print(f"ERROR: no records with held_out=={args.held_out!r} in {metrics_path} "
              f"({len(all_records)} total records, held_out values present: "
              f"{sorted({r.get('held_out') for r in all_records})})")
        return 1

    tiers = sorted({r["tier"] for r in records})
    seeds = sorted({r["seed"] for r in records})

    recall_by_class = collect_recall_by_class(records)
    benign_fp = collect_benign_fp(records)
    macro_f1 = collect_macro_f1(records)
    support = collect_support(records)

    classes = sorted({c for t in recall_by_class.values() for c in t})
    recall_ci = {t: {c: _ci(recall_by_class[t].get(c, [])) for c in classes} for t in tiers}
    benign_fp_ci = {t: _ci(benign_fp.get(t, [])) for t in tiers}
    macro_f1_ci = {t: _ci(macro_f1.get(t, [])) for t in tiers}

    n_classes = len(classes)
    threshold = chance_threshold(n_classes)

    L = [
        f"# Leave-one-ISA-out multi-seed: {args.held_out} held out\n",
        f"Source: `{metrics_path}`. Splits: "
        f"{sorted({r['split'] for r in records})}. Seeds: {seeds}. "
        f"Feature tiers: {tiers}.\n",
        "Mean ± 95% CI (normal approximation, mirrors "
        "gen/aggregate_rl_multiseed.py's `_ci`) across seeds, per feature tier. "
        "Support is the held-out record count for that class (constant across "
        "seeds).\n",
        f"Chance-level per-class recall floor for this {n_classes}-way scored "
        f"split: 1/{n_classes} = {threshold:.3f}. A class's recall CI *lower "
        f"bound* must clear this floor to be called 'transfers' below — this "
        f"is a 'distinguishable from a random classifier' bar, not a "
        f"performance target. Classes with held-out support < {args.low_support} "
        f"are flagged 'underpowered, not evidence' regardless of the point "
        f"estimate.\n",
        "| class | " + " | ".join(tiers) + " | support (held-out) |",
        "|---|" + "|".join(["---"] * len(tiers)) + "|---|",
    ]
    for c in classes:
        row = [c] + [_fmt(recall_ci[t][c]) for t in tiers]
        sup = next((support.get(t, {}).get(c) for t in tiers
                    if support.get(t, {}).get(c) is not None), None)
        row.append(str(sup) if sup is not None else "n/a")
        L.append("| " + " | ".join(row) + " |")
    L.append("| **benign FP rate** | " +
              " | ".join(_fmt(benign_fp_ci[t]) for t in tiers) + " | |")
    L.append("| **macro-F1** | " +
              " | ".join(_fmt(macro_f1_ci[t]) for t in tiers) + " | |")

    L.append("\n## Per-class verdict\n")
    L.append("One line per class, using its best-performing feature tier "
             "(highest mean recall — per-tier numbers are in the table above); "
             "\"transfers\" requires the recall CI's lower bound to clear the "
             f"chance floor ({threshold:.3f}) AND support >= {args.low_support}.\n")
    for c in classes:
        bt = best_tier_for_class(recall_ci, c, tiers)
        if bt is None:
            L.append(f"- **{c}**: no data")
            continue
        ci = recall_ci[bt][c]
        sup = support.get(bt, {}).get(c)
        v = verdict_for_class(ci, sup, threshold, args.low_support)
        L.append(f"- **{c}** (best tier: {bt}): {v} — recall {_fmt(ci)}, "
                 f"support n={sup if sup is not None else 'n/a'}")

    Path(args.out).write_text("\n".join(L) + "\n")
    print(f"wrote {args.out}")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
