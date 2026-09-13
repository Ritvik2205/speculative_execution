#!/usr/bin/env python3
"""
Phase 7: Compile c_vulns/c_code/ C files inside Docker (Linux x86_64/ARM64)
and add compiled attack sequences to the training pool.

Run:
    python3 scripts/enrichment/phase7_compile_c_vulns.py

Prerequisites:
    docker build -f docker/Dockerfile -t specexec-compile:latest .

Output:
    data/enrichment/phase7_compiled.jsonl
"""
import json, subprocess, sys, tempfile
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

OUT_PATH = ROOT / "data" / "enrichment" / "phase7_compiled.jsonl"
DOCKER_IMAGE = "specexec-compile:latest"


def check_docker_image() -> bool:
    result = subprocess.run(
        ["docker", "image", "inspect", DOCKER_IMAGE],
        capture_output=True,
    )
    return result.returncode == 0


def run_docker_compilation() -> Path:
    """Run Docker container; return path to the raw output JSONL."""
    # Use a path under the project root so Docker Desktop (macOS) can bind-mount it.
    # /tmp is not shared with Docker Desktop by default on macOS.
    out_dir = ROOT / "data" / "enrichment" / "_phase7_tmp"
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / "phase7_raw.jsonl"

    print(f"[phase7] Running Docker compilation (this may take 5-15 minutes)...")
    cmd = [
        "docker", "run", "--rm",
        "-v", f"{ROOT}/c_vulns:/work/c_vulns:ro",
        "-v", f"{ROOT}/docker/extract_windows.py:/work/extract_windows.py:ro",
        "-v", f"{ROOT}/docker/compile_attack_sources.sh:/work/compile_attack_sources.sh:ro",
        "-v", f"{out_dir}:/work/output",
        DOCKER_IMAGE,
    ]
    result = subprocess.run(cmd, capture_output=False, timeout=1800)
    if result.returncode != 0:
        print(f"[phase7] Docker run failed with exit code {result.returncode}")
        sys.exit(1)

    if not out_file.exists():
        print(f"[phase7] ERROR: Docker did not produce {out_file}")
        sys.exit(1)
    return out_file


def main():
    if not check_docker_image():
        print(f"[phase7] Docker image '{DOCKER_IMAGE}' not found.")
        print(f"         Build it with: docker build -f docker/Dockerfile -t {DOCKER_IMAGE} .")
        write_jsonl([], OUT_PATH)
        print(f"[phase7] Wrote empty placeholder to {OUT_PATH}")
        return

    raw_file = run_docker_compilation()

    print(f"[phase7] Reading raw output from {raw_file} ...")
    raw_records = load_jsonl(raw_file)
    print(f"[phase7] Raw windows: {len(raw_records):,}")

    label_counts = Counter(r["label"] for r in raw_records)
    print("[phase7] Raw per-class counts:")
    for cls in sorted(label_counts):
        print(f"  {cls:<35} {label_counts[cls]:>8,}")

    print("[phase7] Building existing hash set ...")
    existing = []
    for phase_file in [
        ROOT / "data" / "v25_honest_train.jsonl",
        ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
        ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
        ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
        ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl",
    ]:
        if phase_file.exists():
            existing.extend(load_jsonl(phase_file))
    existing_hashes = {(seq_hash(r.get("sequence", [])), r["label"]) for r in existing}
    print(f"[phase7] Existing hashes (prior phases): {len(existing_hashes):,}")

    test_hashes = load_test_hashes()
    print(f"[phase7] Frozen test hashes: {len(test_hashes):,}")

    clean, stats = validate_and_dedup(raw_records, test_hashes, existing_hashes)
    print(f"[phase7] After dedup: {len(clean):,}  stats={stats}")

    write_jsonl(clean, OUT_PATH)
    print(f"[phase7] Written to {OUT_PATH}")

    final_counts = Counter(r["label"] for r in clean)
    print("\n[phase7] Final per-class counts:")
    for cls in sorted(final_counts):
        print(f"  {cls:<35} {final_counts[cls]:>8,}")


if __name__ == "__main__":
    main()
