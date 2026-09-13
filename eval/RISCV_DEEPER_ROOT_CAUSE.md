# RISC-V Classifier — Deeper Root Cause (beyond `RISCV_CURRENT_STATUS.md`)

*Purpose: `eval/RISCV_CURRENT_STATUS.md` root-caused the L1TF/MDS taint-signal
gap to "the real leak-mechanism instructions in `riscv_corpus/*.s` are still
verbatim ARM64 mnemonics that `riscv.json` correctly does not recognize."
That explains why `dataflow_taint.py`'s signal doesn't fire on L1TF/MDS, but
it does not explain the confusion matrix as a whole — BHI collapsing 48%
into MDS, RETBLEED splitting 34%/32% into INCEPTION/BENIGN, MDS collapsing
72% into BENIGN. This doc investigates those patterns specifically, against
the current checkpoint (`v54/viz_v54_spec/gine_best.pt`) and the current
corpus (`riscv_corpus/*.s`, 498 files, post
`scripts/patch_riscv_corpus_asm.py --apply`). All numbers below are from
fresh runs today, logged in full in the `riscv_h*_*.txt` / `.json` files
next to this doc. Every command is reproducible via `spec/eval_riscv_real.py`
plus the small analysis scripts referenced inline.*

## Headline correction to the existing corpus-contamination claim

**The specific claim "L1TF/MDS still contain literal ARM64 mnemonics (`ldr`,
`dc civac`, `ldrb`, `lsl`)" is stale for the current corpus and does not
hold.** Direct grep of the current (post-patch) corpus for these tokens
returns zero hits:

```
$ grep -l "ldr\b" riscv_corpus/*l1tf*.riscv64.s | grep -v pre_corpus_fix | wc -l
0
$ grep -l "ldr\b" riscv_corpus/*mds*.riscv64.s | grep -v pre_corpus_fix | wc -l
0
```

A systematic scan of every `#APP...#NO_APP` inline-asm block in the current
corpus, classifying tokens against an ISA-disjoint marker list (deliberately
excluding `add`/`sub`/`xor`/`and`/`or`/`call`, which are valid *both* as
RISC-V R-type/pseudo mnemonics and as x86 mnemonics — an earlier pass of
this scan false-positived on exactly those, see
`riscv_h1_contamination_scan.py`), finds **zero blocks with a residual
foreign (x86/ARM-only) mnemonic in any class**, including L1TF and MDS
(`eval/riscv_h1_contamination_scan.txt`). `scripts/patch_riscv_corpus_asm.py
--apply` did its job at the syntax level. The real, deeper problem is
different, and is diagnosed below.

## H1 (revised) — a register-width-aliasing translation bug, not leftover contamination

Manually diffing one L1TF file's pre-translation original
(`riscv_corpus/c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0.O0.riscv64.s.pre_corpus_fix`)
against its current translated form shows the actual mechanism:

Original ARM64 inline asm (verbatim from the `.c` source):
```
dc civac, a5
dsb sy
ldrb w0, [a5]      ; secret byte -> w0 (32-bit view of x0)
lsl  x0, x0, #6     ; shift the SAME physical register (64-bit view)
ldr  x1, [a4, x0]   ; indexed load using the shifted secret
```
Current, translated RISC-V (from `spec/eval_riscv_real.py`-style extraction
of the current file):
```
cbo.inval (a5)
fence
lbu t0, 0(a5)         <- secret loaded into t0
slli t1, t1, 6         <- shift applied to t1, NOT t0
add t2, a4, t1
ld t2, 0(t2)
```

`scripts/translate_riscv_inline_asm.py`'s `find_literal_registers()` treats
`w0` and `x0` as two textually-distinct tokens (regex `\b[xw](\d{1,2})\b`)
and remaps them to two *different* RISC-V scratch temporaries (`w0`→`t0`,
`x0`→`t1`). It has no notion that ARM64's `w`/`x` prefixes are width-views
of the *same* physical register — a completely idiomatic and common ARM64
pattern (`ldrb` only ever writes the 32-bit `w`-view; reading the 64-bit
`x`-view immediately after is the correct, zero-extended way to consume
that value). The remap silently severs the true data dependency.

