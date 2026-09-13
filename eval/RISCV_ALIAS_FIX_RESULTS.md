# RISC-V register-width-aliasing translator fix — results

## The bug (recap)

`scripts/translate_riscv_inline_asm.py` remaps literal (non-`%N`-placeholder)
scratch registers found in ARM64/x86 inline-asm text to RISC-V temporaries
(`t0`..`t6`), one temp per **distinct token**. ARM64's `w0` and `x0` are two
different textual tokens for the *same physical register* (`w0` = low 32
bits of `x0`), but the old code had no notion of that and assigned them to
**two different temps**. Real example (`L1TF`'s page-probe idiom):

```
ldrb w0, [a5]        ; secret byte -> w0 (32-bit view of x0)
lsl  x0, x0, #6       ; shift the SAME physical register (64-bit view)
ldr  x1, [a4, x0]     ; indexed load using the shifted secret
```

translated (old, buggy) to:

```
lbu t0, 0(a5)     <- secret loaded into t0
slli t1, t1, 6     <- shift applied to t1, an UNRELATED/uninitialized temp
add t2, a4, t1
ld t2, 0(t2)
```

This silently severed the LOAD→SHIFT `DATA_DEP` edge that
`spec/dataflow_taint.py`'s Meltdown/L1TF page-probe detector
(`_find_probe_gated_ancestor_load`) needs.

Full root-cause writeup: `eval/RISCV_DEEPER_ROOT_CAUSE.md` (section H1).

## The fix

`scripts/translate_riscv_inline_asm.py`:

- Added `canonical_reg(norm)`: maps `wN`/`xN` to a shared canonical identity
  (`f"arm{N}"`), and x86 width aliases (`eax`/`al` → `rax`, `ebx`/`bl` →
  `rbx`, `ecx`→`rcx`, `edx`→`rdx`, `esi`→`rsi`, `edi`→`rdi`, `ebp`→`rbp`,
  `esp`→`rsp`) to their 64-bit form.
- `find_literal_registers()` now dedupes and returns **canonical** identities
  (first-appearance order) instead of raw tokens.
- `build_remap()` unchanged — it just enumerates whatever list it's given.
- `apply_remap()` now looks up the substitution by `canonical_reg(norm)`
  instead of the raw token, so every literal spelling of the same physical
  register resolves to the same RISC-V temp.

## Verification

### 1. Unit-level check

Ran `find_literal_registers` / `build_remap` / `apply_remap` on the exact
failing example above. Result: `w0` and `x0` both map to `t0`; `x1` (a
genuinely different register) maps to `t1`. Passed.

### 2. Corpus regeneration

`scripts/patch_riscv_corpus_asm.py` reuses this translation logic. The
corpus's `riscv_corpus/*.s` files already reflected one prior (buggy)
translation pass, with `*.pre_corpus_fix` holding the true pre-translation
ARM64/x86 originals (488 of them, out of 498 total `.s` files — the other 10
had no inline-asm to translate). Restored `.s` from `.pre_corpus_fix`, then
reran:

```
python3 scripts/patch_riscv_corpus_asm.py --report   # 1564/1564 blocks translate, 0 unmatched
python3 scripts/patch_riscv_corpus_asm.py --apply    # applied to 1564 blocks
```

All 498 regenerated files assembled cleanly (`assembles clean: 498/498`).

### 3. Bug-gone confirmation

**Important finding about `eval/riscv_h1_alias_bug_scan.py`**: it only reads
the immutable `*.s.pre_corpus_fix` backups (the pre-translation ARM64/x86
source) to detect the `w<N>`/`x<N>`-same-number pattern. That count is a
property of the **source corpus**, not the translator, so it is structurally
**invariant** across this fix — rerunning it post-regeneration reproduces
the exact same numbers as before:

```
MDS:   36 files / 36 blocks with the alias pattern (unchanged)
L1TF:  32 files / 32 blocks with the alias pattern (unchanged, out of 162)
```

(saved: `eval/riscv_h1_alias_bug_scan_postfix.txt`). This script cannot, by
construction, tell you whether the *translated* output still has the bug —
it only identifies which files are *candidates* for the bug (their original
asm uses the width-aliasing idiom).

To actually prove the fix, two additional checks were built and run against
the regenerated corpus, comparing against the untouched pre-fix corpus
(same 68 candidate files: 36 MDS + 32 L1TF):

**a) `eval/riscv_h1_alias_dataflow_verify.py`** — the authoritative check.
Builds the real PDG (`spec_pdg_builder.SpecBackedPDGBuilder`) for each of
the 68 alias-flagged files and calls the actual
`dataflow_taint.apply_dataflow_taint()` (the exact downstream consumer the
bug report says silently breaks), checking whether `is_secret_source` /
`is_transmitter` spec_flags fire anywhere in the graph:

