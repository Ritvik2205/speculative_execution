#!/usr/bin/env python3
"""audit_riscv_labels.py — E2: is the RISC-V filename->label mapping actually right?

Every RISC-V number this project reports is computed against labels produced by
`spec/eval_riscv_real.py::label_for_stem`, which does **substring matching on the
filename**. If those labels are wrong, the numbers measure noise at high
precision. This audits them two independent ways, neither of which consults the
filename for its verdict.

CHECK A — cross-reference against v54.
  The same c_vulns sources were compiled for x86_64/arm64 and carry labels in
  v54_train/test. Where a RISC-V stem's source also appears there, the two
  labels must agree. (v54's own c_vulns labels are internally consistent: 196
  distinct stems, zero conflicts.)

CHECK B — content evidence.
  Does the compiled RISC-V code actually contain the primitives its claimed
  class requires? Evidence is expressed in the spec's own canonical-op
  vocabulary, so the test is ISA-neutral and does not restate x86/ARM idiom.

  This is a NECESSARY-condition test, not a sufficient one. A file missing the
  primitive its class requires is genuinely suspicious. A file that has it is
  merely *consistent* — it is not proof the label is right. Reported as
  "inconsistent", never as "wrong".

Run: python3 eval/audit_riscv_labels.py [--verbose]
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine                     # noqa: E402
from eval_riscv_real import (                        # noqa: E402
    label_for_stem, extract_sequence, _OPT_SUFFIX, EXCLUDED_KEYWORDS,
)

CORPUS = ROOT / "riscv_corpus"

# Necessary canonical-op evidence per class. Each entry is a list of alternative
# requirement sets: the class is CONSISTENT if any one set is fully present.
# Names come from the spec's canonical_op_vocab, so this table names no mnemonic
# and no architecture.
REQUIRED_EVIDENCE = {
    "BRANCH_HISTORY_INJECTION": [{"CALL_IND"}, {"JMP_IND"}],
    "SPECTRE_V2":               [{"CALL_IND"}, {"JMP_IND"}],
    "RETBLEED":                 [{"RET"}],
    "INCEPTION":                [{"RET"}, {"CALL"}],
    "SPECTRE_RSB":              [{"CALL", "RET"}],
    "L1TF":                     [{"LOAD", "SHL"}, {"LOAD", "CACHE_FLUSH"}],
    "MDS":                      [{"LOAD", "CACHE_FLUSH"}, {"LOAD", "TIMER"}, {"LOAD", "SHL"}],
    "SPECTRE_V4":               [{"LOAD", "STORE"}],
    "SPECTRE_V1":               [{"LOAD", "BRANCH_COND"}],
    # BENIGN is handled separately: it is checked for the ABSENCE of a strong
    # attack signature, since "contains a load" proves nothing about benignity.
}
ATTACK_SIGNATURE = {"CACHE_FLUSH", "TIMER", "FENCE_LOAD", "FENCE_SPEC"}

# Below this, the compiled output is a stub: too short to contain a gadget at
# all, regardless of what the filename or the source says.
DEGENERATE_MAX_INSTRS = 10


def _source_index() -> dict:
    """Flattened-path -> real .c path, built by enumerating what exists.

    Reconstructing the path by splitting the stem on '_' does not work: the
    separator was flattened into the same character the directory names
    already contain (`enhanced_variants`), so the split point is ambiguous.
    Enumerating the real files removes the guesswork entirely.
    """
    idx = {}
    base = ROOT / "c_vulns"
    for p in base.rglob("*.c"):
        flat = str(p.relative_to(ROOT)).replace("/", "_")[:-2]   # drop '.c'
        idx[flat] = p
    return idx


_SRC_INDEX = _source_index()


def stem_to_source(stem: str) -> Path | None:
    """`c_vulns_c_code_enhanced_variants_bhi_x86_64_gen_0` -> the .c path."""
    return _SRC_INDEX.get(stem)


def v54_labels_by_stem() -> dict:
    out = defaultdict(set)
    for f in ("v54/data/v54_train.jsonl", "v54/data/v54_test.jsonl"):
        p = ROOT / f
        if not p.exists():
            continue
        for line in p.open():
            j = json.loads(line)
            sf = j.get("source_file") or ""
            if "c_vulns" not in sf:
                continue
            base = sf.split("/")[-1]
            # v54 basenames carry compiler/opt/arch decoration in two different
            # shapes: `bhi_x86_64_gen_1_clang_O1.s` and `foo.arm64.gcc.O0.s`.
            # Strip both so the key matches the bare source stem the RISC-V
            # corpus was built from.
            base = re.sub(r"\.(c|s)$", "", base)
            base = re.sub(r"[._](clang|gcc)[._]O[0-9s]+$", "", base)
            base = re.sub(r"\.(x86_64|arm64|aarch64)$", "", base)
            base = re.sub(r"\.(x86_64|arm64|aarch64)\..*$", "", base)
            out[base].add(j["label"])
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args()

    engine = load_engine("riscv.json")
    v54 = v54_labels_by_stem()

    stems = sorted({_OPT_SUFFIX.sub("", f.name) for f in CORPUS.glob("*.s")})
    print(f"RISC-V corpus: {len(list(CORPUS.glob('*.s')))} files -> {len(stems)} distinct stems")
    print(f"v54 cross-reference set: {len(v54)} c_vulns stems with labels\n")

    n_excluded = n_unlabelled = 0
    xref_checked = xref_agree = 0
    xref_conflicts, missing_evidence, benign_suspect, no_source = [], [], [], []
    ops_by_stem = {}

    for stem in stems:
        low = stem.lower()
        if any(k in low for k in EXCLUDED_KEYWORDS):
            n_excluded += 1
            continue
        label = label_for_stem(stem)
        if label is None:
            n_unlabelled += 1
            continue

        # ---- CHECK A: cross-reference against v54 -------------------------
        src = stem_to_source(stem)
        if src is None:
            no_source.append(stem)
        key = src.stem if src else None
        if key and key in v54:
            xref_checked += 1
            other = v54[key]
            if label in other:
                xref_agree += 1
            else:
                xref_conflicts.append((stem, label, sorted(other)))

        # ---- CHECK B: content evidence -----------------------------------
        f = next(CORPUS.glob(f"{stem}.O*.riscv64.s"), None)
        if f is None:
            continue
        ops = Counter(engine.canonical_op(l) for l in extract_sequence(f))
        present = {o for o, c in ops.items() if c > 0}
        ops_by_stem[stem] = present

        if label == "BENIGN":
            hits = present & ATTACK_SIGNATURE
            if hits:
                benign_suspect.append((stem, sorted(hits)))
        else:
            req = REQUIRED_EVIDENCE.get(label)
            if req and not any(s <= present for s in req):
                missing_evidence.append((stem, label, sorted(req[0])))

    print("=" * 72)
    print("CHECK A — cross-reference vs v54 labels for the same source")
    print("=" * 72)
    print(f"  stems cross-referencable : {xref_checked}")
    print(f"  agree                    : {xref_agree}")
    print(f"  CONFLICT                 : {len(xref_conflicts)}")
    for s, riscv_l, v54_l in xref_conflicts[:20]:
        print(f"     {s}\n        riscv keyword says {riscv_l}, v54 says {v54_l}")
    if not xref_conflicts and xref_checked:
        print("  -> no stem is labelled differently by the two paths")
    if no_source:
        print(f"  ({len(no_source)} stems had no resolvable .c source; not cross-checked)")

    print()
    print("=" * 72)
    print("CHECK B — does the code contain the primitives its class requires?")
    print("=" * 72)
    print(f"  stems with content checked : {len(ops_by_stem)}")
    print(f"  MISSING required evidence  : {len(missing_evidence)}")
    by_class = Counter(l for _, l, _ in missing_evidence)
    for cls, n in by_class.most_common():
        print(f"     {cls:28s} {n}")
    if args.verbose:
        for s, l, req in missing_evidence[:40]:
            print(f"       {s}  ({l}, wanted {req}; has {sorted(ops_by_stem.get(s, []))[:10]})")
    print(f"  BENIGN carrying attack signature : {len(benign_suspect)}")
    for s, hits in benign_suspect:
        print(f"     {s}  contains {hits}")

    # ---- CHECK C: degenerate samples ------------------------------------
    # An attack-labelled file whose compiled output no longer contains an
    # attack is label noise, even though its filename and its source are both
    # correct. This is not hypothetical: at -O2 the compiler can delete the
    # gadget outright and leave a stub that still carries the class label.
    print()
    print("=" * 72)
    print("CHECK C — degenerate samples (label survives, gadget does not)")
    print("=" * 72)
    per_class = Counter()
    degen = defaultdict(Counter)
    short = []
    for f in sorted(CORPUS.glob("*.s")):
        stem = _OPT_SUFFIX.sub("", f.name)
        low = stem.lower()
        if any(k in low for k in EXCLUDED_KEYWORDS):
            continue
        lab = label_for_stem(stem)
        if lab is None:
            continue
        per_class[lab] += 1
        n = len(extract_sequence(f))
        if n <= DEGENERATE_MAX_INSTRS:
            parts = f.name.split(".")
            opt = parts[-3] if len(parts) >= 3 else "?"
            degen[lab][opt] += 1
            short.append((f.name, lab, n))
    tot_degen = sum(sum(c.values()) for c in degen.values())
    tot_files = sum(per_class.values())
    print(f"  files <= {DEGENERATE_MAX_INSTRS} instructions: {tot_degen}/{tot_files} "
          f"({100*tot_degen/max(tot_files,1):.1f}%)")
    print(f"  {'class':28s} {'degenerate':>11s} {'share':>8s}   by opt level")
    for lab in sorted(per_class):
        d = sum(degen[lab].values())
        if d:
            print(f"  {lab:28s} {d:5d}/{per_class[lab]:<5d} {100*d/per_class[lab]:6.1f}%   {dict(degen[lab])}")
    if args.verbose:
        for name, lab, n in short[:20]:
            print(f"       {name}  ({lab}, {n} instrs)")

    print()
    print("=" * 72)
    print("VERDICT")
    print("=" * 72)
    total = len(stems) - n_excluded - n_unlabelled
    bad = len(xref_conflicts) + len(missing_evidence) + len(benign_suspect)
    print(f"  labelled stems audited        : {total}")
    print(f"  flagged by checks A/B         : {bad}")
    print(f"  degenerate files (check C)    : {tot_degen}/{tot_files} "
          f"({100*tot_degen/max(tot_files,1):.1f}%)")
    print("  NOTE: Check B is a necessary-condition test. A flagged stem is")
    print("        INCONSISTENT with its label, not proven mislabelled; an")
    print("        unflagged stem is consistent, not proven correct.")


if __name__ == "__main__":
    main()
