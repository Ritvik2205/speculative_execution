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
import argparse, importlib.util, json, random, sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
DEFAULT_CLASSES = ["mds", "l1tf", "spectre_v1", "spectre_v4"]
BASE = ROOT / "v54" / "data" / "v55h_train.jsonl"
DEFAULT_OUT = ROOT / "v54" / "data" / "v55h_allhw_train.jsonl"
DEFAULT_OUT_MISFENCED = ROOT / "v54" / "data" / "v55h_allhw2_train.jsonl"


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(l) for l in f if l.strip()]


def _strip_fenced(g):
    """Strip a trailing `_fenced` OR `_misfenced` group suffix."""
    if isinstance(g, str):
        for suf in ("_misfenced", "_fenced"):
            if g.endswith(suf):
                return g[:-len(suf)]
    return g


def _synth():
    spec = importlib.util.spec_from_file_location(
        "synth_v4_benign_joint", ROOT / "oracle" / "revizor" / "synth_v4_benign.py")
    m = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = m
    spec.loader.exec_module(m)
    return m


def make_misfenced_for_tails(tails, seed=0):
    """{class: [misfenced "mixed" variant of every train-add positive]}.
    Deterministic given `seed` and the tail order. Positive = label == class.upper()."""
    synth = _synth()
    out = {}
    for c, tail in tails.items():
        cls = c.upper()
        rng = random.Random(f"{seed}:{c}")
        mis = []
        for r in tail:
            if r.get("label") != cls:
                continue
            m = synth.make_misplaced_variant(r, cls, "mixed", rng)
            if m is not None:
                mis.append(m)
        out[c] = mis
    return out


def build_joint(base, class_files, heldout_files, with_misfenced=False, seed=0):
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
    if with_misfenced:
        mis = make_misfenced_for_tails(tails, seed)
        for c, ms in mis.items():
            leak = {_strip_fenced(r.get("group")) for r in ms} & held
            if leak:
                raise ValueError(f"{c}: held-out groups leak into misfenced train-add: {sorted(leak)[:5]}")
            joint.extend(ms)
            tails[c] = tails[c] + ms
    return joint, tails


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES)
    ap.add_argument("--out", type=Path, default=None)
    ap.add_argument("--with-misfenced", action="store_true",
                    help="also add a seeded 'mixed'-placement misfenced variant (attack label) "
                         "per train-add positive -> v55h_allhw2_train.jsonl")
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--data-dir", type=Path, default=None,
                    help="override v54/data (class train files) location")
    ap.add_argument("--heldout-dir", type=Path, default=None,
                    help="override eval/data (held-out files) location")
    a = ap.parse_args(argv)
    if a.out is None:
        a.out = DEFAULT_OUT_MISFENCED if a.with_misfenced else DEFAULT_OUT
    ddir = a.data_dir or ROOT / "v54" / "data"
    edir = a.heldout_dir or ROOT / "eval" / "data"
    base = load_jsonl(ddir / "v55h_train.jsonl")
    cf = {c: load_jsonl(ddir / f"v55h_{c}hw_train.jsonl") for c in a.classes}
    hf = {c: load_jsonl(edir / f"revizor_{c}_heldout.jsonl") for c in a.classes}
    joint, tails = build_joint(base, cf, hf, a.with_misfenced, a.seed)
    a.out.parent.mkdir(parents=True, exist_ok=True)
    with open(a.out, "w") as f:
        for r in joint:
            f.write(json.dumps(r) + "\n")
    print(f"base={len(base)} -> joint={len(joint)} -> {a.out}")
    for c, t in tails.items():
        pos = sum(1 for r in t if r.get("label") == c.upper() and not str(r.get("group", "")).endswith("_misfenced"))
        twins = sum(1 for r in t if r.get("label") == "BENIGN" and str(r.get("group", "")).endswith("_fenced")
                    and not str(r.get("group", "")).endswith("_misfenced"))
        mis = sum(1 for r in t if str(r.get("group", "")).endswith("_misfenced"))
        print(f"  {c}: +{len(t)} {dict(Counter(r.get('label') for r in t))} "
              f"positives={pos} twins={twins} misfenced={mis}")


if __name__ == "__main__":
    main(sys.argv[1:])