| | files checked | tainted (fix works) | NOT tainted (still broken) |
|---|---|---|---|
| **BEFORE** (old buggy `.s`) | 68 (36 MDS + 32 L1TF) | 0 | **68/68** |
| **AFTER** (regenerated) | 68 (36 MDS + 32 L1TF) | **68** | 0/68 |

Full output: `eval/riscv_h1_alias_dataflow_verify_results.txt`.

**b) Manual spot-check** of the exact L1TF example from the bug report,
before/after, in the regenerated `.s`:

```
# before (old translator):
cbo.inval (a5)
fence
lbu t0, 0(a5)
slli t1, t1, 6        <- t1 has no incoming DATA_DEP edge (broken)
add t2, a4, t1
ld t2, 0(t2)

# after (fixed translator):
cbo.inval (a5)
fence
lbu t0, 0(a5)
slli t0, t0, 6        <- reads t0, the load's own destination (fixed)
add t2, a4, t0
ld t1, 0(t2)
```

### 4. Test suite

`.venv_fix/bin/pytest tests/ -q` → **221 passed, 1 skipped** (unchanged from
baseline; this change doesn't touch any tested code path).

## What this does NOT prove

This fix corrects a specific, root-caused data-flow-breaking bug in the
translator and is proven, via the actual `dataflow_taint.py` consumer, to
restore the LOAD→SHIFT→LOAD/STORE taint chain for all 68 previously-broken
files (36/36 MDS, 32/32 of the 32 L1TF files that had the bug). It does
**not** by itself prove classifier accuracy improves on the RISC-V eval —
that requires retraining/re-evaluating the multi-seed pipeline, which this
task deliberately does not do (established this session: full retrains take
60-90 minutes, out of scope here). A follow-up task should decide whether
to retrain/re-evaluate using the regenerated corpus.

Also note: `eval/RISCV_DEEPER_ROOT_CAUSE.md`'s synthesis (H3, graph-size
domain shift) documents that this H1 aliasing bug was never the dominant
driver of RISC-V's overall accuracy gap — it's a real, now-fixed
correctness bug scoped specifically to L1TF/MDS's page-probe idiom, not a
fix for the broader domain-shift issue.

## Files changed

- `scripts/translate_riscv_inline_asm.py` — the fix (canonical_reg +
  find_literal_registers + apply_remap changes).
- `eval/riscv_h1_alias_bug_scan_postfix.txt` — literal rerun of the
  existing scan script post-fix (unchanged numbers, as explained above).
- `eval/riscv_h1_alias_dataflow_verify.py` — new authoritative verification
  script (builds real PDG + calls real `dataflow_taint.py`).
- `eval/riscv_h1_alias_dataflow_verify_results.txt` — its before/after
  output (0/68 tainted → 68/68 tainted).
- `riscv_corpus/*.s` / `*.pre_corpus_fix` — regenerated locally, **not
  committed** (gitignored).

## Known minor side effect (not a regression)

`process_file()`'s clobber-list rewrite (`scripts/translate_riscv_inline_asm.py`,
the loop rebuilding `new_operands` from `remap.items()`) now keys off
canonical identities (e.g. `"arm0"`) instead of raw tokens (e.g. `"x0"`), so
it would no longer match a literal register name if one ever appeared in an
extended-asm clobber list (e.g. `: "x0", "memory"`). Checked: **zero** blocks
in the current `c_vulns/c_code/**` corpus have a literal register name in
their clobber/operand section, so this is currently inert. Flagging it here
in case future inline-asm additions use explicit register clobbers.
