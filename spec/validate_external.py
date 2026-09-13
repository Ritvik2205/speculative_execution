#!/usr/bin/env python3
"""
validate_external.py — validate the spec engine against an INDEPENDENT oracle.

Unlike validate_spec.py (which compares SpecEngine to the PDGBuilder it was
exported from — a refactor round-trip), this compares SpecEngine's control-flow
categorization to a genuinely independent ground truth: llvm-mc + capstone
(see external_oracle.py). Disagreements are real Phase-0 findings, not drift.

Reports, over the coarse control-flow taxonomy {CALL, RET, JUMP, OTHER}:
  - coverage (fraction of instructions the oracle could assemble+decode)
  - agreement on the covered set
  - a confusion matrix (spec rows x oracle cols)
  - sample disagreements

Run:  python3 spec/validate_external.py [--limit N]
"""

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine                     # noqa: E402
from external_oracle import ExternalOracle, spec_coarse  # noqa: E402

DATA = [ROOT / "v54" / "data" / "v54_train.jsonl",
        ROOT / "v54" / "data" / "v54_test.jsonl"]

COARSE = ExternalOracle.COARSE


def iter_instructions(data_paths=None):
    seen = set()
    for path in (data_paths or DATA):
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


def compute_agreement(data_paths=None, limit=0):
    """Run the oracle cross-check and return a JSON-serializable results dict.

    Shared by the reporting CLI (main, below) and spec/gate_oracle_check.py's
    pass/fail gate — keep this the single source of truth for the comparison
    logic so the two never drift.
    """
    oracle = ExternalOracle()
    engines = {
        "x86_64": load_engine("x86_64.json"),
        "arm64": load_engine("arm64.json"),
        "arm32": load_engine("arm64.json"),
    }

    checked = covered = agree = 0
    confusion = defaultdict(Counter)
    disagreements = []
    skipped_arch = Counter()

    for arch, instr in iter_instructions(data_paths):
        eng = engines.get(arch)
        if eng is None:
            skipped_arch[arch] += 1
            continue
        checked += 1
        if limit and checked > limit:
            checked -= 1
            break

        spec_cat = spec_coarse(eng._cat_name(eng.classify_opcode(instr)))
        orc_cat = oracle.category(instr, arch)
        if orc_cat is None:
            continue
        covered += 1
        confusion[spec_cat][orc_cat] += 1
        if spec_cat == orc_cat:
            agree += 1
        elif len(disagreements) < 40:
            disagreements.append([arch, instr, spec_cat, orc_cat])

    return {
        "checked": checked,
        "covered": covered,
        "agree": agree,
        "agreement_pct": (100 * agree / covered) if covered else 0.0,
        "confusion": {sc: dict(confusion[sc]) for sc in COARSE},
        "disagreements": disagreements,
        "skipped_arch": dict(skipped_arch),
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0,
                    help="cap instructions checked (0 = all; oracle is slow)")
    args = ap.parse_args()

    result = compute_agreement(limit=args.limit)

    checked = result["checked"]
    covered = result["covered"]
    agree = result["agree"]
    skipped_arch = result["skipped_arch"]
    disagreements = result["disagreements"]

    print(f"instructions checked (assemblable archs): {checked}")
    print(f"oracle coverage (assembled+decoded):      {covered}"
          f" ({100*covered/max(checked,1):.1f}%)")
    if skipped_arch:
        print(f"skipped (unsupported arch): {skipped_arch}")
    print(f"agreement on covered set: {agree}/{covered}"
          f" ({100*agree/max(covered,1):.2f}%)")

    print("\nconfusion matrix (rows=spec, cols=oracle):")
    header = "        " + "".join(f"{c:>8}" for c in COARSE)
    print(header)
    confusion = result["confusion"]
    for sc in COARSE:
        row = "".join(f"{confusion[sc].get(oc, 0):>8}" for oc in COARSE)
        print(f"{sc:>8}{row}")

    # per control-flow class: what the oracle called the spec's positives
    print("\ncontrol-flow disagreements (spec != oracle), up to 40:")
    for row in disagreements:
        print("  ", row)
    if not disagreements:
        print("  (none — spec control-flow categorization matches the oracle)")

    # This is a FINDINGS report, not a pass/fail gate. Non-zero disagreement is
    # expected and informative; exit 0 unless the oracle produced no coverage.
    sys.exit(0 if covered > 0 else 2)


if __name__ == "__main__":
    main()
