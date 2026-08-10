#!/usr/bin/env python3
"""
H1 scan: for the CURRENT (already-patched) riscv_corpus/*.s, scan #APP...#NO_APP
inline-asm blocks for residual non-RISC-V mnemonics, broken down by the true
vuln-class label (using the exact label-recovery logic from
spec/eval_riscv_real.py's build_riscv_records()/label_for_stem()).

This is a *direct text scan*, independent of patch_riscv_corpus_asm.py's own
--report (which re-runs its ARM/x86->RISC-V translation table against the
CURRENT corpus and reports "unmatched" for statements that are already
correctly-translated RISC-V, e.g. "jalr a5", "j 1f" -- confirmed by diffing
c_vulns_c_code_bhi.O0.riscv64.s.pre_corpus_fix vs the current file: those
exact strings appear as *outputs* of a successful translation, so counting
them as "still broken" would be wrong).
"""
import re
import sys
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(__file__).resolve().parent  # will be overridden below
CORPUS = Path(sys.argv[1]) if len(sys.argv) > 1 else None
if CORPUS is None:
    print("usage: h1_contamination_scan.py <riscv_corpus_dir>")
    sys.exit(1)

_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s$')
KEYWORD_TO_LABEL = [
    ("spectre_rsb", "SPECTRE_RSB"),
    ("spectre_v2", "SPECTRE_V2"),
    ("spectre_2", "SPECTRE_V2"),
    ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"),
    ("inception", "INCEPTION"),
    ("l1tf", "L1TF"),
    ("mds", "MDS"),
    ("bhi", "BRANCH_HISTORY_INJECTION"),
    ("utils", "BENIGN"),
]
EXCLUDED_KEYWORDS = {"downfall"}

def label_for_stem(stem: str):
    low = stem.lower()
    for kw in EXCLUDED_KEYWORDS:
        if kw in low:
            return None
    for kw, label in KEYWORD_TO_LABEL:
        if kw in low:
            return label
    return None

APP_BLOCK_RE = re.compile(r'^ #APP\n(.*?)\n #NO_APP\s*$', re.MULTILINE | re.DOTALL)
GCC_LINE_MARKER_RE = re.compile(r'^#\s*\d+\s+"[^"]*"(\s+\d+)*\s*$')

# Non-RISC-V mnemonics that would only appear via untranslated ARM64/x86
# inline asm (chosen to exclude tokens shared across ISAs like "nop", "ret",
# numeric labels, or riscv's own "j"/"call").
X86_MARKERS = {
    # RISC-V has none of these mnemonics (uses mv/j/jr/jalr/slli/srli/srai
    # and branch-with-compare instead) -- unambiguous x86 markers only.
    # Deliberately EXCLUDES add/sub/xor/and/or/call: those are also valid
    # native RISC-V R-type/pseudo mnemonics and would be false positives
    # (confirmed: an earlier pass of this script flagged "add"/"xor"/"call"
    # in blocks that patch_riscv_corpus_asm.py had already correctly
    # translated to real RISC-V, e.g. "add t2, a4, t1" / "call target_a").
    "mov", "movzbl", "movb", "movq", "movl", "cmp", "cmpq", "test", "testq",
    "jmp", "jae", "jge", "jne", "je", "jle", "jl", "jg", "callq",
    "push", "pushq", "pop", "popq", "leave", "lfence", "mfence", "sfence",
    "clflush", "rdtsc", "shl", "shr", "sar", "lea", "leaq",
}
ARM_MARKERS = {
    "ldr", "ldrb", "ldrh", "str", "strb", "strh", "mrs", "msr", "dsb",
    "isb", "dc", "ic", "hint", "eor", "lsl", "lsr", "asr", "br", "blr",
    "cbz", "cbnz", "b.hs", "b.ge", "b.lo", "b.lt", "b.eq", "b.ne", "csdb",
    "adrp", "adr",
}
FOREIGN_MARKERS = X86_MARKERS | ARM_MARKERS

MNEM_RE = re.compile(r'^([A-Za-z][A-Za-z0-9.]*)')

def app_block_mnemonics(block_text: str):
    mnems = []
    for line in block_text.split("\n"):
        line = line.strip()
        if not line or GCC_LINE_MARKER_RE.match(line):
            continue
        for stmt in line.split(";"):
            stmt = stmt.strip()
            if not stmt:
                continue
            # strip leading numeric label like "1:"
            stmt = re.sub(r'^\d+:\s*', '', stmt).strip()
            if not stmt:
                continue
            m = MNEM_RE.match(stmt)
            if m:
                mnems.append(m.group(1).lower())
    return mnems

per_class_files = Counter()
per_class_contaminated_files = Counter()
per_class_contaminated_blocks = Counter()
per_class_total_blocks = Counter()
contaminated_examples = defaultdict(list)
mnemonic_hits = Counter()

files = sorted(p for p in CORPUS.glob("*.s") if not p.name.endswith(".pre_corpus_fix"))
n_no_label = 0
for f in files:
    stem = _OPT_SUFFIX.sub("", f.name)
    label = label_for_stem(stem)
    if label is None:
        n_no_label += 1
        continue
    per_class_files[label] += 1
    text = f.read_text(errors="ignore")
    file_contaminated = False
    for m in APP_BLOCK_RE.finditer(text):
        block = m.group(1)
        per_class_total_blocks[label] += 1
        mnems = app_block_mnemonics(block)
        foreign = [mn for mn in mnems if mn in FOREIGN_MARKERS]
        if foreign:
            per_class_contaminated_blocks[label] += 1
            file_contaminated = True
            for mn in foreign:
                mnemonic_hits[(label, mn)] += 1
            if len(contaminated_examples[label]) < 3:
                contaminated_examples[label].append((f.name, foreign[:5], block.strip()[:120]))
    if file_contaminated:
        per_class_contaminated_files[label] += 1

print(f"corpus files scanned: {len(files)}  (label=None skipped: {n_no_label})")
print()
print(f"{'class':<28} {'files':>6} {'files_w_APP_contam':>20} {'blocks_total':>13} {'blocks_contam':>14}")
for label in sorted(per_class_files):
    print(f"{label:<28} {per_class_files[label]:>6} {per_class_contaminated_files[label]:>20} "
          f"{per_class_total_blocks[label]:>13} {per_class_contaminated_blocks[label]:>14}")

print()
print("Top foreign mnemonics found, by class:")
by_class = defaultdict(Counter)
for (label, mn), n in mnemonic_hits.items():
    by_class[label][mn] = n
for label in sorted(by_class):
    top = by_class[label].most_common(10)
    print(f"  {label}: {top}")

print()
print("Example contaminated blocks (up to 3 per class):")
for label in sorted(contaminated_examples):
    print(f"\n-- {label} --")
    for fname, foreign, snippet in contaminated_examples[label]:
        print(f"  {fname}  foreign_mnemonics={foreign}")
        print(f"    {snippet!r}")
