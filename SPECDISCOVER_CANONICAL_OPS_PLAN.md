# Canonical Operation Vocabulary — Plan + Implementation

*Fixes the root cause found by `eval/diagnose_riscv_learned_features.py`:
the learned-feature tokenizer abstracts **operands** ISA-agnostically but
keeps the **mnemonic** as a literal string, so 78.3% of RISC-V tokens are
out-of-vocabulary and every MLM-derived feature is noise on any ISA the
encoder wasn't trained on. Goal: "an add is an ADD" regardless of whether
it's spelled `addq`, `adds`, or `addi`.*

---

## 0. Grounding — measured, not assumed

### The OOV problem (why we're here)

`spec/asm_tokenizer.py` emits `"<mnemonic> <operand-kinds…>"`, e.g.
`"addi <reg> <reg> <imm>"`. Operand kinds come from the spec
(ISA-agnostic, correct). The mnemonic does not. `train_mlm.py::build_vocab`
saw only x86_64/arm64, so:

```
MLM vocab (x86/arm only): 449 tokens
RISC-V token OOV rate:    15693/20049 (78.3%)
```

### A second, independent bug this surfaces: the spec can't see x86 size suffixes

Counting real category assignments over all 154,195 training instructions
via the existing spec engine:

```
category          #distinct mnemonics      count
OTHER                             194      43199   <-- 28% of ALL instructions
STORE                              12      22903
LOAD                               10      17611
ARITHMETIC                         11      12193
...
STACK                               2         13   <-- x86 push/pop NOT here
```

`OTHER`'s top entries are `adrp, movq, pushq, popq, leaq, movl, addq,
movzbl, subq, cmpq, shlq, …` — i.e. **every size-suffixed x86 mnemonic**.
`base.json`'s `arithmetic` pattern is `\b(add|sub|mul|…)\b`; `addq` fails
`\badd\b` because the word doesn't end there, so it falls through every
rule to `OTHER`. Same for `pushq`/`popq` vs the `stack_op` pattern —
hence `STACK` has 13 instances instead of ~8,000.

This is not a new regression: the spec was verified 0-mismatch against
`v54/pdg_builder.py`, so it faithfully reproduces a **pre-existing bug in
the original hand-written builder**. It's the same bug class already fixed
once in `scripts/augment_asm_windows.py` (`_X86_FLAG_CLOBBER` missed
size-suffixed mnemonics — see project memory). It affects the GINE
classifier directly whenever `--use-spec-builder` is on: 28% of x86 nodes
carry the `OTHER` category one-hot instead of their real semantics.

**So a canonical-op layer fixes two things at once**: cross-ISA transfer
(the RISC-V ask) and x86 suffix blindness (a latent accuracy bug on the
main training ISAs).

### Vocabulary sizes to reconcile

| ISA | distinct mnemonics in corpus |
|---|---|
| x86_64 | 212 |
| arm64 | 122 |
| riscv64 | 42 |
| shared between x86 & arm | 22 (`add, and, b, cmp, mov, mul, nop, ret, sub, …`) |

376 raw spellings across three ISAs, only 22 accidentally shared. Target: a
single ~45-name semantic vocabulary all three map onto.

### Why not just use the 19 existing categories?

Tried on paper and rejected: collapsing to `opcode_categories` would map
194 distinct `OTHER` mnemonics (28% of the corpus) to one token, and would
merge `lfence`/`mfence`/`dsb`/`cpuid` into a single `FENCE` — despite the
spec keeping `is_lfence` and `is_mfence_or_sfence` as *separate flags*
precisely because that distinction drives Spectre-V1 detection. Categories
are too coarse; mnemonics are too ISA-specific. The canonical-op set sits
deliberately between them.

---

## 1. Design

### Canonical op vocabulary (~45 names), declared once in `base.json`

Semantic, ISA-neutral names grouped by what the instruction *does*:

- **Move/address**: `MOV`, `MOV_ZX`, `MOV_SX`, `COND_MOV`, `ADDR_GEN`
- **Memory**: `LOAD`, `LOAD_PAIR`, `STORE`, `STORE_PAIR`, `PUSH`, `POP`,
  `XCHG`, `ATOMIC`
- **Arithmetic**: `ADD`, `SUB`, `MUL`, `DIV`, `NEG`, `MIN_MAX`
- **Logic/bits**: `AND`, `OR`, `XOR`, `NOT`, `BIC`, `TEST`, `BIT_FIELD`
- **Shift**: `SHL`, `SHR`, `SAR`, `ROTATE`
- **Compare**: `CMP`
- **Control**: `BRANCH_COND`, `BRANCH_UNCOND`, `CALL`, `CALL_IND`, `RET`,
  `JMP_IND`, `SYSCALL`
- **Speculation-relevant** (kept deliberately fine-grained — these are the
  distinctions this whole project detects on): `FENCE_LOAD`,
  `FENCE_STORE`, `FENCE_FULL`, `FENCE_INSN`, `FENCE_SPEC`, `SERIALIZE`,
  `CLEAR_BUF`, `CACHE_FLUSH`, `PREFETCH`, `NONTEMP_LOAD`, `TIMER`
- **Rest**: `NOP`, `VECTOR`, `FLOAT`, `OTHER`

### Where the mappings live — and why per-ISA, not in base

`base.json` declares only the **vocabulary** (`canonical_op_vocab`) plus a
generic category→op fallback. Each ISA spec (`x86_64.json`, `arm64.json`,
`riscv.json`) declares its own `canonical_ops`: an ordered list of
`{"op": NAME, "mnemonic": REGEX}` rules over the *mnemonic only*.

This keeps the project's core invariant intact — **a new ISA still needs
only a new JSON file**, no Python change — while making the emitted token
ISA-independent. Putting every ISA's spellings in `base.json` would have
worked too but would make `base.json` ISA-specific, breaking the layering
the spec engine exists to enforce.

### Resolution order (operand-aware where it must be)

```
canonical_op(instr):
    cat  = classify_opcode(instr)      # existing, operand-aware machinery
    mnem = first token, lowercased
    if cat in MEMORY_RESOLVED (LOAD/STORE/STACK):
        # x86 `movq (%rsi),%rax` is a LOAD even though the mnemonic is a move —
        # only the operand context knows this, so category wins here.
        consult mnemonic rules restricted to memory ops, else use category
    for rule in spec.canonical_ops:    # ordered, per-ISA
        if re.fullmatch(rule.mnemonic, mnem): return rule.op
    if cat != OTHER: return category-name mapped through base fallback
    return "OTHER"
