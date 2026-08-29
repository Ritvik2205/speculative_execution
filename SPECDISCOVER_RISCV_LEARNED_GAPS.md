# SpecDiscover — Why Learned Features Don't Transfer to RISC-V (and Coarse Spec Features Do)

*Written 2026-08-29. A code-first gap analysis: why the classifier collapses on
RISC-V when features are LEARNED (MLM encoder) while the coarse 42-dim
spec-derived tier transfers, and what each gap would cost to close.*

**Primary sources are this repo's `.py` / `.json` files, not its markdown.**
Every number below was either (a) re-measured in this session against the code
as it stands today, or (b) read out of a checked-in results file and labelled as
such. Where a `SPECDISCOVER_*.md` claim and the code disagree, the code wins and
the disagreement is called out. Inferences that I could not measure are marked
`[inference]`.

Datasets used for measurement:
- `v54/data/v54_train.jsonl` (5533 records) / `v54_test.jsonl` (1670) — the
  training/locked-test pool.
- `eval/data/riscv_labeled.jsonl` (494 records) — the RISC-V slice, built by
  `eval/build_riscv_labeled.py`.

---

## 1. Bottom line — ranked gaps

Ordered by how much each costs the *claim* "SpecDiscover onboards a new ISA by
shipping a spec file", biggest first.

| # | Gap | One line | Fix class |
|---|-----|----------|-----------|
| **G1** | The RISC-V corpus is a transliteration of the x86/ARM corpus | Every RISC-V "attack instruction" is emitted by a ~40-rule hand-written table (`scripts/translate_riscv_inline_asm.py:143`); 494 records come from **27** family templates; `fence.i` is 3.35% of RISC-V vs 0.002% `isb` in train. Any RISC-V accuracy number is partly measuring the transliterator. | **(c) new data** |
| **G2** | Class semantics are *defined* by x86/ARM mnemonics | `has_train_attack_signal` (`v54/build_dataset.py:143`) admits a training record for MDS only if it contains `verw\|movntdqa\|clflush\|clflushopt`, for L1TF only `clflush\|clflushopt\|rdtsc\|rdtscp`. None of those exist on RISC-V, so the learned concept of those classes is unreachable there by construction. | **(b)+(c)** |
| **G3** | The MLM vocabulary was built only from x86/ARM — but OOV was the *symptom*, not the cause | Confirmed 0 riscv64 rows in `v54_train.jsonl`. Mnemonic tokenizer → **78.76% UNK**, 456/494 records >50% UNK. Canonical tokenizer → **12.60% UNK** — yet mean-embedding cosine to the train manifold moved only 0.48→0.53, and the RF still scores **5.24% vs hand-58's 6.25%**. Fixing OOV did not fix transfer. | **(c)** (pretrain on unlabeled RISC-V) |
| **G4** | `is_secret_source` / `is_transmitter` are structurally unreachable on RISC-V, and the Python workaround is not wired into the feature tiers | `base.json:240-258` gates both on `when_mem_in:["INDEXED"]`; `riscv.json:25,33` make INDEXED unmatchable. Measured on RISC-V: `flagfrac_is_secret_source` **0.0%** nonzero (train 20.2%), `is_transmitter` **0.0%** (train 45.5%), `memfrac_INDEXED` **0.0%** (train 29.9%), `memfrac_INDIRECT` **0.0%** (train 39.6%). `spec/dataflow_taint.py` fixes this *only inside `SpecBackedPDGBuilder.build`* — `spec_features.py` and `candidate_features.py` never call it. | **(b)**, partially **(a)** |
| **G5** | The category taxonomy is far *worse* on the training ISAs than on RISC-V | `SpecEngine.classify_opcode` puts **51.3% of x86 instructions** and 11.9% of ARM into `OTHER` (`movq`, `pushq`, `popq`, `leaq`, `addq`, `cmpq`, `shlq` …) vs **1.0% on RISC-V**. `STACK` gets 9 nodes out of 63880 x86 instructions. The external oracle structurally cannot see this. `SPECDISCOVER_CANONICAL_OPS_PLAN.md:185` reads as if this was fixed; only the `canonical_op` layer was. | **(a) JSON** — cheap, high value |
| **G6** | Fine-grained features have no target-ISA coverage; bigrams are the worst offender but not the whole story | Measured: of the 368-dim candidate pool fitted on x86/ARM, **63.6% of bigram columns**, **54% of canonical-op columns**, **46.4% of flag-pair columns** are identically zero on RISC-V — vs **1 of 19** spec categories. RF ablation: bigrams-alone **7.17%**, ops-only **41.74%**, ops+bigrams **33.60%** (bigrams cost −8.1pp), spec-42 **73.08%**. | **(d)** as framed |
| **G7** | hand-58 is 81% dead on RISC-V | **47 of 58** inline features are identically zero on RISC-V. Only 11 survive (nop/ret/call/branch fractions and their ratios). This is the mechanism behind 6.25–6.77%. | **(b)**, but blocked by G2 |
| **G8** | `global_features[1]` (`indirect_frac`) is 0.0% on RISC-V despite RISC-V having 6.9% indirect branches | `_INDIRECT_GLOBAL` (`v56/train_gine_v38.py:91`) matches only `blr\|br\|jmpq*\|callq*\|[xN]`; RISC-V's 1318 `jr` + 51 `jalr` match nothing. This feature feeds the GINE fusion vector in *every* `node_feature_mode`, learned included. | **(b)** — one regex |
| **G9** | Class space mismatch | RISC-V slice has **no BENIGN and no SPECTRE_V1** (`eval/build_riscv_labeled.py:83-92` drops BENIGN by design). Training pool is 51% BENIGN. spec-42 spends 57/494 predictions on BENIGN — wrong by construction. RISC-V accuracy is not comparable to the 96.14% x86/ARM number. | **(c)** |
| **G10** | Labels are filename keywords | `label_for_stem` (`spec/eval_riscv_real.py:88-96`) is a substring match on the `.s` filename. No oracle, no per-window verification that the gadget survived compilation. | **(c)/(a)** |
| **G11** | The `riscv64` arch-embedding row is untrained noise | `ARCH_VOCAB['riscv64']=3` (`v56/gine_classifier_v38.py:33`); `nn.Embedding(5, 8)` at `:229`; zero riscv64 training rows. Checkpoint row-3 norms across v50–v56 are 1.84–4.11, i.e. init scale. 8 random dims are concatenated into every RISC-V prediction. | **(c)** |
| **G12** | Every RISC-V confidence interval in the repo is over-precise | 494 records / **27** family groups; SPECTRE_V4 = **1** group (12 records), SPECTRE_RSB = 2 groups (4 records). CIs computed over records treat near-duplicates as independent. | **(b) analysis** |

