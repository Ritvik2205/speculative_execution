#!/usr/bin/env python3
"""
wsl_extract.py — parse .s files from wsl_compile.sh -> phase20_wsl.jsonl

Reads all .s files in c_vulns/asm_code/, extracts function-level sequences,
labels them by filename prefix, deduplicates against existing test hashes,
and writes data/enrichment/phase20_wsl.jsonl.

Usage (from SpecExec root):
    python3 scripts/wsl_extract.py

Output: data/enrichment/phase20_wsl.jsonl
  Each record: {label, sequence, arch, group}
  Compatible with build_dataset.py and v53 pipeline.
"""
import sys
import re
import json
import hashlib
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
sys.path.insert(0, str(ROOT / "v51"))

ASM_DIR  = ROOT / "c_vulns" / "asm_code"
OUT_PATH = ROOT / "data" / "enrichment" / "phase20_wsl.jsonl"
TEST_SETS = [
    ROOT / "v50" / "data" / "v50_test.jsonl",
    ROOT / "v53" / "data" / "v53_test.jsonl",
]

# ── Label mapping: filename prefix → vulnerability class ─────────────────────
# Add entries here when you add new C source files.
LABEL_MAP = {
    "spectre_v1":       "SPECTRE_V1",
    "spectre_1":        "SPECTRE_V1",
    "spectre_v2":       "SPECTRE_V2",
    "spectre_2":        "SPECTRE_V2",
    "spectre_github":   "SPECTRE_V1",
    "spectre_v4":       "SPECTRE_V4",
    "spectre_rsb":      "SPECTRE_RSB",
    "retbleed":         "RETBLEED",
    "inception":        "INCEPTION",
    "bhi":              "BRANCH_HISTORY_INJECTION",
    "l1tf":             "L1TF",
    "mds":              "MDS",
    "meltdown":         "L1TF",   # Meltdown = L1TF variant
}

# Functions to skip: measurement harness, helpers, main
_SKIP_FUNC_RE = re.compile(
    r'^(_?_mm_(mfence|lfence|clflush|clflushopt)|'
    r'_?barrier|_?flush_probe_array|_?measure_|_?time_|'
    r'_?rdtsc|main|printf|malloc|memset|__asan_|__ubsan_)$',
    re.I,
)

# ── Assembly instruction line filter ─────────────────────────────────────────
_LABEL_OR_DIRECTIVE = re.compile(r'^\s*(?:\.|#|;|//)')


def is_instruction_line(line: str) -> bool:
    s = line.strip()
    if not s:
        return False
    # Strip trailing comment before checking for label suffix
    for comment in (';', '##', '//', ' #'):
        idx = s.find(comment)
        if idx >= 0:
            s = s[:idx].rstrip()
            break
    if not s or s.endswith(':'):
        return False
    if _LABEL_OR_DIRECTIVE.match(s):
        return False
    return True


# ── Function extractor (supports GCC/Clang AT&T syntax, x86_64 + ARM64) ─────
def parse_functions(asm_text: str) -> list[tuple[str, list[str]]]:
    """
    Extract (function_name, instructions) from assembly text.
    Supports both .type NAME, @function (GCC/Linux) and
    '; -- Begin function NAME' (Clang macOS).
    """
    functions = []
    lines = asm_text.splitlines()

    # Method 1: Linux GCC — .type NAME, @function / %function markers
    func_starts: dict[str, int] = {}
    for i, line in enumerate(lines):
        m = re.match(r'\s*\.type\s+(\w+)\s*,\s*[@%]function', line)
        if m:
            func_starts[m.group(1)] = i

    if func_starts:
        for name, start_idx in func_starts.items():
            instrs = []
            in_func = False
            for line in lines[start_idx:]:
                # Function body starts at the label "name:"
                if re.match(rf'^\s*{re.escape(name)}\s*:', line):
                    in_func = True
                    continue
                if not in_func:
                    continue
                # End on .size marker for this function
                if re.match(rf'\s*\.size\s+{re.escape(name)}\b', line):
                    break
                if is_instruction_line(line):
                    instrs.append(line.strip())
            if instrs:
                functions.append((name, instrs))
        return functions

    # Method 2: Clang macOS — '; -- Begin function NAME'
    current_name = None
    current_instrs: list[str] = []
    for line in lines:
        m = re.search(r'--\s*Begin function\s+(\S+)', line)
        if m:
            if current_name and current_instrs:
                functions.append((current_name, current_instrs))
            current_name = m.group(1)
            current_instrs = []
            continue
        if re.search(r'--\s*End function', line):
            if current_name and current_instrs:
                functions.append((current_name, current_instrs))
            current_name = None
            current_instrs = []
            continue
        if current_name and is_instruction_line(line):
            current_instrs.append(line.strip())

    if current_name and current_instrs:
        functions.append((current_name, current_instrs))

    return functions


