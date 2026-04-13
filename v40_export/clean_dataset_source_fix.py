#!/usr/bin/env python3
"""
clean_dataset_source_fix.py — source-level fix for shared-prologue contamination.

Diagnosis
---------
Hand-written speculative-execution PoC files in c_vulns/asm_code/ (e.g. bhi_arm64.s,
l1tf_arm64.s, mds_arm64.s, inception_arm64.s, retbleed_arm64.s, spectre_1_arm_stack.s,
bhi_x86.s, inception_x86.s, retbleed_x86.s) all begin with an identical
cache-timing measurement harness (_flush_probe_array, _measure_access_time) — the
first 287 lines of every ARM PoC and the first 213 lines of every x86 PoC are
byte-identical across classes. When augment_asm_windows.py extracts windows from
this region, it labels them by filename only, so every class inherits the exact same
sequences under different labels.

Fix
---
We operate on combined_v25_real_benign.jsonl and remove any record whose
normalized sequence (a) appears under more than one class label (true cross-class
mislabeling), or (b) is an exact within-class repeat beyond a small cap per source
file (shared-prologue boilerplate is not signal even inside one class).

This is equivalent to skipping the shared-prologue region at extraction time — we
could instead modify augment_asm_windows.py to compute the longest common prefix
between sister files and refuse to anchor windows inside it, but operating on the
already-extracted JSONL lets us produce a clean dataset without rerunning the full
feature-extraction pipeline, and the provenance report below makes the removal
auditable for the research paper.

Usage
-----
    python scripts/clean_dataset_source_fix.py \\
        --input data/features/combined_v25_real_benign.jsonl \\
        --output data/features/combined_v25_clean.jsonl \\
        --report diagnosis/dataset_cleaning_report.md
"""

import argparse
import json
import hashlib
from collections import defaultdict, Counter
from pathlib import Path


