#!/usr/bin/env python3
"""aggregate_rl_multiclass.py — Phase 1 of the generation extension plan
(docs/GENERATION_EXTENSION_PLAN.md): per-CLASS verified-leak yield + diversity
for the x86 symbolic-oracle classes, from the gen/rl_multiclass.sbatch array's
per-run sample sidecars.

Unlike the baseline-vs-pretrained aggregator (gen/aggregate_rl_multiseed.py),
this compares CLASSES, and it reports the ADJUDICABLE FRACTION explicitly:
Spectector fully adjudicates SPECTRE_V1 but only PARTIALLY adjudicates
V2/V4/RETBLEED, so a chunk of realized samples come back UNSUPPORTED/UNRUNNABLE
(the oracle could not rule) rather than LEAK/SAFE. Folding those into the yield
denominator silently would understate a class -- so we report, per class:
  - raw yield      = LEAK / all realized samples
  - adjudicable %  = (LEAK + SAFE) / all realized samples   (how often the
                     oracle could rule at all)
  - adjudicated yield = LEAK / (LEAK + SAFE)                 (yield among the
                     samples the oracle actually ruled on)
plus the diversity metrics (unique leaking gadgets, unique-rate, top-1
template multiplicity). Everything mean +/- 95% CI across seeds.

Layout (default root gen/rl_mc/):
    gen/rl_mc/<CLASS>_s<seed>/samples.jsonl
The class is the run-dir name up to the last "_s<seed>".
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
sys.path.insert(0, str(ROOT))
from analyze_rl_diversity import load_samples, _bucket_stats  # noqa: E402
from oracle.validators.base import LEAK, SAFE  # noqa: E402

_RUN_RE = re.compile(r"^(?P<cls>.+)_s(?P<seed>\d+)$")


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


def run_metrics(samples_path: Path) -> dict:
    """Per-run scalars from one class's samples.jsonl."""
    recs = load_samples(str(samples_path))
    overall = _bucket_stats(recs)
    total = len(recs)
    n_leak = sum(1 for r in recs if r.get("verdict") == LEAK)
    n_safe = sum(1 for r in recs if r.get("verdict") == SAFE)
    adjudicable = n_leak + n_safe
    counts = collections.Counter(
        tuple(r.get("token_sequence") or []) for r in recs)
    top1 = counts.most_common(1)[0][1] if counts else 0
    return {
        "raw_yield": (n_leak / total) if total else float("nan"),
        "adjudicable_frac": (adjudicable / total) if total else float("nan"),
        "adjudicated_yield": (n_leak / adjudicable) if adjudicable else float("nan"),
        "unique_leak": overall.get("unique_leak", 0),
        "unique_rate": overall.get("unique_rate", float("nan")),
        "top1_mult": top1,
        "total": total,
    }


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--root", default=str(ROOT / "gen" / "rl_mc"),
                     help="dir containing <CLASS>_s<seed>/samples.jsonl run dirs")
    ap.add_argument("--out", default=str(ROOT / "gen" / "rl_multiclass.md"))
    args = ap.parse_args(argv)

    root = Path(args.root)
    by_cls: dict[str, dict[str, list]] = collections.defaultdict(
        lambda: collections.defaultdict(list))
    runs = []
    for sp in sorted(glob.glob(str(root / "*" / "samples.jsonl"))):
        run = Path(sp).parent.name
        m = _RUN_RE.match(run)
        if not m:
            print(f"[skip] {run}: not <CLASS>_s<seed>")
            continue
        cls = m.group("cls")
        runs.append(run)
        met = run_metrics(Path(sp))
        for k, v in met.items():
            by_cls[cls][k].append(v)

    if not by_cls:
        print(f"ERROR: no <CLASS>_s<seed>/samples.jsonl under {root}")
        return 1

    metrics = [("raw_yield", "raw yield (leak/all)"),
               ("adjudicable_frac", "adjudicable % (oracle could rule)"),
               ("adjudicated_yield", "adjudicated yield (leak/ruled)"),
               ("unique_leak", "unique leaking gadgets"),
               ("unique_rate", "unique-rate"),
               ("top1_mult", "top-1 template multiplicity")]
    classes = sorted(by_cls)

    L = ["# Oracle-RL per-class (x86 symbolic oracle) — Phase 1\n",
         f"Runs: {', '.join(sorted(runs))}\n",
         "Mean ± 95% CI across seeds. `adjudicable %` matters for the PARTIAL "
         "classes (V2/V4/RETBLEED): Spectector cannot rule on every gadget, so "
         "`adjudicated yield` (leak among ruled samples) is the fair per-class "
         "leak rate; `raw yield` counts UNSUPPORTED/UNRUNNABLE against the class.\n",
         "| metric | " + " | ".join(classes) + " |",
         "|---|" + "|".join(["---"] * len(classes)) + "|"]
    agg = {c: {k: _ci(by_cls[c][k]) for k, _ in metrics} for c in classes}
    for k, label in metrics:
        L.append(f"| {label} | " + " | ".join(_fmt(agg[c][k]) for c in classes) + " |")

    L.append("\n## Per-class read\n")
    for c in classes:
        af = agg[c]["adjudicable_frac"][0]
        ay = agg[c]["adjudicated_yield"][0]
        ul = agg[c]["unique_leak"][0]
        note = ("fully adjudicable" if af == af and af >= 0.95 else
                "PARTIALLY adjudicable — report adjudicated yield, not raw"
                if af == af else "n/a")
        L.append(f"- **{c}**: adjudicable {af*100:.0f}% ({note}); "
                 f"adjudicated yield {ay:.2f}; ~{ul:.0f} unique leaking gadgets")

    Path(args.out).write_text("\n".join(L) + "\n")
    print(f"wrote {args.out}")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
