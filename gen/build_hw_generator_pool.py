#!/usr/bin/env python3
"""build_hw_generator_pool.py — assemble the hardware-confirmed Revizor
violations into one extra-train pool for the gadget generator.

Why. The generator's per-(class, arch) training cells are thin or empty for
several real classes (e.g. L1TF and MDS have zero arm64 examples, SPECTRE_V1
has two), and what it does have is compiled/synthetic. The i5-8300H campaigns
produced 423 unique, HARDWARE-CONFIRMED leaking programs across four classes
(SPECTRE_V1 130, SPECTRE_V4 55, MDS 83, L1TF 155), already converted to the
pipeline's AT&T `sequence` format in eval/data/revizor_<class>_real.jsonl.
Those are the most reliable class examples in the project -- a real CPU showed
each one leaks -- and they are currently used only for the detector's
real-transfer eval, not as generator training signal.

This script merges them into a single {label, arch, sequence} JSONL the
generator's --extra-train accepts, deduplicating by sequence content and
dropping the few that are too short to condition on. It does NOT retrain;
gen/train_hw_generator.sh does that (mirrors gen/train_riscv_generator.sh).

Honesty notes carried into the output's provenance:
  - These are x86_64 only (the i5 is x86), so they enrich the x86 cells, not
    arm64/riscv64. Filling the empty arm64 cells needs cross-compiled PoCs or
    an arm64 oracle, not this.
  - They are Revizor-generated programs: address-masked, instrumentation-laden,
    single- or few-basic-block. Training the generator on them biases it toward
    that shape for these classes. That is the point (real leaking structure),
    but it is a distribution, not "natural" victim code.

Run:
    python3 gen/build_hw_generator_pool.py            -> gen/data/hw_generator_pool.jsonl
"""
from __future__ import annotations

import argparse
import collections
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CLASSES = ["spectre_v1", "spectre_v4", "mds", "l1tf"]
MIN_INSTRS = 4   # fewer than this cannot carry a class signature to condition on


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--classes", nargs="+", default=CLASSES)
    ap.add_argument("--out", type=Path, default=ROOT / "gen" / "data" / "hw_generator_pool.jsonl")
    a = ap.parse_args(argv)

    seen: set = set()
    out_rows: list[dict] = []
    stats = collections.Counter()
    dropped_short = dup = 0
    for c in a.classes:
        p = ROOT / "eval" / "data" / f"revizor_{c}_real.jsonl"
        if not p.is_file():
            print(f"  WARN: missing {p}")
            continue
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            seq = r.get("sequence") or []
            if len([x for x in seq if x.strip()]) < MIN_INSTRS:
                dropped_short += 1
                continue
            key = tuple(seq)
            if key in seen:
                dup += 1
                continue
            seen.add(key)
            out_rows.append({
                "label": r["label"],
                "arch": r.get("arch", "x86_64"),
                "sequence": seq,
                "group": r.get("group"),
                "source": "revizor_hw_i5_8300h",   # provenance travels with it
            })
            stats[(r["label"], r.get("arch", "x86_64"))] += 1

    a.out.parent.mkdir(parents=True, exist_ok=True)
    with open(a.out, "w") as f:
        for r in out_rows:
            f.write(json.dumps(r) + "\n")

    print(f"{len(out_rows)} hardware-confirmed gadgets -> {a.out}  "
          f"({dup} dup dropped, {dropped_short} too short)")
    for (lab, arch), n in sorted(stats.items()):
        print(f"  {lab:12s} {arch:8s} {n}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
