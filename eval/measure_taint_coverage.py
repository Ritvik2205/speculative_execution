#!/usr/bin/env python3
"""
measure_taint_coverage.py — Task 2 (SPECDISCOVER_NEW_ISA_ROADMAP): measure
whether `spec/spec_features.py::compute_spec_features(..., use_taint=True)`
actually revives `is_secret_source` / `is_transmitter` on RISC-V, and whether
it moves x86/ARM in a way that would be a finding (see
`spec/validate_dataflow_taint.py`, which previously measured the taint as a
near no-op on x86/ARM at the raw-PDG-node level).

For each of x86_64 / arm64 / riscv64, this prints:
  - the fraction of records with a nonzero `flagfrac_is_secret_source` /
    `flagfrac_is_transmitter`, with `use_taint` OFF vs ON
  - the wall-clock cost per 100 records of each path (OFF = pure regex scan,
    ON = regex scan + one extra PDG build via SpecBackedPDGBuilder)

Data sources:
  - x86_64 / arm64 (+ arm32, bucketed with arm64: same spec file per
    asm_tokenizer.SPEC_FOR_ARCH): v54/data/v54_train.jsonl, filtered by the
    `arch` field. Read-only — this script never writes to that file.
  - riscv64: spec/eval_riscv_real.py::build_riscv_records() (the real
    compiled RISC-V corpus with recovered ground-truth labels).

Run:  python3 eval/measure_taint_coverage.py
"""

from __future__ import annotations

import json
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                        # noqa: E402
from spec_features import compute_spec_features, feature_names  # noqa: E402

V54_TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"

# Mirrors asm_tokenizer.SPEC_FOR_ARCH / candidate_features.SPEC_FOR_ARCH:
# which spec file (and therefore which SpecEngine) each arch bucket uses.
ARCH_BUCKETS = {
    "x86_64": {"spec": "x86_64.json", "archs": {"x86_64"}},
    "arm64": {"spec": "arm64.json", "archs": {"arm64", "arm32"}},
    "riscv64": {"spec": "riscv.json", "archs": {"riscv64"}},
}


def _load_x86_arm_records():
    rows = [json.loads(l) for l in open(V54_TRAIN) if l.strip()]
    by_arch = {"x86_64": [], "arm64": []}
    for r in rows:
        arch = r.get("arch", "unknown")
        if arch == "x86_64":
            by_arch["x86_64"].append(r)
        elif arch in ("arm64", "arm32"):
            by_arch["arm64"].append(r)
    return by_arch


def _load_riscv_records():
    import eval_riscv_real as er
    return er.build_riscv_records()


def _nonzero_rate(vecs, idx):
    if not vecs:
        return 0.0
    return sum(1 for v in vecs if v[idx] > 0) / len(vecs)


def _time_path(records, engine, use_taint, n=100):
    sample = records[:n] if len(records) >= n else records
    if not sample:
        return float("nan")
    t0 = time.perf_counter()
    for r in sample:
        compute_spec_features(r["sequence"], engine, use_taint=use_taint)
    elapsed = time.perf_counter() - t0
    return elapsed / len(sample) * 100.0  # seconds per 100 records


def main():
    x86_arm = _load_x86_arm_records()
    riscv = _load_riscv_records()
    records_by_bucket = {
        "x86_64": x86_arm["x86_64"],
        "arm64": x86_arm["arm64"],
        "riscv64": riscv,
    }

    header = (f"{'arch':10s} {'n':>6s} "
              f"{'secret_src OFF':>15s} {'secret_src ON':>14s} "
              f"{'transmit OFF':>13s} {'transmit ON':>12s} "
              f"{'s/100 OFF':>10s} {'s/100 ON':>10s}")
    print(header)
    print("-" * len(header))

    for bucket, cfg in ARCH_BUCKETS.items():
        records = records_by_bucket[bucket]
        engine = load_engine(cfg["spec"])
        names = feature_names(engine)
        ss_idx = names.index("flagfrac_is_secret_source")
        tx_idx = names.index("flagfrac_is_transmitter")

        off_vecs = [compute_spec_features(r["sequence"], engine, use_taint=False)
                    for r in records]
        on_vecs = [compute_spec_features(r["sequence"], engine, use_taint=True)
                   for r in records]

        ss_off = _nonzero_rate(off_vecs, ss_idx)
        ss_on = _nonzero_rate(on_vecs, ss_idx)
        tx_off = _nonzero_rate(off_vecs, tx_idx)
        tx_on = _nonzero_rate(on_vecs, tx_idx)

        t_off = _time_path(records, engine, use_taint=False)
        t_on = _time_path(records, engine, use_taint=True)

        print(f"{bucket:10s} {len(records):>6d} "
              f"{ss_off * 100:>14.2f}% {ss_on * 100:>13.2f}% "
              f"{tx_off * 100:>12.2f}% {tx_on * 100:>11.2f}% "
              f"{t_off:>10.4f} {t_on:>10.4f}")

    print("\n(rates are the fraction of records with a nonzero "
          "flagfrac_is_secret_source / flagfrac_is_transmitter; "
          "s/100 = wall-clock seconds per 100 records)")


if __name__ == "__main__":
    main()