```

Category wins for memory-resolved cases (operand context is strictly more
informative than the mnemonic there); mnemonic rules win everywhere else
(they're strictly more informative than a coarse category).

### Emitted token

`"<CANONICAL_OP> <operand-kind>…"` — e.g. all three of

```
x86:    addq   $1, %rax        ->  "ADD <imm> <reg>"
arm64:  add    x1, x1, #1      ->  "ADD <reg> <reg> <imm>"
riscv:  addi   a5, a5, 1       ->  "ADD <reg> <reg> <imm>"
```

Operand *arity* still differs by ISA (2-address vs 3-address), which is
real structural information and is deliberately preserved, not flattened.

---

## 2. Phases and gates

| phase | what | gate before moving on |
|---|---|---|
| A | Add `canonical_op_vocab` + per-ISA `canonical_ops`; `SpecEngine.canonical_op()`; `AsmTokenizer(mode=)` | coverage check: `OTHER` rate < 5% on **all three** ISAs, RISC-V OOV → ~0% |
| B | Retrain MLM on canonical tokens (`spec/mlm_canonical.pt`) | trains, vocab size sane |
| C | RF ablation, x86/ARM locked split, multi-seed | **no significant regression vs mnemonic MLM** |
| D | RISC-V zero-shot re-run | improvement over the 1.81–2.22% floor |
| E | GINE retrain (v57) if C+D pass | vs v54-spec 96.14%±1.59 |

Phase A's coverage gate is the honest one to fail on: if a large `OTHER`
share survives, the mapping is incomplete and everything downstream
inherits it, so it's checked before any retraining cost is spent.

---

## 3. Results

### Phase A — coverage gate: **PASSED**

`spec/check_canonical_coverage.py`:

```
arch          instrs     OTHER   OTHER%  distinct ops
x86_64         63880       169    0.26%           47
arm64          90138       166    0.18%           38
riscv64        20114         0    0.00%           23