Two corrections to claims in the brief itself, both measured:

- The 368-feature candidate pool scores **55.44%** non-stub (not 61.9%). The
  61.91% figure in `eval/candidate_features_riscv_stub_split.txt` is
  `cand-impurity`, a **29**-feature impurity-selected subset — i.e. *pruning*
  the rich pool by 92% recovers 6pp, which is itself evidence for the coverage
  story.
- `eval/validate_dataflow_taint_riscv_results.txt` (0 L1TF, 0 MDS taint hits) is
  **stale**. Re-running the current code gives **36/36 MDS** and **32/162 L1TF**
  records tagged. The doc is out of date in the *favourable* direction.

---

## 2. The three mechanisms, end to end

### 2.1 Learning — the self-supervised encoder

Follow one instruction from text to a 64/128-dim vector.

**Step 1 — tokenize.** `spec/asm_tokenizer.py:84-95`. An instruction becomes
`"<op> <operand-kind> <operand-kind> …"`. Operand kinds come from the spec's
`addressing` block (`isa_spec.py:95-98`), so `<reg>/<imm>/<mem>/<mem-idx>/<fn>/<sym>`
carry no ISA literal in *this file*. The opcode half depends on `mode`:

- `mode="mnemonic"` (`asm_tokenizer.py:90`) keeps the literal opcode. Worse:
  `MultiArchTokenizer.__init__` (`:135`) builds **one** `base.json` tokenizer and
  assigns it to every arch, so RISC-V operands are matched against `base.json`'s
  `reg` pattern (`base.json:80`, which knows `x0-x31`/`%rax`-style but not
  `a0`/`t0`/`s0`/`ra`) and against `mem_idx` (`base.json:307`, bracket/paren with
  a comma). Both the mnemonic and most operands are therefore wrong for RISC-V.
- `mode="canonical"` (`:89` → `SpecEngine.canonical_op`) replaces the opcode with
  an ISA-neutral name, and dispatches per-arch (`:132`).

**Step 2 — build the vocabulary.** `spec/train_mlm.py:41-42` hardcodes
`TRAIN = v54/data/v54_train.jsonl`, `:200-204` tokenizes only those rows, and
`build_vocab` (`:125-129`) keeps tokens with `count >= 5`. **Verified: that file
contains 3434 arm64 + 2094 x86_64 + 5 arm32 and zero riscv64 records.**

**Step 3 — lookup.** `MlmEncoder.embed_instructions:85`:
```python
ids = [self.vocab.get(t, self.vocab[UNK]) for t in tokens][: self.max_len]
```
There is no sub-word fallback. A token absent from the vocabulary becomes a
single shared `<unk>` id — meaning every unseen instruction *shape* collapses to
one point in embedding space before the Transformer ever runs. Measured on the
494 RISC-V records:

| checkpoint | mode | vocab | RISC-V `<unk>` share | records >50% `<unk>` |
|---|---|---|---|---|
| `spec/mlm_large.pt` | mnemonic | 449 | **78.76%** | **456 / 494** |
| `spec/mlm_canonical.pt` | canonical | 226 | **12.60%** | **0 / 494** |

For reference the same tokenizers give 0.22% / 0.73% OOV on the training pool.

**Step 4 — encode and pool.** `train_mlm.py:72-77` adds a *learned absolute*
positional embedding (`nn.Embedding(max_len=256, dim)`, `:60`) to the token
embedding, runs 2–4 Transformer layers, and `embed_sequence:94-98` takes the
**unweighted mean** over positions. Only 3 of 494 RISC-V records exceed
`max_len`, so truncation is not a factor.

**Where the learned tier lands relative to the training manifold** (measured):

| checkpoint | cos(mean_train, mean_riscv) | mean&#124;z&#124; train | mean&#124;z&#124; riscv | ratio |
|---|---|---|---|---|
| `mlm_large.pt` (mnemonic) | 0.480 | 0.812 | 1.122 | 1.38× |
| `mlm_canonical.pt` (canonical) | 0.532 | 0.815 | 0.967 | 1.19× |

**This is the central negative result of the learned tier.** Cutting OOV by a
factor of 6.3 (78.76% → 12.60%) moved the mean-embedding cosine by 0.05 and left
the downstream RF at 5.24% (recorded, `SPECDISCOVER_CANONICAL_OPS_PLAN.md:290`),
still below hand-58's 6.25%. The encoder can now *read* RISC-V tokens; it still
has no representation of what they mean, because the only training signal it ever
got was "predict the masked x86/ARM instruction given its x86/ARM neighbours".

**Residual OOV is exactly the arity story, and it is verifiable.** Under
`mlm_canonical.pt`, the 12.60% residual is **6** distinct token shapes:

```
1062  RET <reg>                      riscv `jr ra` names the link register; x86/ARM `ret` is implicit
 662  FENCE_INSN                     `fence.i` — a canonical op x86/ARM never emit at count >= 5
 310  TIMER <reg>                    `rdcycle a5` vs x86 `rdtsc`'s implicit edx:eax
 243  BRANCH_COND <reg> <reg> <sym>  3-address compare-branch; x86/ARM branch on a flags register
  97  ADDR_GEN <reg> <mem>           3-address form
  97  ADD <reg> <reg> <mem>          3-address form
```

Five of six are operand-arity differences, confirming the recorded explanation.
`FENCE_INSN` is different in kind: it is a canonical op that *exists* in
`x86_64.json` and `arm64.json` but is too rare in the training corpus (3 `isb`
instructions total) to survive `min_count=5`.

**Discrepancy with the repo's own doc.** `SPECDISCOVER_CANONICAL_OPS_PLAN.md:182`
records **9.1%** residual OOV against a **275**-token vocabulary. That number
comes from `spec/check_canonical_coverage.py:91`, which builds
`train_vocab |= set(tokenize(seq))` — *unfiltered*. Reconciled exactly:

```
unfiltered train token set (what the gate measures) : 272 tokens  ->  9.16% OOV
build_vocab(min_count=5) (what train_mlm.py uses)   : 225 tokens  -> 12.51% OOV
DEPLOYED mlm_canonical.pt vocabulary                : 226 tokens  -> 12.51% OOV
```
**The Phase-A gate measures a vocabulary no checkpoint uses**, understating the
deployed OOV by 3.4pp (37% relative). The doc's "5 distinct token shapes" is also
6 against the deployed vocabulary.

