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
import re
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


# Local-label token (.L0, .L3, ...) -- ARM's b/cbz/etc and x86's j*/call*
# families can legitimately take a bare .LN as their sole operand (a real
# branch/call target); anywhere else, a .LN token is a generator mistake
# (it picked a branch-target-shaped token for a non-branch-target slot).
_LOCAL_LABEL_RE = re.compile(r'\.L\w*')
_BRANCH_MNEMONIC_RE = re.compile(
    r'^(j\w+|call\w?|b|b\.\w+|bl|blr|br|cbn?z|tbn?z)$', re.IGNORECASE
)
_IMM_RE = re.compile(r'^\$-?\w+$')
# ret/retq legitimately take an immediate operand (near-return with stack
# cleanup, AT&T `ret $imm16`) -- excluded from the immediate-as-destination
# check, which would otherwise misfire on every valid `ret $N`.
_IMM_DEST_EXCLUDED_MNEMONICS = {"ret", "retq"}


def _split_operands(instr: str) -> list[str]:
    """Split an AT&T-syntax instruction's operand portion on top-level commas
    (commas inside parens -- SIB addressing like (%rbx,%rcx,1) -- are not
    top-level separators). Returns [] if there's no operand portion."""
    parts = instr.strip().split(None, 1)
    if len(parts) < 2:
        return []
    operand_str = parts[1]
    out, depth, cur = [], 0, ""
    for ch in operand_str:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur)
            cur = ""
        else:
            cur += ch
    out.append(cur)
    return [o.strip() for o in out]


def _mnemonic(instr: str) -> str:
    parts = instr.strip().split(None, 1)
    return parts[0].lower() if parts else ""


def _is_legitimate_branch_target_use(instr: str) -> bool:
    """True iff instr is `<branch-or-call-mnemonic> .LN` -- a bare local-label
    operand on a mnemonic that actually takes a branch/call target."""
    mnemonic = _mnemonic(instr)
    if not _BRANCH_MNEMONIC_RE.match(mnemonic):
        return False
    operands = _split_operands(instr)
    return len(operands) == 1 and bool(_LOCAL_LABEL_RE.fullmatch(operands[0]))


def categorize_failure(instr: str) -> str:
    """Best-effort categorization of why llvm-mc rejected `instr`, by
    pattern-matching the instruction TEXT (not llvm-mc's error message --
    fragile, compiler-specific). Only meaningful when called on an
    instruction llvm-mc has already rejected. Returns one of:
    "unresolved_placeholder", "operand_type_violation", "other".
    """
    if "<fn>" in instr:
        return "unresolved_placeholder"
    if _LOCAL_LABEL_RE.search(instr) and not _is_legitimate_branch_target_use(instr):
        return "unresolved_placeholder"

    operands = _split_operands(instr)
    if operands:
        dest = operands[-1]
        mnemonic = _mnemonic(instr)
        if _IMM_RE.match(dest) and mnemonic not in _IMM_DEST_EXCLUDED_MNEMONICS:
            return "operand_type_violation"

    return "other"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=50, help="samples per (class, arch)")
    ap.add_argument("--temperature", type=float, default=0.9)
    ap.add_argument("--gen", default=str(ROOT / "gen" / "generator.pt"))
    ap.add_argument("--arch-purity", action="store_true",
                    help="constrain sampling to target-arch-valid opcodes "
                         "(arch_purity.attach_arch_masks)")
    args = ap.parse_args()

    model = CondTransformerLM.load(args.gen)
    if args.arch_purity:
        from arch_purity import attach_arch_masks
        attach_arch_masks(model, {"x86_64": "x86_64.json", "arm64": "arm64.json"})
        print("arch purity: ON (sampling constrained to target-arch opcodes)")
    oracle = ExternalOracle()
    trained_classes = [c for c in CLASSES if c in model.vocab.cls_id]

    print(f"classes={trained_classes}\n")
    overall_instr = Counter()   # 'ok' / 'malformed'
    overall_seq = Counter()     # 'all_ok' / 'has_malformed'
    per_arch_instr = {a: Counter() for a in ARCHS}
    overall_categories = Counter()
    per_arch_categories = {a: Counter() for a in ARCHS}

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
                        cat = categorize_failure(instr)
                        overall_categories[cat] += 1
                        per_arch_categories[arch][cat] += 1
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

    _CATS = ("unresolved_placeholder", "operand_type_violation", "other")
    total_malformed = overall_instr["malformed"]
    print(f"\n{'='*60}")
    print(f"failure categorization (of {total_malformed} malformed instructions):")
    for cat in _CATS:
        n = overall_categories[cat]
        print(f"  {cat:24s} {n:6d} ({100*n/max(total_malformed,1):.1f}%)")
    for a in ARCHS:
        tot_a = sum(per_arch_categories[a].values())
        print(f"\n  {a}: ({tot_a} malformed)")
        for cat in _CATS:
            n = per_arch_categories[a][cat]
            print(f"    {cat:22s} {n:6d} ({100*n/max(tot_a,1):.1f}%)")


if __name__ == "__main__":
    main()
