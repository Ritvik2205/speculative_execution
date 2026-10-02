#!/usr/bin/env python3
"""build_hw_joint.py -- joint real-hardware training pool (`allhw`).

Per-class `<c>_hw` models each see only their own class's real Revizor gadgets
and learn "Revizor-style program -> my class". The joint pool contains the
UNION of every class's train-add (positives + fenced twins) on top of the
synthetic base, so the classes must be told apart.

Output `v54/data/v55h_allhw_train.jsonl` = v55h_train + tail of each
`v55h_<c>hw_train.jsonl` (the records after the base prefix). Reuses the exact
per-class splits, so held-out files are unchanged. Run build_hw_transfer first.
"""
from __future__ import annotations
import argparse, json, sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
DEFAULT_CLASSES = ["mds", "l1tf", "spectre_v1", "spectre_v4"]
BASE = ROOT / "v54" / "data" / "v55h_train.jsonl"
DEFAULT_OUT = ROOT / "v54" / "data" / "v55h_allhw_train.jsonl"


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(l) for l in f if l.strip()]


def _strip_fenced(g):
    return g[:-len("_fenced")] if isinstance(g, str) and g.endswith("_fenced") else g


def build_joint(base, class_files, heldout_files):
    """base: list of records; class_files/heldout_files: {class: list of records}.
    Returns (joint, {class: tail}). Raises ValueError on a bad head or a leak."""
    n = len(base)
    tails = {}
    for c, recs in class_files.items():
        if recs[:n] != base:
            raise ValueError(f"{c}: first {n} records != v55h_train base; run prep_hw_transfer first")
        tails[c] = recs[n:]
    held = set()
    for recs in heldout_files.values():
        held |= {_strip_fenced(r.get("group")) for r in recs}
    for c, tail in tails.items():
        leak = {_strip_fenced(r.get("group")) for r in tail} & held
        if leak:
            raise ValueError(f"{c}: held-out groups leak into joint train-add: {sorted(leak)[:5]}")
    joint = list(base)
    for tail in tails.values():
        joint.extend(tail)
    return joint, tails


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    a = ap.parse_args(argv)
    base = load_jsonl(BASE)
    cf = {c: load_jsonl(ROOT / "v54" / "data" / f"v55h_{c}hw_train.jsonl") for c in a.classes}
    hf = {c: load_jsonl(ROOT / "eval" / "data" / f"revizor_{c}_heldout.jsonl") for c in a.classes}
    joint, tails = build_joint(base, cf, hf)
    a.out.parent.mkdir(parents=True, exist_ok=True)
    with open(a.out, "w") as f:
        for r in joint:
            f.write(json.dumps(r) + "\n")
    print(f"base={len(base)} -> joint={len(joint)} -> {a.out}")
    for c, t in tails.items():
        print(f"  {c}: +{len(t)} {dict(Counter(r.get('label') for r in t))}")


if __name__ == "__main__":
    main(sys.argv[1:])