**Step 5 — consumption by GINE.** `v56/train_gine_v38.py:295-305`. Per-node
learned embeddings are aligned 1:1 with PDG nodes and, depending on
`node_feature_mode`, either replace (`learned`) or are concatenated with
(`both`) the 40-dim spec node features, plus a 1-dim relative position
(`:287`, `i / (n_nodes-1)` — genuinely ISA-neutral).

**Note that "learned" mode is not purely learned.** `_process_record` calls
`compute_global_features(sequence_raw)` at `:264` and
`compute_inline_features(sequence_raw)` at `:352` *unconditionally*, in every
mode. Both are ISA-literal (see §2.3/G7/G8). So the GINE fusion vector always
carries the hand tier alongside whatever the encoder produced.

### 2.2 Data construction — from `.s` file to training record

Two *different* pipelines produce x86/ARM records and RISC-V records. That
asymmetry is itself a gap.

**x86/ARM path** (`v54/build_dataset.py`, identical file in `v56/`):

1. `compile_safeside_file` / `load_spectector_samples` compile C sources —
   `:297` `triples = [("x86_64-apple-macos","x86_64"), ("arm64-apple-macos","arm64")]`.
   **RISC-V is not a target of this builder at all.**
2. `extract_functions:222-262` splits each `.s` into **per-function** instruction
   lists using `.cfi_endproc` and label boundaries.
3. `_neutralize:95-116` rewrites call/branch/`adrp`/`:lo12:`/`leaq …(%rip)`
   targets to the literal string `<fn>`. Measured: **4192 / 5533 (75.8%)** of
   training records contain `<fn>`.
4. `has_train_attack_signal:143-211` decides whether the record is admitted for
   its label. This is the most consequential function in the repo for this
   question, and it is entirely x86/ARM mnemonics:
   - `MDS` ⟺ `verw ∨ movntdqa ∨ clflush ∨ clflushopt`
   - `L1TF` ⟺ `clflush ∨ clflushopt ∨ rdtsc ∨ rdtscp`
   - `SPECTRE_V1` ⟺ `lfence ∨ nop-run≥3 ∨ (cmp/test/tst/subs followed within 5
     by je/jne/cbz/b.eq/… ∧ `_LOAD_PAT` indexed load)`
   - `RETBLEED` ⟺ `rdtsc ∨ rdtscp ∨ (nop-run≥3 ∧ ret-count≥1)`
   - `INCEPTION`, `SPECTRE_RSB` ⟺ nop-run / `ret` vs `call+bl` counts

   **What the model learns "MDS" to mean is literally "contains `verw` or
   `movntdqa` or `clflush`".** That predicate has no RISC-V extension.
5. `seq_hash` dedup, then write.

**RISC-V path** (`spec/eval_riscv_real.py` + `eval/build_riscv_labeled.py`):

0. The corpus itself: `scripts/patch_riscv_corpus_asm.py` +
   `scripts/translate_riscv_inline_asm.py`. The C sources were compiled with
   `riscv64-elf-gcc`, but the gadgets live in `__asm__` blocks, which the
   compiler copies through verbatim in whatever ISA they were written for. The
   patch script then rewrites those `#APP…#NO_APP` blocks through a hand-written
   table (`translate_riscv_inline_asm.py:143-233`, ~40 rules). Excerpt:

   ```
   lfence | mfence | sfence | dsb <x>      ->  fence
   isb                                     ->  fence.i
   mrs xN, cntvct_el0                      ->  rdcycle xN
   dc civac, (r) | clflush (r)             ->  cbo.inval (r) | cbo.flush (r)
   hint #0x14  (ARM CSDB)                  ->  <dropped entirely>
   ldrb rt,[base,idx]                      ->  add tX, base, idx ; lbu rt, 0(tX)
   lsl rN,rN,#k | shl $k,rN                ->  slli rN, rN, k
   cmp a,b ; jge L                         ->  bge a, b, L
   ```
   `patch_riscv_corpus_asm.py:21-30` further admits that GCC compiled the
   `rdtsc` timing helper away into a constant (`li a5,0`) before the translator
   could see it.
1. `extract_sequence:104-110` reads the **whole `.s` file** as one sequence. No
   per-function split, so a RISC-V record concatenates several function bodies.
   The first record in `riscv_labeled.jsonl` is three prologue/`nop`/epilogue
   bodies in a row.
2. `label_for_stem:88-96` assigns the label by filename substring
   (`"l1tf" -> L1TF`, etc.). `downfall` is excluded for having no cross-referenced
   x86/ARM label.
3. `build_riscv_labeled.py:83-92` **drops every BENIGN record** by design.
4. `family_group:54-62` collapses `_gen_N` variants into one group id.
5. **No `_neutralize`, no `has_train_attack_signal`, no function windowing.**

Measured consequences:

| | x86_64 | arm64 | riscv64 |
|---|---|---|---|
| records | 2094 | 3434 | 494 |
| distinct family groups | — | — | **27** |
| mean sequence length | 30.5 | 26.2 | 40.0 |
| records containing `<fn>` | 4192/5533 (75.8%) across both | (same) | **0 / 494** |
| `strip_boilerplate` fires | 3.3% of records | 2.2% | **0.0%** |
| classify_opcode `OTHER` share | **51.3%** | 11.9% | **1.0%** |

Mnemonic-distribution fingerprint of the transliterator (fraction of all
instructions):

| construct | v54 train (x86+ARM) | riscv_labeled | ratio |
|---|---|---|---|
| `fence.i` vs `isb` | 0.002% | **3.35%** | ~1700× |
| `rdcycle` vs `rdtsc+rdtscp+mrs` | 0.56% | **1.57%** | 2.8× |
| `cbo.inval/flush` vs `clflush+clflushopt+dc` | 0.42% | **1.58%** | 3.8× |
| `nop` | 4.58% | **14.08%** | 3.1× |

`spec/spec_features.py`'s category histogram sees this as `catfrac_FENCE`
0.0141 → **0.1101** (7.8×), `catfrac_TIMING` 0.0045 → **0.0304** (6.8×),
`catfrac_CACHE` 0.0036 → **0.0287** (8.0×), `catfrac_NOP` 0.0505 → **0.1545**.

**A worked example of what "100% on stubs" is actually reading.** The 45 L1TF
records of ≤10 instructions come from **4** family groups and look like this:

