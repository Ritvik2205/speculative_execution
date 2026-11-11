#!/usr/bin/env python3
"""Store-bypass (SPECTRE_V4) gate victim: leak rate of real windows by source.

Each window is tested as the slot stream realises it, on the store-bypass
victim (Spectector-Combined -v 4), with and without the victim's own store.
Without it (`nostore`) the body must carry the whole store -> reload -> use
chain. Sources: x86 training windows labelled SPECTRE_V4 / SPECTRE_V1, and
held-out real benign x86 code (length-matched to the V4 windows).
"""
from __future__ import annotations

import argparse
import hashlib
import json
import random
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    sys.path.insert(0, str(_p))


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--n", type=int, default=100)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--workers", type=int, default=8)
    ap.add_argument("--out", default=str(ROOT / "gen" / "step2_runs" / "v4_gate_sources.jsonl"))
    args = ap.parse_args(argv)
    import minimality_gate as mg
    from gen.decode import gate_source
    from eval_gate_controls import wilson
    from oracle.validators.spectector_validator import SpectectorValidator
    rng = random.Random(args.seed)
    work = ROOT / "oracle" / "build" / "gate_v4_sources"
    (work / "oracle" / "build").mkdir(parents=True, exist_ok=True)
    tr = ROOT / "v54" / "data" / "v54_train.jsonl"
    v4 = mg._x86_windows(tr, "SPECTRE_V4")
    v1 = mg._x86_windows(tr, "SPECTRE_V1")
    ben = mg._x86_windows(ROOT / "eval" / "data" / "realworld_benign_x86_64.jsonl")
    rng.shuffle(v4), rng.shuffle(v1)
    lens = [len(w) for w in v4]
    bw = []
    for _ in range(args.n):
        s = rng.choice(ben)
        L = min(len(s), rng.choice(lens))
        st = rng.randrange(0, len(s) - L + 1)
        bw.append(s[st:st + L])
    jobs = [(name, i, w) for name, ws in (("train_V4", v4[:args.n]), ("train_V1", v1[:args.n]),
                                          ("benign", bw)) for i, w in enumerate(ws)]
    jobs += [("empty", 0, []), ("reference", 0, ["movzbl (%r15), %eax", "movb $1, (%r14,%rax)"])]

    def go(job):
        name, i, w = job
        body = mg._slot_roundtrip(w, seed=i) if w and name not in ("reference",) else list(w)
        out = {"source": name, "idx": i, "n": len(body)}
        for store in (True, False):
            try:
                src = gate_source(body, "SPECTRE_V4", store=store)
            except ValueError:
                out["store" if store else "nostore"] = "dropped"
                continue
            gid = f"v4s_{int(store)}_" + hashlib.sha1(src.encode()).hexdigest()[:14]
            p = work / "oracle" / "build" / f"gen_spec_{gid}.c"
            p.write_text(src)
            out["store" if store else "nostore"] = SpectectorValidator(
                repo_root=str(work), versions="4").validate(
                {"gadget_id": gid, "vuln_class": "SPECTRE_V4",
                 "spectector_source": str(p.relative_to(work)), "adjudicable": "yes"}).verdict
        return out

    with ThreadPoolExecutor(args.workers) as ex:
        rows = list(ex.map(go, jobs))
    Path(args.out).write_text("".join(json.dumps(r) + "\n" for r in rows))
    print("| source | victim store | n | adjudicable | leak | leak/n [95% CI] |\n|---|---|---|---|---|---|")
    for name in ("empty", "reference", "train_V4", "train_V1", "benign"):
        for key in ("store", "nostore"):
            c = Counter(r[key] for r in rows if r["source"] == name)
            n = sum(c.values())
            a, b = wilson(c["leak"], n)
            print(f"| {name} | {'yes' if key == 'store' else 'no'} | {n} | {c['leak'] + c['safe']} | "
                  f"{c['leak']} | {c['leak']/n:.2f} [{a:.2f}, {b:.2f}] |")
    return 0


if __name__ == "__main__":
    sys.exit(main())
