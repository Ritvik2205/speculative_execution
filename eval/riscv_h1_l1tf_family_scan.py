#!/usr/bin/env python3
"""Break down L1TF (and MDS) riscv_corpus files by source-family (the
distinguishing part of the filename before _gen_N), and report how many
files in each family have any #APP block at all, and how many of those
have the w<N>/x<N> register-alias bug."""
import re
import sys
from pathlib import Path
from collections import Counter, defaultdict

ROOT = Path(sys.argv[1])
CORPUS = ROOT / "riscv_corpus"
APP_BLOCK_RE = re.compile(r'^ #APP\n(.*?)\n #NO_APP\s*$', re.MULTILINE | re.DOTALL)
WX_RE = re.compile(r'\b([xw])(\d{1,2})\b')
FAMILY_RE = re.compile(r'^(.*?)(_arm64|_x86_64)?_gen_\d+')

target_kw = sys.argv[2] if len(sys.argv) > 2 else "l1tf"

files = sorted(p for p in CORPUS.glob("*.s") if not p.name.endswith(".pre_corpus_fix")
                and target_kw in p.name.lower())
family_total = Counter()
family_has_app = Counter()
family_has_alias = Counter()

for f in files:
    m = FAMILY_RE.match(f.stem.replace(".riscv64", "").split(".O")[0] if False else f.name)
    # simpler: strip .O#.riscv64.s and _gen_N suffix
    stem = re.sub(r'\.O\d+\.riscv64\.s$', '', f.name)
    stem = re.sub(r'_gen_\d+$', '', stem)
    family = stem
    family_total[family] += 1

    pre = CORPUS / (f.name + ".pre_corpus_fix")
    src_for_app = pre if pre.exists() else f
    text = src_for_app.read_text(errors="ignore")
    blocks = list(APP_BLOCK_RE.finditer(text))
    if blocks:
        family_has_app[family] += 1
        for bm in blocks:
            block = bm.group(1)
            toks = WX_RE.findall(block)
            nums_seen = defaultdict(set)
            for width, num in toks:
                nums_seen[num].add(width)
            if any(w == {"w", "x"} for w in nums_seen.values()):
                family_has_alias[family] += 1
                break

print(f"{'family':<70} {'n_files':>8} {'has_#APP':>9} {'has_alias_bug':>14}")
for fam in sorted(family_total):
    print(f"{fam:<70} {family_total[fam]:>8} {family_has_app[fam]:>9} {family_has_alias[fam]:>14}")
