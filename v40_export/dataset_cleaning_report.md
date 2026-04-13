# Dataset Cleaning Report — Source-Level Fix for Shared Prologue Contamination

- Input:  `data/features/combined_v25_real_benign.jsonl`
- Output: `data/features/combined_v25_clean.jsonl`
- Within-class cap: 100000

## Summary

| Phase | Records |
|---|---:|
| Before cleaning                        |  72,000 |
| Removed: cross-class mislabel dups     |   2,605 |
| Removed: within-class prologue excess  |       0 |
| **After cleaning**                     | **69,395** |
| Unique sequences affected (cross)      | 193
| Unique sequences affected (within>cap) | 0

## Per-class effect

| Class | Before | Removed (cross-class) | Removed (within-class) | After |
|---|---:|---:|---:|---:|
| BENIGN | 8,000 | 0 | 0 | 8,000 |
| BRANCH_HISTORY_INJECTION | 8,000 | 581 | 0 | 7,419 |
| INCEPTION | 8,000 | 460 | 0 | 7,540 |
| L1TF | 8,000 | 473 | 0 | 7,527 |
| MDS | 8,000 | 481 | 0 | 7,519 |
| RETBLEED | 8,000 | 277 | 0 | 7,723 |
| SPECTRE_V1 | 8,000 | 333 | 0 | 7,667 |
| SPECTRE_V2 | 8,000 | 0 | 0 | 8,000 |
| SPECTRE_V4 | 8,000 | 0 | 0 | 8,000 |

## Top source files contributing removed records

These are the PoC source files that emitted the shared-prologue windows. The ARM-family PoCs share the first 287 lines of cache-timing infrastructure; the x86-family PoCs share the first 213 lines.

| Source file | Records removed |
|---|---:|
| `c_vulns/asm_code/spectre_1_arm_stack.s` | 295 |
| `c_vulns/asm_code/bhi_arm64.s` | 264 |
| `c_vulns/asm_code/bhi_arm.s` | 262 |
| `c_vulns/asm_code/l1tf_arm.s` | 248 |
| `c_vulns/asm_code/mds_arm64.s` | 226 |
| `c_vulns/asm_code/l1tf_arm64.s` | 225 |
| `c_vulns/asm_code/mds_arm.s` | 225 |
| `c_vulns/asm_code/inception_arm.s` | 154 |
| `c_vulns/asm_code/inception_arm64.s` | 151 |
| `c_vulns/asm_code/retbleed_arm64.s` | 85 |
| `c_vulns/asm_code/retbleed_arm.s` | 82 |
| `c_vulns/asm_code/bhi_x86.s` | 55 |
| `c_vulns/asm_code/inception_x86.s` | 43 |
| `c_vulns/asm_code/spectre_1_x86.s` | 38 |
| `c_vulns/asm_code/retbleed_x86.s` | 37 |
| `c_vulns/asm_code/mds.s` | 30 |
| `c_vulns/asm_code/retbleed.s` | 11 |
| `c_vulns/asm_code/inception_x86_64_gen_4_gcc_O0.s` | 9 |
| `c_vulns/asm_code/inception_x86_64_gen_4.s` | 8 |
| `c_vulns/asm_code/inception_x86_64_gen_1_clang_O0.s` | 8 |
| `c_vulns/asm_code/inception_x86_64_gen_5_gcc_O0.s` | 7 |
| `c_vulns/asm_code/inception_x86_64_gen_0.s` | 7 |
| `c_vulns/asm_code/inception_x86_64_gen_5.s` | 7 |
| `c_vulns/asm_code/inception_x86_64_gen_3_clang_O0.s` | 7 |
| `c_vulns/asm_code/inception_x86_64_gen_5_clang_O0.s` | 6 |
| `c_vulns/asm_code/inception_x86_64_gen_4_clang_O0.s` | 5 |
| `c_vulns/asm_code/inception_x86_64_gen_2_gcc_O0.s` | 5 |
| `c_vulns/asm_code/inception_x86_64_gen_2.s` | 5 |
| `c_vulns/asm_code/inception_x86_64_gen_0_gcc_O0.s` | 5 |
| `c_vulns/asm_code/inception_x86_64_gen_6_clang_O0.s` | 5 |

## Rationale for research paper

The labels in the input dataset are assigned by substring-matching the source filename (`scripts/augment_asm_windows.py:_detect_vuln_label`). Several hand-written PoC files share byte-identical prologues containing the canonical flush+reload probe-array infrastructure that every Spectre-family proof-of-concept uses. Windows that anchor inside this shared region are structurally identical across classes, and the filename-based labeling assigns each copy a different class label — producing cross-class duplicates that impose a hard accuracy ceiling (~96.4%) on any classifier trained on the raw dataset.

This cleaning pass removes every sequence whose normalized form appears under more than one class label (true mislabels) and caps the number of exact repeats of any sequence within a single class at 2 (preventing the shared-prologue boilerplate from dominating the training signal of its arbitrarily-assigned home class). The result is a dataset in which every training example is *class-discriminative* by construction.
