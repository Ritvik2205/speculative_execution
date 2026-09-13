#!/usr/bin/env python3
"""
Phase 11: Expanded CVE PoC repository mining with function-level extraction.

Clones 20+ targeted public PoC repositories, compiles .c/.cpp files via the
specexec-compile Docker image (x86_64-linux-gnu-gcc cross-compiler), extracts
whole functions from resulting .s files, and validates against the frozen test set.

Key differences from phase4:
  - Function-level extraction (matches v44 dataset format)
  - Docker x86 cross-compilation (works on Apple Silicon host)
  - 20+ repos covering all 10 attack classes
"""
import sys, os, random, subprocess, tempfile, shutil
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
sys.path.insert(0, str(ROOT / "scripts"))

from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash
from extract_functions import parse_functions, truncate_function

CLONE_DIR  = ROOT / "data" / "enrichment" / "phase11_repos"
OUT_PATH   = ROOT / "data" / "enrichment" / "phase11_poc_expanded.jsonl"
DOCKER_IMG = "specexec-compile:latest"

MAX_FUNC_LEN = 500
MIN_FUNC_LEN = 5

# (url, label_override, subdir_filter)
TARGET_REPOS = [
    # ── SPECTRE V1 ──────────────────────────────────────────────────────────
    ("https://github.com/Eugnis/spectre-attack",          "SPECTRE_V1",                  None),
    ("https://github.com/lsds/spectre-attack-sgx",        "SPECTRE_V1",                  None),

    # ── L1TF / MELTDOWN ─────────────────────────────────────────────────────
    ("https://github.com/IAIK/meltdown",                  "L1TF",                        None),
    ("https://github.com/paboldin/meltdown-exploit",      "L1TF",                        None),
    ("https://github.com/raphaelsc/Am-I-affected-by-Meltdown", "L1TF",                  None),

    # ── MDS / ZOMBIELOAD ────────────────────────────────────────────────────
    ("https://github.com/IAIK/zombieload",                "MDS",                         None),

    # ── RETBLEED ────────────────────────────────────────────────────────────
    ("https://github.com/comsec-group/retbleed",          "RETBLEED",                    None),

    # ── INCEPTION / SRSO ────────────────────────────────────────────────────
    ("https://github.com/comsec-group/inception",         "INCEPTION",                   None),

    # ── BHI ─────────────────────────────────────────────────────────────────
    ("https://github.com/vusec/bhi-spectre-bhb",          "BRANCH_HISTORY_INJECTION",    None),

    # ── DOWNFALL ────────────────────────────────────────────────────────────
    ("https://github.com/flowyroll/downfall",             "DOWNFALL",                    None),
    ("https://github.com/vusec/downfall",                 "DOWNFALL",                    None),

    # ── MIXED / MULTI-CLASS ─────────────────────────────────────────────────
    ("https://github.com/google/security-research",       None,                          "pocs"),
    ("https://github.com/google/safeside",                None,                          None),
    ("https://github.com/speed47/spectre-meltdown-checker", None,                        None),
]

LABEL_MAP = {
    "spectre_rsb": "SPECTRE_RSB",  "rsb":        "SPECTRE_RSB",
    "spectre_v4":  "SPECTRE_V4",   "spectre4":   "SPECTRE_V4",  "spectre-v4": "SPECTRE_V4",
    "spectre_v2":  "SPECTRE_V2",   "spectre2":   "SPECTRE_V2",  "spectre-v2": "SPECTRE_V2",
    "retpoline":   "SPECTRE_V2",   "ibpb":       "SPECTRE_V2",
    "spectre_v1":  "SPECTRE_V1",   "spectre1":   "SPECTRE_V1",  "spectre-v1": "SPECTRE_V1",
    "spectre":     "SPECTRE_V1",
    "l1tf":        "L1TF",         "foreshadow": "L1TF",        "meltdown":   "L1TF",
    "zombieload":  "MDS",          "ridl":       "MDS",         "fallout":    "MDS",
    "mds":         "MDS",
    "retbleed":    "RETBLEED",
    "inception":   "INCEPTION",    "phantom":    "INCEPTION",   "srso":       "INCEPTION",
    "bhi":         "BRANCH_HISTORY_INJECTION",
    "bhb":         "BRANCH_HISTORY_INJECTION",
    "downfall":    "DOWNFALL",     "gds":        "DOWNFALL",
}
_SORTED_KEYS = sorted(LABEL_MAP.keys(), key=len, reverse=True)


def infer_label(path: Path) -> str | None:
    text = str(path).lower()
    for key in _SORTED_KEYS:
        if key in text:
            return LABEL_MAP[key]
    return None


# Compiler configs inside Docker (x86 cross-compiler)
DOCKER_COMPILERS = [
    ("x86_64-linux-gnu-gcc", ["-O0"]),
    ("x86_64-linux-gnu-gcc", ["-O2"]),
    ("x86_64-linux-gnu-gcc", ["-O1"]),
]

# Extra include flags to try for each source file
def _include_flags(src: Path, repo_dir: Path) -> list[str]:
    flags = [f"-I{src.parent}", f"-I{repo_dir}"]
    for d in sorted(repo_dir.rglob("*"))[:20]:
        if d.is_dir():
            flags.append(f"-I{d}")
    return flags


