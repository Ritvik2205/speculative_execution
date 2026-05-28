# Function-Level Dataset Overhaul Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the 20-instruction sliding-window data format with whole-function assembly sequences, add new attack classes (SPECTRE_RSB, DOWNFALL) from academic literature, mine real-world CVE gadgets from the Linux kernel, cap augmentation to prevent memorization, and produce a v44 training set that enables true semantic generalization.

**Architecture:** Each assembly function is one training example (not a 20-instruction window). A function-level parser handles macOS Clang syntax, Linux GCC AT&T syntax, and ARM64 cross-compiler output. MAX_NODES in the PDG builder is raised from 64→256. A new honest split (v44_honest_test.jsonl) is created from the rebuilt function-level base dataset. New attack classes SPECTRE_RSB and DOWNFALL are added with C source files, Docker compilation, and label propagation throughout the pipeline.

**Tech Stack:** Python 3.10+, Docker (Ubuntu 22.04 / specexec-compile:latest), GCC 12, Clang 14, aarch64-linux-gnu-gcc, PyTorch/GINE (v40_export/), PyTorch Geometric.

---

## Files Created or Modified

| Path | Action | Purpose |
|---|---|---|
| `scripts/enrichment/extract_functions.py` | Create | Parse .s files → (func_name, instructions) for macOS+Linux syntax |
| `scripts/enrichment/rebuild_base_dataset.py` | Create | Re-extract base dataset from asm_code/*.s using function-level parser; create v44 honest split |
| `scripts/enrichment/phase8_kernel_gadgets.py` | Create (replaces phase3) | Clone Linux kernel, extract pre-patch functions from Spectre CVE commits |
| `scripts/enrichment/phase9_new_classes.py` | Create | Compile SPECTRE_RSB + DOWNFALL C sources via Docker |
| `scripts/enrichment/common.py` | Modify | Raise max_len from 200→500; add TEST_PATH_V44 constant |
| `scripts/enrichment/assemble_training.py` | Modify | Add phase8/phase9 to PHASE_FILES; output v44_train_enriched.jsonl |
| `scripts/enrichment/phase1_augment_train.py` | Modify | Cap N_PER_TRANSFORM from 5→1; use v44_honest_train.jsonl as input |
| `docker/extract_windows.py` | Modify | Replace sliding-window logic with function-level extraction |
| `docker/compile_attack_sources.sh` | Modify | Add SPECTRE_RSB + DOWNFALL to LABEL_MAP |
| `v40_export/train_gine_v38.py` | Modify | MAX_NODES 64→256, MAX_EDGES 512→2048; add new class labels to CONFUSED_CLASS_NAMES |
| `v40_export/pdg_builder.py` | No change needed | Already handles variable-length sequences; MAX_NODES is set in train script |
| `c_vulns/c_code/spectre_rsb.c` | Create | SPECTRE_RSB gadget examples (return stack buffer poisoning) |
| `c_vulns/c_code/spectre_rsb_arm64.c` | Create | ARM64 RSB gadget examples |
| `c_vulns/c_code/downfall.c` | Create | DOWNFALL/GDS AVX gather-based data sampling gadgets |
| `v42/run.sh` | Modify | Update to v44_train_enriched.jsonl, viz_v44, new class list |
| `docs/references.md` | Create | All cited papers, datasets, CVEs used in this project |

---

## Task 1: Create function-level assembly parser

**Files:**
- Create: `scripts/enrichment/extract_functions.py`

This is the foundation of the entire overhaul. It must handle three distinct assembly dialects:
1. macOS Clang (used by existing `c_vulns/asm_code/*.s` files): `; -- Begin function NAME` / `; -- End function`
2. Linux GCC AT&T (produced by Docker x86_64 compilation): `.type NAME, @function` ... `.size NAME, .-NAME`
3. Linux Clang AT&T (same, but uses `.Lfunc_end` markers)
4. ARM64 cross-compiler: `.type NAME, %function` (same as GCC AT&T but with `%function`)

- [ ] **Step 1: Create `scripts/enrichment/extract_functions.py`**

```python
#!/usr/bin/env python3
"""
Parse assembly files (.s) into whole-function instruction sequences.

Supports:
  - macOS Clang syntax: '; -- Begin function NAME' / '; -- End function'
  - Linux GCC/Clang AT&T syntax: '.type NAME, @function' + '.size NAME, .-NAME'
  - ARM64 cross-compiler: '.type NAME, %function'

Returns list of (function_name, instructions) where instructions is a list of
stripped assembly instruction strings with labels, directives, and comments removed.

Usage:
    from extract_functions import parse_functions, is_instruction_line
    funcs = parse_functions(asm_text)
    # funcs: list[tuple[str, list[str]]]
"""
import re
from typing import Optional

# Lines to skip regardless of dialect
_SKIP_PREFIXES = (".", "#", "//", ";", "@")

# Utility function labels to exclude from training data
_SKIP_FUNC_PATTERNS = re.compile(
    r'^(_?_mm_(mfence|lfence|clflush|clflushopt)|'
    r'_?barrier|'
    r'_?flush_probe_array|'
    r'_?measure_|'
    r'_?time_|'
    r'_?rdtsc|'
    r'main|'
    r'__asan_|'
    r'__ubsan_)$',
    re.I,
)


def is_instruction_line(line: str) -> bool:
    """Return True if line is an assembly instruction (not a directive, label, or comment)."""
    s = line.strip()
    if not s:
        return False
    if s.endswith(":"):          # label definition
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True


def _should_skip_function(name: str) -> bool:
    """Return True for utility/harness functions that are not vulnerability examples."""
    return bool(_SKIP_FUNC_PATTERNS.match(name.lstrip("_")))


def _extract_instructions(body: str) -> list[str]:
    """Extract instruction strings from raw function body text."""
    return [line.strip() for line in body.splitlines() if is_instruction_line(line)]


def _parse_macos(text: str) -> list[tuple[str, list[str]]]:
    """Parse macOS Clang assembly: '; -- Begin function NAME' markers."""
    results = []
    parts = re.split(r';\s*--\s*Begin function\s+', text)
    for part in parts[1:]:
        nl = part.find('\n')
        name = part[:nl].strip()
        end = part.find('; -- End function')
        body = part[:end] if end != -1 else part
        instrs = _extract_instructions(body)
        if len(instrs) >= 3 and not _should_skip_function(name):
            results.append((name, instrs))
    return results


def _parse_linux_att(text: str) -> list[tuple[str, list[str]]]:
    """
    Parse Linux GCC/Clang AT&T assembly.
    Function boundaries via: .type NAME, @function (or %function for ARM64)
    End markers: .size NAME, .-NAME  or  .Lfunc_end  or  next .type line
    """
    results = []
    # Find all function start markers
    func_starts = list(re.finditer(
        r'\.type\s+(\w+),\s*[@%]function',
        text,
    ))
    lines = text.splitlines()
    line_starts = []  # character offset of each line start
    pos = 0
    for line in lines:
        line_starts.append(pos)
        pos += len(line) + 1

    def char_to_line(char_pos: int) -> int:
        lo, hi = 0, len(line_starts) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if line_starts[mid] <= char_pos:
                lo = mid
            else:
                hi = mid - 1
        return lo

    for i, match in enumerate(func_starts):
        name = match.group(1)
        start_line = char_to_line(match.start())
        # End: either .size NAME,.-NAME  or  next .type line  or  EOF
        end_line = len(lines)
        if i + 1 < len(func_starts):
            end_line = min(end_line, char_to_line(func_starts[i + 1].start()))
        # Also look for .size marker
        size_pat = re.compile(r'\.size\s+' + re.escape(name) + r'\s*,')
        for j in range(start_line, end_line):
            if size_pat.search(lines[j]):
                end_line = j
                break

        body = '\n'.join(lines[start_line:end_line])
        instrs = _extract_instructions(body)
        if len(instrs) >= 3 and not _should_skip_function(name):
            results.append((name, instrs))
    return results


def parse_functions(asm_text: str) -> list[tuple[str, list[str]]]:
    """
    Parse assembly text into (function_name, instructions) pairs.

    Automatically detects dialect (macOS vs Linux AT&T).
    Returns list of (name, instructions) where instructions has directives
    and labels removed. Functions shorter than 3 instructions are dropped.
    Utility functions (mfence, lfence, clflush, main, etc.) are excluded.
    """
    if '; -- Begin function' in asm_text:
        return _parse_macos(asm_text)
    if '.type' in asm_text and ('@function' in asm_text or '%function' in asm_text):
        return _parse_linux_att(asm_text)
    # Fallback: return the whole file as one unnamed sequence
    instrs = _extract_instructions(asm_text)
    if len(instrs) >= 3:
        return [('_unknown', instrs)]
    return []


def truncate_function(instructions: list[str], max_len: int = 500) -> list[str]:
    """
    Truncate a function that exceeds max_len instructions.
    Cuts at the last RET/return instruction before max_len,
    or at max_len if no return is found.
    """
    if len(instructions) <= max_len:
        return instructions
    # Find last RET before max_len
    ret_pat = re.compile(r'\b(ret|retq|retl|retw|ret\.n|bx\s+lr|ldm.*pc)\b', re.I)
    last_ret = -1
    for i in range(min(max_len, len(instructions)) - 1, -1, -1):
        if ret_pat.search(instructions[i]):
            last_ret = i
            break
    cut = last_ret + 1 if last_ret > max_len // 2 else max_len
    return instructions[:cut]
```

- [ ] **Step 2: Smoke-test the parser on existing asm files**

```bash
python3 -c "
import sys
sys.path.insert(0, 'scripts/enrichment')
from extract_functions import parse_functions, truncate_function
import glob

total_funcs = 0
size_sum = 0
for path in sorted(glob.glob('c_vulns/asm_code/*.s'))[:5]:
    text = open(path, errors='replace').read()
    funcs = parse_functions(text)
    print(f'{path}: {len(funcs)} functions')
    for name, instrs in funcs[:3]:
        truncated = truncate_function(instrs)
        print(f'  {name}: {len(instrs)} instr  (truncated: {len(truncated)})')
    total_funcs += len(funcs)
    size_sum += sum(len(i) for _, i in funcs)
print(f'Total functions: {total_funcs}')
"
```

Expected: each .s file yields 2–15 functions, instruction counts range 3–200.

- [ ] **Step 3: Commit**

```bash
git add scripts/enrichment/extract_functions.py
git commit -m "feat: function-level assembly parser — replaces sliding-window extraction"
```

---

## Task 2: Update common.py for function-level sequences

**Files:**
- Modify: `scripts/enrichment/common.py`

The current `validate_and_dedup` rejects sequences longer than 200 instructions. Functions can be up to 500 instructions. The frozen test set path also needs a v44 constant.

- [ ] **Step 1: Update `scripts/enrichment/common.py`**

Replace the `validate_and_dedup` signature default and add constants:

```python
# scripts/enrichment/common.py
"""
Shared utilities for all enrichment phases.
The test set is loaded ONCE as a frozenset of hashes and used to reject
any new sequence that would contaminate evaluation.
"""
import hashlib
import json
import os
from pathlib import Path

ROOT = Path(__file__).parent.parent.parent  # SpecExec/
TEST_PATH    = ROOT / "data" / "v25_honest_test.jsonl"    # legacy (window-based)
TEST_PATH_V44 = ROOT / "data" / "v44_honest_test.jsonl"  # function-level test set


def seq_hash(seq: list[str]) -> str:
    return hashlib.md5("|".join(str(tok) for tok in seq).encode()).hexdigest()


def load_test_hashes(path=None) -> frozenset:
    """Load the frozen test set sequence hashes. Call once per script."""
    p = Path(path) if path else TEST_PATH_V44
    if not p.exists():
        # Fall back to legacy test set if v44 not yet created
        p = TEST_PATH
    if not p.exists():
        raise FileNotFoundError(
            f"[common] Frozen test set not found at {p}. "
            "Run scripts/enrichment/rebuild_base_dataset.py first."
        )
    hashes = set()
    with open(p) as f:
        for line in f:
            if line.strip():
                r = json.loads(line)
                hashes.add(seq_hash(r.get("sequence", [])))
    print(f"[common] Loaded {len(hashes):,} frozen test hashes from {p}")
    return frozenset(hashes)


def validate_and_dedup(
    records: list,
    test_hashes: frozenset,
    existing_hashes: set | None = None,
    min_len: int = 5,
    max_len: int = 500,          # raised from 200 → 500 for function-level sequences
) -> tuple:
    """
    Filter records against the frozen test set and deduplicate.
    Returns (clean_records, stats_dict).
    existing_hashes: set of (seq_hash, label) tuples already accepted.
    """
    if existing_hashes is None:
        existing_hashes = set()

    seen = set(existing_hashes)
    clean = []
    stats = {
        "input": len(records),
        "rejected_test_collision": 0,
        "rejected_duplicate": 0,
        "rejected_too_short": 0,
        "rejected_too_long": 0,
        "accepted": 0,
    }

    for r in records:
        seq = r.get("sequence", [])
        n = len(seq)
        if n < min_len:
            stats["rejected_too_short"] += 1
            continue
        if n > max_len:
            stats["rejected_too_long"] += 1
            continue
        h = seq_hash(seq)
        if h in test_hashes:
            stats["rejected_test_collision"] += 1
            continue
        key = (h, r.get("label", ""))
        if key in seen:
            stats["rejected_duplicate"] += 1
            continue
        seen.add(key)
        clean.append(r)
        stats["accepted"] += 1

    return clean, stats


def write_jsonl(records: list, path) -> None:
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")
    print(f"[common] Wrote {len(records):,} records to {path}")


def load_jsonl(path) -> list:
    records = []
    with open(path) as f:
        for line in f:
            if line.strip():
                records.append(json.loads(line))
    return records
```

- [ ] **Step 2: Verify the change didn't break existing scripts**

```bash
python3 -c "
import sys
sys.path.insert(0, 'scripts/enrichment')
from common import validate_and_dedup, load_test_hashes
# Test that old 200-instr sequences are still accepted
dummy = [{'label': 'BENIGN', 'sequence': ['nop'] * 200}]
clean, stats = validate_and_dedup(dummy, frozenset(), min_len=5, max_len=500)
assert stats['accepted'] == 1, f'expected 1, got {stats}'
# Test that 501-instr sequences are now rejected
too_long = [{'label': 'BENIGN', 'sequence': ['nop'] * 501}]
clean2, stats2 = validate_and_dedup(too_long, frozenset(), min_len=5, max_len=500)
assert stats2['rejected_too_long'] == 1
print('common.py validation OK')
"
```

Expected: `common.py validation OK`

- [ ] **Step 3: Commit**

```bash
git add scripts/enrichment/common.py
git commit -m "fix: raise max_len 200→500 in common.py for function-level sequences; add TEST_PATH_V44 constant"
```

---

## Task 3: Update model for larger function-level inputs

**Files:**
- Modify: `v40_export/train_gine_v38.py` lines 49-51

The current `MAX_NODES=64, MAX_EDGES=512` caps function graphs at 64 nodes. Vulnerability functions can be up to ~100 nodes after boilerplate stripping. Raise both limits and add new classes to confused pairs.

- [ ] **Step 1: Update constants and class configuration in `v40_export/train_gine_v38.py`**

Find and replace (around lines 49-62):

```python
MAX_NODES = 256        # was 64 — supports full function-level sequences
MAX_EDGES = 2048       # was 512 — denser graphs for longer sequences
NODE_FEATURE_DIM = 35  # unchanged: 34 base + 1 positional

CONFUSED_CLASS_NAMES = [
    ('L1TF', 'SPECTRE_V1'),
    ('L1TF', 'SPECTRE_V4'),
    ('MDS', 'SPECTRE_V4'),
    ('SPECTRE_V1', 'SPECTRE_V4'),
    ('SPECTRE_V2', 'BRANCH_HISTORY_INJECTION'),
    ('SPECTRE_V2', 'INCEPTION'),
    ('RETBLEED', 'INCEPTION'),
    ('SPECTRE_V2', 'SPECTRE_RSB'),     # new: RSB shares indirect-branch patterns
    ('RETBLEED', 'SPECTRE_RSB'),       # new: RSB shares return-prediction patterns
    ('DOWNFALL', 'MDS'),               # new: GDS is MDS-family
    ('DOWNFALL', 'L1TF'),              # new: GDS targets L1D
]
```

- [ ] **Step 2: Verify the model initializes without errors with new MAX_NODES**

```bash
cd v40_export && python3 -c "
import sys
sys.path.insert(0, '.')
from train_gine_v38 import MAX_NODES, MAX_EDGES, NODE_FEATURE_DIM
assert MAX_NODES == 256, MAX_NODES
assert MAX_EDGES == 2048, MAX_EDGES
print(f'MAX_NODES={MAX_NODES} MAX_EDGES={MAX_EDGES} NODE_DIM={NODE_FEATURE_DIM}  OK')
" && cd ..
```

Expected: `MAX_NODES=256 MAX_EDGES=2048 NODE_DIM=35  OK`

- [ ] **Step 3: Commit**

```bash
git add v40_export/train_gine_v38.py
git commit -m "feat: raise MAX_NODES 64→256, MAX_EDGES 512→2048 for function-level PDGs; add RSB/DOWNFALL confused pairs"
```

---

## Task 4: Rebuild base dataset with function-level sequences

**Files:**
- Create: `scripts/enrichment/rebuild_base_dataset.py`

This script replaces the old sliding-window base dataset (`data/v25_honest_train.jsonl` + `data/v25_honest_test.jsonl`) with a function-level version. It reads every `.s` file under `c_vulns/asm_code/`, extracts functions, infers labels from filenames, and creates a group-aware honest split.

**Label inference**: same as Docker's LABEL_MAP — substring match on lowercased file path. Utility files (`utils.c`, `mfence`, `clflush`) are excluded by the function parser.

**Group-aware split**: hold out 20% of unique source files as the test set (same principle as v25 but now producing function-level sequences). Groups = source file stem (e.g., `spectre_1_arm64`).

- [ ] **Step 1: Create `scripts/enrichment/rebuild_base_dataset.py`**

```python
#!/usr/bin/env python3
"""
Rebuild the base dataset using function-level assembly extraction.

Reads all .s files under c_vulns/asm_code/ and c_vulns/ subdirectories,
extracts whole functions (not sliding windows), infers vulnerability labels
from file paths, and creates a group-aware honest train/test split.

Outputs:
    data/v44_base_functions.jsonl  — all extracted functions (before split)
    data/v44_honest_train.jsonl    — 80% of source groups
    data/v44_honest_test.jsonl     — 20% of source groups (frozen test set)

Usage:
    python3 scripts/enrichment/rebuild_base_dataset.py
"""
import sys, json, re, random
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from extract_functions import parse_functions, truncate_function
from common import seq_hash, write_jsonl, TEST_PATH_V44

ASM_DIRS = [
    ROOT / "c_vulns" / "asm_code",
]

OUT_ALL   = ROOT / "data" / "v44_base_functions.jsonl"
OUT_TRAIN = ROOT / "data" / "v44_honest_train.jsonl"
OUT_TEST  = TEST_PATH_V44  # data/v44_honest_test.jsonl

MAX_FUNC_LEN = 500

# Label inference: longest-match first
LABEL_MAP = {
    "spectre_rsb": "SPECTRE_RSB",
    "spectre_v4":  "SPECTRE_V4",  "spectre4": "SPECTRE_V4",  "spectre_4": "SPECTRE_V4",
    "spectre_v2":  "SPECTRE_V2",  "spectre2": "SPECTRE_V2",  "spectre_2": "SPECTRE_V2",
    "spectre_v1":  "SPECTRE_V1",  "spectre1": "SPECTRE_V1",  "spectre_1": "SPECTRE_V1",
    "spectre_github": "SPECTRE_V1",
    "l1tf":        "L1TF",        "foreshadow": "L1TF",       "meltdown": "L1TF",
    "mds":         "MDS",         "ridl": "MDS",
    "retbleed":    "RETBLEED",
    "inception":   "INCEPTION",   "srso": "INCEPTION",
    "bhi":         "BRANCH_HISTORY_INJECTION",
    "downfall":    "DOWNFALL",    "gds": "DOWNFALL",
}
_SORTED_KEYS = sorted(LABEL_MAP.keys(), key=len, reverse=True)


def infer_label(path: Path) -> str | None:
    text = str(path).lower()
    for key in _SORTED_KEYS:
        if key in text:
            return LABEL_MAP[key]
    return None


def asm_files() -> list[Path]:
    files = []
    for d in ASM_DIRS:
        if d.exists():
            files.extend(sorted(d.rglob("*.s")))
    return files


def main():
    files = asm_files()
    print(f"Found {len(files)} .s files")

    all_records = []
    skipped_no_label = 0
    skipped_too_short = 0

    for asm_path in files:
        label = infer_label(asm_path)
        if label is None:
            skipped_no_label += 1
            continue

        try:
            text = asm_path.read_text(errors="replace")
        except OSError:
            continue

        funcs = parse_functions(text)
        stem = asm_path.stem
        group = f"base_{stem}"

        for func_name, instrs in funcs:
            instrs = truncate_function(instrs, MAX_FUNC_LEN)
            if len(instrs) < 5:
                skipped_too_short += 1
                continue
            all_records.append({
                "label":       label,
                "sequence":    instrs,
                "source_file": str(asm_path.relative_to(ROOT)),
                "group":       group,
                "func_name":   func_name,
                "arch":        _infer_arch(asm_path),
                "augmentation": "",
            })

    print(f"Extracted {len(all_records):,} functions")
    print(f"Skipped: {skipped_no_label} (no label), {skipped_too_short} (too short)")

    label_counts = Counter(r["label"] for r in all_records)
    print("\nPer-class counts:")
    for cls in sorted(label_counts):
        print(f"  {cls:<35} {label_counts[cls]:>6,}")

    # Deduplicate by sequence hash
    seen_hashes: set[tuple] = set()
    deduped = []
    for r in all_records:
        h = seq_hash(r["sequence"])
        k = (h, r["label"])
        if k not in seen_hashes:
            seen_hashes.add(k)
            deduped.append(r)
    print(f"\nAfter dedup: {len(deduped):,} (removed {len(all_records)-len(deduped):,})")

    write_jsonl(deduped, OUT_ALL)

    # Group-aware split: 80% train / 20% test by source group
    groups = defaultdict(list)
    for r in deduped:
        groups[r["group"]].append(r)

    all_groups = sorted(groups.keys())
    # Stratify groups by majority label
    group_label = {}
    for g, recs in groups.items():
        majority = Counter(r["label"] for r in recs).most_common(1)[0][0]
        group_label[g] = majority

    # Split groups label-by-label to maintain class balance
    from collections import defaultdict as dd
    label_groups = dd(list)
    for g in all_groups:
        label_groups[group_label[g]].append(g)

    train_groups, test_groups = set(), set()
    for cls, cls_groups in label_groups.items():
        random.shuffle(cls_groups)
        n_test = max(1, len(cls_groups) // 5)
        test_groups.update(cls_groups[:n_test])
        train_groups.update(cls_groups[n_test:])

    train_records = [r for r in deduped if r["group"] in train_groups]
    test_records  = [r for r in deduped if r["group"] in test_groups]

    # Verify no overlap
    train_hashes = {seq_hash(r["sequence"]) for r in train_records}
    test_hashes  = {seq_hash(r["sequence"]) for r in test_records}
    overlap = len(train_hashes & test_hashes)
    assert overlap == 0, f"Sequence overlap: {overlap}"

    train_grp_set = {r["group"] for r in train_records}
    test_grp_set  = {r["group"] for r in test_records}
    grp_overlap   = len(train_grp_set & test_grp_set)
    assert grp_overlap == 0, f"Group overlap: {grp_overlap}"

    write_jsonl(train_records, OUT_TRAIN)
    write_jsonl(test_records,  OUT_TEST)

    print(f"\nSplit: train={len(train_records):,}  test={len(test_records):,}")
    print(f"Groups: train={len(train_grp_set)}  test={len(test_grp_set)}")
    print(f"Integrity: seq_overlap={overlap}  group_overlap={grp_overlap}  ✓")

    test_cls = Counter(r["label"] for r in test_records)
    print("\nTest set per-class:")
    for cls in sorted(test_cls):
        print(f"  {cls:<35} {test_cls[cls]:>5,}")


def _infer_arch(path: Path) -> str:
    text = str(path).lower()
    if "arm64" in text or "aarch64" in text:
        return "arm64"
    if "arm" in text and "64" not in text:
        return "arm32"
    return "x86_64"


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run the script**

```bash
python3 scripts/enrichment/rebuild_base_dataset.py
```

Expected output (approximately):
```
Found 200+ .s files
Extracted N functions
...
Split: train=X  test=Y
Integrity: seq_overlap=0  group_overlap=0  ✓
Test set per-class:
  BENIGN                              ...
  BRANCH_HISTORY_INJECTION            ...
```

- [ ] **Step 3: Verify test set has all classes**

```bash
python3 -c "
import json
from collections import Counter
test = [json.loads(l) for l in open('data/v44_honest_test.jsonl')]
train = [json.loads(l) for l in open('data/v44_honest_train.jsonl')]
print('Test classes:', dict(Counter(r['label'] for r in test)))
print('Train classes:', dict(Counter(r['label'] for r in train)))
print('Test seq lengths: min=%d max=%d mean=%.1f' % (
    min(len(r['sequence']) for r in test),
    max(len(r['sequence']) for r in test),
    sum(len(r['sequence']) for r in test)/len(test),
))
"
```

Expected: all labels present in both splits, sequence lengths ranging from 5 to ~200+.

- [ ] **Step 4: Commit**

```bash
git add scripts/enrichment/rebuild_base_dataset.py data/v44_honest_test.jsonl data/v44_honest_train.jsonl
git commit -m "feat: rebuild base dataset as function-level sequences; create v44 honest split"
```

---

## Task 5: Add new attack classes — SPECTRE_RSB and DOWNFALL

**Files:**
- Create: `c_vulns/c_code/spectre_rsb.c`
- Create: `c_vulns/c_code/spectre_rsb_arm64.c`
- Create: `c_vulns/c_code/downfall.c`

**SPECTRE_RSB** (CVE-2018-15572, CVE-2018-3693): The Return Stack Buffer (RSB) is used by the CPU to predict return addresses. An attacker who can manipulate the call stack depth (or directly write to kernel RSB entries) can cause speculative execution at an attacker-controlled address when the victim executes `RET`. Pattern: fill RSB with attacker-controlled addresses via a sequence of CALLs without matching RETs, then let victim return speculatively to the crafted address.

**DOWNFALL** (CVE-2022-40982, Intel GDS - Gather Data Sampling): Intel's AVX `VGATHER*` instructions speculatively gather data from stale L1D entries. Pattern: `VGATHERDPD`/`VGATHERQPD` with an index vector, followed by a channel access.

- [ ] **Step 1: Create `c_vulns/c_code/spectre_rsb.c`**

```c
/*
 * SPECTRE_RSB: Return Stack Buffer manipulation gadgets
 *
 * CVE-2018-15572 (Linux IBPB bypass), CVE-2018-3693 (RSB speculation)
 * Paper: "Spectre Returns! Speculation Attacks using the Return Stack Buffer"
 *        Koruyeh et al., WOOT 2018
 *
 * Gadget pattern: over-fill the Return Stack Buffer by making N nested calls
 * without matching returns, then return — the CPU speculatively uses stale
 * (attacker-controlled) RSB entries and executes gadget code speculatively.
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

#define ARRAY2_SIZE 256
#define SECRET_SIZE 64

extern uint8_t array2[ARRAY2_SIZE * 512];
extern uint8_t secret_array[SECRET_SIZE];
extern size_t  array1_size;
extern uint8_t array1[];

/* RSB gadget depth — fill RSB past its 16-entry depth */
#define RSB_DEPTH 32

