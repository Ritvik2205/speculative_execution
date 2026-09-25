#!/usr/bin/env python3
"""aggregate_v4_family.py — multi-seed table for the matched V4 family test.

Reads v4fam_riscv64.json / v4fam_x86arm.json written by
eval/cluster/riscv_holdout.sbatch (eval/gine_riscv_holdout_eval.py's
"v4_family" block) for every eval/cluster_out/rv_<COND>_s<SEED>/ and reports,
per condition and per (arch/compiler), mean ± 95% t-CI across seeds of:

  vuln->V4     complete store-bypass gadget called SPECTRE_V4 (recall)
  safe->V4     identical code minus the reload of the stored slot
  separation   vuln->V4 minus safe->V4 — what the model knows about store
               bypass itself (0 = it keys on everything BUT the bypass)
  fenced->V4   reported separately; riscv has no architectural speculation
               barrier, so `fence rw,rw` there is an ordering fence only
  vuln->any    called any attack class at all

Held-out structures are strides 11-12 (training family: 9-10). The family's
indirection knob compiles identically either way and dead ops vanish above
-O0, so the structure holdout is effectively the shift constant; the riscv
set therefore measures ISA/compiler transfer of the same gadget, and the
x86/arm set is a near-in-distribution sanity check that V4 was learned.

Run: python3 eval/aggregate_v4_family.py [--out eval/v4_family_holdout.md]
"""
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
        return (float(v.mean()) if len(v) else float("nan")), float("nan")
    return float(v.mean()), float(v.std(ddof=1) / np.sqrt(len(v)) * stats.t.ppf(0.975, len(v) - 1))


def f(m, h):
    return f"{100*m:.0f} ± {100*h:.0f}" if h == h else f"{100*m:.0f}"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=str(ROOT / "eval/cluster_out"))
    ap.add_argument("--out", default=str(ROOT / "eval/v4_family_holdout.md"))
    args = ap.parse_args()
    L = ["# Matched Spectre-V4 family — held-out structures (strides 11-12)", "",
         "Cells: % of records, mean ± 95% t-CI across seeds. separation = vuln->V4 − safe->V4.", ""]
    for test in ("v4fam_riscv64", "v4fam_x86arm"):
        by = defaultdict(list)
        for p in sorted(glob.glob(f"{args.root}/rv_*_s*/{test}.json")):
            cond = re.sub(r"_s\d+$", "", Path(p).parent.name)
            by[cond].append(json.load(open(p))["v4_family"])
        if not by:
            continue
        L += [f"## {test}", "",
              "| condition | slice | seeds | vuln->V4 | safe->V4 | **separation** | fenced->V4 | vuln->any attack |",
              "|---|---|---|---|---|---|---|---|"]
        for cond, runs in sorted(by.items()):
            for key in sorted({k for r in runs for k in r}, key=lambda k: (k != "all", k)):
                rs = [r[key] for r in runs if key in r]
                g = lambda v, m: tci([r[v][m] for r in rs if v in r])
                sep = tci([r.get("v4_separation", np.nan) for r in rs])
                L.append(f"| {cond} | {key} | {len(rs)} | {f(*g('vuln', 'pred_v4'))} | "
                         f"{f(*g('safe', 'pred_v4'))} | **{f(*sep)}** | {f(*g('fenced', 'pred_v4'))} | "
                         f"{f(*g('vuln', 'pred_attack'))} |")
        L.append("")
    Path(args.out).write_text("\n".join(L) + "\n")
    print("\n".join(L))


if __name__ == "__main__":
    main()
