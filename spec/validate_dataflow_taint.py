#!/usr/bin/env python3
"""
validate_dataflow_taint.py — Phase A check for spec/dataflow_taint.py
(SPECDISCOVER_VERIFICATION_GAPS.md G6 follow-up).

apply_dataflow_taint() only ever SETS is_secret_source/is_transmitter to 1.0
(never clears an existing 1.0 from the regex-based rule) — so by
construction it's a strict superset of the old single-instruction rule; a
"disagreement" in the old->new direction is structurally impossible. What
actually needs checking on real x86/ARM ground truth:

  1. Does it fire at a sane rate (not exploding to "everything is secret_source"),
     compared against the existing regex-based baseline?
  2. Does the NEWLY added signal (fires now, didn't fire before) concentrate
     on the classes it should (L1TF, MDS, Spectre-family secret-transmission
     patterns) rather than firing uniformly/randomly across all classes —
     that's the real evidence it's catching genuine multi-instruction secret
     loads, not noise?

Run:  python3 spec/validate_dataflow_taint.py
"""

from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                     # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder     # noqa: E402
from dataflow_taint import apply_dataflow_taint       # noqa: E402
from pdg_builder import SPEC_FLAGS                    # noqa: E402

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json", "arm32": "arm64.json"}


def main():
    builders = {a: SpecBackedPDGBuilder(load_engine(f), speculative_window=20)
                for a, f in ENGINES.items()}

    rows = [json.loads(l) for l in open(TRAIN) if l.strip()]

    before_secret = before_transmit = 0
    after_secret = after_transmit = 0
    new_secret_by_class = Counter()
    new_transmit_by_class = Counter()
    records_with_new_signal = Counter()
    total_by_class = Counter()

    for r in rows:
        arch = r.get("arch", "unknown")
        builder = builders.get(arch)
        if builder is None:
            continue
        total_by_class[r["label"]] += 1
        pdg = builder.build(r["sequence"])
        if len(pdg.nodes) < 2:
            continue

        before_ss = {n.id for n in pdg.nodes if n.spec_flags[IS_SECRET_SOURCE] > 0}
        before_tx = {n.id for n in pdg.nodes if n.spec_flags[IS_TRANSMITTER] > 0}
        before_secret += len(before_ss)
        before_transmit += len(before_tx)

        apply_dataflow_taint(pdg, max_hops=3)

        after_ss = {n.id for n in pdg.nodes if n.spec_flags[IS_SECRET_SOURCE] > 0}
        after_tx = {n.id for n in pdg.nodes if n.spec_flags[IS_TRANSMITTER] > 0}
        after_secret += len(after_ss)
        after_transmit += len(after_tx)

        new_ss = after_ss - before_ss
        new_tx = after_tx - before_tx
        if new_ss:
            new_secret_by_class[r["label"]] += len(new_ss)
        if new_tx:
            new_transmit_by_class[r["label"]] += len(new_tx)
        if new_ss or new_tx:
            records_with_new_signal[r["label"]] += 1

    print(f"records processed: {len(rows)}")
    print(f"\nis_secret_source node-count: before={before_secret}  after={after_secret}  "
          f"(+{after_secret - before_secret})")
    print(f"is_transmitter   node-count: before={before_transmit}  after={after_transmit}  "
          f"(+{after_transmit - before_transmit})")
    print("\n(no old=1/new=0 disagreements are possible by construction — "
          "apply_dataflow_taint only sets flags, never clears them)")

    print(f"\n{'class':28s} {'total recs':>10s} {'recs w/ new signal':>20s} "
          f"{'new secret_src':>15s} {'new transmitter':>16s}")
    for cls in sorted(total_by_class):
        print(f"{cls:28s} {total_by_class[cls]:>10d} {records_with_new_signal[cls]:>20d} "
              f"{new_secret_by_class[cls]:>15d} {new_transmit_by_class[cls]:>16d}")


if __name__ == "__main__":
    main()
