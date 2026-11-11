#!/usr/bin/env python3
"""Oracle-label the x86 generator training windows on the gate-only harness.

The class labels in v54_train say which PoC a window was cut from, not whether
the window itself leaks: a "SPECTRE_V1" record can be timing-harness or setup
code. This script asks the gate-harness oracle about every x86 training window
AS THE SLOT-STREAM GENERATOR SEES IT (tokenise -> realise), and writes a `mit`
label per record that `train_generator.py --leak-cond --mit-labels` consumes:

    leak        the window leaks in the gate victim of its class
    safe        adjudicated, no leak
    unknown     unrunnable / not hostable (kept, uninformative)

SPECTRE_V4 records are judged on the store-bypass victim (Spectector-Combined
-v 4); every other class on the conditional-branch victim (upstream).

Output rows: {"key": sha1(sequence), "label", "mit", "verdict", "n"}; the key
is `record_key(sequence)` so labels attach to records without rewriting the
corpus.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))


def record_key(sequence) -> str:
    return hashlib.sha1("\n".join(sequence).encode()).hexdigest()


def mit_for_verdict(verdict: str) -> str:
    return {"leak": "leak", "safe": "safe"}.get(verdict, "unknown")


def gate_class_for(label: str) -> str:
    return "SPECTRE_V4" if label == "SPECTRE_V4" else "SPECTRE_V1"


def apply_mit_labels(rows, label_rows) -> int:
    """Stamp `mit` on each record whose sequence has an oracle label and no
    `mit` yet (hardware-confirmed labels win). Returns how many were stamped."""
    by_key = {l["key"]: l["mit"] for l in label_rows}
    n = 0
    for r in rows:
        if r.get("mit"):
            continue
        m = by_key.get(record_key(r["sequence"]))
        if m:
            r["mit"] = m
            n += 1
    return n


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--train", default=str(ROOT / "v54" / "data" / "v54_train.jsonl"))
    ap.add_argument("--out", default=str(ROOT / "gen" / "data" / "gate_mit_labels_x86.jsonl"))
    ap.add_argument("--workers", type=int, default=7)
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args(argv)
    import minimality_gate as mg

    recs = [json.loads(l) for l in open(args.train)]
    recs = [r for r in recs if r.get("arch") == "x86_64"][: args.limit]

    def go(ir):
        i, r = ir
        seq = [s.strip() for s in r["sequence"] if s.strip()
               and not s.strip().endswith(":") and not s.strip().startswith(".")]
        body = mg._slot_roundtrip(seq, seed=i)
        v = mg.gate_verdict(body, gate_class_for(r["label"]), tag="lab") if body else "dropped"
        return {"key": record_key(r["sequence"]), "label": r["label"],
                "mit": mit_for_verdict(v), "verdict": v, "n": len(body)}

    with ThreadPoolExecutor(args.workers) as ex:
        rows = list(ex.map(go, enumerate(recs)))
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")
    t = defaultdict(Counter)
    for r in rows:
        t[r["label"]][r["verdict"]] += 1
    print("| class | n | leak | safe | unrunnable | dropped | leak / adjudicable |\n|---|---|---|---|---|---|---|")
    for c in sorted(t):
        k = t[c]
        adj = k["leak"] + k["safe"]
        print(f"| {c} | {sum(k.values())} | {k['leak']} | {k['safe']} | {k['unrunnable']} | "
              f"{k['dropped']} | " + (f"{k['leak']/adj:.2f}" if adj else "—") + " |")
    return 0


if __name__ == "__main__":
    sys.exit(main())
