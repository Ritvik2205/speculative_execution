#!/usr/bin/env python3
"""
Quantify the w<N>/x<N> register-width-alias translation bug found by manual
inspection of c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0.O0.riscv64.s:

Original ARM64 inline asm (from .pre_corpus_fix, i.e. pre-translation):
    ldrb w0, [a5]        ; secret byte -> w0 (32-bit view of x0)
    lsl  x0, x0, #6       ; shift the SAME physical register (64-bit view)
    ldr  x1, [a4, x0]     ; indexed load using the shifted secret

scripts/translate_riscv_inline_asm.py's find_literal_registers() matches
"w0" and "x0" as two textually-distinct tokens (regex `\\b[xw](\\d{1,2})\\b`)
and assigns them to DIFFERENT RISC-V scratch temporaries in the remap dict
(w0->t0, x0->t1, ...), even though they are the same architectural register
in ARM64 (w-suffix = low 32 bits of the same x-register). This silently
severs the LOAD->SHIFT data dependency that spec/dataflow_taint.py's
Meltdown/L1TF-idiom detector (_find_probe_gated_ancestor_load) requires,
even though the translated RISC-V text is syntactically valid RISC-V and the
taint-detection algorithm is logically correct in isolation.

This script scans every #APP block in the pre_corpus_fix (pre-translation)
originals for the wN/xN-matching-N pattern (a proxy for "this block uses
ARM's register-width-aliasing idiom that the translator's naive per-token
remap cannot preserve"), broken down by true class.
"""
import re
import sys
from pathlib import Path
from collections import Counter

ROOT = Path(sys.argv[1])
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


def label_for_stem(stem):
    low = stem.lower()
    if any(k in low for k in EXCLUDED):
        return None
    for kw, label in KEYWORD_TO_LABEL:
        if kw in low:
            return label
    return None


APP_BLOCK_RE = re.compile(r'^ #APP\n(.*?)\n #NO_APP\s*$', re.MULTILINE | re.DOTALL)
WX_RE = re.compile(r'\b([xw])(\d{1,2})\b')

per_class_files = Counter()
per_class_files_with_alias = Counter()
per_class_blocks_with_alias = Counter()
per_class_total_blocks = Counter()
examples = []

files = sorted(p for p in CORPUS.glob("*.s.pre_corpus_fix"))
for f in files:
    stem = _OPT_SUFFIX.sub("", f.name)
    label = label_for_stem(stem)
    if label is None:
        continue
    per_class_files[label] += 1
    text = f.read_text(errors="ignore")
    file_has_alias = False
    for m in APP_BLOCK_RE.finditer(text):
        block = m.group(1)
        per_class_total_blocks[label] += 1
        toks = WX_RE.findall(block)
        nums_seen = {}
        for width, num in toks:
            nums_seen.setdefault(num, set()).add(width)
        # a "width alias" block: some register number N appears as BOTH w and x
        aliased_nums = [n for n, widths in nums_seen.items() if widths == {"w", "x"}]
        if aliased_nums:
            per_class_blocks_with_alias[label] += 1
            file_has_alias = True
            if len(examples) < 8:
                examples.append((label, f.name.replace(".pre_corpus_fix", ""), aliased_nums, block.strip()[:150]))
    if file_has_alias:
        per_class_files_with_alias[label] += 1

print(f"pre_corpus_fix files scanned: {len(files)}")
print()
print(f"{'class':<28} {'files':>6} {'files_w_alias_bug':>18} {'blocks_total':>13} {'blocks_w_alias':>15}")
for label in sorted(per_class_files):
    print(f"{label:<28} {per_class_files[label]:>6} {per_class_files_with_alias[label]:>18} "
          f"{per_class_total_blocks[label]:>13} {per_class_blocks_with_alias[label]:>15}")

print("\nExamples:")
for label, fname, nums, snippet in examples:
    print(f"  [{label}] {fname}  aliased_reg_nums={nums}")
    print(f"    {snippet!r}")
