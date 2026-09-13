#!/usr/bin/env python3
"""
validate_dataflow_taint_riscv.py — Phase B (SPECDISCOVER_VERIFICATION_GAPS.md
G6 follow-up): does the refined, shift-gated dataflow_taint actually fire on
real RISC-V L1TF/MDS gadgets, where the old single-instruction INDEXED rule
measures exactly 0.000%?

Unlike spec/diagnose_riscv_failure.py's Part 3 (which calls
engine.spec_flags_vector per raw instruction, bypassing PDG construction
entirely — so it can't see the new graph-level pass), this builds real PDGs
via SpecBackedPDGBuilder (dataflow_taint now on by default) and reads the
flags actually used for training.

Run:  python3 spec/validate_dataflow_taint_riscv.py
"""

from __future__ import annotations

import sys
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                     # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder     # noqa: E402
from pdg_builder import SPEC_FLAGS                    # noqa: E402
from eval_riscv_real import build_riscv_records       # noqa: E402

IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]


def main():
    engine = load_engine("riscv.json")
    builder_new = SpecBackedPDGBuilder(engine, speculative_window=20, dataflow_taint=True)
    builder_old = SpecBackedPDGBuilder(engine, speculative_window=20, dataflow_taint=False)

    records = build_riscv_records()
    print(f"records: {len(records)}\n")

    total_nodes = 0
    before_secret = before_tx = after_secret = after_tx = 0
    by_class_new = Counter()
    by_class_total = Counter()

    for r in records:
        by_class_total[r["label"]] += 1
        pdg_old = builder_old.build(r["sequence"])
        pdg_new = builder_new.build(r["sequence"])
        if len(pdg_old.nodes) < 2:
            continue
        total_nodes += len(pdg_old.nodes)

        b_ss = sum(1 for n in pdg_old.nodes if n.spec_flags[IS_SECRET_SOURCE] > 0)
        b_tx = sum(1 for n in pdg_old.nodes if n.spec_flags[IS_TRANSMITTER] > 0)
        a_ss = sum(1 for n in pdg_new.nodes if n.spec_flags[IS_SECRET_SOURCE] > 0)
        a_tx = sum(1 for n in pdg_new.nodes if n.spec_flags[IS_TRANSMITTER] > 0)
        before_secret += b_ss; before_tx += b_tx
        after_secret += a_ss; after_tx += a_tx
        if (a_ss - b_ss) or (a_tx - b_tx):
            by_class_new[r["label"]] += 1

    print(f"is_secret_source: before={before_secret} ({100*before_secret/total_nodes:.3f}%)  "
          f"after={after_secret} ({100*after_secret/total_nodes:.3f}%)")
    print(f"is_transmitter:   before={before_tx} ({100*before_tx/total_nodes:.3f}%)  "
          f"after={after_tx} ({100*after_tx/total_nodes:.3f}%)")

    print(f"\n{'class':28s} {'total':>7s} {'records w/ new signal':>24s}")
    for cls in sorted(by_class_total):
        print(f"{cls:28s} {by_class_total[cls]:>7d} {by_class_new[cls]:>24d}")

    # Spot-check: named L1TF/MDS files, print the actual instructions that
    # got tagged (not just an aggregate number).
    print("\n" + "=" * 70)
    print("SPOT CHECK — named L1TF/MDS files, showing exactly what fired")
    print("=" * 70)
    checked = 0
    for r in records:
        if r["label"] not in ("L1TF", "MDS") or checked >= 6:
            continue
        pdg = builder_new.build(r["sequence"])
        tagged = [(n.raw_instruction, "secret_source" if n.spec_flags[IS_SECRET_SOURCE] > 0 else "transmitter")
                  for n in pdg.nodes
                  if n.spec_flags[IS_SECRET_SOURCE] > 0 or n.spec_flags[IS_TRANSMITTER] > 0]
        if not tagged:
            continue
        checked += 1
        print(f"\n{r['label']}  ({r['source_file']}):")
        for instr, tag in tagged:
            print(f"  [{tag:14s}] {instr}")
    if checked == 0:
        print("\n(no L1TF/MDS records got any new tag — mechanism did not fire on real RISC-V gadgets)")


if __name__ == "__main__":
    main()