x86+arm canonical token vocabulary: 275
RISC-V OOV against it: 1838/20114 (9.1%)   [was 78.3% with mnemonic tokens]
```

**OOV 78.3% → 9.1%.** The `OTHER` share is under 0.3% on every ISA (was 28%
on the x86 side under the old category scheme, because `addq`/`pushq`/`movl`
matched no pattern).

Everything still falling to `OTHER` was inspected by name rather than left
as an aggregate, and all of it is genuine:
- **cross-ISA contamination in the corpus** — `blr`/`br`/`b` appearing inside
  *x86* files and `jge`/`jmp`/`call`/`leave` inside *arm* files. This is the
  already-documented inline-`__asm__` contamination (G6), correctly refusing
  to classify an ARM mnemonic under the x86 spec.
- **symbol artifacts** — `main_func`, `target_fn`, `mds_msbds_store_tap`,
  `v4_ssb_timing`: function labels the sequence extractor kept as if they
  were instructions. Not instructions, correctly `OTHER`.
- **`rep`** — an x86 prefix, not an opcode.

The 9.1% residual RISC-V OOV is only **5 distinct token shapes**, all real
structural ISA differences rather than spelling:

```
1080  RET <reg>                         riscv `jr ra` names the link register; x86/arm `ret` is implicit
 310  TIMER <reg>                       `rdcycle a5` vs x86 `rdtsc`'s implicit edx:eax
 254  BRANCH_COND <reg> <reg> <sym>     riscv compares *in* the branch; x86/arm use a flags register
  97  ADDR_GEN <reg> <mem>              3-address form
  97  ADD <reg> <reg> <mem>             3-address form
