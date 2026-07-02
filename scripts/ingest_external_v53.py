#!/usr/bin/env python3
"""
External data ingestion pipeline for v53.

Sources:
  1. Google SafeSide (L1TF, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4, SPECTRE_RSB)
  2. Spectector benchmarks (SPECTRE_V1 — unpatched variants only)

Steps:
  1. Compile SafeSide .cc files at O0/O1/O2/O3 for x86_64 and arm64
  2. Extract function-level instruction sequences from .s files
  3. Deduplicate against existing v52 data (normalized opcode hash)
  4. Merge with v52 and create v53 with group-stratified 80/20 split

Output: v53/data/v53_train.jsonl, v53/data/v53_test.jsonl
"""

import hashlib
import json
import os
import re
import subprocess
import sys
from collections import defaultdict
from pathlib import Path
from typing import Dict, List, Optional, Tuple

ROOT = Path(__file__).parent.parent
EXTERNAL = Path("/tmp/specexec_external")
V52_TRAIN = ROOT / "v52/data/v52_train.jsonl"
V52_TEST  = ROOT / "v52/data/v52_test.jsonl"
OUT_DIR   = ROOT / "v53/data"

# ---------------------------------------------------------------------------
# SafeSide class mapping — filename stem → (label, include_in_dataset)
# ---------------------------------------------------------------------------
SAFESIDE_CLASS = {
    # Spectre-PHT (bounds-check bypass) = V1
    "spectre_v1_pht_sa":         "SPECTRE_V1",
    # Spectre-BTB (indirect branch injection) = V2
    "spectre_v1_btb_sa":         "SPECTRE_V2",
    "spectre_v1_btb_ca":         "SPECTRE_V2",
    # Spectre-STL (store-to-load forwarding) = V4
    "spectre_v4":                "SPECTRE_V4",
    # L1TF (Terminal Fault) — all meltdown variants map here in our taxonomy
    "l1tf":                      "L1TF",
    "meltdown":                  "L1TF",
    "meltdown_ac":               "L1TF",
    "meltdown_br":               "L1TF",
    "meltdown_de":               "L1TF",
    "meltdown_of":               "L1TF",
    "meltdown_ss":               "L1TF",
    "meltdown_ud":               "L1TF",
    # RSB underflow / ret2spec = SPECTRE_RSB
    "ret2spec_sa":               "SPECTRE_RSB",
    "ret2spec_ca":               "SPECTRE_RSB",
    "ret2spec_callret_disparity":"SPECTRE_RSB",
    "ret2spec_common":           "SPECTRE_RSB",
}

SAFESIDE_DIR = EXTERNAL / "safeside/demos"

# ---------------------------------------------------------------------------
# Compilation helpers
# ---------------------------------------------------------------------------

def compile_cc(src: Path, out: Path, target: str, opt: str) -> bool:
    """Compile a .cc file to .s; return True on success.

    -DSAFESIDE_LINUX=1 tricks the OS guard so files like ret2spec_ca.cc and
    spectre_v1_btb_ca.cc (which use a Linux-only PinToTheFirstCore declaration)
    are declared available. Files that have deeper Linux dependencies (meltdown,
    l1tf) will still fail due to ucontext/signal fields — that's expected.
    """
    out.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        "clang++",
        f"-target", target,
        f"-O{opt}",
        "-S",
        "-fno-exceptions",
        "-DSAFESIDE_LINUX=1",   # expose PinToTheFirstCore decl; harmless for non-Linux files
        f"-I{SAFESIDE_DIR}",
        f"-I{SAFESIDE_DIR.parent}",
        "-o", str(out),
        str(src),
    ]
    r = subprocess.run(cmd, capture_output=True, timeout=60)
    return r.returncode == 0


def compile_all_safeside(asm_root: Path) -> List[Tuple[Path, str, str]]:
    """Compile all SafeSide demo files; return list of (asm_path, label, group).

    Group is per-file+arch+opt so different opt levels can be independently
    split between train and test. Same source but different opts = different
    compilation artifacts = no leakage concern at function-instruction level.
    """
    results = []
    targets = [
        ("x86_64-apple-macos", "x86_64"),
        ("arm64-apple-macos",  "arm64"),
    ]
    opts = ["0", "1", "2", "3"]

    for stem, label in SAFESIDE_CLASS.items():
        src = SAFESIDE_DIR / f"{stem}.cc"
        if not src.exists():
            print(f"  [skip] not found: {src.name}")
            continue
        for target_triple, arch_name in targets:
            for opt in opts:
                out = asm_root / arch_name / f"{stem}_O{opt}.s"
                # Use opt in group so each compilation is independently splittable
                group = f"safeside_{stem}_{arch_name}_O{opt}"
                if out.exists():
                    results.append((out, label, group))
                    continue
                ok = compile_cc(src, out, target_triple, opt)
                if ok:
                    results.append((out, label, group))
                else:
                    print(f"  [fail] {stem} target={arch_name} O={opt}")
    return results


# ---------------------------------------------------------------------------
# Assembly parser
# ---------------------------------------------------------------------------