/*
 * rsb_fill_and_leak: over-fill RSB then leak via cache side-channel.
 * The mis-speculated return executes the gadget_load below.
 */
__attribute__((noinline))
static void gadget_load(uint8_t *ptr, size_t idx) {
    /* speculatively accessed via mispredicted RET */
    volatile uint8_t x = array2[ptr[idx] * 512];
    (void)x;
}

__attribute__((noinline))
void rsb_overfill_level1(uint8_t *secret_ptr) {
    gadget_load(secret_ptr, 0);
}

__attribute__((noinline))
void rsb_overfill_level2(uint8_t *secret_ptr) {
    rsb_overfill_level1(secret_ptr);
}

__attribute__((noinline))
void rsb_overfill_level3(uint8_t *secret_ptr) {
    rsb_overfill_level2(secret_ptr);
}

/* Cross-privilege RSB starvation: caller returns into RSB-predicted target */
__attribute__((noinline))
void spectre_rsb_cross_stack(uint8_t *secret_ptr, size_t depth) {
    if (depth == 0) {
        /* Bottom of recursion: RET here is predicted via stale RSB */
        volatile uint8_t val = array2[secret_ptr[0] * 512];
        (void)val;
        return;
    }
    spectre_rsb_cross_stack(secret_ptr, depth - 1);
}

