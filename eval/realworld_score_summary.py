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
BARS = ["always_attack", "fence_count", "opcode_lr", "mechanism_v2", "mechanism_v2_excl", "length",
        "has_ret", "push_rbp", "has_LC", "has_fs"]


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


def _mode(js):
    """None = H0-comparable (collector flags); else the recorded --overlap-clean description."""
    t = js.get("meta", {}).get("train_overlap")
    return t.split(":")[0] if t else None


def read_status(path):
    """STATUS.tsv written by score_realworld.sbatch: `<run name>\t<rc or no_ckpt>` per line."""
    out = {}
    if path and Path(path).exists():
        for l in Path(path).read_text().splitlines():
            if "\t" in l:
                k, v = l.split("\t", 1)
                out[k.strip()] = v.strip()
    return out


def _why(st):
    if st is None:
        return "no status (never ran?)"
    if st == "no_ckpt":
        return "no_ckpt (checkpoint missing)"
    if st == "2":
        return "rc=2 (reproduce-gate drift: gate failed)"
    return f"rc={st} (scorer failed)"


def render_missing(runs, expected, status):
    """I6: top-of-file block listing every expected run without a score.json, and every non-zero rc."""
    have = {f"{t}_s{s}" for t, by in runs.items() for s in by}
    exp = list(expected or [])
    bad = [n for n in exp if n not in have]
    failed = [n for n in exp if n in have and status.get(n) not in (None, "0")]
    L = ["## Missing / failed runs", ""]
    if not exp:
        L += ["(no expected run list given: cannot tell what is missing; pass --expected)", ""]
    elif not bad and not failed:
        L += [f"All {len(exp)} expected runs present (rc 0).", ""]
    else:
        L += [f"**{len(bad)} of {len(exp)} expected runs MISSING, {len(failed)} FAILED** -- the tables below "
              "do NOT cover the missing ones.", ""]
        L += [f"- MISSING `{n}`: {_why(status.get(n))}" for n in bad]
        L += [f"- FAILED `{n}`: {_why(status.get(n))} (a score.json exists from an older run)" for n in failed]
        L.append("")
    return L


def render(runs, expected=None, status=None):
    L = ["# Real-world retrain summary", ""]
    L += render_missing(runs, expected, status or {})
    L += ["Balanced accuracy on the real-world eval set (leak vs safe, per-window any-window rule), headline "
          "rows only. Model rows: mean +/- sd over seeds, then per-seed values in order. A slice with one "
          "class reports that class's recall. `n` = headline functions (leak/safe), never windows.", ""]
    if not runs:
        return "\n".join(L + ["(no score.json found)"]) + "\n"
    sets = defaultdict(list)           # (headline n, mode) -> tags
    for tag, by_seed in runs.items():
        js = next(iter(by_seed.values()))
        sets[(js["counts"]["headline"], _mode(js))].append(tag)
    for (n_head, mode), tags in sorted(sets.items(), key=lambda kv: (kv[0][0], kv[0][1] or "")):
        title = "H0-comparable (collector train_overlap flags)" if mode is None else f"overlap-clean ({mode})"
        L += [f"## {title}: headline n={n_head} functions (tags: {', '.join(sorted(tags))})", "",
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
        for tag in sorted(tags):          # bars depend on the tag's own pool (opcode_lr) and seed-independent otherwise
            ref = runs[tag][min(runs[tag])]
            for b in BARS:
                row = [_f(_cell(ref, sl, b)) for sl in SLICES]
                L.append(f"| bar: {b} ({tag}) | - | " + " | ".join(row) + " |")
        ref = runs[sorted(tags)[0]][min(runs[sorted(tags)[0]])]
        c = ref["slices"]["headline"].get("all", {}).get("always_attack", {})
        L += ["", f"(all-slice n={c.get('n')} functions, leak={c.get('n_leak')}, safe={c.get('n_safe')}, "
              f"clusters={c.get('n_groups')}; per-slice n, CIs and paired diffs are in each run's score.md)", ""]
    return "\n".join(L) + "\n"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--root", default="eval/realworld_score")
    ap.add_argument("--out", default="eval/realworld_score/SUMMARY.md")
    ap.add_argument("--expected", nargs="*", default=None,
                    help="every <tag>_s<seed> run that should exist (score_realworld.sbatch passes its list)")
    ap.add_argument("--status", default=None,
                    help="per-run rc file (default <root>/STATUS.tsv, written by score_realworld.sbatch)")
    a = ap.parse_args(argv)
    status = read_status(a.status or Path(a.root) / "STATUS.tsv")
    md = render(collect(a.root), expected=a.expected, status=status)
    Path(a.out).write_text(md)
    print(f"wrote {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