Confirmed mechanistically by building the real PDG
(`spec.spec_pdg_builder.SpecBackedPDGBuilder(riscv_engine)`) for this exact
file (`eval/h2_pdg_debug.py`, output in `eval/riscv_h2_pdg_debug_example.txt`):
node 23 (`slli t1, t1, 6`) has **zero incoming `DATA_DEP` edges** — nothing
in the graph feeds it, because nothing preceding it writes `t1`. The load
node (`lbu t0, 0(a5)`, node 22) and the shift node are structurally
disconnected. `dataflow_taint.py`'s `_find_probe_gated_ancestor_load` walks
backward from the final indexed load through `DATA_DEP` edges looking for a
`LOAD` reachable through a probe-scale `SHIFT`; with this edge missing, the
walk never reaches node 22, so `is_secret_source`/`is_transmitter` never
fire — **even though both the corpus translation (syntactically valid
RISC-V) and the taint-detection algorithm (correct in isolation) are each
individually right.** The bug is specifically in
`translate_riscv_inline_asm.py`'s per-token register remap, which is
ARM-register-alias-blind.

### Prevalence (`scripts/h1_alias_bug_scan.py` output, `eval/riscv_h1_alias_bug_scan.txt`)

Scanning every `#APP` block's pre-translation original for a register
number `N` that appears as **both** `wN` and `xN` in the same block (the
signature of this bug):

| class | files | files w/ alias bug | blocks total | blocks w/ alias bug |
|---|---|---|---|---|
| MDS | 36 | **36 (100%)** | 114 | 36 |
| L1TF | 162 | 32 (19.8%) | 340 | 32 |
| BRANCH_HISTORY_INJECTION | 116 | 0 | 629 | 0 |
| RETBLEED | 100 | 0 | 287 | 0 |
| INCEPTION, SPECTRE_V2, SPECTRE_V4 | — | 0 | — | 0 |

**Every single MDS record in the corpus hits this bug.** That fully and
mechanistically explains MDS's 0/36 (0.0%) `dataflow_taint` firing rate
reported in `RISCV_CURRENT_STATUS.md` — not "the mnemonics are untranslated
ARM64," but "the mnemonics translated correctly, and the translator's
register bookkeeping broke the very edge the taint detector needs."