```

Operand arity is real information the plan deliberately preserves, so this
residual is the floor, not a defect — and the *operation name itself* is
now always in-vocabulary.

### Phase B — MLM retrained

`spec/mlm_canonical.pt`, same architecture as `mlm_large.pt` (dim=128,
4 layers, 4 heads, 8 epochs). Vocabulary **226 tokens vs 449** — nearly
halved, because 376 raw mnemonic spellings collapsed onto ~50 shared
semantic ops. Final MLM loss 2.10.

### Phase C — cost on the ISAs we actually train on: roughly a **wash**, with real winners and losers

10 seeds, paired by seed, one process, identical RF configs — only the
tokenizer differs (`eval/compare_tokenizer_modes.py`):

| metric (hand+MLM) | mnemonic | canonical | delta | |
|---|---|---|---|---|
| test accuracy | 95.35 ± 0.26 | 94.94 ± 0.21 | −0.41pp | p=0.005 **sig** |
| macro-F1 | 83.77 ± 3.65 | 89.39 ± 0.34 | +5.61pp | p=0.008 sig — **but see below** |
| recall L1TF | 63.51 ± 1.02 | **69.46 ± 0.93** | +5.95pp | p<0.001 **sig** |
| recall SPECTRE_V2 | 78.25 ± 2.68 | **80.39 ± 1.76** | +2.14pp | p=0.028 **sig** |
| recall INCEPTION | 80.43 ± 0.39 | 71.70 ± 1.15 | **−8.72pp** | p<0.001 **sig** |
| recall BHI | 95.52 ± 0.00 | 89.70 ± 0.34 | **−5.82pp** | p<0.001 **sig** |
| recall RETBLEED | 93.73 ± 0.90 | 92.67 ± 0.50 | −1.07pp | ns |
| recall MDS | 100.00 ± 0.00 | 99.78 ± 0.50 | −0.22pp | ns |

#### The macro-F1 gain is an n=1 artifact — do not cite it

The +5.61pp looked like the headline until it was decomposed per class:

```
class                          mnem F1  canon F1     delta   test support
SPECTRE_RSB                     40.00%   100.00%   +60.00pp        1   <-- 
L1TF                            76.41%    79.32%    +2.90pp       37
RETBLEED                        92.81%    94.88%    +2.07pp       75
SPECTRE_V4                      99.19%    99.23%    +0.04pp      124
SPECTRE_V1                      88.89%    88.99%    +0.10pp       42
BENIGN                          99.66%    99.39%    -0.27pp     1031
SPECTRE_V2                      86.12%    85.25%    -0.87pp      154
MDS                             91.94%    90.53%    -1.41pp       45
BRANCH_HISTORY_INJECTION        79.85%    78.05%    -1.80pp       67
INCEPTION                       82.87%    78.24%    -4.62pp       94
```

**`SPECTRE_RSB` has exactly one record in the locked test set.** It flips
from wrong to right, worth +60pp of its own F1 — which is `+60/10 = +6.0pp`
of macro-F1, *more than the entire +5.61pp reported gain*. Excluding it, the
other nine classes sum to −3.86pp (mean −0.43pp): canonical tokenization is
marginally **worse** on every class that has enough support to measure.

This is the same failure mode this project's audit history keeps surfacing
(see G2/G5/G11 in `SPECDISCOVER_VERIFICATION_GAPS.md`) — an aggregate metric
moved by one unstable record. It's also why the mnemonic run's macro-F1 CI
was ±3.65 while canonical's is ±0.34: the variance *was* that one record
flipping seed to seed. Reporting "canonical improves macro-F1 by 5.6pp"
would have been wrong; the honest statement is **the two tokenizers are
within noise of each other on aggregate x86/ARM performance**, with a real
redistribution underneath: **L1TF and RETBLEED gain, INCEPTION and BHI
lose.**

Whether that trade is worth taking depends on which classes matter — and it
is *separate* from the reason to adopt canonical ops at all, which is
cross-ISA transfer (Phase D), not x86/ARM accuracy.

**Second-order finding:** with canonical tokens, Phase 1/2's diff-gating and
pruning stop helping (`hand+MLM` is now the best config; `hand+diff+prunedMLM`
is −2.66pp on SPECTRE_V2, ns). Consistent reading: those mechanisms were
compensating for noise the mnemonic vocabulary injected, and once the
vocabulary is clean there's less left for them to suppress. They should not
be stacked on top of canonical tokens without re-justifying them.

### Phase D — RISC-V zero-shot: real improvement, still not sufficient

`eval/diagnose_riscv_learned_features.py --mlm-path spec/mlm_canonical.pt`:

| config | mnemonic MLM | canonical MLM |
|---|---|---|
| hand-58 (no MLM) | 6.25% | 6.25% |
| hand+MLM | 2.22% | **5.24%** |
| hand+diffMLM | 1.81% | 5.04% |
| hand+diff+prunedMLM | 1.81% | **5.24%** |

Learned features on RISC-V improved **~2.4x** (2.22% → 5.24%) and stopped
being actively harmful. **But they still don't beat hand-58 alone (6.25%),
and L1TF/MDS/BHI/SPECTRE_V2 remain at 0% recall.** So the vocabulary fix was
necessary but is *not* sufficient — being honest about that, the headline
"RISC-V now works" is not available from this result.

The remaining barrier is not the tokenizer: it's that the encoder has never
seen a RISC-V *distribution* (only its vocabulary now overlaps), plus the
corpus contamination and untrained `riscv64` arch embedding already
documented in `SPECDISCOVER_VERIFICATION_GAPS.md` (G6) and project memory.
The natural follow-up — not attempted here — is to include RISC-V records in
MLM pre-training, which is now *possible* for the first time precisely
because the vocabulary is shared: previously a RISC-V record contributed
almost nothing but `<unk>`.

### Phase E — GINE

`v56/train_gine_v38.py` now auto-detects the checkpoint's tokenizer mode and
dispatches per-ISA (`MultiArchTokenizer`). Smoke-verified end-to-end with
`--mlm-path ../spec/mlm_canonical.pt --node-feature-mode diff_gated_both`
(vocab=226, tokenizer=canonical, `node_feat_dim=169`). The full multi-seed
GINE benchmark is the outstanding piece — see the machine-split plan in
`SPECDISCOVER_LEARNED_FEATURES_PLAN.md`; given Phase C's finding that
diff-gating no longer helps on canonical tokens, the mode worth running is
plain `both` with `mlm_canonical.pt`, compared against `hand` and against
`both` with `mlm_large.pt`.

---

## 4. Honest summary

**What was asked:** abstract instruction names so an `add` is an `ADD`
regardless of ISA, then retrain.

**Done.** `addq` (x86), `adds` (arm64) and `addi` (riscv64) all now tokenize
to `ADD`. Mappings live in each ISA's own JSON spec, so the project's "a new
ISA needs only a spec file" contract is preserved — no Python was made
ISA-specific to achieve this.

**What genuinely improved:**
- RISC-V token OOV **78.3% → 9.1%**, and the residual is 5 structural
  operand-arity differences, not spellings.
- Learned features on RISC-V went from **actively harmful** (1.81–2.22%, i.e.
  worse than using no MLM at all) to **2.4x better** (5.24%).
- A real latent bug was found and fixed along the way: the spec put **28% of
  all instructions** in `OTHER` because `\badd\b` doesn't match `addq` —
  every size-suffixed x86 mnemonic. Now under 0.3% on all three ISAs. This
  bug was inherited faithfully from `v54/pdg_builder.py` and had been
  affecting the GINE classifier's node categories on x86 all along.
- L1TF recall +5.95pp and SPECTRE_V2 +2.14pp (both significant, 10 seeds).

**What did not improve, stated plainly:**
- RISC-V learned features still **lose to hand-58 alone** (5.24% vs 6.25%),
  and L1TF/MDS/BHI/SPECTRE_V2 remain at **0% recall** there. The vocabulary
  was a necessary fix, not a sufficient one.
- On x86/ARM this is a **wash, not a win**: accuracy −0.41pp (significant),
  INCEPTION −8.72pp and BHI −5.82pp (both significant), offsetting the L1TF
  and SPECTRE_V2 gains. The +5.61pp macro-F1 headline is an **n=1 artifact**
  (`SPECTRE_RSB`, one test record) and must not be quoted.
- Phase 1/2's diff-gating/pruning no longer helps once tokens are canonical.

**Next step this unlocks (not done here):** including RISC-V records in MLM
pre-training is now meaningful for the first time — previously a RISC-V
record contributed almost nothing but `<unk>`, so there was no point. That,
not further tokenizer work, is the plausible route to moving RISC-V's 0%
classes.

## 5. Files

| file | change |
|---|---|
| `spec/base.json` | `canonical_op_vocab` (53 names), `canonical_op_from_category`, `canonical_category_authoritative` |
| `spec/x86_64.json` / `arm64.json` / `riscv.json` | `canonical_ops`: 43 / 41 / 33 ordered mnemonic→op rules |
| `spec/isa_spec.py` | `SpecEngine.canonical_op()` |
| `spec/asm_tokenizer.py` | `AsmTokenizer(mode=)`, `MultiArchTokenizer` (per-ISA dispatch) |
| `spec/train_mlm.py` | `--tokenizer-mode`, mode persisted in checkpoint |
| `spec/check_canonical_coverage.py` | **new** — Phase A gate |
| `eval/compare_tokenizer_modes.py` | **new** — Phase C paired gate |
| `eval/phase12_class_diff_multiseed.py`, `eval/diagnose_riscv_learned_features.py` | auto-detect checkpoint tokenizer mode |
| `v56/train_gine_v38.py` | auto-detects mode, dispatches per-ISA |
| `spec/mlm_canonical.pt` | **new** — retrained encoder, vocab 226 (was 449) |

---

## Automated feature generation now beats the hand-engineered tier (2026-08-28)

Group-holdout split, 5 seeds, paired. Measured **after** the x86 load/store fix
(`e3258d1`); the pre-fix column is kept because the comparison is itself
informative.

| config | dim | pre-fix acc | post-fix acc | vs hand-58 (post-fix) |
|---|---|---|---|---|
| hand-58 | 58 | 94.07% | 94.07% | — |
| spec-42 (old automated tier) | 42 | 92.05% | 92.52% | −1.55pp, **sig** |
| cand-all | 366 | 94.13% | 94.71% | +0.64pp, **sig** |
| cand-ensemble | 295 | 94.01% | 94.56% | +0.50pp, ns |
| **cand-impurity** | **31** | 94.72% | **95.15%** | **+1.08pp, sig** |

**`hand-58` is identical to two decimal places before and after the fix.** That
is not a coincidence and it is the useful control here: `v54/inline_features.py`
computes its features with its own ISA-literal regexes and never calls the spec
engine, so a spec fix cannot move it. Every config that *does* read the spec
moved up by 0.43–0.58pp. That isolates the fix's effect cleanly.

Two things this settles:

1. **The automated tier now significantly beats the hand-engineered one** —
   +1.08pp with **31** spec-derived features against 58 hand-written ones. The
   old automated tier (`spec-42`) sits at −1.55pp, which exactly reproduces the
   historically recorded group-holdout gap, so the split and harness are
   behaving consistently with earlier work. This is the portability result the
   paper needs: an automated tier that a new ISA gets by shipping a spec file,
   and which no longer costs accuracy to adopt.

2. **Paul's ensemble rule still does not buy accuracy.** `cand-ensemble` −
   `cand-impurity` = −0.58pp (p=0.130), same direction as pre-fix. The cause is
   unchanged: `mutual_info` keeps 293/366 while impurity keeps 31, and under a
   unanimity rule the most permissive arm dominates, so the ensemble barely
   prunes. What the rule *does* buy is semantic coverage — impurity alone
   discards `op_FENCE_LOAD`, `op_TIMER` and `op_CALL_IND`, which dissent from
   the other arms rescues. Report both halves; do not claim the ensemble
   improves accuracy.

---

## Cross-ISA test: the feature set that wins in-distribution is NOT the one that transfers

`eval/eval_candidate_features_riscv.py` — train on x86_64+arm64 only, evaluate
zero-shot on 496 real RISC-V records. The candidate space is fitted on the
training ISAs, so RISC-V never influences which features exist.

| config | dim | x86/arm (group-holdout) | **RISC-V zero-shot** |
|---|---|---|---|
| hand-58 (ISA-locked) | 58 | 94.07% | **6.77% ± 1.00** |
| **spec-42** | 42 | 92.52% | **73.19% ± 1.38** |
| cand-all | 368 | 94.71% | 51.49% ± 9.28 |
| cand-ensemble | 286 | 94.56% | 46.57% ± 1.67 |
| cand-impurity | 29 | **95.15%** | 56.81% ± 2.64 |

### Two findings, and the second corrects the first

**1. The portability argument is now empirically settled.** `hand-58` collapses
to **6.77%** on an unseen ISA — near chance. That is the expected and correct
result: its features are literal x86/ARM regexes (`frac_movq`, `_X86_ONLY`),
so it has no mechanism for reading RISC-V at all. Every spec-derived tier beats
it by 40–66pp, all p<0.001. "Onboard a new ISA by shipping a spec file" is not
a design aspiration; it is the difference between 6.77% and 73.19%.

**2. But the richer candidate pool does NOT transfer, and the old coarse tier
wins.** `spec-42` — the tier the candidate pool was built to replace — is the
**best** on RISC-V at 73.19%, beating `cand-impurity` by 16.4pp, despite losing
to it by 2.6pp on x86/arm.

This directly contradicts the reading in the previous section, which is
corrected here rather than left standing: adding 300+ canonical-op **bigrams**
buys in-distribution accuracy and costs cross-ISA generalization. The
explanation is straightforward and worth stating plainly — `spec-42` is coarse
(19 category fractions, 14 flag fractions, 5 memory-type fractions, 4
structural counters), and coarse statistics survive a change of ISA. Bigrams
encode *instruction sequencing*, which is exactly what differs between a
2-address CISC and a 3-address RISC: x86's `MOV → ADD` idiom has no RISC-V
counterpart, so a bigram tuned on x86/ARM co-occurrence is close to noise on
RISC-V.

**Consequence for the paper:** report both axes. A single in-distribution
accuracy table would have selected `cand-impurity` and shipped a feature set
that is 16pp worse on the thing the paper claims as its contribution. The
selection criterion for an "automated, portable" tier has to include a
held-out ISA, not just a held-out split.

### Per-class on RISC-V (spec-42, seed 42)

```
                          precision  recall  f1   support
