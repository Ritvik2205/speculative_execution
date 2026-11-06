#!/usr/bin/env python3
"""Aggregate eval/realworld_score/<tag>_s<seed>/score.json into SUMMARY.md.

One row per tag: model balanced accuracy (mean +/- sd over seeds, then per seed) on the headline
slices; the bars (scored on exactly the same rows) are listed once per row-set. Tags scored with
--overlap-clean have a LARGER headline (the Spectector/SafeSide/FastSpec rows are clean for them),
so their n differs; compare against H0 on the tags that were also scored on the collector's own
headline (`<arm>_h0set`).

    python3 -m eval.realworld_score_summary --root eval/realworld_score --out eval/realworld_score/SUMMARY.md
"""
import argparse
import json
import re
import statistics
import sys
from collections import defaultdict
from pathlib import Path

SLICES = ["all", "family=V1 branch", "family=V4 store-bypass", "family=fault/assist", "family=other",
          "subset=benign", "arch=x86_64", "arch=riscv64"]
BARS = ["always_attack", "fence_count", "opcode_lr", "mechanism_v2", "mechanism_v2_excl"]


def collect(root):
    runs = defaultdict(dict)
    for p in sorted(Path(root).glob("*_s*/score.json")):
        m = re.match(r"(.+)_s(\d+)$", p.parent.name)
        if m:
            runs[m.group(1)][int(m.group(2))] = json.loads(p.read_text())
    return runs


def _f(x):
    return "n/a" if x is None else f"{x:.3f}"


def _cell(js, sl, method):
    c = js["slices"].get("headline", {}).get(sl, {}).get(method)
    return None if c is None else c["bal_acc"]


def render(runs):
    L = ["# Real-world retrain summary", "",
         "Balanced accuracy on the real-world eval set (leak vs safe, per-window any-window rule), headline "
         "rows only. Model rows: mean +/- sd over seeds, then per-seed values in order. A slice with one "
         "class reports that class's recall. `n` = headline rows (leak/safe).", ""]
    if not runs:
        return "\n".join(L + ["(no score.json found)"]) + "\n"
    sets = defaultdict(list)           # headline row count -> tags
    for tag, by_seed in runs.items():
        js = next(iter(by_seed.values()))
        sets[js["counts"]["headline"]].append(tag)
    for n_head, tags in sorted(sets.items()):
        any_js = runs[sorted(tags)[0]][min(runs[sorted(tags)[0]])]
        L += [f"## Headline set n={n_head} (tags: {', '.join(sorted(tags))})", "",
              f"meta: {any_js.get('meta', {}).get('train_overlap', 'collector train_overlap flags')}", "",
              "| arm | seeds | " + " | ".join(SLICES) + " |", "|---|---|" + "---|" * len(SLICES)]
        for tag in sorted(tags):
            seeds = sorted(runs[tag])
            row = []
            for sl in SLICES:
                vals = [_cell(runs[tag][s], sl, "model") for s in seeds]
                ok = [v for v in vals if v is not None]
                if not ok:
                    row.append("n/a")
                    continue
                sd = statistics.stdev(ok) if len(ok) > 1 else 0.0
                row.append(f"{statistics.mean(ok):.3f} +/- {sd:.3f}<br>" + " ".join(_f(v) for v in vals))
            L.append(f"| {tag} | {len(seeds)} | " + " | ".join(row) + " |")
        ref = runs[sorted(tags)[0]][min(runs[sorted(tags)[0]])]
        for b in BARS:
            row = [_f(_cell(ref, sl, b)) for sl in SLICES]
            L.append(f"| bar: {b} | - | " + " | ".join(row) + " |")
        c = ref["slices"]["headline"].get("all", {}).get("always_attack", {})
        L += ["", f"(all-slice n={c.get('n')}, leak={c.get('n_leak')}, safe={c.get('n_safe')}, "
              f"clusters={c.get('n_groups')}; per-slice n, CIs and paired diffs are in each run's score.md)", ""]
    return "\n".join(L) + "\n"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--root", default="eval/realworld_score")
    ap.add_argument("--out", default="eval/realworld_score/SUMMARY.md")
    a = ap.parse_args(argv)
    md = render(collect(a.root))
    Path(a.out).write_text(md)
    print(f"wrote {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
