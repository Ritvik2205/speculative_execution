#!/usr/bin/env python3
"""Split leaks found on the attacker-indexed V1 victim by where the
speculation comes from.

The indexed victim rules out pointer chases the architectural run already
exposes, but a body can still bring its own conditional branch and leak
behind THAT misprediction, with pointers the attacker never chose. The
control victim (`gate_source(..., victim="unindexed")`: same frame, designated
register in bounds, no outer bounds check) isolates those:

  indexed     leak on "indexed", safe on "unindexed"  -- needs the attacker's
              out-of-bounds pointer
  selfgated   leak on both -- the body's own branch guards a load -> address
              chain (still a real Spectector SNI violation, not attacker-indexed)
  undecided   control not adjudicated

A body carrying both kinds is counted selfgated (conservative for "indexed").

Inputs (any mix): control-table rows (`cond`, `body`, `verdict`), loop samples
(`round`, `realized_asm`, `verdict`), given as LABEL=path.
"""
import argparse
import json
import sys
from collections import defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from typing import Callable, List, Optional

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

KINDS = ("indexed", "selfgated", "undecided")


def leak_kind(indexed_verdict: str, control_verdict: Optional[str]) -> Optional[str]:
    if indexed_verdict != "leak":
        return None
    return {"safe": "indexed", "leak": "selfgated"}.get(control_verdict, "undecided")


def split_rows(rows: List[dict], control: Callable[[List[str]], str],
               workers: int = 8) -> List[dict]:
    """Rows with `kind` (and `control`) added on every leak."""
    def go(r):
        if r["verdict"] != "leak":
            return r
        c = control(r["body"])
        return dict(r, control=c, kind=leak_kind("leak", c))
    with ThreadPoolExecutor(workers) as ex:
        return list(ex.map(go, rows))


def summarise(rows: List[dict]) -> dict:
    t = defaultdict(lambda: dict(n=0, leak=0, **{k: 0 for k in KINDS}))
    for r in rows:
        s = t[r["cond"]]
        s["n"] += 1
        if r["verdict"] == "leak":
            s["leak"] += 1
            s[r["kind"]] += 1
    return dict(t)


def load(label: str, path: str) -> List[dict]:
    """Normalise either input format to rows of cond / body / verdict."""
    from eval_gate_controls import fold_candidates
    raw = [json.loads(l) for l in open(path)]
    if raw and "cond" in raw[0]:
        return [dict(r, cond=f"{label}:{r['cond']}") for r in fold_candidates(raw)]
    return [{"cond": f"{label}:r{r['round']}", "body": r.get("realized_asm") or [],
             "verdict": r["verdict"], "gadget_id": r.get("gadget_id")} for r in raw]


def table(summary: dict) -> str:
    from eval_gate_controls import wilson
    out = ["| condition | n | leak | attacker-indexed | self-gated | undecided | "
           "indexed / n [95% CI] | self-gated / n | indexed share of leaks |",
           "|---|---|---|---|---|---|---|---|---|"]
    for c in sorted(summary):
        s = summary[c]
        a, b = wilson(s["indexed"], s["n"])
        out.append(f"| {c} | {s['n']} | {s['leak']} | {s['indexed']} | {s['selfgated']} | "
                   f"{s['undecided']} | {s['indexed']/s['n']:.2f} [{a:.2f}, {b:.2f}] | "
                   f"{s['selfgated']/s['n']:.2f} | "
                   + (f"{s['indexed']/s['leak']:.2f}" if s["leak"] else "—") + " |")
    return "\n".join(out)


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("inputs", nargs="+", help="LABEL=path.jsonl")
    ap.add_argument("--out", required=True)
    ap.add_argument("--md", required=True)
    ap.add_argument("--workers", type=int, default=8)
    args = ap.parse_args(argv)
    import minimality_gate as mg
    rows = []
    for spec in args.inputs:
        label, path = spec.split("=", 1)
        rows += load(label, path)
    rows = split_rows(rows, lambda b: mg.gate_verdict(b, "SPECTRE_V1", tag="sp",
                                                      victim="unindexed"), args.workers)
    with open(args.out, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")
    md = ("# Indexed-victim leaks split by speculation source\n\n"
          "attacker-indexed = leak on the indexed victim and safe on the control "
          "(register in bounds, no outer bounds check); self-gated = leaks on both.\n\n"
          + table(summarise(rows)) + "\n")
    Path(args.md).write_text(md)
    print(md)
    return 0


if __name__ == "__main__":
    sys.exit(main())
