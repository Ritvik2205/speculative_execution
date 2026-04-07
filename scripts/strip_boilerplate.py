#!/usr/bin/env python3
"""
Strip measurement boilerplate from assembly sequences.

Removes measurement infrastructure that creates identical subgraphs across
all vulnerability classes, drowning the 2-5 attack-discriminating instructions:

1. Boilerplate label regions: everything from _barrier:, _rd:, __mm_mfence:,
   __mm_lfence:, __mm_clflush: to end of sequence (these are measurement harnesses)
2. Isolated timing/fence instructions at sequence tail (dsb, mrs without context)
3. Trailing stack epilogue after the last attack instruction (add sp, sp, ... ret)

Does NOT strip:
- Fence/barrier instructions embedded within the attack core (e.g., lfence in MDS)
- Cache operations that are part of the vulnerability (e.g., clflush in L1TF)
- Returns/calls that are part of attack patterns (e.g., ret chains in RETBLEED)

Usage:
    from strip_boilerplate import strip_boilerplate
    clean_seq = strip_boilerplate(sequence)

Or as standalone to re-process a dataset:
    python strip_boilerplate.py --input data.jsonl --output data_stripped.jsonl
"""

import re
import json
import argparse
from pathlib import Path
from typing import List, Optional


# ── Boilerplate label patterns ──────────────────────────────────────────────
# These labels mark the start of measurement infrastructure regions.
# Everything from a matching label to the end of the sequence is stripped.

BOILERPLATE_LABEL_RE = re.compile(
    r'^\s*('
    r'_barrier:|'
    r'_rd:|'
    r'__mm_mfence:|'
    r'__mm_lfence:|'
    r'__mm_clflush:|'
    r'__mm_clflushopt:'
    r')\s*$', re.I
)

# ── Trailing measurement pattern ────────────────────────────────────────────
# After stripping label regions, check if the sequence ends with a
# measurement tail: dsb → ret or mrs → ... → ret patterns

TRAILING_MEASUREMENT_RE = re.compile(
    r'^\s*(dsb\s+ish|dsb\s+sy|mrs\s+|rdtsc|rdtscp)\b', re.I
)

# A bare "ret" or "retq" at the very end after measurement instructions
BARE_RET_RE = re.compile(r'^\s*(ret|retq)\s*$', re.I)

# NOP patterns (standalone nops are not discriminative)
NOP_RE = re.compile(r'^\s*(nop)\s*$', re.I)


def strip_boilerplate(sequence: List[str], min_length: int = 3) -> List[str]:
    """
    Strip measurement boilerplate from an assembly sequence.

    Args:
        sequence: List of assembly instruction strings
        min_length: Minimum sequence length after stripping (returns original if too short)

    Returns:
        Cleaned sequence with boilerplate removed
    """
    if len(sequence) <= min_length:
        return sequence

    # Phase 1: Find the first boilerplate label and truncate there
    cut_point = len(sequence)
    for i, instr in enumerate(sequence):
        if BOILERPLATE_LABEL_RE.match(instr):
            cut_point = i
            break

    stripped = sequence[:cut_point]

    # Phase 2: Strip trailing measurement instructions from the end
    # Walk backwards removing: dsb/mrs/rdtsc, then bare ret, then nop
    while len(stripped) > min_length:
        last = stripped[-1].strip()
        if TRAILING_MEASUREMENT_RE.match(last):
            stripped = stripped[:-1]
        elif BARE_RET_RE.match(last) and len(stripped) > 1:
            # Only strip trailing ret if preceded by measurement (dsb/mrs)
            prev = stripped[-2].strip() if len(stripped) >= 2 else ''
            if TRAILING_MEASUREMENT_RE.match(prev):
                stripped = stripped[:-1]  # strip ret, loop will catch dsb next
            else:
                break
        elif NOP_RE.match(last):
            stripped = stripped[:-1]
        else:
            break

    # Phase 3: Strip trailing stack epilogue pattern:
    # add sp, sp, ... at end (but only if preceded by the actual epilogue)
    # This is conservative — only strips if it looks like boilerplate teardown
    while len(stripped) > min_length:
        last = stripped[-1].strip().lower()
        if last.startswith('add sp, sp,') or last.startswith('add\tsp, sp,'):
            # Check if this is after a dsb or fence (measurement teardown)
            # vs part of the attack code (don't strip)
            prev = stripped[-2].strip().lower() if len(stripped) >= 2 else ''
            if prev.startswith('dsb') or prev.startswith('isb'):
                stripped = stripped[:-1]
            else:
                break
        else:
            break

    # Safety: don't return empty or too-short sequences
    if len(stripped) < min_length:
        return sequence

    return stripped


def strip_boilerplate_dataset(input_path: Path, output_path: Path):
    """Process a JSONL dataset, stripping boilerplate from all sequences."""
    n_records = 0
    n_stripped = 0
    total_instrs_before = 0
    total_instrs_after = 0

    with open(input_path) as fin, open(output_path, 'w') as fout:
        for line in fin:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            seq = rec.get('sequence', [])
            total_instrs_before += len(seq)

            clean = strip_boilerplate(seq)
            total_instrs_after += len(clean)

            if len(clean) < len(seq):
                n_stripped += 1
            rec['sequence'] = clean
            fout.write(json.dumps(rec) + '\n')
            n_records += 1

    pct_stripped = 100 * n_stripped / max(n_records, 1)
    pct_instrs = 100 * (1 - total_instrs_after / max(total_instrs_before, 1))
    print(f'Processed {n_records} records')
    print(f'  {n_stripped} ({pct_stripped:.1f}%) had boilerplate removed')
    print(f'  Instructions: {total_instrs_before} -> {total_instrs_after} '
          f'({pct_instrs:.1f}% reduction)')


def main():
    parser = argparse.ArgumentParser(description='Strip measurement boilerplate from assembly sequences')
    parser.add_argument('--input', type=Path, required=True, help='Input JSONL dataset')
    parser.add_argument('--output', type=Path, required=True, help='Output JSONL dataset')
    args = parser.parse_args()

    strip_boilerplate_dataset(args.input, args.output)


if __name__ == '__main__':
    main()
