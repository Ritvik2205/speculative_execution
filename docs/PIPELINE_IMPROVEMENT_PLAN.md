# SpecExec Pipeline Improvement Plan

Generated after v51 training run (96.07% test accuracy, 10-class, two-stage pipeline).
This document records known gaps, open investigations, and prioritized future work.

---

## Current State Summary

| Version | Accuracy | Notes |
|---|---|---|
| v49 | 88.10% | Baseline with broader data |
| v50 | 97.79% | Specificity filter + caller-context + phase15 |
| v51 | 96.07% | V4 specificity filter + phase17 expansion |
| v52 | TBD | Whole-file sequences, call-target neutralization |

v50/v51 accuracy is **Stage-2 accuracy on Stage-1 survivors** (two-stage pipeline).
End-to-end accuracy = Stage-1 recall × Stage-2 accuracy (see table below).

### Two-Stage End-to-End Metrics (v51)

| Class | Stage-1 recall | Stage-2 acc | End-to-end |
|---|---|---|---|
| BHI | 42.3% | 49% | **20.7%** |
| L1TF | 25.0% | 84% | **21.0%** |
| MDS | 26.2% | 90% | **23.6%** |
| RETBLEED | 29.8% | 92% | **27.4%** |
| SPECTRE_V1 | 33.9% | 95% | **32.2%** |
| INCEPTION | 50.7% | 97% | **49.2%** |
| SPECTRE_RSB | 72.4% | 100% | **72.4%** |
| SPECTRE_V2 | 74.1% | 100% | **74.1%** |
| BENIGN | 98.5% | 99% | **97.5%** |

These numbers are what should be reported in any academic paper. The 96% headline without this table is misleading.

---

## Priority 0: Active Bug / Regression

### BHI F1 Collapse v50→v51 (0.93 → 0.63)

**Symptom:** BHI recall dropped from 90% to 49%. Test set is identical (41 samples, same signal distribution). Training data lost 57 BHI records (739→682).

**Likely cause:** Introduction of SPECTRE_V4 specificity filter changed V4 training distribution. V4 now has lfence/nop-sled/rdtsc patterns, creating new hard-negative pairs (V4↔V1, V4↔L1TF, V4↔MDS). Contrastive loss geometry shifted, pulling BHI-indirect cluster toward RETBLEED boundary.

**Evidence:** RETBLEED precision dropped 0.85→0.72 simultaneously (more false RETBLEED predictions, consistent with BHI-indirect being reclassified as RETBLEED).

**Ablation to run:**
1. Retrain v51 with V4 as always-pass (revert V4 filter, all else same). If BHI recovers → V4 filter is the cause.
2. Retrain v51 without contrastive loss (lambda_con=0). If BHI recovers → contrastive geometry is the cause.
3. Inspect which 21 indirect-BHI test samples are misclassified and which class they predict.

**Resolution target:** Understand root cause before proceeding to academic write-up.

---

## Priority 1: Immediate Implementation

### v52 — Whole-File Sequences (IN PROGRESS)

**Motivation:** Per-function splitting creates separate records for `main()`, setup helpers, and attack gadgets. A `main()` labeled BHI has zero attack signal and should be BENIGN. The specificity filter removes these, but causes 50-75% record loss per class. Retaining the full file as one sequence:
1. Preserves inter-function context (caller → attack function → timing harness)
2. Eliminates the "benign main" mislabeling problem
3. Avoids specificity filter causing heavy record loss

**Design:**
- Use `parse_functions` with skip patterns (skips `_rdtsc`, `_barrier`, `_mm_*`) to exclude pure timing infrastructure
- Concatenate all non-skipped functions from a file into ONE sequence per file × compiler × opt
- Neutralize all call/branch targets: `callq _spectre_v1_victim` → `callq <fn>` (removes name-based signal entirely)
- Apply `is_instruction_line` to strip label lines
- Apply `strip_boilerplate` on concatenated sequence (removes trailing timing tail)
- Apply specificity filter (still needed to verify file contains attack content)
- MAX_NODES=256 (increased from 128)
- `calls_attack_fn` feature disabled (always 0 — call targets neutralized)

**Expected dataset size:** ~50% reduction from v51 (one record per file instead of N per file). Trade-off: fewer but richer records.

**Strip_boilerplate safety analysis (see dedicated section below).**

---

## Priority 2: Validation Gaps (Required Before Publication)

### 2.1 Held-Out Repository Evaluation

**Problem:** Train and test both come from the same GitHub repos. Even with group-aware splitting, test sequences come from the same authors, coding styles, symbol conventions. A model that overfit to one author's BHI PoC style would appear highly accurate.

