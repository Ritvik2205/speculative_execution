#!/usr/bin/env python3
"""validate_kasper_taint.py — by-construction check for the KASPER flags
(F1 is_control_gated_source, F2 is_stale_forward_source, F3 is_varlat_sink).

The discipline (same as spec/validate_dataflow_taint.py): a new taint flag is
only trustworthy if its signal CONCENTRATES on the attack classes and stays ~0
on BENIGN. These three anchor on is_secret_source, so they can only refine that
set; this quantifies where they land on the real corpus.

Run:  python3 spec/validate_kasper_taint.py
"""
from __future__ import annotations
import json, sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
from isa_spec import load_engine                   # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder   # noqa: E402
from pdg_builder import KASPER_FLAGS                # noqa: E402

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json", "arm32": "arm64.json"}
KF = {name: i for name, i in KASPER_FLAGS.items()}


def main():
    builders = {a: SpecBackedPDGBuilder(load_engine(f), speculative_window=20)
                for a, f in ENGINES.items()}
    rows = [json.loads(l) for l in open(TRAIN) if l.strip()]
    total = Counter()
    recs_with = {k: Counter() for k in KF}   # records with >=1 firing node
    nodes_with = {k: Counter() for k in KF}  # total firing nodes
    for r in rows:
        b = builders.get(r.get("arch"))
        if b is None:
            continue
        total[r["label"]] += 1
        pdg = b.build(r["sequence"])          # runs apply_kasper_taint internally
        if len(pdg.nodes) < 2:
            continue
        for k, idx in KF.items():
            c = sum(1 for n in pdg.nodes if n.kasper_flags[idx] > 0)
            if c:
                recs_with[k][r["label"]] += 1
                nodes_with[k][r["label"]] += c

    print(f"records processed: {len(rows)}\n")
    for k in KF:
        print(f"=== {k} ===")
        print(f"{'class':28s} {'total':>7s} {'recs firing':>12s} {'nodes':>7s} {'rec %':>7s}")
        tot_benign = tot_attack = 0
        for cls in sorted(total):
            rc = recs_with[k][cls]
            pct = 100.0 * rc / total[cls] if total[cls] else 0.0
            print(f"{cls:28s} {total[cls]:>7d} {rc:>12d} {nodes_with[k][cls]:>7d} {pct:>6.1f}%")
            if cls == "BENIGN":
                tot_benign += rc
            else:
                tot_attack += rc
        print(f"  -> attack-class records firing: {tot_attack}  BENIGN records firing: {tot_benign}\n")


if __name__ == "__main__":
    main()