_DIRECTIVE = re.compile(r"^\s*\.")
_LABEL     = re.compile(r"^\s*\S+:\s*$")
_COMMENT   = re.compile(r"^(;;|#|//).*")
_EMPTY     = re.compile(r"^\s*$")


def _is_instruction(line: str) -> bool:
    """Return True if the line looks like an assembly instruction (not directive/label/comment)."""
    s = line.strip()
    if not s:
        return False
    if _DIRECTIVE.match(s):
        return False
    if _COMMENT.match(s):
        return False
    # Pure label: ends with ':' and has no other tokens after (e.g. "LBB0_1:")
    if re.match(r"^\S+:\s*$", s):
        return False
    # Intel-syntax section/data directives that start with a word
    if s.startswith("SECTION") or s.startswith("section"):
        return False
    return True


def _extract_opcode(line: str) -> Optional[str]:
    s = line.strip()
    # Strip leading label (e.g. "LBB0_1: movq ...")
    if ":" in s:
        s = s.split(":", 1)[1].strip()
    parts = s.split()
    if parts:
        return parts[0].lower().rstrip("q")  # normalize suffix for hashing only
    return None


# Function boundary patterns
_FUNC_START = re.compile(
    r"^\s*(_?[A-Za-z_][A-Za-z0-9_$@.]+):\s*(?:##|$|#)",
)
_GLOBL = re.compile(r"^\s*\.globl\s+(\S+)")
_CFI_END = re.compile(r"\.cfi_endproc")


def extract_functions(asm_path: Path, arch: str) -> List[List[str]]:
    """
    Parse an assembly file and return a list of instruction sequences,
    one per function. Each sequence is a list of raw instruction strings.
    """
    functions = []
    current: List[str] = []
    in_func = False

    text = asm_path.read_text(errors="replace")
    lines = text.splitlines()

    for line in lines:
        stripped = line.strip()

        # Function end markers
        if _CFI_END.search(stripped):
            if current and len(current) >= 4:
                functions.append(current)
            current = []
            in_func = False
            continue

        # Function start: a label that looks like a symbol name
        m = _FUNC_START.match(line)
        if m:
            name = m.group(1)
            # Flush previous
            if current and len(current) >= 4:
                functions.append(current)
            current = []
            in_func = True
            continue

        if in_func and _is_instruction(line):
            instr = line.strip()
            # Strip inline comments (## ... or // ...)
            instr = re.sub(r"\s*(##|//)[^\n]*$", "", instr).strip()
            if instr:
                current.append(instr)

    # Flush last
    if current and len(current) >= 4:
        functions.append(current)

    return functions


# ---------------------------------------------------------------------------
# Spectector helpers
# ---------------------------------------------------------------------------

def load_spectector_samples() -> List[Dict]:
    """Load unpatched Spectector .s files as SPECTRE_V1 samples."""
    spec_dir = EXTERNAL / "spectector-benchmarks"
    # Unpatched = 'any' or 'vanilla' in filename; skip 'lfence', 'slh', 'fence'
    bad = re.compile(r"(lfence|slh|fence|retpoline)", re.I)
    good = re.compile(r"(any\.|vanilla\.)", re.I)

    samples = []
    for path in spec_dir.rglob("*.s"):
        if not good.search(path.name):
            continue
        if bad.search(path.name):
            continue
        funcs = extract_functions(path, "x86_64")
        group = f"spectector_{path.parent.name}_{path.stem}"
        for i, seq in enumerate(funcs):
            if len(seq) < 4:
                continue
            samples.append({
                "label":       "SPECTRE_V1",
                "sequence":    seq,
                "source_file": str(path),
                "group":       group,
                "arch":        "x86_64",
                "augmentation": "none",
                "external_source": "spectector-benchmarks",
            })
    print(f"Spectector: {len(samples)} sequences from unpatched .s files")
    return samples


# ---------------------------------------------------------------------------
# SafeSide helpers
# ---------------------------------------------------------------------------

def load_safeside_samples(asm_root: Path, compiled: List[Tuple[Path, str, str]]) -> List[Dict]:
    samples = []
    for asm_path, label, group in compiled:
        arch = "x86_64" if "x86_64" in str(asm_path) else "arm64"
        funcs = extract_functions(asm_path, arch)
        for seq in funcs:
            if len(seq) < 4:
                continue
            samples.append({
                "label":       label,
                "sequence":    seq,
                "source_file": str(asm_path),
                "group":       group,
                "arch":        arch,
                "augmentation": "none",
                "external_source": "safeside",
            })
    print(f"SafeSide: {len(samples)} sequences from {len(compiled)} compiled files")
    return samples


# ---------------------------------------------------------------------------
# Deduplication
# ---------------------------------------------------------------------------

def _seq_hash(seq: List[str]) -> str:
    """Canonical hash of an instruction sequence using opcodes only."""
    opcodes = []
    for line in seq:
        line = line.strip()
        if not line or line.startswith(".") or line.endswith(":"):
            continue
        parts = line.split()
        if parts:
            opcodes.append(parts[0].lower())
    return hashlib.md5(" ".join(opcodes).encode()).hexdigest()