**Fix:** Identify 2-3 completely held-out repos not in any training data:
- `https://github.com/IAIK/meltdown` (IAIK's original Meltdown/L1TF — not in phase11 list)
- A different BHI implementation not from bhi-spectre-bhb
- A different MDS implementation not from ridl or zombieload
Compile them, extract whole-file sequences, evaluate without retraining.

Report: "accuracy on known repos: 96%; accuracy on held-out repos: X%". If X drops significantly, the model is overfitting to the PoC corpus.

### 2.2 5-Fold Cross-Validation for Confidence Intervals

**Problem:** All results from seed=42. Cannot claim robustness without variance estimate.

**Fix:** 5-fold stratified group-aware CV on the full dataset. Group splitting: all sequences from the same source C file go to the same fold. Report `accuracy = X.XX% ± Y.YY%`.

**Cost:** ~5× training time. Run on cloud GPU. Each fold ~18 epochs × 15 sec = 4.5 min on CPU, so about 22 min total on GPU.

**Required for:** any academic paper claim about accuracy.

### 2.3 Calibration Measurement

**Problem:** Model may be overconfident on wrong predictions. For a security tool, a 95%-confident wrong prediction is dangerous.

**Fix:** Compute Expected Calibration Error (ECE) and Maximum Calibration Error (MCE). Plot reliability diagram. Needs per-sample softmax probabilities — save during evaluation pass.

**Script needed:** `scripts/verify_calibration.py` (planned in original verification plan).

### 2.4 Without `calls_attack_fn` Baseline

**Problem:** 51% of BHI test detections (v50) came from `calls_attack_fn`. In production kernel code, functions aren't named `_branch_history_conditioner_bhi`. This feature has no production validity.

**Fix:** Retrain with 55 features (drop feature 56). Report accuracy drop. This gives the "structural classification only" baseline and shows how much the model relies on name-based signals.

**Expected:** BHI recall drops to ~49% (only indirect-branch detections). Quantifying this is necessary for honest evaluation.

### 2.5 Edge Type Ablation

Report which edge types drive classification. Force each edge type scale to 0.0 and measure accuracy drop. Most important for academic paper "Table 3: PDG Edge Ablation."

---

## Priority 3: Dataset Expansion

### 3.1 Linux Kernel Source Mining (High Value)

Real-world vulnerability mitigations are in the kernel:
- `arch/x86/kernel/cpu/bugs.c` — Spectre/MDS mitigations
- `arch/x86/lib/usercopy.c` — lfence-protected copies (Spectre V1)
- `drivers/gpu/drm/` — historical BHI vectors

These are REAL production code with real vulnerability patterns, not PoC code. Much more representative of what the model would see in production scanning.

**How:** Clone linux kernel, identify files with attack-relevant functions, compile with GCC x86_64, extract whole-file sequences.

### 3.2 More L1TF/MDS Templates (Ongoing)

Current counts: L1TF=194 train, MDS=159 train. Both below the 300 target.

New template ideas:
- L1TF: hugepage PTE patterns, TSX-based L1TF, L1TF on SGX enclaves
- MDS: MSBDS (micro-architectural store buffer data sampling), different RIDL patterns, TAA with TSX (if available)

### 3.3 GCC Linux Compilation via Docker

Phase7 already uses Docker for Linux GCC compilation. Extend phase17 templates to compile via Docker for native x86_64 GCC output (not cross-compiled via `-target`). GCC generates different code than Clang (different register allocation, instruction selection). Improves compiler diversity.

**Docker command template:**
```
docker run --rm -v /path/to/src:/work specexec-linux-compiler gcc -O2 -S -o /work/out.s /work/src.c
```

### 3.4 RISC-V Architecture

Add RISC-V as third ISA. Spectre V1 and RETBLEED have RISC-V PoCs. Adds diversity without new label work.

**Compiler:** RISC-V GCC cross-compiler via Docker. Target: `riscv64-linux-gnu`.

---

## Priority 4: Production Deployment Considerations

### 4.1 Two-Stage Pipeline Profiling

Stage 1 (specificity filter) is O(N_instructions) per function. Stage 2 (GINE) is O(N_nodes × N_layers). For a 100K-line binary: profile how long the full scan takes.

### 4.2 Class Imbalance in Real Code

In a real codebase: 99.9% BENIGN, 0.01-0.1% attack-related functions. The current model was trained with BENIGN as 60% of training data. In production, BENIGN is 99%+. False positive rate will dominate.

**Fix:** Evaluate false positive rate specifically. Scan a known-benign codebase (e.g., CPython, OpenSSL) with the full pipeline and count false positive alerts.

### 4.3 Obfuscated / Compiler-Hardened Code

Real exploit code in the wild is often obfuscated, inlined, or compiled with unusual flags. The model has never seen these patterns. Report this as a limitation.

---

## Strip_Boilerplate Safety Analysis (v52)

**Script:** `v50/strip_boilerplate.py`

**Phase 1** (boilerplate label truncation): Truncates at first occurrence of `_barrier:`, `_rd:`, `__mm_mfence:`, `__mm_lfence:`, `__mm_clflush:`, `__mm_clflushopt:`.

**Safety in v52:** Since `is_instruction_line` is applied BEFORE strip_boilerplate, all label lines (including these boilerplate labels) are already stripped. Phase 1 regex `BOILERPLATE_LABEL_RE` never matches — it's a no-op. **Phase 1 cannot truncate attack content.**

**Phase 2** (trailing measurement): Strips trailing `dsb ish`, `dsb sy`, `mrs *`, `rdtsc`, `rdtscp`, and bare `ret` following these. Applied from the END of the sequence backward.

**Risk:** If an attack function ends with `rdtsc` for timing (legitimate part of the attack — measure cache access latency), Phase 2 would strip it. This affects L1TF and RETBLEED where rdtsc IS the signal measurement.

**Mitigation:** Phase 2 only strips if the LAST instruction matches. For L1TF functions like `l1tf_time_access()`, the function ends with `retq` (not rdtsc). The `rdtsc` appears mid-function, not at the end. Phase 2 would strip the trailing `retq` only if preceded by `rdtsc` — but `l1tf_time_access` ends with `return t2 - t1` → `subq`, `retq`. The `subq` between rdtsc and retq prevents Phase 2 from stripping.

**Conclusion:** Phase 2 is safe in practice. The only risk is a function that is literally ONLY `rdtsc; ret` — which would be the `rdtsc64()` helper, and that's skipped by `_SKIP_FUNC_PATTERNS` before concatenation.

**Phase 3** (trailing `add sp, sp,` after `dsb/isb`): ARM64-specific. Only fires if the last instruction is `add sp, sp,...` preceded by `dsb`/`isb`. Attack functions don't end this way. **Safe.**

**Verdict:** Strip_boilerplate is safe for the v52 concatenated-whole-file approach. Phase 1 is a no-op (labels pre-stripped). Phase 2 is safe (only strips trailing timing tail). Phase 3 is safe (ARM64 specific, doesn't match attack patterns).

---

## Known Technical Debt

1. **arm32 sequences in training**: A small number of ARM32 records exist (`arch='arm32'`). The PDG builder and arch embedding handle x86_64 and arm64. ARM32 behavior untested.
2. **`## -- Begin function` vs `; -- Begin function`**: Fixed in `extract_functions.py`, but phase15/16 data in existing JSONL files was extracted with the OLD parser (x86_64 files were `_unknown` single-function blobs). These records are still in v50/v51 training data. A full re-extraction from raw C files would fix this — which is what v52 does.
3. **phase17 MDS TAA template**: Uses `xbegin/xend` (TSX). May not compile if target CPU doesn't support TSX. Silently fails on non-TSX machines. Add TSX detection.
4. **Dedup must run AFTER all cleaning**: Documented and enforced in build_v51/v52 scripts, but any new build script must follow this.
5. **`_SKIP_FUNC_PATTERNS` uses `_?measure_` and `_?time_`**: These match function names starting with `measure_` or `time_`. Attack functions named `time_cache_access()` would be incorrectly skipped. Tighten the regex.

---

## File References

| File | Purpose |
|---|---|
| `scripts/enrichment/extract_functions.py` | Assembly parser — fixed to handle `## -- Begin function` and strip label-with-comment lines |
| `scripts/enrichment/build_v50_dataset.py` | v50 dataset builder |
| `scripts/enrichment/build_v51_dataset.py` | v51 dataset builder (V4 filter, post-clean dedup) |
| `scripts/enrichment/build_v52_dataset.py` | v52 dataset builder (whole-file sequences) — TO CREATE |
| `scripts/enrichment/phase17_l1tf_mds_expansion.py` | L1TF/MDS/V4 synthetic templates |
| `scripts/enrichment/phase19_whole_file_extraction.py` | Whole-file sequence extractor — TO CREATE |
| `v50/strip_boilerplate.py` | Boilerplate stripping — safe for v52 (analysis above) |
| `v50/inline_features.py` | 56 inline features including `calls_attack_fn` |
| `docs/PIPELINE_IMPROVEMENT_PLAN.md` | This file |
