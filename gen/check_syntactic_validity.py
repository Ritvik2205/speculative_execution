#!/usr/bin/env python3
"""
check_syntactic_validity.py — G9 / B4 (SPECDISCOVER_VERIFICATION_GAPS.md).

The generator's "steering works" claim (class/arch lift table in
SPECDISCOVER_PASS_SUMMARY.md) is judged entirely by a learned classifier — the
same feature family being found wanting elsewhere in this audit. This checks
the cheaper, more basic, genuinely independent claim first: does the realized
output even ASSEMBLE as valid instructions? Reuses
spec/external_oracle.py::ExternalOracle.assemble (llvm-mc), which shares no
code with the generator, realizer, or GINE classifier.

`gen/decode.py`'s existing "PDG-parseable" check is NOT this — SpecBackedPDGBuilder
is lenient (anything classifies as OTHER and still forms a node), so it can't
catch syntactically malformed output. llvm-mc actually rejects invalid asm.

Run:  python3 gen/check_syntactic_validity.py --n 200
"""

from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec                     # noqa: E402
from external_oracle import ExternalOracle          # noqa: E402
from generator import CondTransformerLM             # noqa: E402
from realize import Realizer                        # noqa: E402

CLASSES = ["SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4", "L1TF", "MDS",
           "RETBLEED", "INCEPTION", "BRANCH_HISTORY_INJECTION", "SPECTRE_RSB", "BENIGN"]
ARCHS = ["x86_64", "arm64"]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=50, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    oracle = ExternalOracle()
    trained_classes = [c for c in CLASSES if c in model.vocab.cls_id]

    print(f"classes={trained_classes}\n")
    overall_instr = Counter()   # 'ok' / 'malformed'
    overall_seq = Counter()     # 'all_ok' / 'has_malformed'
    per_arch_instr = {a: Counter() for a in ARCHS}

    for arch in ARCHS:
        spec = load_spec(f"{arch}.json")
        realizer = Realizer(spec, seed=0)
        for cls in trained_classes:
            for i in range(args.n):
                norm = model.sample(cls, arch, temperature=args.temperature, top_k=20)
                concrete = realizer.realize_sequence(norm)
                if not concrete:
                    continue
                seq_ok = True
                for instr in concrete:
                    code = oracle.assemble(instr, arch)
                    if code is None:
                        overall_instr["malformed"] += 1
                        per_arch_instr[arch]["malformed"] += 1
                        seq_ok = False
                    else:
                        overall_instr["ok"] += 1
                        per_arch_instr[arch]["ok"] += 1
                overall_seq["all_ok" if seq_ok else "has_malformed"] += 1

    total_instr = sum(overall_instr.values())
    total_seq = sum(overall_seq.values())
    print(f"{'='*60}")
    print(f"per-instruction syntactic validity (llvm-mc assembles cleanly):")
    print(f"  {overall_instr['ok']}/{total_instr} "
          f"({100*overall_instr['ok']/max(total_instr,1):.1f}%) valid")
    for a in ARCHS:
        t = sum(per_arch_instr[a].values())
        print(f"  {a:8s}: {per_arch_instr[a]['ok']}/{t} "
              f"({100*per_arch_instr[a]['ok']/max(t,1):.1f}%) valid")
    print(f"\nper-sequence (ALL instructions in the gadget must assemble):")
    print(f"  {overall_seq['all_ok']}/{total_seq} "
          f"({100*overall_seq['all_ok']/max(total_seq,1):.1f}%) fully valid")
    print(f"\nNote: this only checks syntax (does llvm-mc accept it), not whether "
          f"\nthe gadget is the RIGHT vulnerability class (still classifier-judged, "
          f"\nunresolved without a real execution oracle — see G10).")


if __name__ == "__main__":
    main()
