#!/usr/bin/env python3
"""aggregate_gine_riscv_holdout.py — combine per-seed outputs of
eval/gine_riscv_holdout_eval.py into one table per training condition.

Input: every eval/cluster_out/<TAG>_s<SEED>/riscv_holdout.json matching
--glob. The condition name is <TAG> (the directory name minus _s<SEED>).

Reported per condition, across seeds: mean ± 95% t-CI (n = seeds) for
macro-F1, benign FP rate, attack detection rate, and per-class recall; plus
the mean of the per-seed cluster-bootstrap CI bounds, because seed spread
alone understates uncertainty when the held-out set is ~27 effective source
families, not 252 independent records (see eval/group_stats.py).

A condition only "beats" another on a metric when the seed-CIs do not
overlap — the same bar the rest of this repo uses (eval/full_tost).

Run: python3 eval/aggregate_gine_riscv_holdout.py [--out eval/gine_riscv_holdout.md]
"""
from __future__ import annotations

import argparse
import glob
import json
import re
from collections import defaultdict
from pathlib import Path

import numpy as np
from scipy import stats

ROOT = Path(__file__).resolve().parent.parent


def tci(v):
    v = np.asarray(v, float)
    if len(v) < 2:
        return float(v.mean()) if len(v) else float("nan"), float("nan")
    return float(v.mean()), float(v.std(ddof=1) / np.sqrt(len(v)) * stats.t.ppf(0.975, len(v) - 1))


def fmt(m, h, pct=True):
    k = 100 if pct else 1
    return f"{k*m:.1f} ± {k*h:.1f}" if h == h else f"{k*m:.1f} (n=1)"


def main(argv=None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--glob", default=str(ROOT / "eval/cluster_out/rv_*_s*/riscv_holdout.json"))
    ap.add_argument("--out", default=str(ROOT / "eval/gine_riscv_holdout.md"))
    args = ap.parse_args(argv)

    by_cond = defaultdict(list)
    for p in sorted(glob.glob(args.glob)):
        cond = re.sub(r"_s\d+$", "", Path(p).parent.name)
        by_cond[cond].append(json.load(open(p)))
    if not by_cond:
        raise SystemExit(f"no results match {args.glob}")

    classes = sorted({c for rs in by_cond.values() for r in rs for c in r["per_class"]})
    first = next(iter(by_cond.values()))[0]
    L = ["# GINE: train x86_64+arm64 -> test held-out riscv64", "",
         f"Held-out set: {first['n']} real-compiled riscv64 records "
         f"({first['n_groups']} source families, effective n ≈ {first['effective_n']:.1f}). "
         f"Always-BENIGN accuracy baseline = {100*first['always_benign_baseline']:.1f}% — "
         f"accuracy is therefore NOT a headline metric here.", "",
         "Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed "
         "cluster-bootstrap interval (source-family resampling).", "",
         "| condition | seeds | macro-F1 | benign FP rate | attack detection | grpCI benign FP | grpCI attack det. |",
         "|---|---|---|---|---|---|---|"]
    for cond, rs in sorted(by_cond.items()):
        mf = tci([r["macro_f1"] for r in rs])
        fp = tci([r["benign_fp_rate"]["value"] for r in rs])
        ad = tci([r["attack_detection_rate"]["value"] for r in rs])
        g = lambda k: (f"[{100*np.nanmean([r[k]['ci_lo'] for r in rs]):.0f}, "
                       f"{100*np.nanmean([r[k]['ci_hi'] for r in rs]):.0f}]")
        L.append(f"| {cond} | {sorted(r['seed'] for r in rs)} | {fmt(*mf)} | {fmt(*fp)} | "
                 f"{fmt(*ad)} | {g('benign_fp_rate')} | {g('attack_detection_rate')} |")

    L += ["", "## Per-class recall (mean ± 95% t-CI across seeds)", "",
          "| condition | " + " | ".join(classes) + " |",
          "|---|" + "---|" * len(classes)]
    for cond, rs in sorted(by_cond.items()):
        cells = []
        for c in classes:
            v = [r["per_class"][c]["recall"]["value"] for r in rs if c in r["per_class"]]
            cells.append(fmt(*tci(v)) if v else "—")
        L.append(f"| {cond} | " + " | ".join(cells) + " |")
    sup = {c: first["per_class"][c]["support"] for c in classes if c in first["per_class"]}
    L += ["", "Support: " + ", ".join(f"{c}={n}" + (" (LOW — not evidence)" if n < 5 else "")
                                    for c, n in sup.items())]

    L += ["", "## Most common false predictions on BENIGN (summed over seeds)", ""]
    for cond, rs in sorted(by_cond.items()):
        fp = defaultdict(int)
        for r in rs:
            for x in r["records"]:
                if x["true"] == "BENIGN" and x["pred"] != "BENIGN":
                    fp[x["pred"]] += 1
        top = sorted(fp.items(), key=lambda kv: -kv[1])[:4]
        L.append(f"- **{cond}**: " + (", ".join(f"{k} {v}" for k, v in top) or "none"))

    Path(args.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))
    print(f"\n-> {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