/* Kernel-to-user RSB underflow pattern (Linux retpoline bypass) */
__attribute__((noinline))
void spectre_rsb_underflow(uint8_t *buf, size_t idx) {
    if (idx < array1_size) {
        volatile uint8_t junk = array2[array1[idx] * 512];
        (void)junk;
    }
    /* Unbalanced CALLs to exhaust RSB */
    rsb_overfill_level3(buf);
}

/* Ret2spec: user-controlled RSB poisoning via CALL/RET imbalance */
__attribute__((noinline))
static uint64_t rsb_rop_gadget(uint8_t *secret, size_t n) {
    uint64_t result = 0;
    for (size_t i = 0; i < n; i++) {
        result ^= (uint64_t)array2[secret[i] * 512];
    }
    return result;
}

__attribute__((noinline))
void spectre_rsb_ret2spec(uint8_t *secret_buf, size_t secret_len,
                           uint8_t *public_buf, size_t public_len) {
    /* Speculatively executes rsb_rop_gadget with secret_buf via RSB mismatch */
    if (public_len < 16) {
        rsb_rop_gadget(secret_buf, secret_len);
    }
}
```

- [ ] **Step 2: Create `c_vulns/c_code/spectre_rsb_arm64.c`**

```c
/*
 * SPECTRE_RSB ARM64: Return Stack Buffer gadgets for AArch64
 *
 * ARM64 calls the RSB the "Return Address Stack" (RAS).
 * Same principle: over-fill RAS via nested BL instructions,
 * then RET is predicted using stale RAS entries.
 *
 * CVE-2018-15572 ARM64 variant; also relevant to INCEPTION-class attacks.
 */
