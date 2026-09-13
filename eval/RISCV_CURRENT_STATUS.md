# RISC-V Classifier — Current Status (this session)

*Purpose: end the confusion between `eval/eval_riscv_multiseed_results.txt`
(cached, stale) and `SPECDISCOVER_VERIFICATION_GAPS.md`'s G6 entry (mixed
snapshots from different sessions). This doc reports ONE clean run against
the CURRENT state of the corpus (`riscv_corpus/*.s`, 498/498 real, post
`scripts/patch_riscv_corpus_asm.py --apply`), the CURRENT spec engine
(`spec/dataflow_taint.py` wired into `spec/spec_pdg_builder.py`), and the
checkpoints the eval scripts actually default to. No numbers below are
estimated or extrapolated — every one is from a fresh run today
(2026-08-10), logged in full in the two `*_current_results.txt` files next
to this doc.*

## TL;DR

**RISC-V zero-shot accuracy: 29.56% ± 10.25% (5 seeds). L1TF recall: 9.38%
mean, still 0% in 3 of 5 seeds. MDS recall: 16.67% mean, 0% in 3 of 5
seeds. This is not safe to cite as "RISC-V works" in any form — it is
barely better than the pre-fix state, and the improvement that exists is
concentrated entirely in one uncontaminated class (SPECTRE_RSB), not in
L1TF/MDS which is what the fix was aimed at.**

## The fresh numbers (2026-08-10, real corpus + current checkpoints)

Ran `spec/eval_riscv_multiseed.py` unmodified (5 seeds: 42, 1, 7, 13, 21;
checkpoints `eval/dataflow_taint_multiseed/viz_s{seed}/gine_best.pt`, all
confirmed `use_spec_builder=True`, i.e. dataflow_taint is active by default
during both their training and this eval). Full log:
`eval/eval_riscv_multiseed_current_results.txt`.

| seed | accuracy | L1TF recall | MDS recall |
|---|---|---|---|
| 42 | 23.79% | 4.9% | 0.0% |
| 1  | 22.58% | 0.0% | 66.7% |
| 7  | 25.40% | 0.0% | 0.0% |
| 13 | 34.07% | 0.0% | 0.0% |
| 21 | 41.94% | 42.0% | 16.7% |
| **mean ± 95% CI** | **29.56 ± 10.25** | **9.38%** | **16.67%** |

Corpus stats for this run: `riscv_corpus files=498  labeled records
built=496  excluded (downfall, no ground truth)=2`, 20049 instructions,
edge-type distribution includes `SPEC_INDIRECT`/`CACHE_TEMPORAL`/
`FENCE_BOUNDARY` (all present, unlike the stale run below).

## Direct comparison to the stale cached file

`eval/eval_riscv_multiseed_results.txt` (unchanged, kept for the record):

