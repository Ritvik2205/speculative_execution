#!/usr/bin/env python3
"""aggregate_rl_multiseed.py — turn the multi-seed RL array's per-run sample
sidecars into a powered baseline-vs-pretrained comparison.

gen/rl_multiseed.sbatch runs the oracle-RL loop for {baseline, pretrained} x
{several seeds}, each writing <run-dir>/samples.jsonl. A single RL run's yield
saturates (rejection sampling drives it to ~0.97 by round 1), so the metrics
that actually distinguish the two generators are:
  - round-0 yield  (validated-leak fraction BEFORE any RL, i.e. the generator
    the pretrain produced) — the "faster discovery" signal.
  - global unique-leak count (distinct leaking token-sequences across rounds)
    and top-1 template multiplicity — the "broader discovery / less mode
    collapse" signal.
Reported per arm as mean +/- 95% CI across seeds (so a one-run fluke can't
carry the claim).

Layout expected (default root gen/rl_ms/):
    gen/rl_ms/baseline_s1/samples.jsonl
    gen/rl_ms/baseline_s2/samples.jsonl
    ...
    gen/rl_ms/pretrained_s3/samples.jsonl
The arm is the run-dir name up to the last "_s<seed>".
"""
from __future__ import annotations
import argparse
import collections
import glob
import re
import statistics as st
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
import sys
sys.path.insert(0, str(ROOT / "gen"))
from analyze_rl_diversity import load_samples, _bucket_stats  # noqa: E402

_RUN_RE = re.compile(r"^(?P<arm>.+)_s(?P<seed>\d+)$")


def _ci(xs):
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


def _run_metrics(samples_path: Path) -> dict:
    """Per-run scalars from one samples.jsonl."""
    recs = load_samples(str(samples_path))
    overall = _bucket_stats(recs)
    round0 = _bucket_stats([r for r in recs if r.get("round") == 0])
    # top-1 template multiplicity across ALL samples (mode-collapse tell)
    counts = collections.Counter(
        tuple(r.get("token_sequence") or []) for r in recs)
    top1 = counts.most_common(1)[0][1] if counts else 0
    return {
        "round0_yield": round0.get("yield", float("nan")),
        "overall_yield": overall.get("yield", float("nan")),
        "unique_leak": overall.get("unique_leak", 0),
        "unique_rate": overall.get("unique_rate", float("nan")),
        "top1_mult": top1,
    }


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--root", default=str(ROOT / "gen" / "rl_ms"),
                     help="dir containing <arm>_s<seed>/samples.jsonl run dirs")
    ap.add_argument("--out", default=str(ROOT / "gen" / "rl_multiseed.md"))
    args = ap.parse_args(argv)

    root = Path(args.root)
    by_arm: dict[str, dict[str, list]] = collections.defaultdict(
        lambda: collections.defaultdict(list))
    runs_found = []
    for sp in sorted(glob.glob(str(root / "*" / "samples.jsonl"))):
        run = Path(sp).parent.name
        m = _RUN_RE.match(run)
        if not m:
            print(f"[skip] {run}: not <arm>_s<seed>")
            continue
        arm = m.group("arm")
        runs_found.append(run)
        met = _run_metrics(Path(sp))
        for k, v in met.items():
            by_arm[arm][k].append(v)

    if not by_arm:
        print(f"ERROR: no <arm>_s<seed>/samples.jsonl under {root}")
        return 1

    metrics = [("round0_yield", "round-0 yield"),
               ("overall_yield", "overall yield"),
               ("unique_leak", "unique leaking gadgets"),
               ("unique_rate", "unique-rate"),
               ("top1_mult", "top-1 template multiplicity")]
    arms = sorted(by_arm)  # baseline before pretrained alphabetically

    L = ["# Oracle-RL multi-seed: baseline vs pretrained\n",
         f"Runs: {', '.join(sorted(runs_found))}\n",
         "Mean ± 95% CI across seeds. Yield saturates after round 0, so round-0 "
         "yield and the diversity metrics are the discriminating ones.\n",
         "| metric | " + " | ".join(arms) + " |",
         "|---|" + "|".join(["---"] * len(arms)) + "|"]
    agg = {arm: {k: _ci(by_arm[arm][k]) for k, _ in metrics} for arm in arms}
    for k, label in metrics:
        L.append(f"| {label} | " + " | ".join(_fmt(agg[arm][k]) for arm in arms) + " |")

    # Verdict: compare pretrained vs baseline on round-0 yield + unique-leak,
    # calling a difference only when the 95% CIs do not overlap.
    def _sep(a, b):
        (ma, ha, na), (mb, hb, nb) = a, b
        if ma != ma or mb != mb:
            return None
        return (ma - ha > mb + hb) or (mb - hb > ma + ha)

    L.append("\n## Verdict\n")
    if {"baseline", "pretrained"} <= set(arms):
        for k, label in [("round0_yield", "round-0 yield"),
                          ("overall_yield", "overall yield (raw leak rate)"),
                          ("unique_leak", "unique leaking gadgets"),
                          ("top1_mult", "top-1 multiplicity (lower=less collapse)")]:
            b, p = agg["baseline"][k], agg["pretrained"][k]
            sep = _sep(b, p)
            arrow = ("pretrained > baseline" if p[0] > b[0] else
                     "pretrained < baseline") if b[0] == b[0] else "n/a"
            sig = "CIs SEPARATE (real)" if sep else "CIs overlap (not significant at n)"
            L.append(f"- **{label}**: {arrow} — {sig}")
    else:
        L.append("- need both `baseline_*` and `pretrained_*` runs for a verdict")

    Path(args.out).write_text("\n".join(L) + "\n")
    print(f"wrote {args.out}")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