# ── Call-target neutralization (match v52+ pipeline) ─────────────────────────
_CALL_TARGET_RE = re.compile(
    r'^(\s*(?:callq?|bl)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)


def neutralize(instrs: list[str]) -> list[str]:
    result = []
    for line in instrs:
        m = _CALL_TARGET_RE.match(line)
        result.append(f"{m.group(1)}<fn>{m.group(3)}" if m else line)
    return result


def seq_hash(seq: list[str]) -> str:
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


# ── Filename → (label, arch, compiler, opt) ──────────────────────────────────
_FILE_RE = re.compile(
    r'^(?P<stem>.+?)_(?P<arch>x86_64|arm64)_(?P<cc>gcc|clang)_(?P<opt>O[0-9sz])\.s$'
)


def parse_filename(fname: str) -> tuple[str, str, str, str] | None:
    """Returns (label, arch, compiler, opt) or None if unrecognised."""
    m = _FILE_RE.match(fname)
    if not m:
        return None
    stem = m.group('stem')
    arch = m.group('arch')
    cc   = m.group('cc')
    opt  = m.group('opt')

    # Match stem to label
    label = None
    for prefix, lbl in LABEL_MAP.items():
        if stem.startswith(prefix):
            label = lbl
            break
    if label is None:
        return None

    return label, arch, cc, opt


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    # Load existing test hashes to block any overlap
    test_hashes: set[str] = set()
    for p in TEST_SETS:
        if p.exists():
            for line in open(p):
                line = line.strip()
                if not line:
                    continue
                r = json.loads(line)
                seq = r.get('sequence', r.get('instructions', []))
                if seq and isinstance(seq[0], dict):
                    seq = [s.get('text', '') for s in seq]
                test_hashes.add(seq_hash(seq))
            print(f"Loaded {len(test_hashes)} test hashes from {p.name}")

    asm_files = sorted(ASM_DIR.glob("*.s"))
    print(f"\nFound {len(asm_files)} .s files in {ASM_DIR}")

    records = []
    skipped_label  = 0
    skipped_func   = 0
    skipped_short  = 0
    skipped_test   = 0
    skipped_dup    = 0
    seen_hashes: set[str] = set(test_hashes)

    for asm_path in asm_files:
        parsed = parse_filename(asm_path.name)
        if parsed is None:
            skipped_label += 1
            continue

        label, arch, cc, opt = parsed
        asm_text = asm_path.read_text(errors='replace')
        funcs = parse_functions(asm_text)

        for func_name, instrs in funcs:
            # Skip measurement harness / helper functions
            if _SKIP_FUNC_RE.match(func_name.lstrip('_')):
                skipped_func += 1
                continue

            instrs = neutralize(instrs)

            if len(instrs) < 4:
                skipped_short += 1
                continue

            h = seq_hash(instrs)
            if h in seen_hashes:
                if h in test_hashes:
                    skipped_test += 1
                else:
                    skipped_dup += 1
                continue

            seen_hashes.add(h)
            stem = _FILE_RE.match(asm_path.name).group('stem')
            group = f"p20_{stem}_{arch}_{cc}_{opt}_{func_name}"

            records.append({
                "label":    label,
                "sequence": instrs,
                "arch":     arch,
                "group":    group,
            })

    # Report
    counts = Counter(r['label'] for r in records)
    print(f"\nExtracted {len(records)} records")
    print(f"  Skipped: {skipped_label} unknown label, {skipped_func} harness funcs, "
          f"{skipped_short} too short, {skipped_test} test overlap, {skipped_dup} duplicates")
    print("\nPer-class counts:")
    for lbl in sorted(counts):
        print(f"  {lbl:<35} {counts[lbl]:6d}")

    # Write
    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in records:
            f.write(json.dumps(r) + '\n')
    print(f"\nWrote {len(records)} records to {OUT_PATH}")
    print("Next: rebuild v53 dataset including phase20_wsl.jsonl")


if __name__ == '__main__':
    main()