| | stale cached (pre-dates this session's corpus copy) | fresh (this session) |
|---|---|---|
| accuracy | 32.38 ± 7.95 | 29.56 ± 10.25 |
| L1TF recall | **0.00% every single seed** | 9.38% mean, **0% in 3/5 seeds, 4.9%/42.0% in the other 2** |
| MDS recall | 17.78% (0/16.7/0/22.2/50.0) | 16.67% (0/66.7/0/0/16.7) |
| instructions in corpus | 19410 | 20049 |
| edge types present | 6 (no SPEC_INDIRECT/CACHE_TEMPORAL/FENCE_BOUNDARY) | 9 (all present) |

The instruction-count and edge-type differences confirm the two runs really
are scoring against different corpus content, not just re-running the same
thing twice — consistent with the stale file predating the corpus
regeneration described in G6. **Verdict: L1TF is no longer *structurally*
stuck at exactly 0.00% in every seed (one seed now hits 42%), which is a
real, measurable change. But the aggregate accuracy did not improve
(29.56 vs 32.38, well within each other's confidence intervals) and L1TF is
still 0% in 3 of 5 seeds — "no longer literally impossible" is a true and
different claim from "fixed" or "reliable."**

## Why: root-caused directly, not inferred

Re-ran `spec/diagnose_riscv_failure.py` Part 3 (signal-firing-rate
comparison) against the current corpus + checkpoint. Full log:
`eval/diagnose_riscv_failure_current_results.txt`. Headline numbers
(RISC-V corpus vs x86/ARM training sample, 20049 vs 60087 instructions):

| signal | RISC-V | x86/ARM |
|---|---|---|
| is_secret_source | 0.000% | 0.589% |
| is_transmitter | 0.000% | 2.759% |
| is_cache_probe | 1.556% | 0.484% |
| INDEXED mem type | 0.000% | 1.727% |
| INDIRECT mem type | 0.000% | 3.249% |

**Caveat on those numbers, found while re-running this**: Part 3 measures
`eng.spec_flags_vector()` per instruction in isolation — the OLD,
pre-dataflow_taint code path. `apply_dataflow_taint()` mutates node flags
*after* a full PDG is built (`spec/spec_pdg_builder.py`), which is what the
classifier actually sees. Part 3 as written cannot detect whether
dataflow_taint helped at all — it will read 0.000% for
is_secret_source/is_transmitter on RISC-V by construction, fix or no fix.

To get the number that actually matters, this session built real PDGs via
`SpecBackedPDGBuilder(riscv_engine)` with dataflow_taint on vs off and
counted node-level flag rates directly (appended to the bottom of
`eval/diagnose_riscv_failure_current_results.txt`):

- dataflow_taint OFF: is_secret_source 0.000% / is_transmitter 0.000% node-rate (0/496 records touched at all) — matches Part 3, as expected.
- dataflow_taint ON: is_secret_source 0.100% / is_transmitter 0.150% node-rate — **8/496 records now have at least one tainted node.** The mechanism does fire on RISC-V; it is not dead.
- **Per-class breakdown of those 8 records: SPECTRE_RSB 4/4 (100%), BENIGN 1/2, BHI 1/116, RETBLEED 1/102, SPECTRE_V2 1/14 — L1TF 0/162 (0.0%), MDS 0/36 (0.0%).**

**This is the actual root cause of "why didn't the multiseed number move
more": dataflow_taint fires almost nowhere in L1TF/MDS records specifically,
because — per G6's corpus-contamination finding, reconfirmed here — those
classes' real leak-mechanism instructions in `riscv_corpus/*.s` are still
verbatim ARM64 mnemonics (`ldr`, `dc civac`, `ldrb`, `lsl`) that `riscv.json`
correctly does not recognize as RISC-V opcodes. There is no RISC-V-native
LOAD→SHIFT→LOAD chain in those records for dataflow_taint to detect,
regardless of how correct the spec-engine mechanism itself is.** The one
class where dataflow_taint clearly worked (SPECTRE_RSB, 100% of its 4
records tainted) is exactly the one class G6 already flagged as
uncontaminated (0% inline-asm).

## Checkpoint note (as instructed, flagging not switching)

`spec/eval_riscv_real.py` / `spec/diagnose_riscv_failure.py` default to
`v54/viz_v54_spec/gine_best.pt` (modified 2026-07-28) — this is also the
most recently modified `gine_best.pt` among all `v54/viz_v54*` candidates
(the only other candidate, `v54/viz_v54/gine_best.pt`, is older,
2026-07-02), so there is no stale-default issue there.

`spec/eval_riscv_multiseed.py`, however, is hardcoded to
`eval/dataflow_taint_multiseed/viz_s{42,1,7,13,21}/gine_best.pt`, all dated
2026-07-24 — **older than** the `viz_v54_spec` checkpoint. This is not a bug
to fix: it's a deliberate, different experiment (5 independently-trained
seeds of the dataflow_taint model, for a mean±CI, vs. the flagship's single
newer retrain) and is exactly the comparison the script's own docstring and
G6's "multi-seed on older checkpoints" line describe. Flagging per
instructions, not changing it.

## Bottom line — is this safe to cite as "RISC-V works" in a paper?

**No, not without a strong caveat, and the honest caveat should say
approximately this:**

- RISC-V zero-shot accuracy is ~30%, effectively unmoved from the pre-fix
  ~32% (both cached and fresh estimates overlap heavily; no seed reaches
  even 50% accuracy).
- The two page/cache-timing classes (L1TF, MDS) — the ones speculative-
  execution research usually cares about most — are still failing: L1TF
  hits double digits in only 1 of 5 seeds and is exactly 0% in the other 4;
  MDS is 0% in 3 of 5 seeds.
- The spec-engine fix (`dataflow_taint.py`) is demonstrably real and
  working as designed — it raises the relevant signal from a hard
  structural 0.000% to a nonzero rate, and does so in exactly the one class
  (SPECTRE_RSB) where the underlying RISC-V corpus is genuinely
  uncontaminated. That is a legitimate, verified engineering result.
- But it cannot rescue L1TF/MDS because those classes' RISC-V corpus files
  still contain un-ported ARM64 inline assembly for their actual attack
  primitive. Fixing that is a data-generation task (regenerate the corpus
  with genuine RISC-V-native primitives — `fence`, `rdcycle`/`rdtime`, etc.
  instead of `dsb sy`/`mrs ... cntvct_el0`), not a spec-engine task, and it
  has not been done.
- **Correct framing for any external write-up**: "the spec-engine
  generalizes correctly to RISC-V where the corpus is not contaminated
  (SPECTRE_RSB); RISC-V zero-shot detection for the memory/cache-timing
  classes (L1TF, MDS) remains unreliable (~0-40% recall, high seed
  variance) because of a known, root-caused, unresolved corpus-contamination
  gap, not a modeling failure." Anything shorter than that framing
  overclaims.

## Reproduce

```bash
python3 spec/diagnose_riscv_failure.py   > eval/diagnose_riscv_failure_current_results.txt
python3 spec/eval_riscv_multiseed.py     > eval/eval_riscv_multiseed_current_results.txt
```

Both require `riscv_corpus/*.s` (498 files, gitignored — copy from a
checkout that has run `scripts/patch_riscv_corpus_asm.py --apply`) and the
checkpoints referenced above (also gitignored — copy `v54/viz_v54_spec/
gine_best.pt` and `eval/dataflow_taint_multiseed/viz_s{42,1,7,13,21}/
gine_best.pt`).
