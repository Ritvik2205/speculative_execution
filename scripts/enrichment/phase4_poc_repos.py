#!/usr/bin/env python3
"""
Phase 4: PoC repository scraping for speculative execution vulnerability detection.

Clones 6 targeted public PoC repositories, compiles all .c/.cpp files found,
extracts sliding windows, labels by filename/path, and validates against the
frozen test set.
"""
import sys
import os
import random
import subprocess
import tempfile
import logging
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

CLONE_DIR  = ROOT / "data" / "enrichment" / "poc_repos"
OUT_PATH   = ROOT / "data" / "enrichment" / "phase4_poc.jsonl"
LOG_PATH   = ROOT / "data" / "enrichment" / "phase4.log"

TRAIN_IN   = ROOT / "data" / "v25_honest_train.jsonl"
PHASE1_OUT = ROOT / "data" / "enrichment" / "phase1_augmented.jsonl"
PHASE2_OUT = ROOT / "data" / "enrichment" / "phase2_compiled.jsonl"

WINDOW_BEFORE = 8
WINDOW_AFTER  = 12
WINDOW_SIZE   = WINDOW_BEFORE + WINDOW_AFTER  # 20 instructions per window
WINDOW_STEP   = 4
MIN_WINDOW    = 5

# Compile configs: (compiler, flags)
COMPILE_CONFIGS = [
    ("gcc",   ["-O0"]),
    ("gcc",   ["-O2"]),
    ("clang", ["-O2"]),
]

# Target PoC repositories: (url, label_override)
# label_override=None means infer from path
TARGET_REPOS = [
    ("https://github.com/IAIK/transient-execution-attacks", None),
    ("https://github.com/cgvwzq/spectre",                   "SPECTRE_V1"),
    ("https://github.com/crozone/spectre-meltdown",         None),
    ("https://github.com/vusec/ridl",                       "MDS"),
    ("https://github.com/bitdefender/Speculo",              "SPECTRE_V2"),
    ("https://github.com/google/security-research",         None),   # only pocs/ subdir
]

# ---------------------------------------------------------------------------
# Label inference — longest-key-first matching
# ---------------------------------------------------------------------------

LABEL_MAP = {
    "spectre_v1": "SPECTRE_V1", "spectre1": "SPECTRE_V1", "spectre-v1": "SPECTRE_V1",
    "spectre_v2": "SPECTRE_V2", "spectre2": "SPECTRE_V2", "spectre-v2": "SPECTRE_V2",
    "spectre_v4": "SPECTRE_V4", "spectre4": "SPECTRE_V4", "spectre-v4": "SPECTRE_V4",
    "retpoline": "SPECTRE_V2", "ibpb": "SPECTRE_V2", "indirect_branch": "SPECTRE_V2",
    "l1tf": "L1TF", "foreshadow": "L1TF", "meltdown": "L1TF",
    "mds": "MDS", "ridl": "MDS", "fallout": "MDS", "zombieload": "MDS",
    "retbleed": "RETBLEED",
    "inception": "INCEPTION", "phantom": "INCEPTION", "srso": "INCEPTION",
    "bhi": "BRANCH_HISTORY_INJECTION", "bhb": "BRANCH_HISTORY_INJECTION",
}


def infer_label(path) -> str | None:
    """Infer vulnerability label from file path using longest-key-first matching."""
    text = str(path).lower()
    for key, label in sorted(LABEL_MAP.items(), key=lambda x: -len(x[0])):
        if key in text:
            return label
    return None


def _infer_arch(src_path: Path) -> str:
    """Infer target architecture from file path."""
    text = str(src_path).lower()
    if "arm64" in text or "aarch64" in text:
        return "arm64"
    if "arm" in text and "64" not in text:
        return "arm32"
    if "riscv" in text:
        return "riscv64"
    return "x86_64"


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

    cmd = (
        [compiler, "-S"]
        + extra_flags
        + [f"-I{src_path.parent}", "-I/usr/include"]
        + [str(src_path), "-o", tmp_path]
    )
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
# Repository cloning
# ---------------------------------------------------------------------------

def clone_repo(url: str, target: Path) -> bool:
    """Clone a repo with --depth=1. Returns True on success or if already exists."""
    if target.exists():
        print(f"  [skip-clone] {target.name} already cloned")
        return True
    try:
        result = subprocess.run(
            ["git", "clone", "--depth=1", url, str(target)],
            capture_output=True,
            timeout=300,  # 5 minutes max
        )
        if result.returncode != 0:
            err = result.stderr.decode(errors="replace").strip()
            print(f"  [clone-fail] {url}: {err[:200]}")
            return False
        print(f"  [cloned] {target.name}")
        return True
    except Exception as e:
        print(f"  [clone-error] {url}: {e}")
        return False


# ---------------------------------------------------------------------------
# File discovery
# ---------------------------------------------------------------------------

