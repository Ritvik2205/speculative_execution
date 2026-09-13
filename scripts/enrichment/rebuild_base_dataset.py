#!/usr/bin/env python3
"""
Rebuild the base dataset using function-level assembly extraction.

Reads all .s files under c_vulns/asm_code/ and c_vulns/ subdirectories,
extracts whole functions (not sliding windows), infers vulnerability labels
from file paths, and creates a group-aware honest train/test split.

Outputs:
    data/v44_base_functions.jsonl  — all extracted functions (before split)
    data/v44_honest_train.jsonl    — 80% of source groups
    data/v44_honest_test.jsonl     — 20% of source groups (frozen test set)

Usage:
    python3 scripts/enrichment/rebuild_base_dataset.py
"""
import sys, json, re, random
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from extract_functions import parse_functions, truncate_function
from common import seq_hash, write_jsonl, TEST_PATH_V44

ASM_DIRS = [
    ROOT / "c_vulns" / "asm_code",
]

# Validated benign samples from GitHub repos (already have group fields)
BENIGN_SOURCE = ROOT / "data" / "benign_samples_v24_validated.jsonl"
BENIGN_SAMPLE_LIMIT = 3000  # cap to avoid imbalance vs attack classes
BENIGN_PER_GROUP_LIMIT = 80  # prevent any single repo from dominating

OUT_ALL   = ROOT / "data" / "v44_base_functions.jsonl"
OUT_TRAIN = ROOT / "data" / "v44_honest_train.jsonl"
OUT_TEST  = TEST_PATH_V44  # data/v44_honest_test.jsonl

MAX_FUNC_LEN = 500

# Label inference: longest-match first
LABEL_MAP = {
    "spectre_rsb": "SPECTRE_RSB",
    "spectre_v4":  "SPECTRE_V4",  "spectre4": "SPECTRE_V4",  "spectre_4": "SPECTRE_V4",
    "spectre_v2":  "SPECTRE_V2",  "spectre2": "SPECTRE_V2",  "spectre_2": "SPECTRE_V2",
    "spectre_v1":  "SPECTRE_V1",  "spectre1": "SPECTRE_V1",  "spectre_1": "SPECTRE_V1",
    "spectre_github": "SPECTRE_V1",
    "l1tf":        "L1TF",        "foreshadow": "L1TF",       "meltdown": "L1TF",
    "mds":         "MDS",         "ridl": "MDS",
    "retbleed":    "RETBLEED",
    "inception":   "INCEPTION",   "srso": "INCEPTION",
    "bhi":         "BRANCH_HISTORY_INJECTION",
    "downfall":    "DOWNFALL",    "gds": "DOWNFALL",
}
_SORTED_KEYS = sorted(LABEL_MAP.keys(), key=len, reverse=True)


def infer_label(path: Path) -> str | None:
    text = str(path).lower()
    for key in _SORTED_KEYS:
        if key in text:
            return LABEL_MAP[key]
    return None


def asm_files() -> list[Path]:
    files = []
    for d in ASM_DIRS:
        if d.exists():
            files.extend(sorted(d.rglob("*.s")))
    return files


def _infer_arch(path: Path) -> str:
    text = str(path).lower()
    if "arm64" in text or "aarch64" in text:
        return "arm64"
    if "arm" in text and "64" not in text:
        return "arm32"
    return "x86_64"


def load_benign_records() -> list:
    """Load validated benign samples (existing sliding-window sequences from GitHub repos)."""
    if not BENIGN_SOURCE.exists():
        print(f"[warn] Benign source not found: {BENIGN_SOURCE}")
        return []
    records = []
    with open(BENIGN_SOURCE) as f:
        for line in f:
            if line.strip():
                r = json.loads(line)
                # Ensure required fields
                if "label" not in r:
                    r["label"] = "BENIGN"
                if "group" not in r:
                    r["group"] = r.get("source_file", "benign_unknown")
                if "sequence" not in r or len(r["sequence"]) < 5:
                    continue
                records.append(r)
    # Cap records per group to avoid any single repo dominating
    from collections import defaultdict as dd
    per_group = dd(list)
    for r in records:
        per_group[r["group"]].append(r)
    capped = []
    for g, recs in per_group.items():
        random.shuffle(recs)
        capped.extend(recs[:BENIGN_PER_GROUP_LIMIT])
    random.shuffle(capped)
    capped = capped[:BENIGN_SAMPLE_LIMIT]
    print(f"Loaded {len(capped):,} benign records from {BENIGN_SOURCE.name} ({len(per_group)} groups, capped {BENIGN_PER_GROUP_LIMIT}/group)")
    return capped