def norm_sequence(seq):
    """Normalize sequence of instruction strings to a stable key."""
    return "||".join(s.strip().lower() for s in seq)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--input', required=True, type=Path)
    ap.add_argument('--output', required=True, type=Path)
    ap.add_argument('--report', required=True, type=Path)
    ap.add_argument('--within-class-cap', type=int, default=2,
                    help='Max copies of any exact sequence kept within a single class '
                         '(defaults to 2 — first two occurrences preserved, rest dropped).')
    args = ap.parse_args()

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.report.parent.mkdir(parents=True, exist_ok=True)

    # Pass 1: load and group by normalized sequence
    print(f"Loading {args.input} ...")
    records = []
    seq_to_indices = defaultdict(list)
    with args.input.open() as f:
        for i, line in enumerate(f):
            if not line.strip():
                continue
            r = json.loads(line)
            records.append(r)
            seq_to_indices[norm_sequence(r.get('sequence', []))].append(i)
    total_in = len(records)
    print(f"  loaded {total_in} records, {len(seq_to_indices)} unique sequences")

    # Pass 2: classify each sequence group
    # - cross_class: appears under >=2 labels  -> remove ALL
    # - within_class_excess: single label but >cap copies -> keep first `cap`, drop rest
    # - clean: single label, <=cap copies -> keep all
    kept_mask = [True] * total_in
    removed_cross_class = 0
    removed_within_class = 0
    cross_class_groups = 0
    within_class_groups = 0

    per_label_before = Counter(r.get('label') for r in records)
    per_label_removed_cc = Counter()
    per_label_removed_wc = Counter()
    source_removed = Counter()

    for seq_key, idxs in seq_to_indices.items():
        labels = set(records[i].get('label') for i in idxs)
        if len(labels) > 1:
            cross_class_groups += 1
            for i in idxs:
                kept_mask[i] = False
                removed_cross_class += 1
                per_label_removed_cc[records[i].get('label')] += 1
                source_removed[records[i].get('source_file', '?')] += 1
        elif len(idxs) > args.within_class_cap:
            within_class_groups += 1
            # Keep first `cap`, drop rest
            for i in idxs[args.within_class_cap:]:
                kept_mask[i] = False
                removed_within_class += 1
                lbl = records[i].get('label')
                per_label_removed_wc[lbl] += 1
                source_removed[records[i].get('source_file', '?')] += 1

    # Pass 3: write clean output
    kept = 0
    with args.output.open('w') as f:
        for i, keep in enumerate(kept_mask):
            if keep:
                f.write(json.dumps(records[i]) + '\n')
                kept += 1

    per_label_after = Counter()
    for i, keep in enumerate(kept_mask):
        if keep:
            per_label_after[records[i].get('label')] += 1

    # Pass 4: provenance report
    with args.report.open('w') as f:
        f.write("# Dataset Cleaning Report — Source-Level Fix for Shared Prologue Contamination\n\n")
        f.write(f"- Input:  `{args.input}`\n")
        f.write(f"- Output: `{args.output}`\n")
        f.write(f"- Within-class cap: {args.within_class_cap}\n\n")
        f.write("## Summary\n\n")
        f.write(f"| Phase | Records |\n|---|---:|\n")
        f.write(f"| Before cleaning                        | {total_in:>7,} |\n")
        f.write(f"| Removed: cross-class mislabel dups     | {removed_cross_class:>7,} |\n")
        f.write(f"| Removed: within-class prologue excess  | {removed_within_class:>7,} |\n")
        f.write(f"| **After cleaning**                     | **{kept:,}** |\n")
        f.write(f"| Unique sequences affected (cross)      | {cross_class_groups:,}\n")
        f.write(f"| Unique sequences affected (within>cap) | {within_class_groups:,}\n\n")

        f.write("## Per-class effect\n\n")
        f.write("| Class | Before | Removed (cross-class) | Removed (within-class) | After |\n")
        f.write("|---|---:|---:|---:|---:|\n")
        for lbl in sorted(per_label_before):
            f.write(f"| {lbl} | {per_label_before[lbl]:,} | "
                    f"{per_label_removed_cc[lbl]:,} | {per_label_removed_wc[lbl]:,} | "
                    f"{per_label_after[lbl]:,} |\n")
        f.write("\n")

        f.write("## Top source files contributing removed records\n\n")
        f.write("These are the PoC source files that emitted the shared-prologue windows. "
                "The ARM-family PoCs share the first 287 lines of cache-timing infrastructure; "
                "the x86-family PoCs share the first 213 lines.\n\n")
        f.write("| Source file | Records removed |\n|---|---:|\n")
        for src, c in source_removed.most_common(30):
            f.write(f"| `{src}` | {c:,} |\n")
        f.write("\n")

        f.write("## Rationale for research paper\n\n")
        f.write(
            "The labels in the input dataset are assigned by substring-matching the source "
            "filename (`scripts/augment_asm_windows.py:_detect_vuln_label`). Several "
            "hand-written PoC files share byte-identical prologues containing the canonical "
            "flush+reload probe-array infrastructure that every Spectre-family proof-of-concept "
            "uses. Windows that anchor inside this shared region are structurally identical "
            "across classes, and the filename-based labeling assigns each copy a different "
            "class label — producing cross-class duplicates that impose a hard accuracy "
            "ceiling (~96.4%) on any classifier trained on the raw dataset.\n\n"
            "This cleaning pass removes every sequence whose normalized form appears under "
            "more than one class label (true mislabels) and caps the number of exact repeats "
            "of any sequence within a single class at 2 (preventing the shared-prologue "
            "boilerplate from dominating the training signal of its arbitrarily-assigned "
            "home class). The result is a dataset in which every training example is "
            "*class-discriminative* by construction.\n"
        )

    print(f"\n=== Cleaning complete ===")
    print(f"  input:  {total_in:,}")
    print(f"  cross-class removed:  {removed_cross_class:,} "
          f"({cross_class_groups} unique sequences)")
    print(f"  within-class removed: {removed_within_class:,} "
          f"({within_class_groups} unique sequences)")
    print(f"  output: {kept:,}")
    print(f"  report: {args.report}")


if __name__ == '__main__':
    main()