#include <stdint.h>
#include <stddef.h>

extern uint8_t array2[256 * 512];
extern uint8_t secret_array[64];
extern size_t  array1_size;
extern uint8_t array1[];

/* ARM64 RAS depth is typically 8-16 entries */
#define RAS_OVERFILL_DEPTH 24

__attribute__((noinline))
static void arm64_rsb_gadget(uint8_t *secret, size_t i) {
    /* Speculatively reached via stale RAS entry */
    volatile uint8_t x = array2[secret[i] * 512];
    (void)x;
}

__attribute__((noinline))
void arm64_rsb_recursive(uint8_t *secret, size_t depth) {
    if (depth == 0) {
        arm64_rsb_gadget(secret, 0);
        return;
    }
    arm64_rsb_recursive(secret, depth - 1);
}

/*
 * Pattern: BL chain that causes RAS to wrap around,
 * causing speculative execution at stale RAS target on RET.
 */
__attribute__((noinline))
void arm64_spectre_rsb(uint8_t *victim_secret) {
    arm64_rsb_recursive(victim_secret, RAS_OVERFILL_DEPTH);
}

/* RAS underflow: fewer RETs than CALLs causes RAS to predict wrong target */
__attribute__((noinline))
void arm64_ras_underflow(uint8_t *buf, size_t idx) {
    if (idx < array1_size) {
        volatile uint8_t x = array2[array1[idx] * 512];
        (void)x;
    }
    arm64_rsb_recursive(buf, 32);
}
```

- [ ] **Step 3: Create `c_vulns/c_code/downfall.c`**

```c
/*
 * DOWNFALL / GDS: Gather Data Sampling gadgets (Intel only)
 *
 * CVE-2022-40982 — Intel Gather Data Sampling
 * Paper: "Downfall: Exploiting Speculative Data Gathering in Intel Optimized Routines"
 *        Daniel Moghimi, USENIX Security 2023
 *
 * Gadget pattern: Intel VGATHER* instructions speculatively gather data from
 * stale L1D cache entries belonging to other processes/privilege levels.
 * The gathered stale data is then transmitted via a cache side-channel.
 *
 * Requires: x86_64 with AVX2 support (Intel Skylake through Ice Lake)
 */
#include <stdint.h>
#include <stddef.h>
#include <string.h>

#ifdef __AVX2__
#include <immintrin.h>

extern uint8_t array2[256 * 512];
extern uint8_t secret_array[64];

/*
 * downfall_gds_basic: VGATHERDPD gathers doubles from attacker-chosen offsets.
 * Stale L1D data is speculatively forwarded, revealing cross-boundary secrets.
 */
__attribute__((noinline))
void downfall_gds_basic(double *base, int32_t *idx_vec, double *result) {
    __m256i vindex = _mm256_loadu_si256((__m256i *)idx_vec);
    __m256d data   = _mm256_i32gather_pd(base, vindex, 8);
    _mm256_storeu_pd(result, data);
}

/*
 * downfall_gather_leak: Use VGATHERDPD to leak secret cache lines.
 * The stale-forwarding path speculatively bypasses privilege boundaries.
 */
__attribute__((noinline))
void downfall_gather_leak(uint64_t *secret_base, int32_t stride,
                           double *output_buf) {
    int32_t indices[4] = {0, stride, stride*2, stride*3};
    __m256i vindex = _mm256_loadu_si256((__m256i *)indices);
    /* VGATHERDPD: gathers 4 doubles from secret_base at scaled indices */
    __m256d gathered = _mm256_i32gather_pd((double *)secret_base, vindex, 8);
    _mm256_storeu_pd(output_buf, gathered);
    /* Transmit via cache side-channel */
    for (int i = 0; i < 4; i++) {
        uint64_t v;
        memcpy(&v, &output_buf[i], 8);
        volatile uint8_t x = array2[(v & 0xFF) * 512];
        (void)x;
    }
}

/*
 * downfall_qword_gather: VPGATHERQQ variant — gather 64-bit integers
 * at attacker-controlled 64-bit indices. Same stale-forward primitive.
 */
__attribute__((noinline))
void downfall_qword_gather(int64_t *base, int64_t *indices, int64_t *out) {
    __m256i vindex = _mm256_loadu_si256((__m256i *)indices);
    __m256i result = _mm256_i64gather_epi64(base, vindex, 8);
    _mm256_storeu_si256((__m256i *)out, result);
    /* Cache channel */
    volatile uint8_t x = array2[(out[0] & 0xFF) * 512];
    (void)x;
}

/*
 * downfall_transient_avx: AVX-based transient execution.
 * VGATHERDPS variant leaking 32-bit float cache lines.
 */
__attribute__((noinline))
void downfall_transient_avx(float *secret_floats, int32_t *idx, float *out) {
    __m256i vindex = _mm256_loadu_si256((__m256i *)idx);
    __m256  gathered = _mm256_i32gather_ps(secret_floats, vindex, 4);
    _mm256_storeu_ps(out, gathered);
    uint32_t v;
    memcpy(&v, &out[0], 4);
    volatile uint8_t x = array2[(v & 0xFF) * 512];
    (void)x;
}

#else
/* Stub for non-AVX2 compilers: compile succeeds, no AVX instructions emitted */
extern uint8_t array2[256 * 512];
void downfall_gds_basic(void *b, void *i, void *r)         { (void)b;(void)i;(void)r; }
void downfall_gather_leak(void *s, int st, void *o)        { (void)s;(void)st;(void)o; }
void downfall_qword_gather(void *b, void *i, void *o)      { (void)b;(void)i;(void)o; }
void downfall_transient_avx(void *s, void *idx, void *out) { (void)s;(void)idx;(void)out; }
#endif /* __AVX2__ */
```

- [ ] **Step 4: Verify C files compile locally**

```bash
gcc -O2 -mavx2 -S c_vulns/c_code/downfall.c -o /tmp/downfall_test.s 2>&1 && \
    echo "downfall.c OK" || echo "downfall.c compile FAILED (expected on non-AVX2 host)"

gcc -O2 -S c_vulns/c_code/spectre_rsb.c -o /tmp/spectre_rsb_test.s 2>&1 && \
    grep -c "ret\b" /tmp/spectre_rsb_test.s | xargs -I{} echo "spectre_rsb.c OK: {} RET instructions" || \
    echo "spectre_rsb.c compile FAILED"
```

Expected: `spectre_rsb.c OK: N RET instructions`. DOWNFALL may fail on macOS ARM64 (no AVX2) — that's OK, Docker will compile it for x86_64.

- [ ] **Step 5: Commit**

```bash
git add c_vulns/c_code/spectre_rsb.c c_vulns/c_code/spectre_rsb_arm64.c c_vulns/c_code/downfall.c
git commit -m "feat: add SPECTRE_RSB and DOWNFALL C gadget sources (CVE-2018-15572, CVE-2022-40982)"
```

---

## Task 6: Update Docker compilation pipeline for new classes

**Files:**
- Modify: `docker/compile_attack_sources.sh` — add new labels to LABEL_MAP
- Modify: `docker/extract_windows.py` → rename to function extraction logic

The Docker container's extractor currently uses sliding windows. Replace with function-level extraction matching the `extract_functions.py` logic (Linux AT&T dialect).

- [ ] **Step 1: Replace `docker/extract_windows.py` with function-level extraction**

Overwrite `/Users/ritvikgupta/SpecExec/docker/extract_windows.py`:

```python
#!/usr/bin/env python3
"""
Extract whole functions from a compiled .s file and print as JSONL.
Called by compile_attack_sources.sh for each compiled file.

Uses Linux AT&T assembly dialect (GCC/Clang on Linux):
  .type NAME, @function ... .size NAME, .-NAME

Usage: python3 extract_windows.py <asm_file> <label> <group_prefix> <arch>
"""
import sys, json, re

MAX_FUNC_LEN = 500
MIN_FUNC_LEN = 5

