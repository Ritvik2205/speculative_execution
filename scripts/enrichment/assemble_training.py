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
    "phase7_compiled":  ROOT / "data" / "enrichment" / "phase7_compiled.jsonl",
}

OUT_MAIN    = ROOT / "data" / "v43_train_enriched.jsonl"
OUT_V42     = ROOT / "v42" / "data" / "v43_train_enriched.jsonl"
REPORT_PATH = ROOT / "diagnosis" / "v43_enrichment_report.json"
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
    test_collision_blocked = stats["rejected_test_collision"]

    # ── Step 5: 3-way integrity audit ───────────────────────────────────────
    print("\nRunning integrity audit...")

    # Resolve cross-label conflicts (keep first-seen)
    resolved_records = []
    hash_to_label = {}
    cross_label_resolved = 0
    for r in clean_records:
        h = seq_hash(r.get("sequence", []))
        label = r["label"]
        if h in hash_to_label:
            if hash_to_label[h] != label:
                cross_label_resolved += 1
                continue  # discard conflicting
        else:
            hash_to_label[h] = label
        resolved_records.append(r)

    if cross_label_resolved > 0:
        print(f"  [INFO] Resolved {cross_label_resolved} cross-label hash conflicts (kept first-seen label)")
    clean_records = resolved_records

    # Verify post-resolution integrity (defensive)
    post_hashes = {}
    cross_label_dups = 0
    for r in clean_records:
        h = seq_hash(r.get("sequence", []))
        if h in post_hashes and post_hashes[h] != r["label"]:
            cross_label_dups += 1
        post_hashes[h] = r["label"]

    if cross_label_dups > 0:
        print(f"[ERROR] Cross-label duplicates = {cross_label_dups} after resolution (must be 0)")
        sys.exit(1)
    print(f"  Cross-label duplicates:    {cross_label_dups}  (target: 0)")

    enriched_hashes_set = frozenset(post_hashes.keys())

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

    # 3. Cross-label duplicates — resolved and verified above

    print(f"  exact_sequence_overlap  = {exact_overlap}")
    print(f"  group_overlap           = {group_overlap}")

    # ── Step 6: Per-class distribution ──────────────────────────────────────
    per_class = Counter(r.get("label", "UNKNOWN") for r in clean_records)

    # ── Step 7: Write outputs ────────────────────────────────────────────────
    write_jsonl(clean_records, OUT_MAIN)

    total_after_dedup = len(clean_records)
    dedup_removed_validate = stats.get("rejected_duplicate", 0) + stats.get("rejected_too_short", 0) + stats.get("rejected_too_long", 0) + stats.get("rejected_test_collision", 0)
    dedup_removed_cross_label = cross_label_resolved
    dedup_removed_total = total_before_dedup - len(clean_records)

    OUT_V42.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(OUT_MAIN, OUT_V42)
    print(f"[phase6] Copied to {OUT_V42}")

    # ── Step 8: Save enrichment report ──────────────────────────────────────
    report = {
        "base_train_count": base_count,
        "phase_counts": phase_counts,
        "total_before_dedup": total_before_dedup,
        "total_after_dedup": total_after_dedup,
        "dedup_removed_validate": dedup_removed_validate,
        "dedup_removed_cross_label": dedup_removed_cross_label,
        "dedup_removed_total": dedup_removed_total,
        "test_collision_blocked": test_collision_blocked,
        "exact_sequence_overlap": exact_overlap,
        "group_overlap": group_overlap,
        "cross_label_duplicates": cross_label_dups,
        "per_class": dict(sorted(per_class.items())),
    }
    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    REPORT_PATH.write_text(json.dumps(report, indent=2))
    print(f"[phase6] Wrote report to {REPORT_PATH}")

    # ── Step 9: Update v42/run.sh ────────────────────────────────────────────
    if V42_RUN_SH.exists():
        sh_text = V42_RUN_SH.read_text()
        updated = sh_text
        for old_path in ("data/v25_honest_train.jsonl", "data/v42_train_enriched.jsonl"):
            updated = updated.replace(
                f"--train-data {old_path}",
                "--train-data data/v43_train_enriched.jsonl",
                1,
            )
        for old_dir in ("viz_v42_honest", "viz_v42"):
            updated = updated.replace(old_dir, "viz_v43")
        if updated == sh_text:
            print(f"[WARNING] Could not update --train-data or output dirs in {V42_RUN_SH}")
        else:
            V42_RUN_SH.write_text(updated)
            print(f"[phase6] Updated {V42_RUN_SH} --train-data → data/v43_train_enriched.jsonl, output → viz_v43")
    else:
        print(f"[WARNING] {V42_RUN_SH} not found — skipping run.sh update")

    # ── Step 10: Human-readable summary ─────────────────────────────────────
    width = 30
    print()
    print("=== v43 Enrichment Summary ===")
    print(f"{'Base train:':<{width}} {base_count:>10,}")
    for phase_name in PHASE_FILES:
        label = phase_name.replace("_", " ").replace("phase", "Phase ")
        label_display = label.capitalize() + ":"
        print(f"  {label_display:<{width-2}} {phase_counts.get(phase_name, 0):>10,}")
    print("─" * (width + 12))
    print(f"{'Total before dedup:':<{width}} {total_before_dedup:>10,}")
    print(f"{'After dedup:':<{width}} {total_after_dedup:>10,}")
    print(f"{'Removed (validate):':<{width}} {dedup_removed_validate:>10,}")
    print(f"{'Removed (cross-label):':<{width}} {dedup_removed_cross_label:>10,}")
    print(f"{'Removed (total):':<{width}} {dedup_removed_total:>10,}")
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
