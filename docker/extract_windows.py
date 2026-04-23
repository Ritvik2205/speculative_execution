#!/usr/bin/env python3
"""
Parse a compiled .s file into sliding windows and print as JSONL.
Called by compile_attack_sources.sh for each compiled file.

Usage: python3 extract_windows.py <asm_file> <label> <group> <arch>
"""
import sys, json, re

WINDOW_BEFORE = 8
WINDOW_AFTER  = 12
STEP          = 4
MIN_WINDOW    = 5

_SKIP_PREFIXES = (".", "#", "//", ";")

def is_instruction(line: str) -> bool:
    s = line.strip()
    if not s:
        return False
    if s.endswith(":"):
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True

def parse_asm(text: str) -> list:
    return [l.strip() for l in text.splitlines() if is_instruction(l)]

def extract_windows(instructions: list) -> list:
    size = WINDOW_BEFORE + WINDOW_AFTER
    windows = []
    for start in range(0, max(1, len(instructions) - size + 1), STEP):
        w = instructions[start:start + size]
        if len(w) >= MIN_WINDOW:
            windows.append(w)
    return windows

def main():
    asm_file, label, group, arch = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
    try:
        text = open(asm_file, errors="replace").read()
    except OSError as e:
        print(f"[skip] {asm_file}: {e}", file=sys.stderr)
        return
    instructions = parse_asm(text)
    windows = extract_windows(instructions)
    for w in windows:
        rec = {
            "label": label,
            "sequence": w,
            "source_file": asm_file,
            "group": group,
            "arch": arch,
            "augmentation": "compiled_c_source",
        }
        print(json.dumps(rec))

if __name__ == "__main__":
    main()