BRANCH_HISTORY_INJECTION      0.83     0.98  0.90     116
L1TF                          0.89     0.90  0.90     162
SPECTRE_V4                    0.57     1.00  0.73      12
SPECTRE_V2                    0.89     0.57  0.70      14
INCEPTION                     0.80     0.58  0.67      48
RETBLEED                      1.00     0.35  0.52     102
MDS                           0.53     0.50  0.51      36
SPECTRE_RSB                   0.00     0.00  0.00       4
BENIGN                        0.03     1.00  0.07       2
                accuracy                    0.73     496
```

L1TF at 0.90 recall zero-shot is the notable one — this is the class that has
repeatedly sat at 0% in earlier RISC-V work. RETBLEED shows the opposite
pattern (precision 1.00, recall 0.35): when it fires it is right, but it misses
two thirds.

**Caveats, stated so these numbers aren't over-read:**
- BENIGN (n=2) and SPECTRE_RSB (n=4) carry no evidential weight. BENIGN's two
  records are additionally the known `utils.c → BENIGN` filename-heuristic
  mislabels, so its 0.03 precision is measuring a label bug, not a model.
- These are RandomForest numbers on the full 496-record corpus. They are **not**
  comparable to the recorded GINE RISC-V figures (24.85% withheld control /
  75.45% riscv-augmented), which use a different model, a different
  group-holdout eval set, and a label set that excludes BENIGN. Do not place
  them side by side.
- Labels here come from `eval_riscv_real.py`'s filename-keyword heuristic, not
  ground truth.

---

## Stub split: part of the RISC-V transfer number is a compiler artifact

`eval/audit_riscv_labels.py` (check C) found that **57/496 (11.5%)** of RISC-V
records are degenerate stubs — ≤10 instructions, **all at -O2**, where the
compiler deleted the gadget but the file kept its attack label. Rather than
re-run on a filtered test set (which changes the denominator and class balance,
the trap already documented for the 64.24%/75.45% figures), the *same*
predictions were scored on three subsets.

| config | dim | ALL (n=496) | **NON-STUB (n=439)** | STUBS (n=57) |
|---|---|---|---|---|
| hand-58 (ISA-locked) | 58 | 6.77 | 7.65 | 0.00 |
| **spec-42** | 42 | **73.19** | **69.70** | **100.00 ± 0.00** |
| cand-all | 368 | 51.49 | 55.44 | 21.05 |
| cand-ensemble | 286 | 46.57 | 49.89 | 21.05 |
| cand-impurity | 29 | 56.81 | **61.91** | 17.54 |

### spec-42 scores 100% on the stubs, and that is a problem, not a result

Perfect precision *and* recall on all four stub classes (INCEPTION 4, L1TF 45,
SPECTRE_V2 2, SPECTRE_V4 6), on every seed. A 5–10 instruction stub cannot
contain a distinguishable gadget — the gadget is what `-O2` removed. Perfect
separation therefore means the model is reading a **class-correlated compiler
artifact**, not an attack.

The mechanism is visible directly. Each class's source leaves a different
residual op-shape:

```
INCEPTION   (9)  RET RET FENCE_FULL FENCE_INSN ADDR_GEN ADD CALL_IND CALL_IND RET
L1TF        (7)  FENCE_FULL FENCE_INSN TIMER LOAD CACHE_FLUSH FENCE_INSN RET
SPECTRE_V2  (9)  NOP RET FENCE_FULL FENCE_INSN TIMER ADDR_GEN ADD JMP_IND RET
SPECTRE_V4  (5)  FENCE_FULL FENCE_INSN TIMER STORE RET
```

`spec-42` is a histogram over exactly these categories, so the stubs are
trivially separable. It is fitting the shape of what the optimiser left behind.

### What this changes

- **The honest RISC-V figure for `spec-42` is 69.70%, not 73.19%.** The
  headline was inflated ~3.5pp by records that contain no attack.
- **The ranking still holds but the margin halves.** `spec-42` (69.70) still
  beats `cand-impurity` (61.91), but by **7.8pp** rather than 16.4pp. The
  cross-ISA conclusion — coarse features transfer, bigrams do not — survives;
  its effect size does not.
- **The candidate tiers were being *penalised* by the stubs** (17–21% on them),
  so their non-stub numbers are all ~3–5pp higher than reported.

### The larger worry this raises, stated rather than resolved

The stubs are the extreme, visible case of a general risk: if `-O2` leaves
class-correlated fingerprints in *short* files, it plausibly leaves them in
longer ones too. And RISC-V is evaluated **entirely zero-shot**, so there is no
train/test group split *within* RISC-V to control for it — the group-holdout
machinery protects the x86/ARM split, not this one. Some unknown share of the
remaining 69.70% may still be "which source-file family is this" rather than
"which attack is this."

That is not demonstrated here, and it should not be asserted. The cheap test
that would settle it: hold out whole *source families* (the `_gen_N` blocks)
rather than scoring all of them, and see whether accuracy survives. Until that
runs, treat every RISC-V transfer number — including 69.70% — as an upper
bound.

---

## Family holdout: the program-recognition worry does NOT hold up

The previous section flagged a risk it did not test: the RISC-V corpus is built
from the *same* c_vulns sources compiled to x86/ARM for training, so the model
might be recognising a program it already saw rather than detecting an attack.
Nothing in the setup controls for it — group-holdout splits the x86/ARM data,
and RISC-V is scored entirely zero-shot.

Measured (`eval/riscv_family_holdout.py`). The overlap is real and large:
**827/5533 training records (14.9%)** share a source family with the RISC-V
test set, across 13 families (`bhi`, `l1tf`, `mds`, `retbleed*`, `inception*`,
`spectre_v2`, `spectre_v4`).

Three training pools, all scored on the same RISC-V test set (non-stub):

| config | FULL | HELD-OUT | RAND-CTRL |
|---|---|---|---|
| hand-58 | 7.65 | 5.56 | 3.78 |
| **spec-42** | **69.70** | 65.28 | 65.74 |
| cand-impurity | 61.91 | 58.72 | 47.20 |

Withholding the shared families costs `spec-42` −4.42pp (p<0.001), which looks
like confirmation. **It isn't.** Removing 827 records also shrinks training by
15%, and that alone costs accuracy. The control removes a comparable amount of
*random* data instead:

| config | held-out − full | random-ctrl − full | **held-out − random-ctrl** |
|---|---|---|---|
| hand-58 | −2.10pp sig | −3.87pp sig | +1.78pp sig |
| **spec-42** | −4.42pp sig | −3.96pp sig | **−0.46pp, p=0.298, ns** |
| cand-impurity | −3.19pp sig | −14.72pp sig | **+11.53pp sig** |

**For `spec-42` the shared families are worth no more than random data of
similar size.** The drop is a sample-size effect, not program recognition. The
hypothesis this experiment was built to confirm is refuted.

`cand-impurity` goes the other way entirely: withholding the shared families
hurt it *11.53pp less* than withholding random data, i.e. it is acutely
sensitive to training volume in general and the overlapping families were not
special to it.

### Consequence for the headline number

Of the two corrections raised, only the first survives:

```
73.19%   spec-42, as originally reported
69.70%   after removing degenerate stubs        <- real, keep this correction
69.70%   after the family-holdout control        <- no further deduction warranted
```

**69.70% is the honest RISC-V figure for `spec-42`**, and it is genuine
cross-ISA transfer against `hand-58`'s 7.65%. The "treat 69.70% as an upper
bound" caution from the previous section is withdrawn: it was tested and did not
hold.

### Limitation of the control, stated

The random control removed **550** records where the family holdout removed
**827** — for the most-affected classes there were not enough non-overlapping
records left to match the per-class counts exactly. The control is therefore
class-matched but not size-matched, and it removed *fewer* records. That biases
conservatively for the conclusion drawn here: random removal of 33% fewer
records still cost `spec-42` nearly as much (−3.96 vs −4.42pp), so a
size-matched control would only widen the gap in the direction of "no
memorisation." A properly size-matched control would need to draw the shortfall
from other classes, trading a class-mix mismatch for a size match.