For L1TF, only 32/162 (19.8%) of files hit this bug — a per-family
breakdown (`eval/riscv_h1_l1tf_family_scan.py`,
`eval/riscv_h1_l1tf_family_scan.txt`) shows why: only the `l1tf_pf` and
`l1tf_reload` families (32 files) attempt the full
load→shift→indexed-load chain in inline asm at all. The other 130/162
(80.2%) of L1TF files (`l1tf_arm64`, `expanded_variants_l1tf_arm64`,
`generated_l1tf_arm64_gen`, `generated_variants_l1tf_arm64`) only ever
emit a bare `ldr`+cache-flush primitive in inline asm (no shift, no
indexed access — confirmed no `slli`/`srli`/`probe` token anywhere in a
sampled file's full compiled output), with no probe-array access
implemented anywhere in the file. **For those 130 files, zero taint firing
is expected regardless of translation quality — dataflow_taint has no
shift+indexed-load idiom to find because the gadget itself doesn't
construct one.** This is a corpus/gadget-completeness gap (most L1TF
source variants are partial primitives), distinct from and in addition to
the alias bug.

**Verdict on H1**: broader than previously documented, but not in the way
originally hypothesized (not "still-untranslated ARM64 text" — that's
fixed). The real gap is a register-aliasing bug in the translator (100% of
MDS, ~20% of L1TF) plus a corpus-completeness gap (~80% of L1TF variants
never build the full attack primitive in the first place). BHI, RETBLEED,
INCEPTION, and the two SPECTRE classes show none of this — H1 does not
extend to them, so it cannot explain the confusion-matrix patterns outside
L1TF/MDS (BHI→MDS, RETBLEED→INCEPTION/BENIGN). Those are addressed below.

## H2 — is BHI→MDS a genuine structural resemblance?

Whole-class edge-type-distribution comparison (`eval/riscv_h2_h3_graph_stats.py`,
`eval/riscv_h2_h3_graph_stats.txt`), using `SpecBackedPDGBuilder` on every
RISC-V BHI record vs a 150-record sample of each x86/ARM training class,
L1 distance between edge-type fraction vectors (lower = more similar):

```
RISC-V-BHI vs x86/ARM-RETBLEED:                  L1=0.416  <-- closest
RISC-V-BHI vs x86/ARM-BENIGN:                    L1=0.441
RISC-V-BHI vs x86/ARM-MDS:                       L1=0.464
RISC-V-BHI vs x86/ARM-BRANCH_HISTORY_INJECTION:  L1=0.479   (own class)
RISC-V-BHI vs x86/ARM-L1TF:                      L1=0.552
RISC-V-BHI vs x86/ARM-INCEPTION:                 L1=0.589
RISC-V-BHI vs x86/ARM-SPECTRE_V2:                L1=0.601
```

**This does not confirm the strong form of H2.** RISC-V BHI's aggregate
edge-shape is closest to x86/ARM RETBLEED, not MDS — and is closer to *four*
other classes than to its own x86/ARM BHI training distribution. That is
still a real, quantified domain-shift finding (BHI has lost its own
class's distinctive shape on RISC-V), just not the specific "resembles
MDS" story.

**Refined with exact per-record data.** Using the real checkpoint
(`v54/viz_v54_spec/gine_best.pt`) to identify the *exact* 56 BHI records
predicted MDS and the *exact* 40 BHI records predicted correctly
(`eval/riscv_h2_precise_predictions.py`, reproduces the given confusion
matrix exactly: `eval/riscv_h2_precise_predictions.json`), then building
real PDGs for just those two groups (`eval/riscv_h2_precise_edge_dist.py`,
`eval/riscv_h2_precise_edge_dist.txt`):

| group | n | mean instr/record | SPEC_INDIRECT frac | DATA_DEP frac |
|---|---|---|---|---|
| BHI correctly classified | 40 | 27.9 | 0.113 | 0.308 |
| BHI misclassified as MDS | 56 | **71.5 (2.56x larger)** | **0.048 (< half)** | 0.511 |
| x86/ARM BHI (training) | 150-sample | 28.6 | 0.119 | 0.349 |

The correctly-classified BHI subset's shape is nearly identical to the
x86/ARM BHI training distribution (`SPEC_INDIRECT` 0.113 vs 0.119). The
misclassified subset is both **2.56x larger** and has its `SPEC_INDIRECT`
signal — the feature that most distinguishes BHI as an indirect-branch
class — diluted to less than half. L1 distance
(`eval/riscv_h2_l1_summary.txt`) shows the misclassified group sits
**roughly equidistant** between x86/ARM BHI (L1=0.501) and x86/ARM MDS
(L1=0.485) — marginally closer to MDS, but not by a margin that supports
"structurally resembles MDS" as the operative mechanism. It reads more
accurately as: **large, SPEC_INDIRECT-diluted, DATA_DEP-heavy graphs that
don't cleanly resemble any x86/ARM-trained class**, landing on MDS as
whatever the decision boundary routes generic large/low-branch-signal
graphs to, not because they structurally imitate MDS's actual leak
mechanism (cache-timing probes).

**Verdict on H2**: partially supported (real, measurable structural domain
shift exists, confirmed two independent ways), but the specific "resembles
MDS" framing is not the best explanation — see H3, which explains the same
data more directly and generalizes to other classes H2 does not.

## H3 — graph-size domain shift (the dominant, generalizing driver)

Class-level means already hinted at this (`eval/riscv_h2_h3_graph_stats.txt`):
RISC-V BHI averages 57.4 instructions/record vs 28.6 for x86/ARM BHI
training (2.0x); SPECTRE_V2 61.2 vs 29.8 (2.05x); INCEPTION 32.7 vs 21.6
(1.51x) — but RETBLEED (42.3 vs 55.7), MDS (40.2 vs 54.5), and L1TF (26.0
vs 33.5) go the *other* direction. Class-mean size shift alone is
**mixed, not uniformly "RISC-V is bigger"** — the naive H3 hypothesis as
stated doesn't hold uniformly at the class-aggregate level.

**It holds decisively, however, when conditioned on model correctness
instead of class identity.** Using the exact per-record predictions from
the same checkpoint run above, for every confused class with enough
samples (`eval/riscv_h2_other_pairs.py`, `eval/riscv_h2_other_pairs.txt`):

| true class | correctly classified: mean instr | misclassified: mean instr (target) | ratio |
|---|---|---|---|
| BHI | 27.9 | 71.5 (→MDS) | **2.56x** |
| RETBLEED | 20.6 | 53.6 (→INCEPTION) | **2.60x** |
| RETBLEED | 20.6 | 42.6 (→BENIGN) | **2.07x** |
| L1TF | 12.0 | 40.2 (→BENIGN) | **3.35x** |
| INCEPTION | 32.1 | 40.2 (→BENIGN) | 1.25x |
| MDS (n=4, small) | 47.5 | 38.2 (→BENIGN) | 0.80x (reversed, noisy) |

Every class with a large enough correct-vs-wrong sample (BHI, RETBLEED,
L1TF) shows the same 2–3.4x gap in the same direction: **correctly
classified RISC-V records are systematically the short ones; misclassified
records are systematically the long ones**, regardless of which wrong
class they land in. MDS is the one exception, but n=4 correct is too small
to weigh against three consistent, larger-n results.

**Confirmed dataset-wide, class-agnostic** (`eval/riscv_h3_overall_size_correctness.py`,
`eval/riscv_h3_overall_size_correctness.txt`), across all 496 RISC-V
records regardless of true class:

```
n_correct = 171   mean_instr = 21.9   median = 19
n_wrong   = 325   mean_instr = 50.2   median = 43
Welch t-test: t = -11.760   p = 3.72e-28
```

A 2.3x mean-size gap between correctly- and incorrectly-classified records,
significant at p≈3.7×10⁻²⁸ across the whole eval set. This is not
attributable to any single class's corpus-generation quirk — it holds
dataset-wide.

**Verdict on H3**: **strongly confirmed, and is the best-supported,
most-generalizing finding in this investigation.** RISC-V's reduced ISA
needs measurably more instructions to express address computation
(`lui`+`addi` pairs for high/low immediate halves, explicit `add` for
indexed addressing RISC-V lacks natively, etc.) — the same mechanism
`dataflow_taint.py`'s own docstring already documents for indexed
addressing specifically (`add t0, base, idx` / `ld a0, 0(t0)` instead of
one instruction). That inflation pushes many RISC-V graphs well outside
the node-count range the GINE classifier was ever trained on for that
class (e.g. correctly-classified BHI's 27.9-node mean matches x86/ARM
BHI's 28.6-node training mean almost exactly; misclassified BHI's 71.5-node
mean has no real x86/ARM BHI training-distribution analog), a textbook
graph-neural-network out-of-distribution generalization failure, not a
per-class semantic-resemblance story.

## H4 — does the confusion pattern track training-class frequency?

Using the training-class shares already established this session (BENIGN
51.0%, SPECTRE_V1 10.0%, SPECTRE_RSB 8.3%, SPECTRE_V2 7.2%, INCEPTION 6.6%,
RETBLEED 3.9%, SPECTRE_V4 3.7%, BHI 3.5%, L1TF 2.9%, MDS 2.9%) against each
confused class's dominant wrong-prediction target:

| true class | dominant wrong target | target's train share | majority-bias-consistent? |
|---|---|---|---|
| MDS | BENIGN (26/36, 72%) | 51.0% (majority) | yes — plausible bias contributor |
| INCEPTION | BENIGN (14/48, 29%) | 51.0% (majority) | yes — plausible partial contributor |
| RETBLEED | BENIGN (33/102, 32%) | 51.0% (majority) | yes — plausible partial contributor |
| RETBLEED | INCEPTION (35/102, 34%, tied w/ BENIGN) | 6.6% (not majority) | **no** |
| BHI | MDS (56/116, 48%) | 2.9% (**rarest class**) | **no** |

**Mixed result, as the prompt anticipated.** Drift toward BENIGN
(MDS→BENIGN, INCEPTION→BENIGN, RETBLEED→BENIGN) is consistent with — though
not proven to be *caused by* — simple majority-class bias, since BENIGN is
the trained majority at 51%. But the two most striking, highest-magnitude
confusions in the whole matrix — **BHI→MDS (48%, the single largest
off-diagonal cell in the matrix) and RETBLEED→INCEPTION (34%)** — target
classes that are *rare or middling* in training (2.9% and 6.6%
respectively), not majority classes. **Simple majority-class bias is ruled
out as the primary or sole driver of the confusion pattern.** It may be a
secondary contributor to the BENIGN-ward share of the confusion (partially
explaining MDS's specific 72% BENIGN rate, where MDS's own signal is
already known-dead per H1), but it cannot explain BHI→MDS or
RETBLEED→INCEPTION at all. H3 (graph-size domain shift, confirmed
dataset-wide and independent of which class is which) is the more complete
and unifying explanation: an out-of-distribution large graph doesn't
reliably fall back to the majority class — it falls wherever the learned
decision boundary happens to route unfamiliar large graphs, which is class-
and instance-specific, not frequency-driven.

## Ranked synthesis

1. **H3 (graph-size domain shift) — strongest, most general finding.**
   Confirmed dataset-wide (496 records, all classes, t=-11.76, p=3.7e-28):
   correctly-classified records average 21.9 instructions, misclassified
   average 50.2 (2.3x). Confirmed per-class for every class with adequate
   sample size (BHI 2.56x, RETBLEED 2.07–2.60x, L1TF 3.35x). This is the
   dominant driver of the *overall* ~29–34% accuracy figure, beyond the
   already-documented L1TF/MDS taint gap: RISC-V's reduced ISA inflates
   instruction/graph size for the same semantic operation (confirmed
   mechanistically for indexed addressing in H1's register-alias case and
   generally in `dataflow_taint.py`'s own design docstring), pushing many
   records outside the size distribution the GINE classifier was trained
   on for x86/ARM.

2. **H1 (revised) — real, but narrower than H3, and specific to
   L1TF/MDS.** The previously-documented "still literal ARM64 mnemonics"
   claim is stale/incorrect for the current corpus (verified: zero hits).
   The real gap is a register-width-aliasing bug in
   `translate_riscv_inline_asm.py` (100% of MDS files, 19.8% of L1TF
   files) that breaks the exact `DATA_DEP` edge `dataflow_taint.py` needs,
   plus a separate corpus-completeness gap (80.2% of L1TF files never
   build the full page-probe idiom in inline asm at all, regardless of
   translation quality). This explains MDS's near-total taint failure
   precisely and L1TF's partially, but does not touch BHI/RETBLEED/
   INCEPTION, so it cannot explain the confusion-matrix patterns outside
   L1TF/MDS.

3. **H2 — real but weaker than framed; best explained as a special case of
   H3.** RISC-V BHI's edge-shape is not closest to MDS (it's closest to
   RETBLEED at the whole-class level); the *exact* 56 misclassified BHI
   records sit roughly equidistant between x86/ARM BHI and MDS by L1
   distance (0.501 vs 0.485), with SPEC_INDIRECT diluted to less than
   half. This is consistent with "large, out-of-distribution graphs land
   in a generic bucket," which H3 already explains more directly and more
   generally (H3 applies to RETBLEED and L1TF too, where H2's specific
   "resembles MDS" framing doesn't even apply).

4. **H4 — ruled out as primary/sole driver, real as a secondary,
   partial contributor.** BENIGN-ward drift (MDS, INCEPTION, RETBLEED) is
   majority-bias-consistent; the two largest, most striking confusions in
   the matrix (BHI→MDS, RETBLEED→INCEPTION) are not, ruling out simple
   frequency bias as the whole story.

## Bottom line (paper-limitations-section framing)

**RISC-V zero-shot accuracy (~29–34%) is not explained by a single cause,
but the evidence in this investigation identifies graph-size
out-of-distribution shift (H3) as the dominant, dataset-wide driver
(p=3.7e-28, 2.3x mean-size gap between correct and incorrect predictions
across all 496 records and all classes), on top of — not instead of — the
already-documented, class-specific L1TF/MDS taint-signal gap. That gap
itself is revised here: it is not (or no longer) caused by literal
untranslated ARM64 mnemonics, which the corpus-patching pipeline has fixed;
it is caused by a narrower, previously undiagnosed register-width-aliasing
bug in the ARM64→RISC-V inline-asm translator (100% of MDS records, ~20%
of L1TF records) plus a separate corpus-completeness gap affecting the
remaining ~80% of L1TF records, which never construct the full attack
primitive in inline asm regardless of translation quality. Simple
majority-class training bias is a plausible partial contributor to
BENIGN-ward confusion but is directly ruled out as the explanation for the
two largest confusions in the matrix (BHI→MDS, RETBLEED→INCEPTION), both
of which target non-majority classes. None of this changes the top-line
conclusion of `RISCV_CURRENT_STATUS.md` (RISC-V zero-shot detection is not
reliable enough to cite as working); it replaces "why" with a more precise,
mechanistically verified, and partially fixable set of causes — the
register-aliasing bug in particular is a concrete, scoped, likely-fixable
bug (fix the translator's ARM `w`/`x` register-alias resolution before
building the remap table), unlike the graph-size domain shift, which is a
more fundamental consequence of targeting a reduced ISA with a model
trained only on CISC/moderate-RISC (x86/ARM) graph-size distributions.

## Reproduce

All scripts below live in `eval/` (this investigation's scripts) and read
`riscv_corpus/*.s` (498 files, gitignored — copy from a checkout with
`scripts/patch_riscv_corpus_asm.py --apply` already run) plus
`v54/viz_v54_spec/gine_best.pt` (gitignored checkpoint) and
`v54/data/v54_train.jsonl` (gitignored, for the x86/ARM comparison side).

```bash
# H1: corpus-wide contamination re-check (confirms zero literal foreign mnemonics)
python3 eval/riscv_h1_contamination_scan.py riscv_corpus

# H1: register-width-alias bug prevalence by class
python3 eval/riscv_h1_alias_bug_scan.py .

# H1: L1TF family breakdown (which families attempt the full chain at all)
python3 eval/riscv_h1_l1tf_family_scan.py . l1tf
python3 eval/riscv_h1_l1tf_family_scan.py . mds

# H1: mechanistic confirmation — PDG for one example file, showing the
# broken DATA_DEP edge
python3 eval/h2_pdg_debug.py . c_vulns_c_code_enhanced_variants_l1tf_pf_arm64_gen_0.O0.riscv64.s

# H2/H3: whole-class edge-type distributions + instruction/node counts,
# RISC-V vs x86/ARM training, plus L1 distance from RISC-V-BHI to every
# x86/ARM training class
python3 eval/riscv_h2_h3_graph_stats.py .

# H2/H3: exact per-record predictions (reproduces the given confusion
# matrix), used to identify precisely which records were misclassified
python3 eval/h2_precise_predictions.py . eval/riscv_h2_precise_predictions.json

# H2/H3: edge-type distribution + size, exact 56 BHI->MDS vs exact 40
# BHI->BHI records
python3 eval/h2_precise_edge_dist.py . eval/riscv_h2_precise_predictions.json

# H3: same, generalized to RETBLEED/MDS/INCEPTION/L1TF confusion pairs
python3 eval/h2_other_pairs.py . eval/riscv_h2_precise_predictions.json

# H3: dataset-wide, class-agnostic correct-vs-wrong instruction-count
# comparison with a Welch t-test
python3 eval/h3_overall_size_correctness.py . eval/riscv_h2_precise_predictions.json
```

Note: `eval/h2_precise_predictions.py` requires `v54/train_gine_v38.py`'s
`GINEDatasetV47._process_record` to expose two extra identity keys on each
`dataset.data[i]` dict (`_group`, `_source_file`) so per-record predictions
can be traced back to source files — this is a non-functional addition
(collate/eval tensors are unaffected; verified `tests/` still passes 221/1
skipped with it present) needed only for this diagnostic and not part of
the shipped training/eval path.