def build_existing_hashes(paths: List[Path]) -> set:
    hashes = set()
    for p in paths:
        if not p.exists():
            continue
        with open(p) as f:
            for line in f:
                rec = json.loads(line)
                hashes.add(_seq_hash(rec["sequence"]))
    return hashes


def dedup(samples: List[Dict], existing_hashes: set) -> List[Dict]:
    seen = set(existing_hashes)
    kept = []
    for s in samples:
        h = _seq_hash(s["sequence"])
        if h not in seen:
            seen.add(h)
            kept.append(s)
    return kept


# ---------------------------------------------------------------------------
# Train/test split (group-stratified)
# ---------------------------------------------------------------------------

def group_stratified_split(
    samples: List[Dict],
    test_frac: float = 0.20,
    seed: int = 42,
) -> Tuple[List[Dict], List[Dict]]:
    """
    Split by group so no group appears in both train and test.
    Stratified so each class has ~test_frac fraction in test.
    """
    import random
    rng = random.Random(seed)

    # Group samples by (label, group)
    by_label: Dict[str, Dict[str, List[Dict]]] = defaultdict(lambda: defaultdict(list))
    for s in samples:
        by_label[s["label"]][s["group"]].append(s)

    train, test = [], []
    for label, group_map in by_label.items():
        groups = list(group_map.keys())
        rng.shuffle(groups)
        # How many groups should go to test?
        n_test_groups = max(1, round(len(groups) * test_frac))
        test_groups = set(groups[:n_test_groups])
        for g, recs in group_map.items():
            if g in test_groups:
                test.extend(recs)
            else:
                train.extend(recs)

    rng.shuffle(train)
    rng.shuffle(test)
    return train, test


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def print_dist(label: str, records: List[Dict]):
    from collections import Counter
    c = Counter(r["label"] for r in records)
    print(f"\n{label} class distribution ({len(records)} total):")
    for cls, cnt in sorted(c.items()):
        bar = "#" * (cnt // 10)
        print(f"  {cls:<35s} {cnt:>5d}  {bar}")


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    asm_root = EXTERNAL / "safeside_asm"

    # Step 1: compile SafeSide
    print("\n=== Step 1: Compile SafeSide ===")
    compiled = compile_all_safeside(asm_root)
    print(f"Compiled {len(compiled)} SafeSide asm files")

    # Step 2: load new samples
    print("\n=== Step 2: Load external samples ===")
    new_samples = []
    new_samples.extend(load_safeside_samples(asm_root, compiled))
    new_samples.extend(load_spectector_samples())
    print(f"Total new samples before dedup: {len(new_samples)}")

    # Step 3: dedup against v52
    print("\n=== Step 3: Deduplicate against v52 ===")
    existing_hashes = build_existing_hashes([V52_TRAIN, V52_TEST])
    print(f"Existing v52 hashes: {len(existing_hashes)}")
    new_unique = dedup(new_samples, existing_hashes)
    print(f"New unique samples after dedup: {len(new_unique)}")

    # Step 4: load v52 data
    print("\n=== Step 4: Load v52 data ===")
    v52 = []
    for p in [V52_TRAIN, V52_TEST]:
        if p.exists():
            with open(p) as f:
                for line in f:
                    v52.append(json.loads(line))
    print(f"v52 records: {len(v52)}")

    # Step 5: merge
    all_samples = v52 + new_unique
    print_dist("Combined (before split)", all_samples)

    # Step 6: split — keep v52 split intact for reproducibility, only split new data
    # Load existing v52 train/test groups
    v52_train_groups, v52_test_groups = set(), set()
    v52_train_recs, v52_test_recs = [], []
    if V52_TRAIN.exists():
        with open(V52_TRAIN) as f:
            for line in f:
                r = json.loads(line)
                v52_train_recs.append(r)
                v52_train_groups.add(r.get("group",""))
    if V52_TEST.exists():
        with open(V52_TEST) as f:
            for line in f:
                r = json.loads(line)
                v52_test_recs.append(r)
                v52_test_groups.add(r.get("group",""))

    # Split only the new unique samples
    new_train, new_test = group_stratified_split(new_unique, test_frac=0.20)

    train = v52_train_recs + new_train
    test  = v52_test_recs  + new_test

    print_dist("v53 TRAIN", train)
    print_dist("v53 TEST",  test)

    # Step 7: write
    print("\n=== Step 7: Write v53 datasets ===")
    train_path = OUT_DIR / "v53_train.jsonl"
    test_path  = OUT_DIR / "v53_test.jsonl"

    with open(train_path, "w") as f:
        for r in train:
            f.write(json.dumps(r) + "\n")
    with open(test_path, "w") as f:
        for r in test:
            f.write(json.dumps(r) + "\n")

    print(f"Written: {train_path}  ({len(train)} records)")
    print(f"Written: {test_path}   ({len(test)} records)")
    print(f"\nv52→v53 delta: +{len(new_train)} train, +{len(new_test)} test")


if __name__ == "__main__":
    main()