def main():
    files = asm_files()
    print(f"Found {len(files)} .s files")

    all_records = []
    skipped_no_label = 0
    skipped_too_short = 0

    for asm_path in files:
        label = infer_label(asm_path)
        if label is None:
            skipped_no_label += 1
            continue

        try:
            text = asm_path.read_text(errors="replace")
        except OSError:
            continue

        funcs = parse_functions(text)
        stem = asm_path.stem
        group = f"base_{stem}"

        for func_name, instrs in funcs:
            instrs = truncate_function(instrs, MAX_FUNC_LEN)
            if len(instrs) < 5:
                skipped_too_short += 1
                continue
            all_records.append({
                "label":       label,
                "sequence":    instrs,
                "source_file": str(asm_path.relative_to(ROOT)),
                "group":       group,
                "func_name":   func_name,
                "arch":        _infer_arch(asm_path),
                "augmentation": "",
            })

    print(f"Extracted {len(all_records):,} functions")
    print(f"Skipped: {skipped_no_label} (no label), {skipped_too_short} (too short)")

    # Add benign records
    benign_records = load_benign_records()
    all_records.extend(benign_records)

    label_counts = Counter(r["label"] for r in all_records)
    print("\nPer-class counts (before dedup):")
    for cls in sorted(label_counts):
        print(f"  {cls:<35} {label_counts[cls]:>6,}")

    # Deduplicate by sequence hash (globally — same sequence in multiple files
    # with different labels would be ambiguous; keep first occurrence only).
    seen_hashes: set[str] = set()
    deduped = []
    for r in all_records:
        h = seq_hash(r["sequence"])
        if h not in seen_hashes:
            seen_hashes.add(h)
            deduped.append(r)
    print(f"\nAfter dedup: {len(deduped):,} (removed {len(all_records)-len(deduped):,})")

    write_jsonl(deduped, OUT_ALL)

    # Group-aware split: 80% train / 20% test by source group
    groups = defaultdict(list)
    for r in deduped:
        groups[r["group"]].append(r)

    all_groups = sorted(groups.keys())
    # Stratify groups by majority label
    group_label = {}
    for g, recs in groups.items():
        majority = Counter(r["label"] for r in recs).most_common(1)[0][0]
        group_label[g] = majority

    # Split groups label-by-label to maintain class balance
    label_groups = defaultdict(list)
    for g in all_groups:
        label_groups[group_label[g]].append(g)

    train_groups, test_groups = set(), set()
    for cls, cls_groups in label_groups.items():
        random.shuffle(cls_groups)
        n_test = max(1, len(cls_groups) // 5)
        test_groups.update(cls_groups[:n_test])
        train_groups.update(cls_groups[n_test:])

    train_records = [r for r in deduped if r["group"] in train_groups]
    test_records  = [r for r in deduped if r["group"] in test_groups]

    # Verify no overlap
    train_hashes = {seq_hash(r["sequence"]) for r in train_records}
    test_hashes  = {seq_hash(r["sequence"]) for r in test_records}
    overlap = len(train_hashes & test_hashes)
    assert overlap == 0, f"Sequence overlap: {overlap}"

    train_grp_set = {r["group"] for r in train_records}
    test_grp_set  = {r["group"] for r in test_records}
    grp_overlap   = len(train_grp_set & test_grp_set)
    assert grp_overlap == 0, f"Group overlap: {grp_overlap}"

    write_jsonl(train_records, OUT_TRAIN)
    write_jsonl(test_records,  OUT_TEST)

    print(f"\nSplit: train={len(train_records):,}  test={len(test_records):,}")
    print(f"Groups: train={len(train_grp_set)}  test={len(test_grp_set)}")
    print(f"Integrity: seq_overlap={overlap}  group_overlap={grp_overlap}  ✓")

    test_cls = Counter(r["label"] for r in test_records)
    print("\nTest set per-class:")
    for cls in sorted(test_cls):
        print(f"  {cls:<35} {test_cls[cls]:>5,}")


if __name__ == "__main__":
    main()