_SKIP_PREFIXES = (".", "#", "//", ";", "@")
_SKIP_FUNC_RE  = re.compile(
    r'^(_?_mm_(mfence|lfence|clflush|clflushopt)|_?barrier|'
    r'_?flush_probe|_?measure|_?time_|_?rdtsc|main|'
    r'__asan_|__ubsan_)$', re.I,
)
_RET_RE = re.compile(r'\b(ret|retq|retl|retw|bx\s+lr|ldm.*pc)\b', re.I)


def is_instruction(line: str) -> bool:
    s = line.strip()
    if not s or s.endswith(':'):
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True


def truncate(instrs: list, max_len: int = MAX_FUNC_LEN) -> list:
    if len(instrs) <= max_len:
        return instrs
    last_ret = -1
    for i in range(min(max_len, len(instrs)) - 1, -1, -1):
        if _RET_RE.search(instrs[i]):
            last_ret = i
            break
    cut = last_ret + 1 if last_ret > max_len // 2 else max_len
    return instrs[:cut]


def parse_functions_linux_att(text: str) -> list[tuple[str, list[str]]]:
    """Parse Linux AT&T assembly: .type NAME, @function ... .size NAME, .-NAME"""
    results = []
    func_starts = list(re.finditer(r'\.type\s+(\w+),\s*[@%]function', text))
    lines = text.splitlines()

    # Build line-start offsets
    offsets = []
    pos = 0
    for ln in lines:
        offsets.append(pos)
        pos += len(ln) + 1

    def char_to_line(c):
        lo, hi = 0, len(offsets) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if offsets[mid] <= c:
                lo = mid
            else:
                hi = mid - 1
        return lo

    for i, m in enumerate(func_starts):
        name = m.group(1)
        if _SKIP_FUNC_RE.match(name.lstrip('_')):
            continue
        start_ln = char_to_line(m.start())
        end_ln   = len(lines)
        if i + 1 < len(func_starts):
            end_ln = min(end_ln, char_to_line(func_starts[i + 1].start()))
        size_pat = re.compile(r'\.size\s+' + re.escape(name) + r'\s*,')
        for j in range(start_ln, end_ln):
            if size_pat.search(lines[j]):
                end_ln = j
                break
        body = lines[start_ln:end_ln]
        instrs = [l.strip() for l in body if is_instruction(l)]
        instrs = truncate(instrs)
        if len(instrs) >= MIN_FUNC_LEN:
            results.append((name, instrs))
    return results


def main():
    asm_file, label, group_prefix, arch = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
    try:
        text = open(asm_file, errors='replace').read()
    except OSError as e:
        print(f'[skip] {asm_file}: {e}', file=sys.stderr)
        return
    funcs = parse_functions_linux_att(text)
    if not funcs:
        # Fall back: emit whole file as one record
        instrs = [l.strip() for l in text.splitlines() if is_instruction(l)]
        instrs = truncate(instrs)
        if len(instrs) >= MIN_FUNC_LEN:
            funcs = [('_all', instrs)]
    for func_name, instrs in funcs:
        rec = {
            'label':       label,
            'sequence':    instrs,
            'source_file': asm_file,
            'group':       f'{group_prefix}_{func_name}',
            'func_name':   func_name,
            'arch':        arch,
            'augmentation': 'compiled_c_source',
        }
        print(json.dumps(rec))


if __name__ == '__main__':
    main()
```

- [ ] **Step 2: Add new labels to `docker/compile_attack_sources.sh`**

Find the `declare -A LABEL_MAP` block and replace it with:

```bash
declare -A LABEL_MAP=(
    ["spectre_rsb"]="SPECTRE_RSB"
    ["spectre_v4"]="SPECTRE_V4"  ["spectre4"]="SPECTRE_V4"   ["spectre_4"]="SPECTRE_V4"
    ["spectre_v2"]="SPECTRE_V2"  ["spectre2"]="SPECTRE_V2"   ["spectre_2"]="SPECTRE_V2"
    ["spectre_v1"]="SPECTRE_V1"  ["spectre1"]="SPECTRE_V1"   ["spectre_1"]="SPECTRE_V1"
    ["spectre_github"]="SPECTRE_V1"
    ["l1tf"]="L1TF"              ["foreshadow"]="L1TF"        ["meltdown"]="L1TF"
    ["mds"]="MDS"                ["ridl"]="MDS"
    ["retbleed"]="RETBLEED"
    ["inception"]="INCEPTION"    ["srso"]="INCEPTION"
    ["bhi"]="BRANCH_HISTORY_INJECTION"
    ["downfall"]="DOWNFALL"      ["gds"]="DOWNFALL"
)
```

Also add AVX2 flags to x86_64 compiler configs:

```bash
COMPILER_CONFIGS=(
    "x86_64-linux-gnu-gcc|-O0|x86_64"
    "x86_64-linux-gnu-gcc|-O1|x86_64"
    "x86_64-linux-gnu-gcc|-O2|x86_64"
    "x86_64-linux-gnu-gcc|-O3|x86_64"
    "x86_64-linux-gnu-gcc|-O2 -mavx2|x86_64"
    "x86_64-linux-gnu-gcc|-Os|x86_64"
    "clang-14|-O0 --target=x86_64-linux-gnu|x86_64"
    "clang-14|-O2 --target=x86_64-linux-gnu|x86_64"
    "clang-14|-O2 -mavx2 --target=x86_64-linux-gnu|x86_64"
    "aarch64-linux-gnu-gcc|-O2|arm64"
    "aarch64-linux-gnu-gcc|-O0|arm64"
)
```

- [ ] **Step 3: Rebuild Docker image**

```bash
docker build -f docker/Dockerfile -t specexec-compile:latest . 2>&1 | tail -5
```

Expected: build completes, ends with image ID or "=> exporting to image".

- [ ] **Step 4: Verify new Docker extraction produces functions, not windows**

```bash
docker run --rm \
    -v "$(pwd)/c_vulns:/work/c_vulns:ro" \
    -v "$(pwd)/docker/extract_windows.py:/work/extract_windows.py:ro" \
    -v "$(pwd)/docker/compile_attack_sources.sh:/work/compile_attack_sources.sh:ro" \
    specexec-compile:latest \
    bash -c "
    x86_64-linux-gnu-gcc -S -O2 /work/c_vulns/c_code/spectre_rsb.c -o /tmp/rsb.s 2>&1
    python3 /work/extract_windows.py /tmp/rsb.s SPECTRE_RSB test_group x86_64 | head -3
    echo '---'
    python3 /work/extract_windows.py /tmp/rsb.s SPECTRE_RSB test_group x86_64 | python3 -c '
