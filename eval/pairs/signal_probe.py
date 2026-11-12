#!/usr/bin/env python3
"""Signal-awareness: what does a model need to see to keep calling a program leaking?

After Suneja et al., "Probing Model Signal-Awareness via Prediction-Preserving Input
Minimization" (FSE 2021): delete instructions for as long as the model's call stays "leak"
(delta debugging to 1-minimality), then ask whether what is left can still contain a leak.

We have no oracle for most programs the models call leaking, so the question asked of the
reduced program is a necessary condition only: a transient leak needs a read of the secret
and a second memory access that depends on it, so a reduced program with fewer than two
memory-touching instructions cannot leak. The share of such programs is a LOWER bound on how
often the model's call does not rest on the leak.

    python3 -m eval.pairs.signal_probe                 # opcode-count model, laptop
    (graph model: eval/pairs/signal_gine.py on the cluster)
"""
from __future__ import annotations

import argparse
import json
import re
import statistics as st
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
for _p in (ROOT, ROOT / "gen"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

_STACK = ("push", "pop", "call", "ret", "enter", "leave")
_MEM = re.compile(r"\(|\[")           # AT&T `(...)`, Intel / arm64 `[...]`


def touches_memory(line: str) -> bool:
    t = line.strip().lower().split(None, 1)
    if not t:
        return False
    if t[0].startswith("lea") or t[0].startswith("nop"):      # computes or ignores an address
        return False
    if t[0].startswith(_STACK):
        return True
    return len(t) > 1 and bool(_MEM.search(t[1]))


def leak_capable(seq) -> bool:
    """Necessary condition for a transient leak: at least two memory-touching instructions."""
    return sum(map(touches_memory, seq)) >= 2


def reduce(seq, score_fn, cutoff: float = 0.5):
    """1-minimal subsequence the model still scores above `cutoff`; None if it never did."""
    from minimize_leaks import ddmin
    seq = list(seq)
    if not score_fn(seq) > cutoff:
        return None
    return ddmin(seq, lambda b: score_fn(b) > cutoff)


def run(seqs, score_fn, cutoff: float = 0.5) -> list[dict]:
    out = []
    for s in seqs:
        r = reduce(s, score_fn, cutoff)
        out.append({"len": len(s), "reduced": r,
                    "cannot_leak": None if r is None else not leak_capable(r)})
    return out


def _mnemonic(line: str) -> str:
    t = line.strip().split()
    return t[0].lower() if t else ""


def summary(rows: list[dict]) -> dict:
    called = [r for r in rows if r["reduced"] is not None]
    n = len(called)
    return {"programs": len(rows), "called_leaking": n,
            "cannot_leak": sum(r["cannot_leak"] for r in called),
            "cannot_leak_share": sum(r["cannot_leak"] for r in called) / n if n else float("nan"),
            "median_len": st.median(r["len"] for r in called) if n else float("nan"),
            "median_reduced_len": st.median(len(r["reduced"]) for r in called) if n else float("nan"),
            "reduced_to_one": sum(len(r["reduced"]) == 1 for r in called),
            "top_reduced": Counter(" ; ".join(_mnemonic(x) for x in r["reduced"])
                                   for r in called).most_common(8)}


def _load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def groups() -> dict[str, list[list[str]]]:
    """Programs to probe: (name -> sequences), each with a known label for the heading."""
    g = {}
    test = _load(ROOT / "v57" / "data" / "v57_leak_test.jsonl")
    g["v57 test, labelled LEAK"] = [r["sequence"] for r in test if r["label"] == "LEAK"]
    g["v57 test, labelled SAFE"] = [r["sequence"] for r in test if r["label"] == "SAFE"]
    hw = _load(ROOT / "eval" / "pairs" / "data" / "pairs_hw.jsonl")
    for side, name in (("leak", "leaking"), ("safe", "mitigated")):
        g[f"hardware programs, {name} on the i5"] = [list(x) for x in {tuple(p[side]) for p in hw}]
    inj = _load(ROOT / "eval" / "pairs" / "data" / "pairs_injected.jsonl")
    g["injected, oracle-confirmed leaking"] = [list(x) for x in {tuple(p["leak"]) for p in inj}]
    return g


def table(name: str, results: dict[str, dict]) -> list[str]:
    md = [f"## {name}", "",
          "| programs | n | called leaking | median length | median reduced length | reduced to one "
          "instruction | reduced program cannot leak |", "|---|---|---|---|---|---|---|"]
    for gname, s in results.items():
        c = s["called_leaking"]
        md.append(f"| {gname} | {s['programs']} | {c} ({c / s['programs']:.2f}) | {s['median_len']} | "
                  f"{s['median_reduced_len']} | {s['reduced_to_one']} | "
                  f"{s['cannot_leak']} ({s['cannot_leak_share']:.2f}) |")
    md.append("")
    for gname, s in results.items():
        if s["called_leaking"]:
            md.append(f"Most common reduced programs, {gname}: " +
                      ", ".join(f"`{k}` × {v}" for k, v in s["top_reduced"]) + ".")
    md.append("")
    return md


HEADER = ["# Signal-awareness of the leak detectors", "",
          "For each program a model calls leaking (score above 0.5), instructions are deleted for as "
          "long as the call stays \"leaking\" (delta debugging to 1-minimality). A reduced program "
          "with fewer than two memory-touching instructions cannot contain a transient leak, so the "
          "last column is a lower bound on how often the call does not rest on the leak. Reduced "
          "programs are shorter than anything in training; read the numbers as a probe of what the "
          "score depends on, not as accuracy.", ""]


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--train", default=str(ROOT / "v57" / "data" / "v57_leak_train.jsonl"))
    ap.add_argument("--limit", type=int, default=200, help="programs per group (seeded sample)")
    ap.add_argument("--out", default=str(ROOT / "eval" / "pairs" / "SIGNAL.md"))
    ap.add_argument("--json", default=str(ROOT / "eval" / "pairs" / "data" / "signal_opcode.json"))
    a = ap.parse_args(argv)
    import random
    from eval.pairs.score import train_gbm
    f = train_gbm(_load(a.train), 0, False)

    def score_fn(seq):
        f.prime([seq])
        return f(seq)
    res = {}
    for name, seqs in groups().items():
        seqs = sorted(seqs)
        random.Random(0).shuffle(seqs)
        res[name] = summary(run(seqs[:a.limit], score_fn))
        print(name, {k: v for k, v in res[name].items() if k != "top_reduced"}, flush=True)
    Path(a.json).write_text(json.dumps({"opcode counts, boosted (v57)": res}, indent=1))
    Path(a.out).write_text("\n".join(HEADER + table("opcode counts, boosted (v57), 1 seed", res)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
