# scripts/enrichment/phase2_compile_diversity.py
"""
Phase 2: Compiler/architecture diversity enrichment.
Compiles each C vulnerability source file with extra compiler flags not already
covered by the base dataset, extracts sliding-window instruction sequences,
validates against frozen test hashes, and writes to data/enrichment/phase2_compiled.jsonl.
"""
import sys
import random
import subprocess
import tempfile
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent  # SpecExec/
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))

from common import (
    load_test_hashes,
    validate_and_dedup,
    write_jsonl,
    load_jsonl,
    seq_hash,
)

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------

C_CODE_DIR = ROOT / "c_vulns" / "c_code"
TRAIN_IN   = ROOT / "data" / "v25_honest_train.jsonl"
PHASE1_OUT = ROOT / "data" / "enrichment" / "phase1_augmented.jsonl"
OUT_PATH   = ROOT / "data" / "enrichment" / "phase2_compiled.jsonl"

WINDOW_BEFORE = 8
WINDOW_AFTER  = 12
WINDOW_SIZE   = WINDOW_BEFORE + WINDOW_AFTER  # 20 instructions per window
WINDOW_STEP   = 4
MIN_WINDOW    = 5

EXTRA_CONFIGS = [
    ("gcc",   ["-O2", "-funroll-loops"]),
    ("gcc",   ["-O2", "-fno-inline"]),
    ("gcc",   ["-O2", "-fomit-frame-pointer"]),
    ("gcc",   ["-Og"]),
    ("clang", ["-O2", "-funroll-loops"]),
    ("clang", ["-O2", "-fno-inline-functions"]),
    ("clang", ["-O1", "-fno-vectorize"]),
]

# ---------------------------------------------------------------------------
# Label inference — longest-key-first matching
# ---------------------------------------------------------------------------

# Ordered longest first to ensure more specific patterns win
_LABEL_PATTERNS = [
    ("spectre_v4",  "SPECTRE_V4"),
    ("spectre_4",   "SPECTRE_V4"),
    ("spectre4",    "SPECTRE_V4"),
    ("spectre_v2",  "SPECTRE_V2"),
    ("spectre_2",   "SPECTRE_V2"),
    ("spectre2",    "SPECTRE_V2"),
    ("spectre_v1",  "SPECTRE_V1"),
    ("spectre_1",   "SPECTRE_V1"),
    ("spectre1",    "SPECTRE_V1"),
    ("inception",   "INCEPTION"),
    ("meltdown",    "L1TF"),
    ("retbleed",    "RETBLEED"),
    ("l1tf",        "L1TF"),
    ("bhi",         "BRANCH_HISTORY_INJECTION"),
    ("mds",         "MDS"),
]


def infer_label(filename: str) -> str | None:
    name_lower = filename.lower()
    for pattern, label in _LABEL_PATTERNS:
        if pattern in name_lower:
            return label
    return None


# ---------------------------------------------------------------------------
# Compiler availability check
# ---------------------------------------------------------------------------

def _compiler_available(compiler: str) -> bool:
    try:
        result = subprocess.run(
            ["which", compiler],
            capture_output=True,
            timeout=5,
        )
        return result.returncode == 0
    except Exception:
        return False


# ---------------------------------------------------------------------------
# Assembly parsing
# ---------------------------------------------------------------------------

_SKIP_PREFIXES = (".", "#", "//", ";")


def _is_instruction_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return False
    if stripped.endswith(":"):          # labels
        return False
    for prefix in _SKIP_PREFIXES:
        if stripped.startswith(prefix):
            return False
    return True


def parse_assembly(asm_text: str) -> list[str]:
    """Return list of instruction strings, stripped of directives and labels."""
    instructions = []
    for line in asm_text.splitlines():
        if _is_instruction_line(line):
            instructions.append(line.strip())
    return instructions


# ---------------------------------------------------------------------------
# Sliding window extraction
# ---------------------------------------------------------------------------

def extract_windows(instructions: list[str]) -> list[list[str]]:
    windows = []
    n = len(instructions)
    for start in range(0, n, WINDOW_STEP):
        end = start + WINDOW_SIZE
        window = instructions[start:end]
        if len(window) >= MIN_WINDOW:
            windows.append(window)
    return windows


