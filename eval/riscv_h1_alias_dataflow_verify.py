#!/usr/bin/env python3
"""
Authoritative before/after check for the w0/x0 register-width-aliasing
translator bug (H1, see eval/RISCV_DEEPER_ROOT_CAUSE.md and
eval/RISCV_ALIAS_FIX_RESULTS.md).

eval/riscv_h1_alias_bug_scan.py only scans the immutable *.s.pre_corpus_fix
originals (pre-translation ARM64/x86 text) for the w<N>/x<N> aliasing
pattern -- that count is a property of the SOURCE corpus and is structurally
invariant across a translator fix (confirmed: rerunning it post-fix gives
identical 36/36 MDS, 32/162 L1TF numbers). It cannot tell you whether the
*translated* RISC-V output still has the data-flow bug.

This script instead builds the REAL PDG (spec_pdg_builder.SpecBackedPDGBuilder)
for every corpus file flagged by riscv_h1_alias_bug_scan.py's logic, then
calls the REAL dataflow_taint.apply_dataflow_taint() (the exact downstream
consumer the bug silently broke) and checks whether the
LOAD -> probe-scale SHIFT -> LOAD/STORE chain now taints successfully
(is_secret_source / is_transmitter spec_flags get set on some node). This
directly exercises the code path described in the bug report ("the shift
node ends up with zero incoming DATA_DEP edges from the load") rather than
relying on a regex proxy.

Usage:
  python3 eval/riscv_h1_alias_dataflow_verify.py <repo_root> [label]
"""
import re
import sys
from pathlib import Path
from collections import Counter

ROOT = Path(sys.argv[1])
LABEL = sys.argv[2] if len(sys.argv) > 2 else str(ROOT)
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from pdg_builder import SPEC_FLAGS  # noqa: E402
from dataflow_taint import apply_dataflow_taint  # noqa: E402

IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

CORPUS = ROOT / "riscv_corpus"
_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s(\.pre_corpus_fix)?$')
KEYWORD_TO_LABEL = [
    ("spectre_rsb", "SPECTRE_RSB"), ("spectre_v2", "SPECTRE_V2"),
    ("spectre_2", "SPECTRE_V2"), ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"), ("inception", "INCEPTION"),
    ("l1tf", "L1TF"), ("mds", "MDS"), ("bhi", "BRANCH_HISTORY_INJECTION"),
    ("utils", "BENIGN"),
]
EXCLUDED = {"downfall"}
APP_BLOCK_RE = re.compile(r'^ #APP\n(.*?)\n #NO_APP\s*$', re.MULTILINE | re.DOTALL)
WX_RE = re.compile(r'\b([xw])(\d{1,2})\b')
_COMMENT = re.compile(r"[#;].*$")


def label_for_stem(stem):
    low = stem.lower()
    if any(k in low for k in EXCLUDED):
        return None
    for kw, label in KEYWORD_TO_LABEL:
        if kw in low:
            return label
    return None


def is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.startswith(".") and not s.endswith(":") and ":" not in s.split()[0]


def extract_sequence(p: Path):
    seq = []
    for raw in p.read_text(errors="ignore").splitlines():
        line = _COMMENT.sub("", raw).rstrip()
        if is_instr(line):
            seq.append(line.strip())
    return seq


def find_alias_files():
    """Same detection logic as eval/riscv_h1_alias_bug_scan.py: which
    files' PRE-TRANSLATION source contains the w<N>/x<N> aliasing idiom
    (the bug precondition, invariant across the fix)."""
    files_by_label = {}
    for f in sorted(CORPUS.glob("*.s.pre_corpus_fix")):
        stem = _OPT_SUFFIX.sub("", f.name)
        label = label_for_stem(stem)
        if label is None:
            continue
        text = f.read_text(errors="ignore")
        has_alias = False
        for m in APP_BLOCK_RE.finditer(text):
            block = m.group(1)
            nums_seen = {}
            for width, num in WX_RE.findall(block):
                nums_seen.setdefault(num, set()).add(width)
            if any(widths == {"w", "x"} for widths in nums_seen.values()):
                has_alias = True
                break
        if has_alias:
            files_by_label.setdefault(label, []).append(f.name.replace(".pre_corpus_fix", ""))
    return files_by_label


def main():
    engine = load_engine("riscv.json")
    builder = SpecBackedPDGBuilder(engine)

    files_by_label = find_alias_files()
    total_files = sum(len(v) for v in files_by_label.values())
    print(f"repo: {ROOT}  [{LABEL}]")
    print(f"alias-flagged files (from pre_corpus_fix originals): {total_files}")
    print()

    per_class_tainted = Counter()
    per_class_total = Counter()
    untainted_examples = []

    for label, fnames in sorted(files_by_label.items()):
        for fname in fnames:
            path = CORPUS / fname
            if not path.exists():
                continue
            per_class_total[label] += 1
            seq = extract_sequence(path)
            pdg = builder.build(seq)
            apply_dataflow_taint(pdg)
            tainted = any(
                node.spec_flags[IS_SECRET_SOURCE] > 0 or node.spec_flags[IS_TRANSMITTER] > 0
                for node in pdg.nodes
            )
            if tainted:
                per_class_tainted[label] += 1
            else:
                if len(untainted_examples) < 10:
                    untainted_examples.append((label, fname))

    print(f"{'class':<28} {'files_checked':>14} {'files_tainted':>14} {'files_NOT_tainted':>18}")
    for label in sorted(per_class_total):
        total = per_class_total[label]
        tainted = per_class_tainted[label]
        print(f"{label:<28} {total:>14} {tainted:>14} {total - tainted:>18}")

    grand_total = sum(per_class_total.values())
    grand_tainted = sum(per_class_tainted.values())
    print()
    print(f"TOTAL: {grand_tainted}/{grand_total} alias-flagged files successfully taint (is_secret_source/is_transmitter fires)")
    print(f"TOTAL still broken (taint does NOT fire): {grand_total - grand_tainted}/{grand_total}")

    if untainted_examples:
        print("\nStill-broken examples:")
        for label, fname in untainted_examples:
            print(f"  [{label}] {fname}")


if __name__ == "__main__":
    main()
