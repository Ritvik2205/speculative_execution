#!/usr/bin/env python3
"""
validate_spec.py — prove the spec engine reproduces PDGBuilder exactly.

For every instruction in the v54 dataset, compare the spec-driven SpecEngine
against the original hardcoded PDGBuilder methods on all four decisions that
determine a node's feature vector:
  1. opcode category
  2. memory-access type
  3. spec-flag vector (14 dims)
  4. register def/use sets

Any mismatch is a divergence between the externalized spec and the source of
truth. Phase 0 acceptance = zero mismatches.

Run:  python3 spec/validate_spec.py
"""

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb  # noqa: E402
from isa_spec import load_engine  # noqa: E402

DATA = [ROOT / "v54" / "data" / "v54_train.jsonl",
        ROOT / "v54" / "data" / "v54_test.jsonl"]


def iter_instructions():
    seen = set()
    for path in DATA:
        if not path.exists():
            continue
        for line in open(path):
            line = line.strip()
            if not line:
                continue
            r = json.loads(line)
            arch = r.get("arch", "unknown")
            for instr in r.get("sequence", []):
                key = (arch, instr)
                if key in seen:
                    continue
                seen.add(key)
                yield arch, instr


def main():
    builder = pb.PDGBuilder()
    engines = {
        "x86_64": load_engine("x86_64.json"),
        "arm64": load_engine("arm64.json"),
        "arm32": load_engine("arm64.json"),   # arm32 records reuse arm64 spec
        "unknown": load_engine("base.json"),
    }

    totals = Counter()
    mism = Counter()
    examples = {"cat": [], "mem": [], "flags": [], "regs": []}

    for arch, instr in iter_instructions():
        eng = engines.get(arch, engines["unknown"])
        totals["instr"] += 1

        # 1. category
        c_ref = builder._classify_opcode(instr)
        c_spec = eng.classify_opcode(instr)
        if c_ref != c_spec:
            mism["cat"] += 1
            if len(examples["cat"]) < 8:
                examples["cat"].append((arch, instr, c_ref, c_spec))

        # 2. memory-access type
        m_ref = builder._get_memory_access_type(instr)
        m_spec = eng.memory_access_type(instr)
        if m_ref != m_spec:
            mism["mem"] += 1
            if len(examples["mem"]) < 8:
                examples["mem"].append((arch, instr, m_ref, m_spec))

        # 3. spec flags (use each side's own category+mem so the comparison is
        #    end-to-end faithful, not cherry-picked)
        f_ref = builder._compute_spec_flags(instr, c_ref, m_ref)
        f_spec = eng.spec_flags_vector(instr, c_spec, m_spec)
        if not np.array_equal(f_ref, f_spec):
            mism["flags"] += 1
            if len(examples["flags"]) < 8:
                examples["flags"].append((arch, instr, f_ref.tolist(), f_spec.tolist()))

        # 4. registers
        d_ref, s_ref = builder._extract_registers(instr, c_ref)
        d_spec, s_spec = eng.extract_registers(instr, c_spec)
        if d_ref != d_spec or s_ref != s_spec:
            mism["regs"] += 1
            if len(examples["regs"]) < 8:
                examples["regs"].append((arch, instr, (d_ref, s_ref), (d_spec, s_spec)))

    print(f"unique (arch, instruction) pairs checked: {totals['instr']}")
    print("mismatches:")
    for k in ("cat", "mem", "flags", "regs"):
        print(f"  {k:6s}: {mism[k]}")

    for k in ("cat", "mem", "flags", "regs"):
        if examples[k]:
            print(f"\n--- sample {k} mismatches ---")
            for row in examples[k]:
                print("  ", row)

    ok = sum(mism.values()) == 0
    print("\nRESULT:", "PASS — spec engine reproduces PDGBuilder exactly"
          if ok else "FAIL — divergences found")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
