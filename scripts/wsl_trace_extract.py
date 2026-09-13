#!/usr/bin/env python3
"""
wsl_trace_extract.py — parse QEMU -d in_asm traces -> phase21_qemu.jsonl

QEMU -d in_asm output format (one translation block per chunk):
    ----------------
    IN: <function_or_offset>
    0x<addr>:  <hex>  <mnemonic> <operands>
    0x<addr>:  <hex>  <mnemonic> <operands>
    ...

Each chunk is one "translation block" (TB): a straight-line sequence until
a branch, exception, or syscall. TBs are the natural unit of dynamic slicing.

This script:
  1. Reads all .trace files in c_vulns/traces/
  2. Splits each trace into translation blocks
  3. Merges consecutive TBs from the same binary region into sequences
     of TARGET_LEN instructions (sliding window over the execution stream)
  4. Deduplicates against test set hashes
  5. Writes data/enrichment/phase21_qemu.jsonl

Why TBs are good for dataset:
  - Each TB is an actual dynamically-executed code path
  - Different inputs -> different TB sequences -> more diversity
  - Captures instruction patterns that only manifest at runtime
    (e.g., speculative-looking sequences around conditional branches)

Usage:
    python3 scripts/wsl_trace_extract.py
"""
import re
import sys
import json
import hashlib
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parent.parent
TRACE_DIR  = ROOT / "c_vulns" / "traces"
OUT_PATH   = ROOT / "data" / "enrichment" / "phase21_qemu.jsonl"
TEST_SETS  = [
    ROOT / "v50" / "data" / "v50_test.jsonl",
    ROOT / "v53" / "data" / "v53_test.jsonl",
]

# Sequence length for sliding window over TB stream
TARGET_LEN = 30    # instructions per record
STRIDE     = 15    # step between windows (50% overlap)
MIN_LEN    = 8     # discard windows shorter than this

# Label map: filename prefix -> class (same as wsl_extract.py)
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
    "meltdown":         "L1TF",
}

# Filename pattern: <stem>_arm64_gcc_<opt>.trace
_FILE_RE = re.compile(
    r'^(?P<stem>.+?)_arm64_(?:gcc|clang)_(?P<opt>O[0-9sz])\.trace$'
)

# QEMU instruction line: "0x<addr>:  <hex bytes>   <mnemonic> <operands>"
_QEMU_INSTR_RE = re.compile(
    r'^\s*0x[0-9a-f]+:\s+[0-9a-f ]+\s{2,}(?P<instr>\S.*?)\s*$', re.I
)

# Call-target neutralization (match pipeline).
# Only neutralize direct branch/call targets that are symbol names.
# blr/br are indirect (register operand) — skip.
# cbnz/cbz first operand is always a register — skip.
# bl/b/b.cond: target is a symbol name if it starts with letter/underscore.
_CALL_TARGET_RE = re.compile(
    r'^((?:bl|b(?:\.[a-z]+)?|callq?)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)


def neutralize(instrs: list[str]) -> list[str]:
    result = []
    for line in instrs:
        m = _CALL_TARGET_RE.match(line)
        result.append(f"{m.group(1)}<fn>{m.group(3)}" if m else line)
    return result


def seq_hash(seq: list[str]) -> str:
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


# ── QEMU trace parser ─────────────────────────────────────────────────────────

def parse_qemu_trace(trace_text: str) -> list[list[str]]:
    """
    Split QEMU -d in_asm trace into translation blocks.
    Returns list of instruction lists (one list per TB).
    """
    blocks = []
    current: list[str] = []

    for line in trace_text.splitlines():
        # TB separator / header line
        if line.startswith('IN:') or line.startswith('----') or line.startswith('Trace'):
            if current:
                blocks.append(current)
                current = []
            continue

        m = _QEMU_INSTR_RE.match(line)
        if m:
            instr = m.group('instr').strip()
            if instr:
                current.append(instr)

    if current:
        blocks.append(current)

    return blocks


def sliding_windows(all_instrs: list[str], target: int, stride: int) -> list[list[str]]:
    """Slide a fixed-width window over the full instruction stream."""
    windows = []
    for start in range(0, max(1, len(all_instrs) - target + 1), stride):
        w = all_instrs[start:start + target]
        if len(w) >= MIN_LEN:
            windows.append(w)
    return windows


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    # Load test hashes
    test_hashes: set[str] = set()
    for p in TEST_SETS:
        if p.exists():
            for line in open(p):
                line = line.strip()
                if not line: continue
                r = json.loads(line)
                seq = r.get('sequence', r.get('instructions', []))
                if seq and isinstance(seq[0], dict):
                    seq = [s.get('text', '') for s in seq]
                test_hashes.add(seq_hash(seq))
    print(f"Test hashes loaded: {len(test_hashes)}")

    trace_files = sorted(TRACE_DIR.glob("*.trace"))
    print(f"Found {len(trace_files)} trace files in {TRACE_DIR}\n")

    records = []
    seen: set[str] = set(test_hashes)
    skipped_label = skipped_test = skipped_dup = 0

    for trace_path in trace_files:
        m = _FILE_RE.match(trace_path.name)
        if not m:
            skipped_label += 1
            continue

        stem = m.group('stem')
        opt  = m.group('opt')

        label = None
        for prefix, lbl in LABEL_MAP.items():
            if stem.startswith(prefix):
                label = lbl
                break
        if not label:
            skipped_label += 1
            continue

        text = trace_path.read_text(errors='replace')
        tbs  = parse_qemu_trace(text)

        # Flatten all TBs into one execution stream then slide windows
        all_instrs = [instr for tb in tbs for instr in tb]
        all_instrs = neutralize(all_instrs)
        windows    = sliding_windows(all_instrs, TARGET_LEN, STRIDE)

        accepted = 0
        for i, window in enumerate(windows):
            h = seq_hash(window)
            if h in seen:
                if h in test_hashes:
                    skipped_test += 1
                else:
                    skipped_dup += 1
                continue
            seen.add(h)
            accepted += 1
            records.append({
                "label":    label,
                "sequence": window,
                "arch":     "arm64",
                "group":    f"p21_{stem}_arm64_gcc_{opt}_w{i}",
            })

        print(f"  {trace_path.name}: {len(tbs)} TBs, "
              f"{len(all_instrs)} instrs, {accepted}/{len(windows)} windows kept")

    # Summary
    counts = Counter(r['label'] for r in records)
    print(f"\nTotal records: {len(records)}")
    print(f"Skipped: {skipped_label} unknown label, "
          f"{skipped_test} test overlap, {skipped_dup} duplicates")
    print("\nPer-class counts:")
    for lbl in sorted(counts):
        print(f"  {lbl:<35} {counts[lbl]:6d}")

    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in records:
            f.write(json.dumps(r) + '\n')
    print(f"\nWrote {len(records)} records to {OUT_PATH}")


if __name__ == '__main__':
    main()