```
fence  /  fence.i  /  rdcycle a5  /  ld t0, 0(a0)  /  cbo.inval (a0)  /  fence.i  /  ret
```
That is `FENCE ∧ TIMING ∧ CACHE ∧ LOAD` in seven instructions, which the
19-bucket category histogram separates trivially. They are 9.1% of the whole
RISC-V set and 27.8% of the L1TF class, and they are four templates.

Contrary to the framing in the brief, these are not gadgets "optimised away" —
`-O2` stripped the C boilerplate and left the transliterated inline-asm core
*intact*. The problem is not degeneracy; it is that they are near-duplicate
outputs of a fixed rewrite rule.

### 2.3 Spec consumption — what `riscv.json` can and cannot express

`SpecEngine` (`spec/isa_spec.py`) is loaded per-arch through a `SPEC_FOR_ARCH`
map that is **duplicated in four places**: `asm_tokenizer.py:109`,
`candidate_features.py:39`, `train_gine_v38.py:180` and `:893`.

Four consumers read the engine:

| consumer | uses | applies `dataflow_taint`? |
|---|---|---|
| `spec/spec_features.py:60-71` (the 42-dim tier) | `classify_opcode`, `memory_access_type`, `spec_flags_vector` | **no** |
| `spec/candidate_features.py:95,125,147-151` (368-dim pool) | `canonical_op`, `spec_flags_vector` | **no** |
| `spec/spec_pdg_builder.py:65-81` (GINE graphs) | all four node decisions | **yes** (`:79-80`) |
| `spec/asm_tokenizer.py` (MLM tokens) | `canonical_op`, `addressing` | n/a |

**What `riscv.json` expresses well.** It was authored blind from the RV64GC
manual (`riscv.json:5`) with explicit suffixed mnemonic lists
(`addi|addw|addiw|…`, `:16`), so `classify_opcode` leaves only **1.0%** of RISC-V
instructions in `OTHER` — the cleanest of the three specs by a wide margin.
`canonical_ops:74-207` covers 33 ops including RISC-V-only ones (`FENCE_INSN`,
`ATOMIC`, `PREFETCH`).

**What it cannot express, and the exact consequence.**

`riscv.json:23,25,33` set three patterns to the deliberately never-matching
regex `(?!x)x`:

```json
"stack_op":       "(?!x)x",     // RV has no push/pop
"indexed_access": "(?!x)x",     // RV has no base+index addressing
"mem_idx":        "(?!x)x"
```

Trace the consequence through `base.json`:

1. `mem_access_rules` (`base.json:179-192`) tries `stack_access` → `indexed_access`
   → `indirect`, default `HEAP`. On RISC-V `indexed_access` can never fire, and
   `indirect` (`riscv.json:13`, `jalr|jr|c.jalr|c.jr`) can never appear on a memory
   operand. So `memory_access_type` on RISC-V returns only `NONE`, `STACK`, or
   `HEAP`.
2. `spec_flag_rules` (`base.json:240-258`):
   ```json
   { "when_cat_in": ["LOAD"], "when_mem_in": ["INDEXED"],             "set": "is_secret_source" }
   { "when_cat_in": ["LOAD"], "when_mem_in": ["INDEXED","INDIRECT"],  "set": "is_transmitter"   }
   ```
   Both antecedents are unsatisfiable on RISC-V. **`is_secret_source` and
   `is_transmitter` are identically zero on RISC-V by construction of the JSON
   schema**, not by accident of the corpus.

Measured over the 42-dim tier (train nonzero rate → riscv nonzero rate):

```
flagfrac_is_secret_source      20.2%  ->  0.0%
flagfrac_is_transmitter        45.5%  ->  0.0%
flagfrac_is_lfence             16.3%  ->  0.0%
flagfrac_is_mfence_or_sfence   10.1%  ->  0.0%
flagfrac_is_verw / prefetch / nontemp_load   ->  0.0%
memfrac_INDEXED                29.9%  ->  0.0%
memfrac_INDIRECT               39.6%  ->  0.0%
catfrac_STACK                   0.1%  ->  0.0%
```
**9 of 42 columns are dead on RISC-V but alive in training** (a tenth,
`is_gather`, is dead everywhere). The other 33 carry signal — which is exactly
why this tier transfers at all.

`is_lfence` / `is_mfence_or_sfence` are worth separating from the rest: they are
`opcode_in`/`opcode_regex` rules in `base.json:259-268` naming x86/ARM
mnemonics directly. Those two are **ISA literals sitting in the shared base
spec**, not in a per-ISA file, and a new ISA cannot override them without
editing `base.json`.

**The workaround, and what it costs the "spec file only" claim.**
`spec/dataflow_taint.py` re-derives both flags from DATA_DEP graph reachability
gated on a page/cache-line-scale shift. It is **Python, not JSON**:
`PROBE_SHIFT_AMOUNTS = {6, 9, …, 15}` (`:89`) is a hardcoded set of x86 page and
cache-line exponents, and `_shift_amount_matches:93-106` scans for a bare numeric
literal in the instruction text. The current JSON schema has no rule `kind` that
can express a multi-instruction dataflow condition — `spec_flag_rules` only ever
sees one instruction (`isa_spec.py:250-272`). So the honest statement is: *this
ISA needed a code change, and it lives in a file whose docstring says it is
ISA-agnostic while containing an ISA-specific constant.*

Measured behaviour of the workaround **today** (not the stale results file):

| | nodes | `is_secret_source` off → on | `is_transmitter` off → on |
|---|---|---|---|
| riscv64 (494 rec) | 19754 | 0 → **87** (0.44%) | 0 → **97** (0.49%) |
| x86_64 (1200-rec sample) | 14924 | 139 → **139** (+0) | 139 → **139** (+0) |
| arm64 (same sample) | 19337 | 192 → 207 (+15) | 867 → 882 (+15) |

Records with any new taint signal, by RISC-V class: **MDS 36/36**, L1TF 32/162,
SPECTRE_RSB 4/4, BHI 1/116, RETBLEED 1/102, SPECTRE_V2 1/14, INCEPTION 0/48,
SPECTRE_V4 0/12.

