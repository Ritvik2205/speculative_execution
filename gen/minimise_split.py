#!/usr/bin/env python3
"""Minimal leaking cores of the attacker-dependent leaks in a split file
(gen/split_indexed_leaks.py output), per source, on one victim.

This is the labeller's developer-facing output: for a window that leaks, the
smallest sub-sequence that still leaks (1-minimal, Spectector as the test),
checked again on the control so the core itself is attacker-dependent.
"""
import argparse
import json
import random
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))


def pick(rows, kind, per_source, rng):
    """Up to per_source leak rows of `kind` per condition, deterministic."""
    by = defaultdict(list)
    for r in rows:
        if r.get("kind") == kind and r.get("body"):
            by[r["cond"]].append(r)
    out = []
    for cond in sorted(by):
        rs = by[cond]
        rng.shuffle(rs)
        out += [(cond, i, r["body"]) for i, r in enumerate(rs[:per_source])]
    return out


def summarise(rows):
    by = defaultdict(list)
    for r in rows:
        by[r["source"]].append(r)
    lines = ["| source | cores | body median | core median | core min-max | core size 1/2/3/4/5+ | "
             "distinct cores | core safe on control |", "|---|---|---|---|---|---|---|---|"]
    for s in sorted(by):
        rs = by[s]
        cl = sorted(r["core_len"] for r in rs)
        bl = sorted(r["orig_len"] for r in rs)
        hist = Counter(min(c, 5) for c in cl)
        ok = sum(r.get("core_control") == "safe" for r in rs)
        lines.append(f"| {s} | {len(rs)} | {bl[len(bl) // 2]} | {cl[len(cl) // 2]} | {cl[0]}-{cl[-1]} | "
                     + "/".join(str(hist[k]) for k in range(1, 6))
                     + f" | {len({r['canonical'] for r in rs})} | {ok}/{len(rs)} |")
    return "\n".join(lines)


def top_cores(rows, k=15):
    cnt, src, ex = Counter(), defaultdict(Counter), {}
    for r in rows:
        cnt[r["template"]] += 1
        src[r["template"]][r["source"]] += 1
        ex.setdefault(r["template"], r["core"])
    lines = ["| count | sources | example core |", "|---|---|---|"]
    for t, n in cnt.most_common(k):
        lines.append(f"| {n} | {dict(src[t])} | `{'; '.join(ex[t])}` |")
    return "\n".join(lines)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("split")
    ap.add_argument("--victim", default="tainted")
    ap.add_argument("--control-victim", default="tainted_ctl")
    ap.add_argument("--kind", default="indexed")
    ap.add_argument("--per-source", type=int, default=40)
    ap.add_argument("--workers", type=int, default=8)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--out", required=True)
    ap.add_argument("--md", required=True)
    a = ap.parse_args(argv)
    import minimality_gate as mg
    mg.VICTIM = a.victim
    jobs = pick([json.loads(l) for l in open(a.split)], a.kind, a.per_source, random.Random(a.seed))

    def go(job):
        r = mg.minimise_one(job)
        if r:
            r["core_control"] = mg.gate_verdict(r["core"], "SPECTRE_V1", tag="mc",
                                                victim=a.control_victim)
        return r
    with ThreadPoolExecutor(a.workers) as ex:
        rows = [r for r in ex.map(go, jobs) if r]
    Path(a.out).write_text("".join(json.dumps(r) + "\n" for r in rows))
    md = (f"# Minimal cores of attacker-dependent leaks, {a.victim} victim\n\n"
          f"{len(jobs)} leaks picked (≤{a.per_source} per source, kind={a.kind}), "
          f"{len(rows)} reproduced and minimised. 1-minimal ddmin, Spectector as the test; "
          f"each core re-checked on `{a.control_victim}`.\n\n" + summarise(rows)
          + "\n\n## Most frequent core templates\n\n" + top_cores(rows) + "\n")
    Path(a.md).write_text(md)
    print(md)
    return 0


if __name__ == "__main__":
    sys.exit(main())
