#!/usr/bin/env python3
"""Score oracle/spec_emulator.py against the Spectector-labelled injected pairs.

Like-for-like, unlike section 2 of spec_emulator_validation.md: the emulator runs the WHOLE
tainted-victim program that Spectector judged (bounds check, attacker index, body), not the
body alone. Symbols are bound to concrete addresses: `sz` reads 0 (so the bounds check fails
architecturally and the body is only reached by misprediction) and `arr` + the seeded
attacker index points into the emulator's secret region.

    for k in 0 1 2; do python3 oracle/validate_spec_emulator_pairs.py --shard $k/3 & done; wait
    python3 oracle/validate_spec_emulator_pairs.py          # report, once every shard is cached
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
import hashlib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54", ROOT / "oracle"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))
PASS, KILL = 0.95, 0.90


def victim_asm(body: list[str], victim: str = "tainted") -> list[str]:
    from gen.decode import gate_source
    src = gate_source(list(body), "SPECTRE_V1", victim=victim)
    lines = [m.group(1).replace("\\t", "\t") for m in re.finditer(r'^"(.*)\\n"', src, re.M)]
    lines = lines[lines.index("gadget:") + 1:]
    return [l.replace("sz(%rip)", "0x8000").replace("leaq arr(%rip), %r14", "movq $0x5000, %r14")
            for l in lines]


def agreement(rows: list[dict]) -> dict:
    """rows: {"kind", "side" (leak|safe), "verdict"}. Agreement per side over runnable rows."""
    out = {}
    for side in ("leak", "safe"):
        rs = [r for r in rows if r["side"] == side]
        run = [r for r in rs if r["verdict"] in ("leak", "safe")]
        out[side] = {"n": len(rs), "runnable": len(run),
                     "agree": sum(r["verdict"] == side for r in run),
                     "rate": sum(r["verdict"] == side for r in run) / len(run) if run else float("nan")}
    return out


def decision(overall: dict, by_kind: dict) -> str:
    rates = [overall["leak"]["rate"], overall["safe"]["rate"]]
    kinds = [v[s]["rate"] for v in by_kind.values() for s in ("leak", "safe") if v[s]["runnable"]]
    if min(rates) >= PASS and min(kinds) >= KILL:
        return "PASS"
    return "KILL" if min(rates) < KILL else "BELOW PASS"


def _key(seq) -> str:
    return hashlib.sha1("\n".join(seq).encode()).hexdigest()


_se = None


def _check(seq):
    global _se
    if _se is None:
        from spec_emulator import SpeculativeEmulator
        _se = SpeculativeEmulator("x86_64", lenient=True)
    try:
        r = _se.check(victim_asm(list(seq)), n_pairs=4)
        return r["verdict"], r.get("reason")
    except Exception as e:                                   # splice refused, assembler error
        return "unrunnable", f"{type(e).__name__}: {e}"[:120]


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--pairs", default=str(ROOT / "eval" / "pairs" / "data" / "pairs_injected.jsonl"))
    ap.add_argument("--limit", type=int)
    ap.add_argument("--shard", default="0/1", help="K/N: compute only programs with index %% N == K")
    ap.add_argument("--cache-dir", default=str(ROOT / "oracle" / "build" / "emu_pairs"))
    ap.add_argument("--out", default=str(ROOT / "oracle" / "SPEC_EMULATOR_VALIDATION.md"))
    a = ap.parse_args(argv)
    pairs = [json.loads(l) for l in open(a.pairs) if l.strip()][:a.limit]
    seqs = sorted({tuple(p[s]) for p in pairs for s in ("leak", "safe")})
    # One process per shard, verdicts appended to a cache file as they come. (A process pool
    # here once left 8 workers spinning for an hour; shards are run as separate commands.)
    cache = {}
    for f in sorted(Path(a.cache_dir).glob("emu_verdicts_*.jsonl")):
        for l in open(f):
            x = json.loads(l)
            cache[x["key"]] = (x["verdict"], x["reason"])
    k, n = (int(v) for v in a.shard.split("/"))
    todo = [q for i, q in enumerate(seqs) if i % n == k and _key(q) not in cache]
    Path(a.cache_dir).mkdir(parents=True, exist_ok=True)
    with open(Path(a.cache_dir) / f"emu_verdicts_{k}of{n}.jsonl", "a") as f:
        for i, q in enumerate(todo):
            v, why = _check(q)
            cache[_key(q)] = (v, why)
            f.write(json.dumps({"key": _key(q), "verdict": v, "reason": why}) + "\n")
            f.flush()
            if i % 25 == 0:
                print(f"shard {a.shard}: {i}/{len(todo)}", flush=True)
    missing = [q for q in seqs if _key(q) not in cache]
    if missing:
        print(f"{len(missing)} programs have no verdict yet (other shards); no report written")
        return 0
    verdict = {q: cache[_key(q)] for q in seqs}
    rows, miss = [], Counter()
    for p in pairs:
        for side in ("leak", "safe"):
            v, why = verdict[tuple(p[side])]
            rows.append({"kind": p["kind"], "side": side, "verdict": v})
            if v != side:
                miss[(side, v, why)] += 1
    overall = agreement(rows)
    by_kind = {k: agreement([r for r in rows if r["kind"] == k]) for k in sorted({r["kind"] for r in rows})}
    d = decision(overall, by_kind)
    cell = lambda x: f"{x['agree']}/{x['runnable']} ({x['rate']:.3f}), {x['n'] - x['runnable']} not runnable"
    md = ["# Speculative emulator against Spectector-labelled injected pairs", "",
          f"{len(pairs)} pairs, {len(seqs)} distinct programs. Emulator: x86_64, lenient memory, window "
          "40, 4 input pairs. Reference: Spectector on the tainted victim (the label of every pair side).",
          f"Rule set before the run: pass at {PASS} on both sides with no pair kind under {KILL}; "
          f"kill under {KILL}.", "", f"**Result: {d}**", "",
          "| pairs | leaking side: emulator says leak | safe side: emulator says safe |", "|---|---|---|",
          f"| all | {cell(overall['leak'])} | {cell(overall['safe'])} |"]
    md += [f"| {k} | {cell(v['leak'])} | {cell(v['safe'])} |" for k, v in by_kind.items()]
    md += ["", "## Disagreements by cause", "", "| label | emulator | emulator's reason | pair sides |", "|---|---|---|---|"]
    md += [f"| {s} | {v} | {why} | {n} |" for (s, v, why), n in miss.most_common()]
    Path(a.out).write_text("\n".join(md) + "\n")
    print("\n".join(md))
    return 0


if __name__ == "__main__":
    sys.exit(main())