Two things follow. First, the recorded
`eval/validate_dataflow_taint_riscv_results.txt` ("no L1TF/MDS records got any
new tag — mechanism did not fire") is **stale**; MDS now fires 100%. Second, and
more damaging: the mechanism is a **near-total no-op on the training ISAs**
(+0 on x86). So even where it fires on RISC-V, it activates a flag the model
only ever saw generated by a *different* process (syntactic `(%base,%idx)`
addressing). `[inference]` The classifier has no trained pathway that would make
graph-derived taint mean the same thing as syntax-derived taint.

**A finding that inverts the usual framing: the training ISAs have the broken
taxonomy, not RISC-V.** `SpecEngine.classify_opcode` (`isa_spec.py:114-165`)
measured over every instruction in the corpora:

| arch | instructions | `OTHER` | `OTHER` % | `STACK` |
|---|---|---|---|---|
| x86_64 | 63880 | 32765 | **51.3%** | **9** |
| arm64 | 90138 | 10742 | 11.9% | 4 |
| riscv64 | 19754 | 200 | **1.0%** | 0 |

Top x86 `OTHER` mnemonics: `movq` (4547), `pushq` (4082), `popq` (3791), `leaq`
(2328), `movl` (2172), `addq` (1856), `movzbl` (1797), `subq`, `cmpq`, `shlq`.

Mechanism: `base.json:59-81` patterns are unsuffixed — `move` is `\b(mov[zskn]?)\b`
(no `q`/`l`/`b`), `arithmetic` is `\badd\b`, `stack_op` is `\b(push|pop)\b`. The
`mem_load`/`mem_store` rules do carry suffixes (`mov[qldwb]?`) but are gated on
`has_mem` (`isa_spec.py:137,150`), so register-to-register `movq %rax,%rbx` and
`pushq %rbp` fall through every rule to `default_category: OTHER`.

Downstream damage, on the *training* ISA:
- `is_memory_access` never fires for x86 `pushq`/`popq` (`base.json:234-238`
  needs LOAD/STORE/STACK).
- `extract_registers` (`isa_spec.py:232-247`) treats a category not in
  `all_source_categories` as "first register is the destination". `cmpq %rax,%rbx`
  is `OTHER`, so `%rax` is recorded as a **def** — a spurious DATA_DEP source in
  every x86 graph.
- The B1 GINE spec-builder result (96.14% ± 1.59) was obtained on x86 graphs
  where half of all nodes are `OTHER`.

The external oracle cannot catch this: `spec/external_oracle.py:17-22` states it
adjudicates only `{CALL, RET, JUMP, OTHER}` and abstains on loads/stores/arith.
`spec/check_canonical_coverage.py` measures `canonical_op` OTHER (0.26%), not
`classify_opcode` OTHER. `SPECDISCOVER_CANONICAL_OPS_PLAN.md:185` — "The `OTHER`
share is under 0.3% on every ISA (was 28% on the x86 side under the old category
scheme…)" — is true of the canonical layer and false of the category layer that
`spec_features`, `memory_access_type`, `spec_flags_vector` and every PDG node
actually use. The 28% figure the doc records as historic is still current
(32765+10742 = 43507 of 154018 = 28.2%).

---

## 3. Gap-by-gap analysis

Fix classes: **(a)** JSON spec change · **(b)** code change · **(c)** new data ·
**(d)** not fixable as currently framed.

### G1 — The RISC-V corpus is a transliteration of the x86/ARM corpus · **(c)**

**Mechanism.** `scripts/patch_riscv_corpus_asm.py` rewrites `#APP…#NO_APP`
inline-asm blocks in already-compiled `.s` files using
`scripts/translate_riscv_inline_asm.py:143-233` (`STMT_RULES`, ~40 regex→template
rules) plus `CMP_BRANCH_PAIRS:229-233`.

**Evidence.** Measured mnemonic ratios in §2.2 (fence.i ~1700×, cbo.* 3.8×, nop
3.1×); 494 records from 27 groups; the four L1TF templates. The five-way collapse
`{lfence, mfence, sfence, dsb, isb} → {fence, fence.i}` is a rule, not an ISA
property — RV64GC does not lack distinct fence semantics, the table does.

**Why it is first.** Every other gap is a property of the model. This one is a
property of the *measurement*. A classifier that scores 73% on this corpus has
partly learned the transliterator's output grammar. `[inference]` I cannot
separate the two from the current data; separating them requires a RISC-V corpus
compiled from RISC-V-native gadget sources, not transliterated ones.

**Fix.** New data. Nothing in the spec or the code can undo it.

### G2 — Class semantics are defined by x86/ARM mnemonics · **(b)+(c)**

**Mechanism.** `v54/build_dataset.py:143-211`. See §2.2 for the per-class
predicates.

**Evidence.** `verw`, `movntdqa`, `clflush`, `clflushopt`, `rdtsc`, `rdtscp`,
`lfence` appear 0 times in `riscv_labeled.jsonl`. The `_LOAD_PAT`
(`build_dataset.py:83-92`) and the `_CMP_OPS`/`_BR_OPS` sets are AT&T/ARM
mnemonic lists.

**Why it is second.** This is not merely a feature that reads zero; it is the
*definition of the training label*. Even a perfect ISA-neutral feature extractor
would be asked to find, on RISC-V, a concept whose positive examples were all
selected for containing an x86 instruction.

**Fix.** (b) rewrite the predicates against `SpecEngine` categories/flags —
but that only helps if (c) there exist RISC-V positives that satisfy the
rewritten predicate, which G1 says are transliterator artifacts today.

### G3 — MLM vocabulary built only from x86/ARM · **(c)**

**Mechanism.** `train_mlm.py:41-42, 200-204, 125-129`, then
`embed_instructions:85`'s `vocab.get(t, vocab[UNK])`.

**Evidence.** 0 riscv64 rows in `v54_train.jsonl` (verified). 78.76% / 12.60%
UNK. Cosine 0.480 → 0.532, z-ratio 1.38× → 1.19×. Recorded RF: hand+MLM 5.24% vs
hand-58 6.25%.

**What this implies precisely.** Under `mlm_large.pt`, 456 of 494 RISC-V records
are more than half `<unk>`. The encoder is running self-attention over a sequence
of one repeated symbol; the output is a function of *sequence length and
`<unk>` position pattern*, not of the code. Under `mlm_canonical.pt` the ids are
real, but the *weights* attached to them were fitted to x86/ARM co-occurrence.

**Is there any path by which this encoder could represent a RISC-V-specific
attack pattern?** No, and the reason is architectural rather than statistical:
`FENCE_INSN` (`fence.i`, 3.35% of RISC-V) has **no embedding row at all** — it
failed `min_count=5` on the training corpus. A pattern whose defining instruction
maps to `<unk>` cannot be distinguished from any other pattern whose defining
instruction maps to `<unk>`.

**Fix.** (c). This is the one gap with a clearly achievable remedy: MLM training
needs no labels, so pretraining on bulk unlabeled RISC-V assembly (any Linux
distro's `objdump`) would give real rows to `fence.i`, `rdcycle`, `jr`,
`BRANCH_COND <reg> <reg> <sym>` and the rest. It would *not* fix G1 or G2.

### G4 — `is_secret_source`/`is_transmitter` unreachable; workaround not wired in · **(b)**, partially **(a)**

**Mechanism.** `base.json:240-258` × `riscv.json:25,33`. Workaround at
`spec/dataflow_taint.py`, invoked only from `spec_pdg_builder.py:79-80`.

**Evidence.** The 42-dim dead-column table in §2.3; the taint firing table in
§2.3; the absence of any `apply_dataflow_taint` call in `spec_features.py` or
`candidate_features.py` (grep-verified).

**Consequences, in order.**
1. The headline **73.19% spec-42 RISC-V number was obtained with these four
   columns identically zero.** Whatever transfers, it is not the secret-source /
   transmitter signal.
2. `candidate_features.PAIRABLE_FLAGS` (`:51-55`) includes both flags; 13 of 28
   flag-pair columns are dead on RISC-V, and every pair involving those two is
   among them.
3. The workaround's `PROBE_SHIFT_AMOUNTS = {6,9..15}` (`:89`) is an x86 page/line
   constant in ISA-neutral code — it happens to be right for RV64 (4 KiB pages,
   64 B lines) but was never derived from `riscv.json`.
4. It is a no-op on x86 (+0), so the flag's *meaning* differs between training
   and RISC-V inference.

**Fix.** (b) wire `apply_dataflow_taint` into the flat feature tiers — cheap, and
the first thing I would measure. (a) longer term: add a `spec_flag_rules` kind
that expresses "reachable from category X through category Y within N DATA_DEP
hops", with the shift-amount set sourced from the ISA spec's `pipeline` block.
The schema cannot express this today.

### G5 — Category taxonomy is 51.3% `OTHER` on x86 · **(a)**

**Mechanism.** `base.json:59-81` unsuffixed patterns × `isa_spec.py:114-165`
rule ordering (`has_mem` gate at `:137,150`).

**Evidence.** The per-arch table in §2.3; the top-`OTHER` mnemonic list;
`STACK = 9` out of 63880 x86 instructions.

**Why this belongs in a RISC-V gap analysis.** It runs *against* the intuitive
story. RISC-V's spec is the best-authored of the three (1.0% `OTHER`), so the
19-bucket histogram it produces is *cleaner* than the one produced on x86. Some
of the RISC-V/x86 feature-distribution gap in §2.2 — `catfrac_OTHER` 0.2630 on
train vs 0.0076 on RISC-V, a 34× difference — is therefore a **spec bug on the
training side**, not an ISA difference. `[inference]` Fixing it would move the
training feature distribution toward RISC-V's and may *improve* transfer; I have
not measured this because the fix changes every graph and needs a full
revalidation run, which is out of scope here.

**Fix.** (a). Add `[qlwbd]?`/`[sz]?` suffix alternatives to `move`, `arithmetic`,
`logic`, `shift`, `compare`, `stack_op` in `base.json` / `x86_64.json`. Then
re-run `./scripts/run_feature_gate.sh` and every cached multi-seed result, since
node categories change. Note the external oracle **cannot gate this**
(`external_oracle.py:17-22` abstains on everything but control flow), so the
regression risk has to be carried by `validate_graph.py` plus the accuracy gate.

### G6 — Fine-grained feature coverage; the bigram hypothesis, tested · **(d)** as framed

The brief asked me to test rather than restate the hypothesis that bigrams encode
instruction *sequencing*, which differs between 2-address CISC and 3-address RISC.
I fitted `CandidateFeatureSpace` on `v54_train` (x86+ARM only) and ran RF
(300 trees, `class_weight='balanced'`, 5 seeds) zero-shot on `riscv_labeled`.

**Column coverage** (columns used in training that are identically zero on RISC-V):

| group | columns | dead on RISC-V |
|---|---|---|
| canonical-op fractions | 50 | 27 (**54.0%**) |
| canonical-op **bigrams** | 286 | 182 (**63.6%**) |
| spec-flag pairs | 28 | 13 (46.4%) |
| flag-distance stats | 4 | 0 |
| *(reference)* spec-42 category histogram | 19 | **1** (STACK) |

**Accuracy** (RISC-V zero-shot, mean ± sd over 5 seeds):

| config | dim | RISC-V acc | macro-F1 |
|---|---|---|---|
| spec-42 | 42 | **73.08 ± 1.12** | 52.42 ± 2.53 |
| cand: ops only | 50 | 41.74 ± 1.61 | 39.62 ± 1.52 |
| cand: **bigrams only** | 286 | **7.17 ± 0.58** | 12.28 ± 0.70 |
| cand: ops + bigrams | 336 | **33.60 ± 2.29** | 31.16 ± 0.69 |
| cand: ops + flag-pairs + dist | 82 | 53.44 ± 7.40 | 49.28 ± 3.35 |
| cand-all | 368 | 52.47 ± 6.90 | 48.01 ± 3.17 |

**Verdict: the hypothesis is confirmed in direction but is not the dominant
term.**
- Bigrams alone score **7.17%**, essentially at hand-58's 6.77% floor. They carry
  no transferable signal.
- Adding bigrams to ops **costs −8.14pp** (41.74 → 33.60). They are not merely
  uninformative; the forest spends splits on columns that are structurally zero
  on the target ISA, which is worse than not having them.
- But ops-only is still **31.3pp below spec-42**, so sequencing explains at most
  a quarter of the gap.

**The larger term is granularity, and it is measurable directly.** A 19-bucket
taxonomy has 18/19 buckets alive on RISC-V (94.7%); a 50-op vocabulary has 23/50
(46.0%); a 286-bigram vocabulary has 104/286 (36.4%). Each refinement step
roughly halves the fraction of the feature space that the target ISA can even
populate. This is also why `cand-impurity` (29 features selected by RF impurity)
*beats* `cand-all` (368) on RISC-V by 5.4pp in the recorded run — pruning
happens to discard mostly-dead columns.

**Fix.** (d) as framed. You cannot give a feature space coverage of an ISA whose
tokens were absent when the space was fitted. What *can* be done — (b) — is
refit the candidate space on a corpus that includes the target ISA, which changes
the claim from "zero-shot portability" to "one-shot portability".

### G7 — hand-58 is 81% dead on RISC-V · **(b)**, blocked by G2

**Evidence.** **47 of 58** features identically zero on `riscv_labeled`. The 11
survivors: `frac_nop`, `frac_ret`, `frac_call`, `frac_branch`,
`max_nop_run_norm`, `call_ret_pair_norm`, `unique_opcode_fraction`,
`has_nop_run_3plus`, `has_call_ret_pair`, `ret_call_ratio`, `nop_ret_ratio`.
Everything ISA-specific — `frac_movq`, `frac_ldr`, `frac_clflush`, `frac_rdtsc`,
`frac_x86_only`, `frac_arm_only`, `has_indexed_load`, `has_page_probe_load`,
`indexed_load_norm`, `indirect_cond_ratio`, `load_store_ratio` — is zero.

Note `frac_load`/`frac_store` and `load_store_ratio` are zero on RISC-V, which
means even the *generic* notion of "how much of this window is memory traffic"
does not survive — `inline_features.py`'s load/store detection is a mnemonic list
(`_KEY_OPCODES:52-67`), not a category lookup.

**Fix.** (b) reimplement hand-58 on top of `SpecEngine` — which is what
`spec_features.py` already is. The reason this is not a solved problem is G2:
the classes are *labelled* by the same mnemonics.

### G8 — `indirect_frac` reads 0.0% on RISC-V · **(b)**, one regex

**Mechanism.** `_INDIRECT_GLOBAL` (`v56/train_gine_v38.py:91-95`) matches
`\b(blr|br)\b | \b(jmpq?|callq?)\s*\* | \[x[0-9]+\]`. RISC-V's indirect branches
are `jr` / `jalr` / `c.jr` / `c.jalr`.

**Evidence.**

| global feature | train nonzero | riscv nonzero |
|---|---|---|
| `nop_frac` | 31.1% | 87.4% |
| **`indirect_frac`** | **53.4%** | **0.0%** |
| `ret_frac` | 58.0% | 54.5% |
| `verw_frac` | 0.7% | 0.0% |
| `movntdqa_frac` | 0.2% | 0.0% |

Meanwhile `jr` is 6.67% and `jalr` 0.26% of all RISC-V instructions — RISC-V has
the *highest* indirect-branch density of the three ISAs, and the feature reads
zero. `[inference]` This plausibly contributes to the SPECTRE_V2 / BHI /
INCEPTION confusions visible in
`eval/diagnose_riscv_failure_postfix_results.txt` (BHI: 56 of 116 predicted MDS),
since `indirect_frac` is the only global signal separating those classes. I have
not run the ablation to confirm.

Note `riscv.json:13` *does* define `indirect` correctly for the spec engine; this
gap is purely in the non-spec code path, which runs in every mode.

**Fix.** (b). Source the regex from `SpecEngine._pat["indirect"]` instead of a
module constant. Trivial, and it changes 3 of 5 global features from
"structurally zero" to 1 of 5 (`verw`, `movntdqa` remain genuinely x86-only).

### G9 — Class-space mismatch · **(c)**

`riscv_labeled.jsonl` contains **no BENIGN and no SPECTRE_V1**. `v54_train` is
51.0% BENIGN. Measured: spec-42 predicts BENIGN on **57 of 494** RISC-V records
— every one wrong by construction. That is 11.5pp of headroom that no feature
improvement can recover.

`eval/build_riscv_labeled.py:83-92` documents the exclusion as a deliberate
design choice ("vulnerable-classes-only by design"). That is defensible for
*training*, and indefensible for an *evaluation set* used to support a
portability claim: it makes the RISC-V accuracy number non-comparable to the
96.14% x86/ARM figure, since the RISC-V task has no negative class.

### G10 — Labels are filename keywords · **(c)/(a)**

`spec/eval_riscv_real.py:73-96`. `label_for_stem` is `kw in stem.lower()` against
an ordered list. There is no check that the extracted assembly contains a gadget,
nor that compilation preserved one. The repo has three real oracles available
(Spectector, InvisiSpec, Revizor — see `SPECDISCOVER_PHASE4_SUMMARY.md`), none of
which is applied to the RISC-V slice. `[inference]` Given G1 (transliteration)
and `patch_riscv_corpus_asm.py:21-30` (the `rdtsc` helper compiled away to
`li a5,0`), I would expect a non-trivial label-noise rate, but I have no
measurement of it.

### G11 — Untrained `riscv64` arch embedding · **(c)**

`ARCH_VOCAB['riscv64'] = 3` (`v56/gine_classifier_v38.py:33`);
`self.arch_embedding = nn.Embedding(NUM_ARCHS=5, arch_emb_dim=8)` (`:229`);
`arch_repr = self.arch_embedding(arch_id)` concatenated into `combined`
(`:232, :311`). With zero riscv64 training rows, row 3 receives no informative
gradient. Measured row-2-norms across nine checkpoints (v50…v56): index 3 ranges
**1.84–4.11**, indistinguishable from the trained rows and consistent with
`N(0,1)` init in 8 dims. So every RISC-V prediction has 8 dimensions of
random noise appended to its fusion vector.

`spec/eval_riscv_real.py:26-39` already documents this honestly, including that
routing to a *trained* row does not improve accuracy — so this is a correctness
issue, not the binding constraint.

### G12 — RISC-V confidence intervals are over-precise · **(b) analysis**

494 records / **27** family groups. Per class:

| class | groups | records |
|---|---|---|
| L1TF | 6 | 162 |
| BHI | 4 | 116 |
| RETBLEED | 6 | 102 |
| INCEPTION | 3 | 48 |
| MDS | 3 | 36 |
| SPECTRE_V2 | 2 | 14 |
| **SPECTRE_V4** | **1** | 12 |
| SPECTRE_RSB | 2 | 4 |

Every `±X pp` in `eval/candidate_features_riscv_*.txt` is a spread over *seeds*
with n=496 records treated as independent. The effective sample size for a
portability claim is 27. SPECTRE_V4's 100% recall in §2.2's report is one
template. This repo already learned this lesson once for x86/ARM
(`eval/splits.py`, group-holdout); the same discipline is not applied to RISC-V
eval.

---

## 4. What would have to be true for learned features to transfer

Four conditions, in dependency order. Only the first is clearly achievable here.

**C1 — The encoder must have seen the target ISA's tokens during
self-supervision.** *Achievable.* MLM needs no labels. Pretrain
`spec/train_mlm.py` on bulk unlabeled RV64 assembly instead of only
`v54/data/v54_train.jsonl` (`:41-42`), and every RISC-V token gets a real
embedding row — including `FENCE_INSN`, which today has none. This is a
one-parameter change plus a corpus. It would take the encoder from "cannot
represent RISC-V" to "can represent RISC-V", which is necessary but, per the
canonical-tokenizer experiment, demonstrably not sufficient: cutting OOV from
78.76% to 12.60% moved the manifold cosine 0.480 → 0.532 and the downstream RF
not at all.

**C2 — Labels for the target ISA must be derived by something other than an
x86 mnemonic predicate.** *Achievable in principle, unbuilt.* As long as
`has_train_attack_signal` (`v54/build_dataset.py:143`) defines MDS as "contains
`verw`", there is no RISC-V MDS to transfer *to*. The repo has the raw material:
Spectector / InvisiSpec / Revizor already emit real leak verdicts
(`oracle/results/spectector_leak_labels.jsonl`). Replacing keyword labels with
oracle verdicts is the single change that would make the RISC-V evaluation mean
what it claims to mean. Cost: the oracles are x86-focused, so this may need a
RISC-V simulator arm.

**C3 — The target-ISA corpus must not be a deterministic function of the source
corpus.** *Not achievable with the present data.* `riscv_corpus` is the output of
`translate_riscv_inline_asm.py`'s 40-rule table applied to the same C sources the
x86/ARM corpus came from. A model evaluated on it is partly being tested on its
ability to invert a rewrite rule. 27 templates is not a corpus. Fixing this means
compiling (or writing) genuinely RISC-V-native gadgets — a data-collection
project, not a modelling one.

**C4 — The feature space must be able to *represent* the attack idiom on the
target ISA.** *Partly achievable.* Today, on RISC-V:
`is_secret_source`/`is_transmitter` are unreachable in JSON (G4), the flat
feature tiers never call the Python workaround that would supply them (G4), and
`indirect_frac` reads zero despite 6.9% indirect-branch density (G8). All three
are bugs with cheap fixes. What is *not* cheap is the general form: the schema
has no way to express "an idiom spread across two instructions", which is how
every load/store-index ISA writes a probe. Until `spec_flag_rules` gains a
multi-instruction rule kind, "onboard a new ISA by shipping a spec file" is false
for exactly the class of ISA that motivated the claim.

### On the central claim: "a new ISA needs only a spec file"

Places where that is false today, all grep-verified:

| location | ISA-literal content |
|---|---|
| `v54/build_dataset.py:143-211` | per-class admission predicate, x86/ARM mnemonics |
| `v54/build_dataset.py:52-92` | `_ADRP_SYM_RE`, `_LO12_SYM_RE`, `_LEAQ_RIP_RE`, `_LOAD_PAT` |
| `v54/build_dataset.py:297` | compile targets are x86_64 + arm64 only |
| `v5*/inline_features.py:29-67` | `_INDEXED_LOAD_X86`, `_PAGE_SHIFT_RE`, `_X86_ONLY`, `_ARM_ONLY`, `_KEY_OPCODES` |
| `v5*/strip_boilerplate.py:37-60` | `dsb ish`, `dsb sy`, `mrs`, `rdtsc`, `retq`, `add sp, sp,` |
| `v5*/train_gine_v38.py:91-95` | `_INDIRECT_GLOBAL` (G8) |
| `v5*/train_gine_v38.py:126-137` | `verw` / `movntdqa` global features |
| `v5*/gine_classifier_v38.py:33` | fixed 5-row `ARCH_VOCAB` |
| `v5*/pdg_builder.py:97-134` | the entire fallback (non-spec) builder |
| `spec/base.json:259-268` | `is_lfence` / `is_mfence_or_sfence` name x86/ARM mnemonics **in the shared base spec** |
| `spec/dataflow_taint.py:89` | `PROBE_SHIFT_AMOUNTS = {6, 9..15}` |
| `spec/eval_riscv_real.py:73-85` | `KEYWORD_TO_LABEL` |
| `spec/train_mlm.py:41-42` | training corpus hardcoded to the x86/ARM pool |
| ×4 duplication | `SPEC_FOR_ARCH` in `asm_tokenizer.py:109`, `candidate_features.py:39`, `train_gine_v38.py:180`, `:893` |

`spec/asm_tokenizer.py`, `spec/isa_spec.py`, `spec/spec_features.py` and
`spec/candidate_features.py` do hold the line — I found no ISA literal in any of
them. The claim is true of the four files that were written to make it true, and
false of the pipeline they sit in.

### The one-sentence answer

Coarse spec features transfer because **33 of 42 columns are populated on RISC-V
and 18 of 19 category buckets are shared**; learned and fine-grained features do
not, because **54–64% of their columns and (before the canonical fix) 79% of
their vocabulary have no RISC-V referent at all** — and the residual, which the
canonical tokenizer fixed, turned out not to be the binding constraint anyway.
The binding constraint is upstream of features entirely: the classes are defined
by x86 mnemonics (G2), and the RISC-V corpus that would refute or confirm any of
this is 27 hand-transliterated templates (G1).

---

## Reproduction

The measurements above came from short throwaway scripts, not checked-in ones.
The non-obvious ones:

```bash
# arch distribution in the training pool (G3, G11)
python3 -c "import json,collections;print(collections.Counter(json.loads(l)['arch'] for l in open('v54/data/v54_train.jsonl') if l.strip()))"

# OOV under each checkpoint (G3) — tokenize with MultiArchTokenizer(mode=ckpt['tokenizer_mode'])
#   and count `t not in ckpt['vocab']` over eval/data/riscv_labeled.jsonl

# per-arch classify_opcode OTHER share (G5) — SpecEngine._cat_name(classify_opcode(instr))
#   over v54_train (per arch) and riscv_labeled

# dead-column counts (G4, G6, G7) — (X_train != 0).any(0) & ~(X_riscv != 0).any(0)

# taint firing (G4) — SpecBackedPDGBuilder(engine, dataflow_taint=False/True), diff spec_flags
```

Checked-in results referenced: `eval/candidate_features_riscv_stub_split.txt`
(stub split, spec-42 100%/69.70%), `eval/diagnose_riscv_failure_postfix_results.txt`
(GINE 33.87% zero-shot confusion), `eval/tokenizer_mode_comparison.json`
(10-seed mnemonic-vs-canonical on the locked x86/ARM test),
`SPECDISCOVER_CANONICAL_OPS_PLAN.md:283-296` (5.24% vs 6.25%).
`eval/validate_dataflow_taint_riscv_results.txt` is **stale — do not cite**.
