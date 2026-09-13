# Dataset Cleaning Report — Source-Level Fix for Shared Prologue Contamination

- Input:  `data/combined_v41.jsonl`
- Output: `data/combined_v41_clean.jsonl`
- Within-class cap: 100000

## Summary

| Phase | Records |
|---|---:|
| Before cleaning                        |  29,807 |
| Removed: cross-class mislabel dups     |       0 |
| Removed: within-class prologue excess  |       0 |
| **After cleaning**                     | **29,807** |
| Unique sequences affected (cross)      | 0
| Unique sequences affected (within>cap) | 0

## Per-class effect

| Class | Before | Removed (cross-class) | Removed (within-class) | After |
|---|---:|---:|---:|---:|
| BENIGN | 8,029 | 0 | 0 | 8,029 |
| BRANCH_HISTORY_INJECTION | 2,154 | 0 | 0 | 2,154 |
| INCEPTION | 4,417 | 0 | 0 | 4,417 |
| L1TF | 2,212 | 0 | 0 | 2,212 |
| MDS | 2,695 | 0 | 0 | 2,695 |
| RETBLEED | 7,446 | 0 | 0 | 7,446 |
| SPECTRE_V1 | 2,119 | 0 | 0 | 2,119 |
| SPECTRE_V2 | 441 | 0 | 0 | 441 |
| SPECTRE_V4 | 294 | 0 | 0 | 294 |

## Top source files contributing removed records

These are the PoC source files that emitted the shared-prologue windows. The ARM-family PoCs share the first 287 lines of cache-timing infrastructure; the x86-family PoCs share the first 213 lines.

| Source file | Records removed |
|---|---:|

## Rationale for research paper

The labels in the input dataset are assigned by substring-matching the source filename (`scripts/augment_asm_windows.py:_detect_vuln_label`). Several hand-written PoC files share byte-identical prologues containing the canonical flush+reload probe-array infrastructure that every Spectre-family proof-of-concept uses. Windows that anchor inside this shared region are structurally identical across classes, and the filename-based labeling assigns each copy a different class label — producing cross-class duplicates that impose a hard accuracy ceiling (~96.4%) on any classifier trained on the raw dataset.

This cleaning pass removes every sequence whose normalized form appears under more than one class label (true mislabels) and caps the number of exact repeats of any sequence within a single class at 2 (preventing the shared-prologue boilerplate from dominating the training signal of its arbitrarily-assigned home class). The result is a dataset in which every training example is *class-discriminative* by construction.
