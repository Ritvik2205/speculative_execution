#!/usr/bin/env python3
"""mds_boost_aggregate.py — aggregate the MDS class-boost sweep.

Reads each run's gine_metrics.json (richer than the log: per-class precision
AND recall) and reports, per boost level across seeds, the numbers that decide
whether upweighting MDS helped WITHOUT collateral: MDS recall/precision, V1
recall/precision, L1TF recall, macro-F1, overall accuracy. A boost is only
worth it if MDS recall rises while V1 precision/recall hold.

Run:  python3 eval/mds_boost_aggregate.py --results-dir eval/mds_boost
"""
from __future__ import annotations
import argparse, json, re, statistics as st
from collections import defaultdict
from pathlib import Path

WATCH = [("MDS", "recall"), ("MDS", "precision"),
         ("SPECTRE_V1", "recall"), ("SPECTRE_V1", "precision"),
         ("L1TF", "recall")]


def mean_std(xs):
    xs = [x for x in xs if x is not None]
    if not xs:
        return (float("nan"), float("nan"))
    return (st.mean(xs), st.pstdev(xs) if len(xs) > 1 else 0.0)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", default="eval/mds_boost")
    a = ap.parse_args()
    d = Path(a.results_dir)

    acc = defaultdict(list)
    macrof1 = defaultdict(list)
    metric = {(c, m): defaultdict(list) for c, m in WATCH}
    boosts = set()
    for mf in sorted(d.glob("viz_b*_s*/gine_metrics.json")):
        m = re.match(r"viz_b(\d+)_s(\d+)", mf.parent.name)
        if not m:
            continue
        btag = m.group(1)                       # "10","20","30"
        b = f"{btag[0]}.{btag[1:]}" if len(btag) > 1 else btag
        boosts.add(b)
        j = json.loads(mf.read_text())
        acc[b].append(j.get("test_accuracy"))
        cr = j.get("classification_report", {})
        ma = cr.get("macro avg", {})
        macrof1[b].append(ma.get("f1-score"))
        for c, met in WATCH:
            metric[(c, met)][b].append(cr.get(c, {}).get(met))

    order = sorted(boosts, key=float)
    lines = ["# MDS class-boost sweep (multi-seed)", "",
             f"- boost levels: {order}  (1.0 = baseline, no extra MDS weight)",
             f"- seeds per level: {len(acc[order[0]]) if order else 0}", "",
             "| metric | " + " | ".join(f"x{b}" for b in order) + " |",
             "|---|" + "---|" * len(order)]

    def row(name, table):
        cells = []
        for b in order:
            mu, sd = mean_std(table[b])
            cells.append(f"{mu:.3f}±{sd:.3f}")
        lines.append(f"| {name} | " + " | ".join(cells) + " |")

    row("test accuracy", acc)
    row("macro F1", macrof1)
    for c, met in WATCH:
        row(f"{c} {met}", metric[(c, met)])

    # verdict vs baseline (x1.0)
    base = order[0]
    lines += ["", "## Verdict vs baseline"]
    if len(order) > 1:
        for b in order[1:]:
            mr0, _ = mean_std(metric[("MDS", "recall")][base])
            mr, _ = mean_std(metric[("MDS", "recall")][b])
            vp0, _ = mean_std(metric[("SPECTRE_V1", "precision")][base])
            vp, _ = mean_std(metric[("SPECTRE_V1", "precision")][b])
            vr0, _ = mean_std(metric[("SPECTRE_V1", "recall")][base])
            vr, _ = mean_std(metric[("SPECTRE_V1", "recall")][b])
            lines.append(
                f"- x{b}: MDS recall {mr-mr0:+.3f}, V1 precision {vp-vp0:+.3f}, "
                f"V1 recall {vr-vr0:+.3f}  -> "
                + ("**net win**" if (mr - mr0) > 0.01 and (vp - vp0) >= -0.01
                   and (vr - vr0) >= -0.01 else "no clean win"))
    lines.append("")
    lines.append("A boost is worth adopting only if MDS recall rises while V1 "
                 "precision and recall hold (within noise). Confirm any candidate "
                 "with more seeds before claiming it.")
    out = d / "mds_boost.md"
    out.write_text("\n".join(lines) + "\n")
    print("\n".join(lines))
    print(f"\n-> {out}")


if __name__ == "__main__":
    main()
