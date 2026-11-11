#!/usr/bin/env python3
"""Build the generator corpus for the attacker-indexed V1 victim.

For every x86 training window: find a live-in address register which, if the
attacker controls it, makes the window leak on the indexed victim (oracle-
confirmed, on the window AS THE SLOT STREAM REALISES IT); rewrite the window so
that register is %r15 (slot token <SSEC>) and stamp `mit`:

    leak     some candidate register leaks        (attacker = that register)
    safe     every tried candidate adjudicated safe (attacker = first candidate,
             so the stream still shows a controlled register that does NOT leak)
    unknown  nothing leaked and something was unrunnable

Windows with no candidate register have %r15 renamed away, so <SSEC> only ever
means "attacker-controlled". Non-x86 records pass through unchanged. The
output is a complete replacement corpus for `train_generator.py --train`.
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from typing import Callable, List

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

from attacker_reg import (ATTACKER_REG, attacker_candidates,  # noqa: E402
                          to_attacker_canonical, without_attacker_reg)

def relabel_window(window: List[str], verdict: Callable[[List[str]], str],
                   max_candidates: int = 6) -> dict:
    """`verdict(canonical_window) -> leak/safe/other` for the window with the
    candidate register already renamed to %r15."""
    cands = attacker_candidates(window, cells=True)[:max_candidates]
    seen, first = [], None
    for reg in cands:
        canon = to_attacker_canonical(window, reg)
        if first is None:
            first = (reg, canon)
        v = verdict(canon)
        seen.append(v)
        if v == "leak":
            return {"sequence": canon, "mit": "leak", "attacker": reg, "verdicts": seen}
    if not cands:
        w = without_attacker_reg(window)
        return {"sequence": w, "mit": "safe", "attacker": None, "verdicts": []}
    mit = "safe" if all(v == "safe" for v in seen) else "unknown"
    return {"sequence": first[1], "mit": mit, "attacker": first[0], "verdicts": seen}


def slot_body(window: List[str], seed: int) -> List[str]:
    """The window as a slot-stream generator realises it (attacker reg kept)."""
    import gen.decode as gd
    import minimality_gate as mg
    r = gd.Realizer(gd.load_spec("x86_64.json"), seed=seed)
    return r.realize_sequence(mg._tokenizer().tokenize_sequence_slots(
        list(window), secret_reg=ATTACKER_REG))


def indexed_verdict(body: List[str], tag: str = "ix") -> str:
    import minimality_gate as mg
    return mg.gate_verdict(body, "SPECTRE_V1", tag=tag, victim="indexed")


def clean(seq):
    return [s.strip() for s in seq if s.strip() and not s.strip().endswith(":")
            and not s.strip().startswith(".")]


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--train", default=str(ROOT / "v54" / "data" / "v54_train.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "gen" / "data" / "indexed_train.jsonl"))
    ap.add_argument("--workers", type=int, default=6)
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--max-candidates", type=int, default=6)
    args = ap.parse_args(argv)
    recs = [json.loads(l) for l in open(args.train)]
    x86 = [(i, r) for i, r in enumerate(recs) if r.get("arch") == "x86_64"][: args.limit]

    def go(ir):
        i, r = ir
        try:
            out = relabel_window(
                clean(r["sequence"]),
                lambda canon: indexed_verdict(slot_body(canon, seed=i)) if canon else "dropped",
                max_candidates=args.max_candidates)
        except Exception as e:                      # keep the record, uninformative
            out = {"sequence": clean(r["sequence"]), "mit": "unknown", "attacker": None,
                   "verdicts": [f"error:{type(e).__name__}"]}
        return i, out

    done = {}
    with ThreadPoolExecutor(args.workers) as ex:
        for n, (i, out) in enumerate(ex.map(go, x86)):
            done[i] = out
            if n % 100 == 99:
                print(f"[indexed] {n+1}/{len(x86)} "
                      f"{dict(Counter(o['mit'] for o in done.values()))}", flush=True)
    outp = Path(args.out)
    outp.parent.mkdir(parents=True, exist_ok=True)
    t = defaultdict(Counter)
    with outp.open("w") as f:
        for i, r in enumerate(recs):
            if i in done:
                r = dict(r, sequence=done[i]["sequence"], mit=done[i]["mit"],
                         attacker=done[i]["attacker"], gate_verdicts=done[i]["verdicts"])
                t[r["label"]][r["mit"]] += 1
            elif args.limit is not None and r.get("arch") == "x86_64":
                continue
            f.write(json.dumps(r) + "\n")
    print("| class | n | leak | safe | unknown | leak / (leak+safe) |\n|---|---|---|---|---|---|")
    for c in sorted(t):
        k = t[c]
        adj = k["leak"] + k["safe"]
        print(f"| {c} | {sum(k.values())} | {k['leak']} | {k['safe']} | {k['unknown']} | "
              + (f"{k['leak']/adj:.2f}" if adj else "—") + " |")
    return 0


if __name__ == "__main__":
    sys.exit(main())
