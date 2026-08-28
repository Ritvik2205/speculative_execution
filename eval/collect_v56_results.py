#!/usr/bin/env python3
"""collect_v56_results.py — rebuild a correct results table from the per-run
gine_metrics.json files, and analyse it.

Two jobs:
  1. Recovery/merge. Every finished run writes viz_{mode}_s{seed}/gine_metrics.json,
     so results are recoverable even when the shell driver's extraction was
     wrong (it was — see the header of eval/run_v56_multiseed.sh) and mergeable
     across machines without trusting either machine's TSV. Point --dirs at one
     or more v56_multiseed directories.
  2. Analysis. Per-mode mean +/- 95% CI, plus paired-by-seed comparison against
     a baseline mode on accuracy, macro-F1 and per-class recall — the same
     convention every other claim in this repo uses.

Run:
  python3 eval/collect_v56_results.py                       # local dir
  python3 eval/collect_v56_results.py --dirs eval/v56_multiseed eval/v56_from_linux
"""
from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent
CLASSES = ["SPECTRE_V2", "L1TF", "RETBLEED", "INCEPTION",
           "BRANCH_HISTORY_INJECTION", "MDS", "SPECTRE_V1", "SPECTRE_V4", "BENIGN"]
_VIZ = re.compile(r"^viz_(?P<mode>.+)_s(?P<seed>\d+)$")


def ci95(x):
    x = np.asarray(x, dtype=float)
    m = x.mean()
    if len(x) < 2:
        return m, 0.0
    return m, x.std(ddof=1) / np.sqrt(len(x)) * stats.t.ppf(0.975, len(x) - 1)


def collect(dirs):
    """-> {(mode, seed): {'acc':..,'macro_f1':..,'recall':{cls:..}}}"""
    out = {}
    for d in dirs:
        for viz in sorted(Path(d).glob("viz_*")):
            m = _VIZ.match(viz.name)
            metrics = viz / "gine_metrics.json"
            if not m or not metrics.exists():
                continue
            j = json.loads(metrics.read_text())
            rep = j["classification_report"]
            key = (m["mode"], int(m["seed"]))
            if key in out:
                print(f"  WARNING duplicate {key} (second copy in {d}) — keeping first")
                continue
            out[key] = {
                "acc": j["test_accuracy"] * 100,
                "macro_f1": rep["macro avg"]["f1-score"] * 100,
                "recall": {c: rep.get(c, {}).get("recall", float("nan")) * 100
                           for c in CLASSES},
                "source": str(d),
            }
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dirs", nargs="+", default=[str(ROOT / "eval" / "v56_multiseed")])
    ap.add_argument("--baseline", default="hand")
    # Default derives from the FIRST --dirs entry. A fixed default silently
    # overwrote the pre-fix collected table when re-run against a post-fix dir.
    ap.add_argument("--tsv-out", default=None)
    args = ap.parse_args()

    if args.tsv_out is None:
        args.tsv_out = str(Path(args.dirs[0]) / "results_collected.tsv")
    runs = collect(args.dirs)
    if not runs:
        print("no completed runs found (no viz_*/gine_metrics.json)")
        return

    by_mode = defaultdict(dict)
    for (mode, seed), v in runs.items():
        by_mode[mode][seed] = v

    print(f"collected {len(runs)} completed runs across {len(by_mode)} mode(s)\n")
    with open(args.tsv_out, "w") as f:
        f.write("mode\tseed\ttest_acc\tmacro_f1\t" + "\t".join(CLASSES) + "\n")
        for (mode, seed), v in sorted(runs.items()):
            f.write(f"{mode}\t{seed}\t{v['acc']:.2f}\t{v['macro_f1']:.2f}\t"
                    + "\t".join(f"{v['recall'][c]:.2f}" for c in CLASSES) + "\n")
    print(f"wrote {args.tsv_out}\n")

    print(f"{'mode':20s} {'n':>3s} {'test-acc':>18s} {'macro-F1':>18s}")
    print("-" * 62)
    for mode in sorted(by_mode):
        seeds = by_mode[mode]
        am, ah = ci95([v["acc"] for v in seeds.values()])
        fm, fh = ci95([v["macro_f1"] for v in seeds.values()])
        print(f"{mode:20s} {len(seeds):3d} {am:8.2f}% +/- {ah:4.2f}pp {fm:8.2f}% +/- {fh:4.2f}pp")

    base = args.baseline
    if base not in by_mode:
        print(f"\n(baseline mode '{base}' not present — skipping paired comparison)")
        return
    print(f"\nper-class recall, mean +/- 95%CI")
    hdr = f"{'mode':20s}" + "".join(f"{c[:14]:>16s}" for c in CLASSES[:5])
    print(hdr); print("-" * len(hdr))
    for mode in sorted(by_mode):
        row = f"{mode:20s}"
        for c in CLASSES[:5]:
            m, h = ci95([v["recall"][c] for v in by_mode[mode].values()])
            row += f"{m:6.2f}+/-{h:4.2f}".rjust(16)
        print(row)

    for mode in sorted(by_mode):
        if mode == base:
            continue
        shared = sorted(set(by_mode[mode]) & set(by_mode[base]))
        if len(shared) < 2:
            print(f"\n{mode} vs {base}: only {len(shared)} shared seed(s) — "
                  f"cannot pair (need the same seeds run for both modes)")
            continue
        print(f"\n--- {mode} vs {base}, paired on {len(shared)} shared seeds ---")
        for label, get in (("test-acc", lambda v: v["acc"]),
                           ("macro-F1", lambda v: v["macro_f1"]),
                           *[(f"recall {c}", (lambda c: lambda v: v["recall"][c])(c))
                             for c in CLASSES[:6]]):
            a = np.array([get(by_mode[base][s]) for s in shared], float)
            b = np.array([get(by_mode[mode][s]) for s in shared], float)
            d = b - a
            dm, dh = ci95(d)
            p = stats.ttest_rel(b, a).pvalue if d.std() > 0 else float("nan")
            sig = "significant" if (dm - dh > 0 or dm + dh < 0) else "ns"
            print(f"  {label:28s} {dm:+7.2f}pp  95%CI=[{dm-dh:+.2f},{dm+dh:+.2f}]  p={p:.3f}  {sig}")


if __name__ == "__main__":
    main()