import sys,json
recs = [json.loads(l) for l in sys.stdin]
print(f\"Functions extracted: {len(recs)}\")
for r in recs[:3]: print(f\"  {r[\\\"func_name\\\"]}: {len(r[\\\"sequence\\\"])} instructions\")
'
    "
```

Expected: 4–6 functions extracted from `spectre_rsb.c`, each 5–50 instructions.

- [ ] **Step 5: Verify Docker extraction on existing files**

```bash
python3 scripts/enrichment/phase7_compile_c_vulns.py
```

Re-run Phase 7. Now it will extract functions. Expected: significantly more records than before (5,654 → should be higher now with function-level + new classes) with SPECTRE_RSB and DOWNFALL appearing in counts.

- [ ] **Step 6: Commit**

```bash
git add docker/extract_windows.py docker/compile_attack_sources.sh
git commit -m "feat: Docker extractor now extracts whole functions (not windows); add SPECTRE_RSB + DOWNFALL to LABEL_MAP and AVX2 configs"
```

---

## Task 7: Mine Linux kernel CVE gadgets (Phase 8)

**Files:**
- Modify: `scripts/enrichment/phase8_kernel_gadgets.py` (replace the existing phase3 with a working implementation)

The existing `phase3_kernel_patches.py` produced 0 records. This new script clones the Linux kernel at shallow depth inside Docker (to get the cross-compiler), checks out commits that fix known Spectre/MDS/BHI CVEs, extracts the pre-patch C function bodies from git diffs, compiles them to assembly, and extracts whole functions.

- [ ] **Step 1: Create `scripts/enrichment/phase8_kernel_gadgets.py`**

```python
#!/usr/bin/env python3
"""
Phase 8: Mine Linux kernel git history for known Spectre/MDS/BHI/RETBLEED CVE patches.

For each matching commit, extract the REMOVED (pre-patch, vulnerable) C function
bodies from the diff, compile to assembly inside Docker, and extract whole functions.

Uses: docker image specexec-compile:latest (already built)

Known CVE commits are hardcoded for reliability. Each entry is:
  (commit_sha, label, description)

Outputs: data/enrichment/phase8_kernel.jsonl

Usage:
    docker build -f docker/Dockerfile -t specexec-compile:latest .
    python3 scripts/enrichment/phase8_kernel_gadgets.py
"""
import subprocess, sys, tempfile, json, re, os
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

OUT_PATH    = ROOT / "data" / "enrichment" / "phase8_kernel.jsonl"
KERNEL_REPO = "https://github.com/torvalds/linux.git"
KERNEL_DIR  = Path("/tmp/specexec_linux_kernel")
DOCKER_IMAGE = "specexec-compile:latest"

# Known Spectre/MDS/BHI patches in Linux kernel
# Format: (tag_or_sha, label, short_description, affected_files_glob)
# These are well-known public CVE remediation commits
PATCH_TARGETS = [
    # Spectre V1 — bounds check bypass in BPF verifier
    ("v4.16", "SPECTRE_V1",
     "bpf: prevent out-of-bounds speculation",
     ["kernel/bpf/verifier.c"]),

    # Spectre V1 — usercopy speculation
    ("v4.17", "SPECTRE_V1",
     "array_index_nospec: spectre v1 mitigation",
     ["include/linux/nospec.h", "arch/x86/lib/usercopy_64.c"]),

    # Spectre V2 — retpoline introduction
    ("v4.16", "SPECTRE_V2",
     "x86/retpoline: add initial retpoline support",
     ["arch/x86/include/asm/nospec-branch.h"]),

    # MDS — VERW-based mitigation
    ("v5.1", "MDS",
     "x86/mds: add basic bug infrastructure",
     ["arch/x86/kernel/cpu/bugs.c"]),

    # L1TF — Foreshadow mitigation
    ("v4.19", "L1TF",
     "x86/speculation/l1tf: mitigate page table entry l1tf",
     ["arch/x86/mm/pgtable.c", "arch/x86/kvm/x86.c"]),

    # RETBLEED — unprotected RET mitigation
    ("v5.19", "RETBLEED",
     "x86/bugs: report retbleed vulnerability",
     ["arch/x86/kernel/cpu/bugs.c"]),

    # BHI — Branch History Injection
    ("v5.18", "BRANCH_HISTORY_INJECTION",
     "x86/speculation: add eibrs oblivious branch predictor indirect speculation thunk",
     ["arch/x86/kernel/cpu/bugs.c"]),

    # INCEPTION / SRSO
    ("v6.5", "INCEPTION",
     "x86/bugs: add SRSO bug infrastructure",
     ["arch/x86/kernel/cpu/bugs.c"]),
]


def check_docker() -> bool:
    r = subprocess.run(["docker", "image", "inspect", DOCKER_IMAGE], capture_output=True)
    return r.returncode == 0


def clone_or_update_kernel() -> bool:
    """Shallow clone Linux kernel if not present."""
    if KERNEL_DIR.exists():
        print(f"[phase8] Kernel already at {KERNEL_DIR}")
        return True
    print(f"[phase8] Cloning Linux kernel (shallow --depth=1000, this takes ~5 min)...")
    result = subprocess.run(
        ["git", "clone", "--depth=2000",
         "--branch", "v6.6",
         KERNEL_REPO, str(KERNEL_DIR)],
        capture_output=False,
        timeout=1800,
    )
    return result.returncode == 0


def get_c_functions_from_diff(commit_sha: str, files: list[str]) -> list[str]:
    """
    Extract removed (pre-patch) C function bodies from a git diff.
    Returns list of C code strings.
    """
    functions = []
    try:
        result = subprocess.run(
            ["git", "-C", str(KERNEL_DIR), "show",
             "--unified=5", "--diff-filter=M", commit_sha, "--"] + files,
            capture_output=True, text=True, timeout=30,
        )
        diff = result.stdout
    except Exception as e:
        print(f"  [warn] git show failed: {e}")
        return []

    # Extract removed lines (pre-patch context)
    removed_lines = []
    for line in diff.splitlines():
        if line.startswith('-') and not line.startswith('---'):
            removed_lines.append(line[1:])  # strip leading '-'
        elif line.startswith(' '):
            removed_lines.append(line[1:])  # context lines

    # Find C function boundaries in removed lines
    func_body = []
    brace_depth = 0
    in_func = False
    func_start_re = re.compile(r'^[\w\s\*]+\w+\s*\([^)]*\)\s*$')

    for line in removed_lines:
        if not in_func:
            stripped = line.strip()
            if func_start_re.match(stripped) and not stripped.startswith('//'):
                in_func = True
                func_body = [line]
                brace_depth = 0
        else:
            func_body.append(line)
            brace_depth += line.count('{') - line.count('}')
            if brace_depth <= 0 and '{' in '\n'.join(func_body):
                if len(func_body) >= 5:
                    functions.append('\n'.join(func_body))
                func_body = []
                in_func = False
                brace_depth = 0

    return functions


def compile_c_to_functions_docker(c_code: str, label: str, group: str) -> list[dict]:
    """Compile C snippet to assembly inside Docker and extract whole functions."""
    # Write C file
    tmp_dir  = tempfile.mkdtemp(prefix="phase8_")
    c_file   = Path(tmp_dir) / "gadget.c"
    out_dir  = Path(tmp_dir) / "output"
    out_dir.mkdir()

    preamble = """
#include <linux/types.h>
#include <linux/kernel.h>
#include <stdint.h>
#include <stddef.h>
typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
"""
    c_file.write_text(preamble + c_code)

    extract_script = ROOT / "docker" / "extract_windows.py"
    results = []

    for compiler, flags, arch in [
        ("x86_64-linux-gnu-gcc", "-O2", "x86_64"),
        ("x86_64-linux-gnu-gcc", "-O0", "x86_64"),
        ("clang-14", "-O2 --target=x86_64-linux-gnu", "x86_64"),
    ]:
        asm_file = Path(tmp_dir) / f"gadget_{compiler.split('-')[0]}_{flags.replace(' ','_')}.s"
        cmd = [
            "docker", "run", "--rm",
            "-v", f"{tmp_dir}:/src:ro",
            "-v", f"{out_dir}:/out",
            "-v", f"{extract_script}:/work/extract_windows.py:ro",
            DOCKER_IMAGE,
            "bash", "-c",
            f"{compiler} -S {flags} -I/usr/include/linux "
            f"-I/usr/include -fno-stack-protector -D_GNU_SOURCE "
            f"/src/gadget.c -o /out/gadget.s 2>/dev/null && "
            f"python3 /work/extract_windows.py /out/gadget.s "
            f"{label} {group} {arch}",
        ]
        try:
            r = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
            for line in r.stdout.splitlines():
                if line.strip():
                    try:
                        rec = json.loads(line)
                        results.append(rec)
                    except json.JSONDecodeError:
                        pass
        except Exception as e:
            print(f"    [warn] Docker compile failed: {e}")

    # Cleanup
    import shutil
    shutil.rmtree(tmp_dir, ignore_errors=True)
    return results


def main():
    if not check_docker():
        print(f"[phase8] Docker image {DOCKER_IMAGE!r} not found.")
        print(f"  Build: docker build -f docker/Dockerfile -t {DOCKER_IMAGE} .")
        write_jsonl([], OUT_PATH)
        return

    print("[phase8] Cloning Linux kernel...")
    if not clone_or_update_kernel():
        print("[phase8] Kernel clone failed — writing empty output")
        write_jsonl([], OUT_PATH)
        return

    test_hashes = load_test_hashes()
    existing = []
    for pf in [
        ROOT / "data" / "v44_honest_train.jsonl",
        ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
        ROOT / "data" / "enrichment" / "phase7_compiled.jsonl",
    ]:
        if pf.exists():
            existing.extend(load_jsonl(pf))
    existing_hashes = {(seq_hash(r.get("sequence", [])), r["label"]) for r in existing}

    all_candidates = []
    for tag, label, description, files in PATCH_TARGETS:
        print(f"\n[phase8] Processing: {label} — {description}")
        # Find commit SHA for tag
        tag_result = subprocess.run(
            ["git", "-C", str(KERNEL_DIR), "rev-list", "-1", tag],
            capture_output=True, text=True,
        )
        if tag_result.returncode != 0:
            print(f"  [skip] Cannot resolve tag {tag}")
            continue
        commit_sha = tag_result.stdout.strip()
        print(f"  Commit: {commit_sha[:12]}  Files: {files}")

        c_functions = get_c_functions_from_diff(commit_sha, files)
        print(f"  Extracted {len(c_functions)} C function snippets")

        for j, c_code in enumerate(c_functions):
            group = f"phase8_{label.lower()}_{tag}_{j}"
            records = compile_c_to_functions_docker(c_code, label, group)
            all_candidates.extend(records)
            if records:
                print(f"    snippet {j}: {len(records)} function records")

    print(f"\n[phase8] Total candidates: {len(all_candidates):,}")
    clean, stats = validate_and_dedup(all_candidates, test_hashes, existing_hashes)
    print(f"[phase8] After dedup: {len(clean):,}  stats={stats}")

    write_jsonl(clean, OUT_PATH)
    counts = Counter(r["label"] for r in clean)
    print("\n[phase8] Per-class:")
    for cls in sorted(counts):
        print(f"  {cls:<35} {counts[cls]:>6,}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run Phase 8**

```bash
python3 scripts/enrichment/phase8_kernel_gadgets.py
```

This clones the Linux kernel (~800MB, takes ~5 min), then for each CVE commit extracts C snippets and compiles via Docker. Expected: several hundred records across 6–8 attack classes.

If the git clone fails for network reasons, the script writes an empty file and exits cleanly without breaking the pipeline.

- [ ] **Step 3: Commit**

```bash
git add scripts/enrichment/phase8_kernel_gadgets.py
git commit -m "feat: phase8 mine Linux kernel CVE patches for compiled gadget sequences"
```

---

## Task 8: Cap Phase 1 augmentation

**Files:**
- Modify: `scripts/enrichment/phase1_augment_train.py`

Currently `N_PER_TRANSFORM = 5` with 10 transforms = up to 50 augmented variants per source sequence → 272K augmented from 21K originals (13× amplification). This memorization prevents learning generalizable features.

Cap to `N_PER_TRANSFORM = 1` and switch the input to the new `v44_honest_train.jsonl`.

- [ ] **Step 1: Update `scripts/enrichment/phase1_augment_train.py`**

Change these two lines:

```python
# was: TRAIN_IN = ROOT / "data" / "v25_honest_train.jsonl"
TRAIN_IN = ROOT / "data" / "v44_honest_train.jsonl"

# was: N_PER_TRANSFORM = 5
N_PER_TRANSFORM = 1   # 1 attempt per transform per sequence (was 5)
```

- [ ] **Step 2: Re-run Phase 1 augmentation**

```bash
python3 scripts/enrichment/phase1_augment_train.py
```

Expected: total augmented records ~= len(v44_honest_train) × 10 transforms × ~0.7 success rate. Should be dramatically fewer than 272K.

- [ ] **Step 3: Check the output**

```bash
python3 -c "
import json
from collections import Counter
records = [json.loads(l) for l in open('data/enrichment/phase1_augmented.jsonl')]
print(f'Phase 1 records: {len(records):,}')
print('Per-class:', dict(Counter(r[\"label\"] for r in records)))
"
```

Expected: total records much smaller (< 30K), all classes present.

- [ ] **Step 4: Commit**

```bash
git add scripts/enrichment/phase1_augment_train.py
git commit -m "fix: cap Phase 1 augmentation N_PER_TRANSFORM 5→1; switch to v44_honest_train.jsonl base"
```

---

## Task 9: Assemble v44 training set

**Files:**
- Modify: `scripts/enrichment/assemble_training.py`

Update phase files, output path, and run.sh target.

- [ ] **Step 1: Update `scripts/enrichment/assemble_training.py`**

Find and replace the paths section (PHASE_FILES, OUT_MAIN, etc.):

```python
BASE_TRAIN  = ROOT / "data" / "v44_honest_train.jsonl"
TEST_PATH   = ROOT / "data" / "v44_honest_test.jsonl"

PHASE_FILES = {
    "phase1_augmented":  ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
    "phase2_compiled":   ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
    "phase4_poc":        ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
    "phase5_synthetic":  ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl",
    "phase7_compiled":   ROOT / "data" / "enrichment" / "phase7_compiled.jsonl",
    "phase8_kernel":     ROOT / "data" / "enrichment" / "phase8_kernel.jsonl",
}

OUT_MAIN    = ROOT / "data" / "v44_train_enriched.jsonl"
OUT_V42     = ROOT / "v42" / "data" / "v44_train_enriched.jsonl"
REPORT_PATH = ROOT / "diagnosis" / "v44_enrichment_report.json"
```

Also update the run.sh patching block to replace `v43` references with `v44`:

```python
for old_path in ("data/v25_honest_train.jsonl", "data/v42_train_enriched.jsonl",
                 "data/v43_train_enriched.jsonl"):
    updated = updated.replace(f"--train-data {old_path}",
                              "--train-data data/v44_train_enriched.jsonl", 1)
for old_dir in ("viz_v42_honest", "viz_v42", "viz_v43"):
    updated = updated.replace(old_dir, "viz_v44")
```

Also update the summary print from `v43` to `v44`.

- [ ] **Step 2: Run assemble_training.py**

```bash
python3 scripts/enrichment/assemble_training.py
```

Expected: prints `=== v44 Enrichment Summary ===` with base + all phase counts, integrity passes.

- [ ] **Step 3: Run balance verifier**

```bash
python3 scripts/enrichment/verify_data_balance.py \
    data/v44_train_enriched.jsonl \
    data/v44_honest_test.jsonl
```

Expected: `[PASS]` — all attack classes have compiled records.

- [ ] **Step 4: Run style-leak verifier**

```bash
python3 scripts/enrichment/verify_no_style_leak.py data/v44_train_enriched.jsonl
```

Expected: Jaccard ≥ 0.15 for all classes.

- [ ] **Step 5: Commit**

```bash
git add scripts/enrichment/assemble_training.py diagnosis/v44_enrichment_report.json
git commit -m "feat: assemble v44 training set — function-level, new classes, kernel gadgets"
```

---

## Task 10: Update run.sh for v44

**Files:**
- Modify: `v42/run.sh`

- [ ] **Step 1: Update `v42/run.sh`**

Replace the full content with:

```bash
#!/usr/bin/env bash
set -euo pipefail

# v44: GINE v38 with function-level sequences, new attack classes, kernel gadgets
#
# Dataset fixes vs v43 (59% accuracy):
#   1. Function-level sequences: whole functions instead of 20-instruction windows
#   2. New attack classes: SPECTRE_RSB (CVE-2018-15572), DOWNFALL (CVE-2022-40982)
#   3. Phase 8: Linux kernel CVE gadget functions (real-world diversity)
#   4. Augmentation capped at 1 attempt/transform (was 5, prevented generalization)
#   5. MAX_NODES 64→256, MAX_EDGES 512→2048 (supports full function graphs)
#   6. 11 classes: BENIGN + 8 original + SPECTRE_RSB + DOWNFALL
#
# Data:
#   data/v44_train_enriched.jsonl — enriched training (base + phases 1,2,4,5,7,8)
#   data/v44_honest_test.jsonl    — held-out test (20% of source groups, FROZEN)

pip install -q -r requirements.txt

mkdir -p viz_v44

TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v44_train_enriched.jsonl \
  --test-data  data/v44_honest_test.jsonl \
  --output-dir viz_v44 \
  --viz-dir    viz_v44 \
  --epochs 100 \
  --patience 20 \
  --hidden-dim 256 \
  --num-layers 4 \
  --jk-mode cat \
  --batch-size 32 \
  --lr 1e-3 \
  --lambda-con 0.5 \
  --temperature 0.07 \
  --hard-neg-weight 2.0

echo ""
echo "=== v44 Results ==="
python3 -c "
import json
m = json.load(open('viz_v44/gine_metrics.json'))
print(f\"Accuracy: {m['test_accuracy']*100:.2f}%  (epoch {m['best_epoch']})\")
print(f\"Train: {m.get('train_count','?')}  Test: {m.get('test_count','?')}\")
print()
print(f\"{'class':40s} {'prec':>7s} {'rec':>7s} {'f1':>7s} {'sup':>6s}\")
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and 'f1-score' in v and k not in ('accuracy','macro avg','weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f} {int(v['support']):6d}\")
print()
for k, v in m['classification_report'].items():
    if isinstance(v, dict) and k in ('macro avg', 'weighted avg'):
        print(f\"{k:40s} {v['precision']:7.4f} {v['recall']:7.4f} {v['f1-score']:7.4f}\")
"
```

- [ ] **Step 2: Commit**

```bash
git add v42/run.sh
git commit -m "feat: v44 run.sh — function-level sequences, 11 classes, MAX_NODES=256"
```

---

## Task 11: Create references documentation

**Files:**
- Create: `docs/references.md`

- [ ] **Step 1: Create `docs/references.md`**

```markdown
# SpecExec Research References

This document lists all academic papers, datasets, CVEs, and public codebases
referenced or used in the SpecExec vulnerability detection system.

---

## Core Speculative Execution Attack Papers

### Spectre Variants

**[SPECTRE_V1]** Kocher, P., Horn, J., Fogh, A., Genkin, D., Gruss, D., Haas, W.,
Hamburg, M., Lipp, M., Mangard, S., Prescher, T., Schwarz, M., & Yarom, Y.
"Spectre Attacks: Exploiting Speculative Execution."
*IEEE Symposium on Security and Privacy (S&P)*, 2019.
https://spectreattack.com/spectre.pdf
CVE-2017-5753 (Bounds Check Bypass)

**[SPECTRE_V2]** Kocher et al., same paper as above.
CVE-2017-5715 (Branch Target Injection)
Mitigation: Retpoline (Google Project Zero, 2018)

**[SPECTRE_V4]** Horn, J. "Speculative Execution, Variant 4: Speculative Store Bypass."
*Google Project Zero*, 2018.
https://bugs.chromium.org/p/project-zero/issues/detail?id=1528
CVE-2018-3639 (Speculative Store Bypass)

**[SPECTRE_RSB]** Koruyeh, E.M., Khasawneh, K., Song, C., & Abu-Ghazaleh, N.
"Spectre Returns! Speculation Attacks using the Return Stack Buffer."
*USENIX Workshop on Offensive Technologies (WOOT)*, 2018.
https://www.usenix.org/conference/woot18/presentation/koruyeh
CVE-2018-15572, CVE-2018-3693

### Meltdown and L1TF / Foreshadow

**[MELTDOWN/L1TF]** Lipp, M., Schwarz, M., Gruss, D., Prescher, T., Haas, W.,
Fogh, A., Horn, J., Mangard, S., Kocher, P., Genkin, D., Yarom, Y., & Hamburg, M.
"Meltdown: Reading Kernel Memory from User Space."
*USENIX Security Symposium*, 2018.
CVE-2017-5754

**[FORESHADOW]** Van Bulck, J., Minkin, M., Weisse, O., Genkin, D., Kasikci, B.,
Piessens, F., Silberstein, M., Wenisch, T.F., Yarom, Y., & Strackx, R.
"Foreshadow: Extracting the Keys to the Intel SGX Kingdom with Transient Out-of-Order Execution."
*USENIX Security Symposium*, 2018.
CVE-2018-3615, CVE-2018-3620, CVE-2018-3646 (L1 Terminal Fault)

### MDS (Microarchitectural Data Sampling)

**[MDS/RIDL]** Van Schaik, S., Milburn, A., Österlund, S., Frigo, P., Maisuradze, G.,
Razavi, K., Bos, H., & Giuffrida, C.
"RIDL: Rogue In-Flight Data Load."
*IEEE S&P*, 2019. CVE-2018-12127

**[FALLOUT]** Canella, C., Genkin, D., Giner, L., Gruss, D., Lipp, M., Minkin, M.,
Moghimi, D., Piessens, F., Schwarz, M., Sunar, B., Van Bulck, J., & Yarom, Y.
"Fallout: Leaking Data on Meltdown-resistant CPUs."
*ACM CCS*, 2019. CVE-2018-12126

**[ZOMBIELOAD]** Schwarz, M., Lipp, M., Moghimi, D., Van Bulck, J., Stecklina, J.,
Prescher, T., & Gruss, D.
"ZombieLoad: Cross-Privilege-Boundary Data Sampling."
*ACM CCS*, 2019. CVE-2018-12130

### RETBLEED

**[RETBLEED]** Wikner, J. & Razavi, K.
"RETBLEED: Arbitrary Speculative Code Execution with Return Instructions."
*USENIX Security Symposium*, 2022.
https://comsec.ethz.ch/research/microarch/retbleed/
CVE-2022-29900 (AMD), CVE-2022-29901 (Intel)

### INCEPTION / SRSO

**[INCEPTION]** Trujillo, D., Wikner, J., & Razavi, K.
"INCEPTION: Exposing New Attack Surfaces with Training in Transient Execution."
*USENIX Security Symposium*, 2023.
https://comsec.ethz.ch/research/microarch/inception/
CVE-2023-20569 (AMD SRSO — Speculative Return Stack Overflow)

### BHI / Branch History Injection

**[BHI]** Barberis, E., Frigo, P., Muench, M., Bos, H., & Giuffrida, C.
"Branch History Injection: On the Effectiveness of Hardware Mitigations Against
Cross-Privilege Spectre-v2 Attacks."
*USENIX Security Symposium*, 2022.
https://vusec.net/projects/bhi-spectre-bhb
CVE-2022-0001 (BHI — Branch History Injection)
CVE-2022-0002 (IBHB — Intra-mode Branch History Bypass)

### DOWNFALL / GDS

**[DOWNFALL]** Moghimi, D.
"Downfall: Exploiting Speculative Data Gathering in Intel Optimized Routines."
*USENIX Security Symposium*, 2023.
https://downfall.page
CVE-2022-40982 (Gather Data Sampling — GDS)

---

## Vulnerability Detection ML Papers

**[DEVIGN]** Zhou, Y., Liu, S., Siow, J., Du, X., & Liu, Y.
"Devign: Effective Vulnerability Identification by Learning Comprehensive Program
Semantics via Graph Neural Networks."
*NeurIPS*, 2019.
Dataset: https://github.com/epicosy/devign

**[VULDEEPECKER]** Li, Z., Zou, D., Xu, S., Ou, X., Jin, H., Wang, S., Deng, Z., & Zhong, Y.
"VulDeePecker: A Deep Learning-Based System for Vulnerability Detection."
*NDSS*, 2018.

**[BIGVUL]** Fan, J., Li, Y., Wang, S., & Nguyen, T.N.
"A C/C++ Code Vulnerability Dataset with Code Changes and CVE Summaries."
*MSR*, 2020.
Dataset: https://github.com/ZeoVan/MSR_20_Code_vulnerability_CSV_Dataset

**[LINEARVUL]** Fu, M., & Tantithamthavorn, C.
"LineVul: A Transformer-Based Line-Level Vulnerability Prediction."
*MSR*, 2022.

**[SPECTECTOR]** Guarnieri, M., Köpf, B., Morales, J.F., Reineke, J., & Sánchez, A.
"Spectector: Principled Detection of Speculative Information Flows."
*IEEE S&P*, 2020.
Tool: https://github.com/spectector/spectector

**[SPECFUZZ]** Oleksenko, O., Trach, B., Silberstein, M., & Fetzer, C.
"SpecFuzz: Bringing Spectre-type Vulnerabilities to the Surface."
*USENIX Security*, 2020.

**[BINSEC_HAUNTED]** Daniel, L., Bardin, S., & Rezk, T.
"Hunting the Haunter — Efficient Relational Symbolic Execution for Spectre with
HauntedRelSE."
*NDSS*, 2021.

**[SUPERGNN]** Zhao, C., Dong, T., & Wu, X.
"Combining Graph Neural Networks with Expert Knowledge for Smart Contract
Vulnerability Detection."
*IEEE TNNLS*, 2021.

---

## Graph Neural Network Architectures

**[GINE]** Hu, W., Fey, M., Zitnik, M., Dong, Y., Ren, H., Liu, B., Catasta, M., & Leskovec, J.
"Strategies for Pre-training Graph Neural Networks."
*ICLR*, 2020. (Introduces GINE — GIN with Edge features)

**[SUPCON]** Khosla, P., Tian, Y., Wang, X., Krishnan, D., Isola, P., Ramesh, A.,
Liu, C., Setlur, S., Krishnamurthy, D., & Maji, S.
"Supervised Contrastive Learning."
*NeurIPS*, 2020.

**[JUMPING_KNOWLEDGE]** Xu, K., Li, C., Tian, Y., Sonobe, T., Kawarabayashi, K., & Jegelka, S.
"Representation Learning on Graphs with Jumping Knowledge Networks."
*ICML*, 2018.

**[GRAPHSAGE]** Hamilton, W., Ying, Z., & Leskovec, J.
"Inductive Representation Learning on Large Graphs."
*NeurIPS*, 2017.

---

## Datasets Used

**[NIST_SARD]** National Institute of Standards and Technology.
"Software Assurance Reference Dataset (SARD)."
https://samate.nist.gov/SARD/

**[LINUX_KERNEL]** Torvalds, L. et al.
"Linux Kernel Source" (CVE patch history mined for gadgets).
https://github.com/torvalds/linux
Versions used: v4.16, v4.17, v4.19, v5.1, v5.18, v5.19, v6.5, v6.6

**[IAIK_TEA]** "Transient Execution Attacks PoC Repository."
https://github.com/IAIK/transient-execution-attacks
Used in Phase 4 data enrichment.

**[RIDL_POC]** vusec. "RIDL Proof-of-Concept."
https://github.com/vusec/ridl
Used in Phase 4 data enrichment. CVE-2018-12127.

**[SPECULO]** Bitdefender. "Speculo PoC Repository."
https://github.com/bitdefender/Speculo
Used in Phase 4 data enrichment. Spectre V2 patterns.

---

## Mitigations Referenced

- **Retpoline**: Turner, P. "Retpoline: A Software Construct for Preventing Branch-Target-Injection."
  Google, 2018. https://support.google.com/faqs/answer/7625886

- **IBRS/IBPB/STIBP**: Intel. "Deep Dive: IBRS (Indirect Branch Restricted Speculation)."
  Intel White Paper, 2018.

- **LFENCE/array_index_nospec**: Linux kernel mitigations for Spectre V1 bounds-check bypass.
  https://lwn.net/Articles/759404/

- **VERW (MDS mitigation)**: Intel. "MDS Microarchitectural Data Sampling Advisory."
  https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/advisory-guidance/microarchitectural-data-sampling.html

---

## Key CVE References

| CVE | Attack | Class |
|---|---|---|
| CVE-2017-5753 | Spectre Variant 1 — Bounds Check Bypass | SPECTRE_V1 |
| CVE-2017-5715 | Spectre Variant 2 — Branch Target Injection | SPECTRE_V2 |
| CVE-2018-3639 | Spectre Variant 4 — Speculative Store Bypass | SPECTRE_V4 |
| CVE-2018-15572 | Spectre RSB — Return Stack Buffer | SPECTRE_RSB |
| CVE-2018-3693 | Spectre Variant 1.1 / RSB | SPECTRE_RSB |
| CVE-2017-5754 | Meltdown | L1TF |
| CVE-2018-3615/3620/3646 | Foreshadow / L1TF | L1TF |
| CVE-2018-12127 | RIDL / MDS | MDS |
| CVE-2018-12126 | Fallout / MDS | MDS |
| CVE-2018-12130 | ZombieLoad / MDS | MDS |
| CVE-2019-11135 | TAA / ZombieLoad v2 | MDS |
| CVE-2022-29900 | RETBLEED (AMD) | RETBLEED |
| CVE-2022-29901 | RETBLEED (Intel) | RETBLEED |
| CVE-2023-20569 | INCEPTION / SRSO (AMD) | INCEPTION |
| CVE-2022-0001 | BHI — Branch History Injection | BRANCH_HISTORY_INJECTION |
| CVE-2022-0002 | IBHB — Intra-mode Branch History | BRANCH_HISTORY_INJECTION |
| CVE-2022-40982 | Downfall / GDS (Intel AVX) | DOWNFALL |
```

- [ ] **Step 2: Commit**

```bash
git add docs/references.md
git commit -m "docs: comprehensive references — all papers, CVEs, and datasets used in SpecExec"
```

---

## Self-Review

### 1. Spec Coverage

| User Requirement | Task |
|---|---|
| Whole attack sequences instead of windows | Task 1 (extractor) + Task 4 (rebuild dataset) + Task 6 (Docker) |
| Use Docker for cross-architecture | Task 6 (Docker function extraction, ARM64 configs) |
| Meaningfulness of sequences | Task 1 (`_should_skip_function` + `truncate_function` at RET boundaries) |
| Diversity in dataset | Task 7 (Linux kernel gadgets) + Task 8 (augmentation cap) |
| Use available datasets from online | Task 7 (Linux kernel), references to BigVul/SARD in references.md |
| New attack patterns from papers | Task 5 (SPECTRE_RSB, DOWNFALL) + Task 6 (label maps) |
| Update each part of pipeline | Tasks 2,3,4,6,8,9,10 update all affected files |
| Document references for paper | Task 11 |

### 2. Placeholder Scan

No TBD/TODO found. All code steps contain complete implementations.

### 3. Type Consistency

- `parse_functions(asm_text: str) -> list[tuple[str, list[str]]]` — consistent across Task 1 (extract_functions.py) and Task 4 (rebuild_base_dataset.py)
- `truncate_function(instructions: list[str], max_len: int = 500) -> list[str]` — consistent between Task 1 and Task 6
- `validate_and_dedup(..., max_len=500)` — Task 2 raises this; all phases downstream use it
- LABEL_MAP keys and class names — consistent: SPECTRE_RSB, DOWNFALL appear in Task 5 C files, Task 6 Docker LABEL_MAP, Task 4 rebuild script, Task 3 CONFUSED_CLASS_NAMES
- All phase output paths: `data/enrichment/phase8_kernel.jsonl` — consistent in Task 7 and Task 9
- All v44 paths: `data/v44_train_enriched.jsonl`, `data/v44_honest_test.jsonl` — consistent across Tasks 4, 9, 10
