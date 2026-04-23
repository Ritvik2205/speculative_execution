#!/usr/bin/env python3
"""
Phase 6 — Final Assembly: Merge all enrichment phase outputs into a single
enriched training file, run integrity audits, and update v42 run.sh.
"""
from pathlib import Path
import sys, json, shutil
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

# ─── Paths ────────────────────────────────────────────────────────────────────
BASE_TRAIN  = ROOT / "data" / "v25_honest_train.jsonl"
TEST_PATH   = ROOT / "data" / "v25_honest_test.jsonl"

PHASE_FILES = {
    "phase1_augmented": ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
    "phase2_compiled":  ROOT / "data" / "enrichment" / "phase2_compiled.jsonl",
    "phase3_kernel":    ROOT / "data" / "enrichment" / "phase3_kernel.jsonl",
    "phase4_poc":       ROOT / "data" / "enrichment" / "phase4_poc.jsonl",
    "phase5_synthetic": ROOT / "data" / "enrichment" / "phase5_synthetic.jsonl",
}

OUT_MAIN    = ROOT / "data" / "v42_train_enriched.jsonl"
OUT_V42     = ROOT / "v42" / "data" / "v42_train_enriched.jsonl"
REPORT_PATH = ROOT / "diagnosis" / "v42_enrichment_report.json"
V42_RUN_SH  = ROOT / "v42" / "run.sh"