# ---------------------------------------------------------------------------
# Compilation
# ---------------------------------------------------------------------------

def compile_to_asm(
    compiler: str,
    extra_flags: list[str],
    src_path: Path,
) -> str | None:
    """Compile src_path to assembly text. Returns None on failure."""
    with tempfile.NamedTemporaryFile(suffix=".s", delete=False) as tmp:
        tmp_path = tmp.name

    cmd = [compiler, "-S"] + extra_flags + [str(src_path), "-o", tmp_path]
    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            timeout=30,
        )
        if result.returncode != 0:
            return None
        return Path(tmp_path).read_text(errors="replace")
    except Exception:
        return None
    finally:
        try:
            Path(tmp_path).unlink(missing_ok=True)
        except Exception:
            pass


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    # 1. Load frozen test hashes
    test_hashes = load_test_hashes()

    # 2. Build existing_hashes from base training + phase1 output
    existing_hashes: set[tuple[str, str]] = set()

    train_records = load_jsonl(TRAIN_IN)
    print(f"Loaded {len(train_records):,} base training records")
    for r in train_records:
        h = seq_hash(r.get("sequence", []))
        existing_hashes.add((h, r.get("label", "")))

    if PHASE1_OUT.exists():
        phase1_records = load_jsonl(PHASE1_OUT)
        print(f"Loaded {len(phase1_records):,} phase1 records")
        for r in phase1_records:
            h = seq_hash(r.get("sequence", []))
            existing_hashes.add((h, r.get("label", "")))
    else:
        print(f"[phase2] WARNING: {PHASE1_OUT} not found — skipping phase1 dedup")

    print(f"Total existing hashes: {len(existing_hashes):,}")

    # 3. Check compiler availability
    available_compilers: set[str] = set()
    for compiler, _ in EXTRA_CONFIGS:
        if compiler not in available_compilers and _compiler_available(compiler):
            available_compilers.add(compiler)
            print(f"[phase2] Compiler available: {compiler}")
        elif compiler not in available_compilers:
            print(f"[phase2] Compiler NOT found on PATH: {compiler} — will skip configs using it")

    # 4. Find all .c files (non-recursive for now, then recursive for subdirs)
    c_files = sorted(C_CODE_DIR.glob("*.c"))
    print(f"\nFound {len(c_files)} top-level .c files in {C_CODE_DIR}")

    # 5. Process each file × each config
    all_candidates = []
    compile_ok = 0
    compile_fail = 0
    compile_skip = 0

    for src_path in c_files:
        label = infer_label(src_path.name)
        if label is None:
            print(f"  [skip] {src_path.name}: no label match")
            compile_skip += 1
            continue

        for compiler, extra_flags in EXTRA_CONFIGS:
            if compiler not in available_compilers:
                continue

            asm_text = compile_to_asm(compiler, extra_flags, src_path)
            if asm_text is None:
                print(f"  [fail] {src_path.name} | {compiler} {extra_flags}")
                compile_fail += 1
                continue

            compile_ok += 1
            instructions = parse_assembly(asm_text)
            windows = extract_windows(instructions)

            flag_str = "_".join(f.lstrip("-") for f in extra_flags)
            group = f"phase2_{src_path.stem}_{compiler}_{flag_str}"

            for window in windows:
                all_candidates.append({
                    "label": label,
                    "sequence": window,
                    "source_file": str(src_path),
                    "group": group,
                    "arch": "x86_64",
                    "augmentation": "compiler_variant",
                })

    print(f"\nCompilation results: ok={compile_ok}, fail={compile_fail}, skip={compile_skip}")
    print(f"Raw candidates before dedup: {len(all_candidates):,}")

    # 6. Validate & deduplicate
    clean, stats = validate_and_dedup(
        all_candidates,
        test_hashes,
        existing_hashes=existing_hashes,
    )
    print(f"Validation stats: {stats}")

    # 7. Write output
    write_jsonl(clean, OUT_PATH)

    # 8. Per-class summary
    label_counts = Counter(r["label"] for r in clean)
    print("\nPer-class phase2 records:")
    for cls in sorted(label_counts):
        print(f"  {cls:<40} {label_counts[cls]:>8,}")
    print(f"\nTotal written: {len(clean):,}")


if __name__ == "__main__":
    main()
