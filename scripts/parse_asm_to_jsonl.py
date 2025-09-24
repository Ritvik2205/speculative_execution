#!/usr/bin/env python3
import argparse
import json
import os
import re
from pathlib import Path


ARM64_BRANCH_COND = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD = re.compile(r"\b(ldr(b|h|sh|sw)?|ldr)\b", re.IGNORECASE)
ARM64_BARRIERS = [
    re.compile(r"\bdsb\b", re.IGNORECASE),
    re.compile(r"\bdmb\b", re.IGNORECASE),
    re.compile(r"\bisb\b", re.IGNORECASE),
    re.compile(r"\bcsdb\b", re.IGNORECASE),
    re.compile(r"hint\s*#0x14", re.IGNORECASE),
]


def read_file(path: Path):
    try:
        return path.read_text(errors="ignore").splitlines()
    except Exception:
        return []


def normalize_line(line: str) -> str:
    # Strip comments and extra whitespace; keep opcodes/tokens
    # Remove LLVM/Mach-O metadata lines (e.g., .section, .build_version)
    line = line.strip()
    if not line or line.startswith(".") or line.endswith(":"):
        return ""
    # Remove comments starting with ';' (LLVM style)
    line = line.split(";", 1)[0]
    return line.strip()


def token_of(line: str) -> str:
    return line.split()[0].lower() if line else ""


def is_barrier(line: str) -> bool:
    return any(p.search(line) for p in ARM64_BARRIERS)


def extract_windows(lines, window_before=8, window_after=12):
    norm = [normalize_line(l) for l in lines]
    idxs = [i for i, l in enumerate(norm) if l and ARM64_BRANCH_COND.search(l)]
    windows = []
    for i in idxs:
        start = max(0, i - window_before)
        end = min(len(norm), i + window_after + 1)
        seq = [l for l in norm[start:end] if l]
        windows.append((i, seq))
    return windows


def featurize(seq):
    tokens = [token_of(l) for l in seq]
    has_branch = any(ARM64_BRANCH_COND.search(l) for l in seq)
    first_load_idx = next((i for i, l in enumerate(seq) if ARM64_LOAD.search(l)), None)
    first_branch_idx = next((i for i, l in enumerate(seq) if ARM64_BRANCH_COND.search(l)), None)
    branch_to_load = (first_load_idx - first_branch_idx) if (first_load_idx is not None and first_branch_idx is not None) else None
    barrier_present = any(is_barrier(l) for l in seq)
    load_count = sum(1 for l in seq if ARM64_LOAD.search(l))

    return {
        "tokens": tokens,
        "has_branch": has_branch,
        "load_count": load_count,
        "branch_to_first_load": branch_to_load,
        "barrier_present": barrier_present,
        "length": len(tokens),
    }


def label_from_path(path: Path) -> str:
    # Expect .../asm/{vuln|benign}/file.s
    parts = path.parts
    try:
        idx = parts.index("asm")
        return parts[idx + 1]
    except Exception:
        return "unknown"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--asm-dir", type=Path, default=Path("data/asm"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/arm64_windows.jsonl"))
    ap.add_argument("--window-before", type=int, default=8)
    ap.add_argument("--window-after", type=int, default=12)
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)

    asm_files = list(Path(args.asm_dir).rglob("*.s"))
    count = 0
    with args.out.open("w") as fout:
        for f in asm_files:
            lines = read_file(f)
            windows = extract_windows(lines, args.window_before, args.window_after)
            for idx, seq in windows:
                feats = featurize(seq)
                rec = {
                    "source_file": str(f),
                    "label": label_from_path(f),
                    "arch": "arm64" if "arm64" in f.name else "unknown",
                    "branch_index": idx,
                    "sequence": seq,
                    "features": feats,
                }
                fout.write(json.dumps(rec) + "\n")
                count += 1
    print(f"Wrote {count} windows to {args.out}")


if __name__ == "__main__":
    main()


