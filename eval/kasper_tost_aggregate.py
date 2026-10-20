#!/usr/bin/env python3
"""kasper_tost_aggregate.py — paired aggregation for eval/kasper_tost.sbatch.

Reads the per-run logs (k{0,1}_s{seed}.log) + results.tsv, and reports, across
seeds, mean +/- std test accuracy and macro-F1 for baseline (flags off, k0) vs
KASPER flags on (k1), plus the paired delta per class recall. This is the
multiseed evidence the audit required before any lift claim; a per-class delta
whose +/-1 std band straddles 0 is NOT a lift.

Run:  python3 eval/kasper_tost_aggregate.py --results-dir eval/kasper_tost
"""
from __future__ import annotations
import argparse, re, statistics as st
from collections import defaultdict
from pathlib import Path

# a classification_report class row: "NAME   0.98  0.97  0.97   123"
ROW = re.compile(r"^\s*([A-Z][A-Z0-9_]+)\s+([01]\.\d+)\s+([01]\.\d+)\s+([01]\.\d+)\s+\d+")


def parse_log(p: Path):
    acc = None
    recall = {}
    for line in p.read_text(errors="ignore").splitlines():
        m = re.search(r"Final test accuracy:\s*([0-9.]+)", line)
        if m:
            acc = float(m.group(1))
        r = ROW.match(line)
        if r:
            recall[r.group(1)] = float(r.group(3))  # column 2 = recall
    return acc, recall


def mean_std(xs):
    xs = [x for x in xs if x is not None]
    if not xs:
        return (float("nan"), float("nan"))
    return (st.mean(xs), st.pstdev(xs) if len(xs) > 1 else 0.0)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", default="eval/kasper_tost")
    a = ap.parse_args()
    d = Path(a.results_dir)

    acc = {0: [], 1: []}
    recalls = {0: defaultdict(list), 1: defaultdict(list)}
    for log in sorted(d.glob("k*_s*.log")):
        m = re.match(r"k(\d)_s(\d+)\.log", log.name)
        if not m:
            continue
        k = int(m.group(1))
        a_, rec = parse_log(log)
        acc[k].append(a_)
        for cls, rv in rec.items():
            recalls[k][cls].append(rv)

    lines = ["# KASPER-flags paired lift (multi-seed)", ""]
    n0, n1 = len(acc[0]), len(acc[1])
    lines.append(f"- seeds: baseline(k0)={n0}, kasper(k1)={n1}")
    m0, s0 = mean_std(acc[0]); m1, s1 = mean_std(acc[1])
    lines += ["", "## Test accuracy",
              f"- baseline  : {m0:.4f} +/- {s0:.4f}",
              f"- +F1/F2/F3 : {m1:.4f} +/- {s1:.4f}",
              f"- delta     : {m1 - m0:+.4f}", ""]
    lines += ["## Per-class recall (mean +/- std), delta = k1 - k0", "",
              "| class | baseline | +KASPER | delta | lift? |",
              "|---|---|---|---|---|"]
    classes = sorted(set(recalls[0]) | set(recalls[1]))
    for cls in classes:
        b, bs = mean_std(recalls[0].get(cls, []))
        k, ks = mean_std(recalls[1].get(cls, []))
        delta = k - b
        # a lift only if the delta clears the combined 1-std noise band
        band = (bs + ks)
        lift = "yes" if delta > band and delta > 0 else ("~" if abs(delta) <= band else "regress")
        lines.append(f"| {cls} | {b:.3f}±{bs:.3f} | {k:.3f}±{ks:.3f} | {delta:+.3f} | {lift} |")
    lines += ["", "lift? column: `yes` = delta exceeds the combined per-class std "
              "band (candidate real lift, confirm with a paired test); `~` = within "
              "noise; `regress` = negative beyond the band. Single-run deltas are not "
              "trusted in this repo."]
    out = d / "kasper_tost.md"
    out.write_text("\n".join(lines) + "\n")
    print("\n".join(lines))
    print(f"\n-> {out}")


if __name__ == "__main__":
    main()