def main():
    # ── Step 1: Load base training set ──────────────────────────────────────
    if not BASE_TRAIN.exists():
        raise FileNotFoundError(f"Base training file not found: {BASE_TRAIN}")

    print(f"Loading base train: {BASE_TRAIN}")
    base_records = load_jsonl(BASE_TRAIN)
    base_count = len(base_records)
    print(f"  Base train: {base_count:,} records")

    # ── Step 2: Load phase files (skip missing with warning) ─────────────────
    phase_counts = {}
    all_records = list(base_records)  # start with base

    for phase_name, phase_path in PHASE_FILES.items():
        if not phase_path.exists():
            print(f"  [WARNING] {phase_name} not found at {phase_path} — skipping")
            phase_counts[phase_name] = 0
            continue
        recs = load_jsonl(phase_path)
        phase_counts[phase_name] = len(recs)
        print(f"  {phase_name}: {len(recs):,} records")
        all_records.extend(recs)

    total_before_dedup = len(all_records)
    print(f"\nTotal before dedup: {total_before_dedup:,}")

    # ── Step 3: Load frozen test hashes ─────────────────────────────────────
    test_hashes = load_test_hashes()

    # ── Step 4: Single dedup pass over full combined list ───────────────────
    clean_records, stats = validate_and_dedup(
        all_records,
        test_hashes=test_hashes,
        existing_hashes=None,  # validate_and_dedup handles internal dedup
    )
    total_after_dedup = len(clean_records)
    dedup_removed = total_before_dedup - total_after_dedup
    test_collision_blocked = stats["rejected_test_collision"]

    print(f"After dedup:        {total_after_dedup:,}")
    print(f"Removed:            {dedup_removed:,}  "
          f"(test_collision={test_collision_blocked}, dup={stats['rejected_duplicate']}, "
          f"too_short={stats['rejected_too_short']}, too_long={stats['rejected_too_long']})")

    # ── Step 5: 3-way integrity audit ───────────────────────────────────────
    print("\nRunning integrity audit...")

    # Build enriched set's sequence hashes and their labels.
    # Cross-label duplicates (same hash, different label) are resolved by
    # keeping the first-seen label and discarding subsequent conflicts.
    enriched_seq_hashes = {}  # hash -> label
    cross_label_conflicts = []
    final_records = []
    for r in clean_records:
        h = seq_hash(r.get("sequence", []))
        label = r.get("label", "")
        if h in enriched_seq_hashes:
            if enriched_seq_hashes[h] != label:
                cross_label_conflicts.append((h, enriched_seq_hashes[h], label))
                # Skip: keep first-seen label, discard conflicting record
                continue
            # else: exact duplicate (same hash + same label) — already removed by validate_and_dedup
        else:
            enriched_seq_hashes[h] = label
            final_records.append(r)

    cross_label_dups = len(cross_label_conflicts)
    if cross_label_dups > 0:
        print(f"  [INFO] Resolved {cross_label_dups} cross-label hash collisions "
              f"(kept first-seen label). Example: "
              f"{cross_label_conflicts[0][1]!r} vs {cross_label_conflicts[0][2]!r}")

    # Replace clean_records with the resolved set
    clean_records = final_records
    total_after_dedup = len(clean_records)
    dedup_removed = total_before_dedup - total_after_dedup

    enriched_hashes_set = frozenset(enriched_seq_hashes.keys())

    # 1. Exact sequence overlap with test set
    exact_overlap = len(enriched_hashes_set & test_hashes)
    if exact_overlap != 0:
        print(f"[ERROR] Exact sequence overlap = {exact_overlap} (must be 0)")
        sys.exit(1)

    # 2. Group overlap with test set
    test_records = load_jsonl(TEST_PATH)
    test_groups  = set()
    for r in test_records:
        g = r.get("group", r.get("source_file", ""))
        if g:
            test_groups.add(g)

    train_groups = set()
    for r in clean_records:
        g = r.get("group", r.get("source_file", ""))
        if g:
            train_groups.add(g)

    group_overlap = len(train_groups & test_groups)
    if group_overlap != 0:
        overlap_examples = list(train_groups & test_groups)[:5]
        print(f"[ERROR] Group overlap = {group_overlap} (must be 0). Examples: {overlap_examples}")
        sys.exit(1)

    # 3. Cross-label duplicates — resolved above (conflicts discarded, first-seen kept)

    print(f"  exact_sequence_overlap  = {exact_overlap}")
    print(f"  group_overlap           = {group_overlap}")
    print(f"  cross_label_duplicates  = {cross_label_dups}")

    # ── Step 6: Per-class distribution ──────────────────────────────────────
    per_class = Counter(r.get("label", "UNKNOWN") for r in clean_records)

    # ── Step 7: Write outputs ────────────────────────────────────────────────
    write_jsonl(clean_records, OUT_MAIN)

    OUT_V42.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(OUT_MAIN, OUT_V42)
    print(f"[common] Copied to {OUT_V42}")

    # ── Step 8: Save enrichment report ──────────────────────────────────────
    report = {
        "base_train_count": base_count,
        "phase_counts": phase_counts,
        "total_before_dedup": total_before_dedup,
        "total_after_dedup": total_after_dedup,
        "dedup_removed": dedup_removed,
        "test_collision_blocked": test_collision_blocked,
        "exact_sequence_overlap": exact_overlap,
        "group_overlap": group_overlap,
        "cross_label_duplicates": cross_label_dups,
        "per_class": dict(sorted(per_class.items())),
    }
    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    REPORT_PATH.write_text(json.dumps(report, indent=2))
    print(f"[common] Wrote report to {REPORT_PATH}")

    # ── Step 9: Update v42/run.sh ────────────────────────────────────────────
    if V42_RUN_SH.exists():
        sh_text = V42_RUN_SH.read_text()
        updated = sh_text.replace(
            "--train-data data/v25_honest_train.jsonl",
            "--train-data data/v42_train_enriched.jsonl",
        )
        if updated == sh_text:
            print(f"[WARNING] Could not find '--train-data data/v25_honest_train.jsonl' in {V42_RUN_SH}")
        else:
            V42_RUN_SH.write_text(updated)
            print(f"[common] Updated {V42_RUN_SH} --train-data → data/v42_train_enriched.jsonl")
    else:
        print(f"[WARNING] {V42_RUN_SH} not found — skipping run.sh update")

    # ── Step 10: Human-readable summary ─────────────────────────────────────
    width = 30
    print()
    print("=== v42 Enrichment Summary ===")
    print(f"{'Base train:':<{width}} {base_count:>10,}")
    for phase_name in PHASE_FILES:
        label = phase_name.replace("_", " ").replace("phase", "Phase ")
        label_display = label.capitalize() + ":"
        print(f"  {label_display:<{width-2}} {phase_counts.get(phase_name, 0):>10,}")
    print("─" * (width + 12))
    print(f"{'Total before dedup:':<{width}} {total_before_dedup:>10,}")
    print(f"{'After dedup:':<{width}} {total_after_dedup:>10,}")
    print(f"{'Removed (dedup+test):':<{width}} {dedup_removed:>10,}")
    print()
    print("Per-class distribution:")
    for cls, cnt in sorted(per_class.items()):
        print(f"  {cls:<35} {cnt:>8,}")
    print()
    print(f"Integrity: ✓ exact_overlap={exact_overlap}  "
          f"group_overlap={group_overlap}  cross_label={cross_label_dups}")
    print()
    print(f"Output: {OUT_MAIN}")
    print(f"Copied: {OUT_V42}")
    print(f"Report: {REPORT_PATH}")


if __name__ == "__main__":
    main()