def find_source_files(repo_dir: Path, subdir: str | None = None) -> list[Path]:
    """Find all .c and .cpp files in repo_dir (optionally limited to subdir)."""
    search_root = repo_dir / subdir if subdir else repo_dir
    if not search_root.exists():
        print(f"  [warn] subdir not found: {search_root}")
        return []
    files = list(search_root.rglob("*.c")) + list(search_root.rglob("*.cpp"))
    return sorted(files)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    # Set up logging
    LOG_PATH.parent.mkdir(parents=True, exist_ok=True)
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s %(message)s",
        handlers=[
            logging.FileHandler(LOG_PATH, mode="w"),
            logging.StreamHandler(sys.stdout),
        ],
    )
    log = logging.getLogger("phase4")

    log.info("=== Phase 4: PoC Repository Scraping ===")

    # 1. Load frozen test hashes
    test_hashes = load_test_hashes()

    # 2. Build existing_hashes from base training + phase1 + phase2 outputs
    existing_hashes: set[tuple[str, str]] = set()

    if TRAIN_IN.exists():
        train_records = load_jsonl(TRAIN_IN)
        log.info(f"Loaded {len(train_records):,} base training records")
        for r in train_records:
            h = seq_hash(r.get("sequence", []))
            existing_hashes.add((h, r.get("label", "")))
    else:
        log.warning(f"Training file not found: {TRAIN_IN}")

    for phase_out, phase_name in [(PHASE1_OUT, "phase1"), (PHASE2_OUT, "phase2")]:
        if phase_out.exists():
            phase_records = load_jsonl(phase_out)
            log.info(f"Loaded {len(phase_records):,} {phase_name} records")
            for r in phase_records:
                h = seq_hash(r.get("sequence", []))
                existing_hashes.add((h, r.get("label", "")))
        else:
            log.warning(f"[phase4] {phase_name} output not found at {phase_out} — skipping")

    log.info(f"Total existing hashes for dedup: {len(existing_hashes):,}")

    # 3. Check compiler availability
    available_compilers: set[str] = set()
    for compiler, _ in COMPILE_CONFIGS:
        if compiler not in available_compilers:
            if _compiler_available(compiler):
                available_compilers.add(compiler)
                log.info(f"Compiler available: {compiler}")
            else:
                log.warning(f"Compiler NOT found on PATH: {compiler} — will skip configs using it")

    if not available_compilers:
        log.error("No compilers available. Aborting.")
        write_jsonl([], OUT_PATH)
        return

    # 4. Ensure clone directory exists
    CLONE_DIR.mkdir(parents=True, exist_ok=True)

    # 5. Process each target repo
    all_candidates = []
    compile_ok = 0
    compile_fail = 0
    compile_skip = 0
    repo_stats: dict[str, dict] = {}

    for url, label_override in TARGET_REPOS:
        repo_name = url.rstrip("/").split("/")[-1]
        target_dir = CLONE_DIR / repo_name

        log.info(f"\n--- Processing repo: {repo_name} ---")
        log.info(f"  URL: {url}")
        log.info(f"  Label override: {label_override}")

        # Clone (skip if already exists)
        if not clone_repo(url, target_dir):
            log.warning(f"  Skipping {repo_name} due to clone failure")
            continue

        # For google/security-research, only process files under pocs/
        subdir = "pocs" if "google/security-research" in url else None
        source_files = find_source_files(target_dir, subdir)
        log.info(f"  Found {len(source_files)} .c/.cpp files")

        repo_candidates = 0
        repo_skipped = 0

        for src in source_files:
            # Determine label
            if label_override is not None:
                label = label_override
            else:
                label = infer_label(src)

            if label is None:
                compile_skip += 1
                repo_skipped += 1
                continue

            # Relative path from CLONE_DIR for source_file field
            try:
                rel_path = src.relative_to(CLONE_DIR)
            except ValueError:
                rel_path = src

            arch = _infer_arch(src)

            for compiler, flags in COMPILE_CONFIGS:
                if compiler not in available_compilers:
                    continue

                asm_text = compile_to_asm(compiler, flags, src)
                if asm_text is None:
                    compile_fail += 1
                    continue

                compile_ok += 1
                instructions = parse_assembly(asm_text)
                windows = extract_windows(instructions)

                flag_str = "_".join(f.lstrip("-") for f in flags)
                group = f"phase4_{repo_name}_{src.stem}_{compiler}_{flag_str}"

                for window in windows:
                    all_candidates.append({
                        "label": label,
                        "sequence": window,
                        "source_file": str(rel_path),
                        "group": group,
                        "arch": arch,
                        "augmentation": "poc_repo",
                        "repo": repo_name,
                    })
                    repo_candidates += 1

        log.info(f"  Repo {repo_name}: {repo_candidates:,} raw candidates, {repo_skipped} files skipped (no label)")
        repo_stats[repo_name] = {"candidates": repo_candidates, "skipped": repo_skipped}

    log.info(f"\nCompilation results: ok={compile_ok}, fail={compile_fail}, skip={compile_skip}")
    log.info(f"Raw candidates before dedup: {len(all_candidates):,}")

    # 6. Validate & deduplicate
    clean, stats = validate_and_dedup(
        all_candidates,
        test_hashes,
        existing_hashes=existing_hashes,
    )
    log.info(f"Validation stats: {stats}")

    # 7. Write output
    write_jsonl(clean, OUT_PATH)

    # 8. Per-class and per-repo summary
    label_counts = Counter(r["label"] for r in clean)
    repo_counts  = Counter(r.get("repo", "?") for r in clean)

    log.info("\nPer-class phase4 records:")
    for cls in sorted(label_counts):
        log.info(f"  {cls:<40} {label_counts[cls]:>8,}")

    log.info("\nPer-repo phase4 records:")
    for repo, cnt in repo_counts.most_common():
        log.info(f"  {repo:<40} {cnt:>8,}")

    log.info(f"\nTotal written: {len(clean):,}")
    print(f"\nPASS: {len(clean):,} records written to {OUT_PATH}")


if __name__ == "__main__":
    main()
