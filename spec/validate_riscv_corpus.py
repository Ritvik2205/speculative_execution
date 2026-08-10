#!/usr/bin/env python3
"""
validate_riscv_corpus.py — run the SpecDiscover front end on REAL compiled RV64
assembly, with zero classification-code changes (spec file only).

Reads the RV64 .s files in riscv_corpus/ (produced by riscv64-elf-gcc), and:
  1. cross-checks spec control-flow categories vs the independent llvm-mc+capstone
     oracle over unique RV64 instructions;
  2. builds PDG graphs with SpecBackedPDGBuilder(riscv) and reports how many build
     and their speculative edge coverage.

This upgrades the RISC-V evidence from hand-written gadgets to a real compiled
corpus. Run:  python3 spec/validate_riscv_corpus.py
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb                      # noqa: E402
from isa_spec import load_engine             # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from external_oracle import ExternalOracle, spec_coarse  # noqa: E402

CORPUS = ROOT / "riscv_corpus"
_COMMENT = re.compile(r"[#;].*$")


def is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract(path: Path):
    seq = []
    for raw in path.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--min-agreement", type=float, default=None,
                    help="exit 1 if oracle agreement %% falls below this threshold "
                         "(for gating new-ISA onboarding, see spec/ONBOARDING_NEW_ISA.md)")
    args = ap.parse_args()

    files = sorted(CORPUS.glob("*.s"))
    if not files:
        print("no RV64 asm in riscv_corpus/ — run the compile step first")
        sys.exit(2)

    eng = load_engine("riscv.json")           # NEW ISA: spec file only
    builder = SpecBackedPDGBuilder(eng)
    inv = {v: k for k, v in pb.EDGE_TYPES.items()}

    all_seqs = [extract(f) for f in files]
    n_instr = sum(len(s) for s in all_seqs)
    print(f"RV64 files={len(files)}  total instructions={n_instr}")

    # 1. spec category distribution (real compiled RV64)
    cat_counts = Counter()
    for s in all_seqs:
        for ins in s:
            cat_counts[eng._cat_name(eng.classify_opcode(ins))] += 1
    print("\nspec category distribution (top 12):")
    for c, n in cat_counts.most_common(12):
        print(f"  {c:16s} {n:>8d} ({100*n/max(n_instr,1):.1f}%)")
    other = cat_counts.get("OTHER", 0)
    print(f"  -> OTHER fraction: {100*other/max(n_instr,1):.1f}% "
          f"(lower = better spec coverage)")

    # 2. external-oracle agreement over unique instructions (control flow)
    oracle = ExternalOracle()
    seen = set()
    covered = agree = 0
    disagr = []
    for s in all_seqs:
        for ins in s:
            if ins in seen:
                continue
            seen.add(ins)
            o = oracle.category(ins, "riscv64")
            if o is None:
                continue
            covered += 1
            sc = spec_coarse(eng._cat_name(eng.classify_opcode(ins)))
            if sc == o:
                agree += 1
            elif len(disagr) < 15:
                disagr.append((ins, sc, o))
    agreement_pct = 100 * agree / max(covered, 1)
    print(f"\nexternal-oracle (llvm-mc+capstone) control-flow agreement: "
          f"{agree}/{covered} ({agreement_pct:.2f}%) over {len(seen)} unique instrs")
    for d in disagr:
        print("   disagree:", d)

    if args.min_agreement is not None and agreement_pct < args.min_agreement:
        print(f"FAIL: RISC-V oracle agreement {agreement_pct:.2f}% < "
              f"required {args.min_agreement:.2f}%")
        sys.exit(1)

    # 3. PDG graph build success + speculative edge coverage
    built = with_spec = 0
    edge_types = Counter()
    SPEC = {pb.EDGE_TYPES[k] for k in
            ("SPEC_CONDITIONAL", "SPEC_INDIRECT", "SPEC_RETURN", "RSB_CHAIN", "CACHE_TEMPORAL")}
    for s in all_seqs:
        if len(s) < 3:
            continue
        pdg = builder.build(s)
        if len(pdg.nodes) >= 2:
            built += 1
            ets = {e.edge_type for e in pdg.edges}
            for e in pdg.edges:
                edge_types[e.edge_type] += 1
            if ets & SPEC:
                with_spec += 1
    print(f"\nPDG graphs built: {built}  (with speculative edges: {with_spec})")
    print("edge-type totals:", {inv[k]: v for k, v in sorted(edge_types.items())})
    print("\nAll of the above used spec/riscv.json with ZERO classification-code changes.")


if __name__ == "__main__":
    main()