def compile_via_docker(src: Path, repo_dir: Path, compiler: str, flags: list[str]) -> str | None:
    """
    Mount repo_dir (resolved) into Docker at /src, compile src, return assembly text.
    """
    repo_dir = repo_dir.resolve()
    src = src.resolve()
    try:
        rel = src.relative_to(repo_dir)
    except ValueError:
        return None

    with tempfile.NamedTemporaryFile(suffix=".s", delete=False, dir=str(repo_dir)) as t:
        out_host = Path(t.name)
    out_rel = out_host.relative_to(repo_dir)

    # Include all subdirectories as /src/... paths inside container
    container_includes = ["-I/src"] + [
        f"-I/src/{d.relative_to(repo_dir)}"
        for d in sorted(repo_dir.rglob("*"))
        if d.is_dir()
    ]

    compile_cmd = (
        f"{compiler} -S {' '.join(flags)} "
        f"{' '.join(container_includes)} "
        f"-I/usr/include -I/usr/local/include "
        f"-w /src/{rel} -o /src/{out_rel}"
    )
    try:
        r = subprocess.run(
            ["docker", "run", "--rm", "--entrypoint", "",
             "-v", f"{repo_dir}:/src:rw",
             DOCKER_IMG,
             "bash", "-c", compile_cmd],
            capture_output=True, timeout=60,
        )
        if r.returncode != 0:
            return None
        if out_host.exists():
            return out_host.read_text(errors="replace")
        return None
    except Exception:
        return None
    finally:
        out_host.unlink(missing_ok=True)


def clone_repo(url: str, target: Path) -> bool:
    if target.exists() and any(target.iterdir()):
        return True
    target.mkdir(parents=True, exist_ok=True)
    try:
        r = subprocess.run(
            ["git", "clone", "--depth=1", url, str(target)],
            capture_output=True, timeout=300,
        )
        if r.returncode != 0:
            print(f"  [clone-fail] {r.stderr.decode(errors='replace')[:200]}")
            return False
        print(f"  [cloned] {target.name}")
        return True
    except Exception as e:
        print(f"  [clone-error] {e}")
        return False


def find_sources(repo_dir: Path, subdir: str | None) -> list[Path]:
    root = repo_dir / subdir if subdir else repo_dir
    if not root.exists():
        return []
    return sorted(root.rglob("*.c")) + sorted(root.rglob("*.cpp"))


def main():
    test_hashes = load_test_hashes()

    enriched = ROOT / "data" / "v44_train_enriched.jsonl"
    existing_hashes: set[tuple[str, str]] = set()
    if enriched.exists():
        for r in load_jsonl(enriched):
            existing_hashes.add((seq_hash(r.get("sequence", [])), r.get("label", "")))
    print(f"Existing hashes for dedup: {len(existing_hashes):,}")

    CLONE_DIR.mkdir(parents=True, exist_ok=True)
    all_candidates = []
    stats_per_repo: dict[str, int] = {}
    compile_ok = compile_fail = 0

    for url, label_override, subdir in TARGET_REPOS:
        repo_name = url.rstrip("/").split("/")[-1]
        target_dir = CLONE_DIR / repo_name
        print(f"\n─── {repo_name} ({label_override or 'infer'}) ───")

        if not clone_repo(url, target_dir):
            stats_per_repo[repo_name] = 0
            continue

        sources = find_sources(target_dir, subdir)
        print(f"  {len(sources)} source files")

        repo_count = 0
        for src in sources:
            label = label_override or infer_label(src)
            if label is None:
                continue

            try:
                rel = src.relative_to(CLONE_DIR)
            except ValueError:
                rel = src

            for compiler, flags in DOCKER_COMPILERS:
                asm_text = compile_via_docker(src, target_dir, compiler, flags)
                if not asm_text:
                    compile_fail += 1
                    continue
                compile_ok += 1

                funcs = parse_functions(asm_text)
                flag_str = "_".join(f.lstrip("-") for f in flags)
                group = f"p11_{repo_name}_{src.stem}_{compiler.split('-')[0]}_{flag_str}"

                for func_name, instrs in funcs:
                    instrs = truncate_function(instrs, MAX_FUNC_LEN)
                    if len(instrs) < MIN_FUNC_LEN:
                        continue
                    all_candidates.append({
                        "label":       label,
                        "sequence":    instrs,
                        "source_file": str(rel),
                        "group":       group,
                        "func_name":   func_name,
                        "arch":        "x86_64",
                        "augmentation": "poc_repo_v2",
                        "repo":        repo_name,
                    })
                    repo_count += 1

        print(f"  → {repo_count} raw function records")
        stats_per_repo[repo_name] = repo_count

    print(f"\nCompilation: ok={compile_ok}, fail={compile_fail}")
    print(f"Total raw candidates: {len(all_candidates):,}")

    clean, vstats = validate_and_dedup(all_candidates, test_hashes, existing_hashes)
    print(f"Validation stats: {vstats}")

    write_jsonl(clean, OUT_PATH)

    label_counts = Counter(r["label"] for r in clean)
    print("\nPer-class records:")
    for cls, cnt in sorted(label_counts.items()):
        print(f"  {cls:<40} {cnt:>6,}")
    print(f"\nTotal written: {len(clean):,} → {OUT_PATH}")

    print("\nPer-repo (raw):")
    for repo, cnt in sorted(stats_per_repo.items(), key=lambda x: -x[1]):
        if cnt > 0:
            print(f"  {repo:<45} {cnt:>6,}")


if __name__ == "__main__":
    main()
