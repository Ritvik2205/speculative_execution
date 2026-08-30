#!/usr/bin/env python3
"""triage_other_failures.py — open up the generator's "other" failure bucket.

gen/check_syntactic_validity.py sorts every llvm-mc rejection into
`unresolved_placeholder`, `operand_type_violation`, or `other`. The first two are
understood; `other` is the fall-through — 52.4% of all malformed instructions
(7,568) with no account of WHY llvm-mc rejects them. The categorizer never looks
at llvm-mc's diagnostic, only the instruction text, so `other` means "our text
patterns didn't recognise it", not any single root cause.

This script re-samples the generator, and for every instruction that lands in
`other` it captures llvm-mc's actual stderr (ExternalOracle.assemble_error) and
clusters by a normalized form of that diagnostic — numbers, registers and symbols
masked — so "invalid operand for instruction" collapses to one class regardless of
which instruction produced it. That turns the opaque bucket into a ranked list of
concrete assembler complaints, each with real examples, which is what a fix would
target.

It also cross-checks the mnemonic of each `other` failure against the spec's
canonical vocabulary, to separate two very different causes: a real mnemonic used
with wrong operands (a Realizer operand-slot bug) versus a token that is not a
RISC-V/x86/ARM mnemonic at all (a generator vocabulary bug).

Run:  python3 gen/triage_other_failures.py --n 100 [--examples 4]
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from generator import CondTransformerLM                   # noqa: E402
from realize import Realizer                              # noqa: E402
from external_oracle import ExternalOracle                # noqa: E402
from isa_spec import load_spec, load_engine               # noqa: E402
from check_syntactic_validity import categorize_failure, ARCHS  # noqa: E402

CLASSES = ["BENIGN", "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4",
           "L1TF", "MDS", "RETBLEED", "INCEPTION", "BHI"]
SPEC_FOR_ARCH = {"x86_64": "x86_64.json", "arm64": "arm64.json"}

_HEX = re.compile(r'0x[0-9a-fA-F]+')
_NUM = re.compile(r'-?\d+')
_QUOTED = re.compile(r"'[^']*'")


def normalize_error(err: str) -> str:
    """Collapse a diagnostic to its shape: drop the file:line:col prefix, mask
    literals and quoted tokens, keep only the first 'error:' line."""
    line = ""
    for l in err.splitlines():
        if "error:" in l:
            line = l.split("error:", 1)[1].strip()
            break
    if not line:
        line = err.splitlines()[0] if err.splitlines() else err
    line = _QUOTED.sub("'X'", line)
    line = _HEX.sub("N", line)
    line = _NUM.sub("N", line)
    return line.strip()[:90]


def mnemonic(instr: str) -> str:
    s = instr.strip()
    return s.split()[0].lower() if s else ""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=100, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--examples", type=int, default=4)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    oracle = ExternalOracle()
    engines = {a: load_engine(f) for a, f in SPEC_FOR_ARCH.items()}
    trained = [c for c in CLASSES if c in model.vocab.cls_id]
    print(f"classes={trained}  archs={ARCHS}  n={args.n}/class/arch\n")

    err_clusters = Counter()
    err_examples = defaultdict(list)
    err_by_arch = defaultdict(Counter)
    mnem_known = Counter()          # 'known_mnemonic' / 'unknown_token'
    unknown_mnems = Counter()
    n_other = 0

    for arch in ARCHS:
        spec = load_spec(f"{arch}.json")
        realizer = Realizer(spec, seed=0)
        eng = engines[arch]
        known_ops = {m.lower() for m in getattr(eng, "canonical_op_vocab", {})} \
            if hasattr(eng, "canonical_op_vocab") else set()
        for cls in trained:
            for _ in range(args.n):
                norm = model.sample(cls, arch, temperature=args.temperature, top_k=20)
                concrete = realizer.realize_sequence(norm)
                if not concrete:
                    continue
                for instr in concrete:
                    if oracle.assemble(instr, arch) is not None:
                        continue
                    if categorize_failure(instr) != "other":
                        continue
                    n_other += 1
                    err = oracle.assemble_error(instr, arch) or "(no diagnostic)"
                    key = normalize_error(err)
                    err_clusters[key] += 1
                    err_by_arch[arch][key] += 1
                    if len(err_examples[key]) < args.examples:
                        err_examples[key].append((arch, instr.strip()))
                    # mnemonic known to the ISA at all?
                    op = eng.canonical_op(instr)
                    if op == "OTHER":
                        mnem_known["unknown_or_uncategorized_mnemonic"] += 1
                        unknown_mnems[mnemonic(instr)] += 1
                    else:
                        mnem_known["known_mnemonic_wrong_operands"] += 1

    print(f"'other'-bucket instructions triaged: {n_other}\n")
    if not n_other:
        print("none sampled — raise --n"); return

    print("=" * 78)
    print("llvm-mc DIAGNOSTIC CLUSTERS (what the assembler actually complains about)")
    print("=" * 78)
    for key, c in err_clusters.most_common():
        pa = ", ".join(f"{a}:{err_by_arch[a][key]}" for a in ARCHS if err_by_arch[a][key])
        print(f"\n  {c:5d} ({100*c/n_other:4.1f}%)  {key}")
        print(f"          [{pa}]")
        for a, ex in err_examples[key]:
            print(f"          e.g. {a}: {ex}")

    print("\n" + "=" * 78)
    print("ROOT-CAUSE SPLIT (is the mnemonic even a real instruction?)")
    print("=" * 78)
    for k, v in mnem_known.most_common():
        print(f"  {v:5d} ({100*v/n_other:4.1f}%)  {k}")
    if unknown_mnems:
        print("\n  top tokens that are not canonical mnemonics:")
        for m, c in unknown_mnems.most_common(12):
            print(f"    {c:4d}  {m!r}")


if __name__ == "__main__":
    main()
