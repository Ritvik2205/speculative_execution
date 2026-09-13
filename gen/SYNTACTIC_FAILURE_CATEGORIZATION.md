# Generator Syntactic-Failure Categorization — Real 2000-Sample Run

**Status:** Empirical result. Diagnostic only — this task does not implement any fix.

## What this is

`gen/check_syntactic_validity.py --n 100` samples the generator (`gen/generator.pt`) for all
10 trained classes × 2 architectures (x86_64, arm64), realizes each sampled sequence
(`gen/realize.py`), and checks every resulting instruction against `llvm-mc` via
`spec/external_oracle.py::ExternalOracle.assemble` — a real, independent assembler, sharing no
code with the generator/realizer/classifier. Every instruction llvm-mc rejects is further run
through `categorize_failure()` (added in Task 1), which pattern-matches the instruction TEXT into
one of three buckets: `unresolved_placeholder`, `operand_type_violation`, `other`.

This doc reports the real `--n 100` run (2000 samples: 10 classes × 2 archs × 100), not the n=5
smoke check from Task 1's own verification. The two do **not** land on the same story — see below.

## Run details

- Command: `python3 gen/check_syntactic_validity.py --n 100`
- Wall-clock: **14m 43s** (468.8s user + 358.5s system, 93% CPU — dominated by per-instruction
  `llvm-mc` subprocess invocations across 50,050 instructions, not model sampling). Well under
  Task 6's Docker-bound oracle runtime, as expected — no Docker, no GCC, no Spectector.
- `gen/generator.pt` was already present in the worktree (2.9MB, dated same day) — no copy from
  the main checkout was needed.

## Baseline validity numbers (unchanged summary block, quoted verbatim)

```
per-instruction syntactic validity (llvm-mc assembles cleanly):
  35603/50050 (71.1%) valid
  x86_64  : 21795/28960 (75.3%) valid
  arm64   : 13808/21090 (65.5%) valid

per-sequence (ALL instructions in the gadget must assemble):
  21/2000 (1.1%) fully valid
```

This is close to (and slightly worse per-sequence than) the earlier-measured 71.5%/2.3% baseline
in `eval/check_syntactic_validity_results.txt` — consistent with sampling noise at this scale, not
a regression signal. arm64 is meaningfully worse than x86_64 at the per-instruction level
(65.5% vs 75.3%), and this is new information: Task 6's oracle run only covered x86_64, so this is
the first real per-arch syntactic signal for arm64.

## Failure categorization — real counts (quoted verbatim from the run)

```
failure categorization (of 14447 malformed instructions):
  unresolved_placeholder     6624 (45.9%)
  operand_type_violation      255 (1.8%)
  other                      7568 (52.4%)

  x86_64: (7165 malformed)
    unresolved_placeholder   2413 (33.7%)
    operand_type_violation    255 (3.6%)
    other                    4497 (62.8%)

  arm64: (7282 malformed)
    unresolved_placeholder   4211 (57.8%)
    operand_type_violation      0 (0.0%)
    other                    3071 (42.2%)
```

### Overall (14,447 malformed instructions)

| category | count | % |
|---|---|---|
| `unresolved_placeholder` | 6,624 | 45.9% |
| `operand_type_violation` | 255 | 1.8% |
| `other` | 7,568 | 52.4% |

### Per-arch

| category | x86_64 (7,165 malformed) | arm64 (7,282 malformed) |
|---|---|---|
| `unresolved_placeholder` | 2,413 (33.7%) | 4,211 (57.8%) |
| `operand_type_violation` | 255 (3.6%) | 0 (0.0%) |
| `other` | 4,497 (62.8%) | 3,071 (42.2%) |

### `unresolved_placeholder` is a union of two distinct root causes — correction

The `unresolved_placeholder` category name and the `categorize_failure()` pattern match are a
single bucket, but a post-hoc read of what's actually inside it shows **two unrelated bugs**
being counted together:

1. **Literal, unresolved `<fn>` placeholder tokens** — the `gen/realize.py:47-48` stub
   (`if kind == "<fn>": return "<fn>"`) never substitutes a real symbol, so the literal string
   `<fn>` ends up in the emitted instruction and `llvm-mc` rejects it. This is the bug the
   original draft of this doc attributed the *entire* bucket to.
2. **`.L`-prefixed local-label tokens used in a non-branch-target operand position** — a
   genuinely different bug: the generator picks a branch-target-shaped token (`.L0`, `.L1`, ...)
   and the Realizer places it into a data-operand slot (e.g. a load/store source/destination)
   where a label can never be valid. This is not a Realizer stub gap at all — it's the
   generator's operand-slot selection picking the wrong *kind* of token for the position, then
   the Realizer faithfully (and correctly) passing it through into something `llvm-mc` rejects.

A spot-check sample manually classified into these two sub-causes (counts below are from a
subsample, not an exhaustive re-classification of all 6,624 `unresolved_placeholder`
instructions — the sample sizes are far smaller than the full bucket, so the percentages are
reported as a ratio, not scaled to an exact count):

| arch | `<fn>` | `.L`-misuse | sample total |
|---|---|---|---|
| x86_64 | 77 | 20 | 97 |
| arm64 | 174 | 49 | 223 |
| combined | 251 | 69 | 320 |

Sample-derived split: x86_64 ≈ 79.4% `<fn>` / 20.6% `.L`-misuse; arm64 ≈ 78.0% `<fn>` / 22.0%
`.L`-misuse; combined ≈ 78.4% `<fn>` / 21.6% `.L`-misuse. These three ratios agree closely with
each other (within ~1.4pp), suggesting the split is reasonably stable across arch even though the
sample is small — but it is still a spot-check, not a full census.

Applying the spot-check ratio to the real category totals already reported above (arithmetic
shown, not just asserted):

- **Overall**: `unresolved_placeholder` is 45.9% of all 14,447 malformed instructions
  (6,624 / 14,447 = 45.85%). Scaling by the combined-sample `<fn>` ratio (78.4%):
  `<fn>`'s true share of **all** malformed instructions ≈ 45.85% × 78.44% ≈ **36.0%** (not
  45.9% — that figure was the whole bucket, not just the `<fn>` sub-cause). The `.L`-misuse
  sub-cause accounts for the remaining ≈ 45.85% × 21.56% ≈ **9.9%** of all malformed
  instructions.
- **arm64**: `unresolved_placeholder` is 57.8% of arm64's 7,282 malformed instructions
  (4,211 / 7,282 = 57.83%). Scaling by the arm64-sample `<fn>` ratio (78.03%): `<fn>`'s true
  share of arm64's malformed instructions ≈ 57.83% × 78.03% ≈ **45.1%** (not 57.8%). The
  `.L`-misuse sub-cause accounts for ≈ 57.83% × 21.97% ≈ **12.7%** of arm64's malformed
  instructions.
- **x86_64** (not previously highlighted, included for completeness): `unresolved_placeholder`
  is 33.7% of x86_64's 7,165 malformed instructions. Scaling by the x86-sample `<fn>` ratio
  (79.38%): `<fn>`'s true share of x86_64's malformed instructions ≈ 33.68% × 79.38% ≈
  **26.7%**, with `.L`-misuse accounting for ≈ 33.68% × 20.62% ≈ **6.9%**.

These are estimates derived from a small spot-check sample applied proportionally to the real
counts, not an exact recount — reported as "roughly 36%" / "roughly 45%" rather than false
precision to more decimal places.

## Comparison to the n=5 smoke signal

The Task 1 smoke check (n=5, non-representative) suggested roughly 49% `unresolved_placeholder` /
49% `other` / 2% `operand_type_violation`. The real n=100 run is in the same rough neighborhood
(45.9% / 52.4% / 1.8% overall) but **`other` is the strict majority bucket overall and in both
arches individually**, not a near-tie with `unresolved_placeholder`. The per-arch split also
diverges substantially: arm64 skews toward `unresolved_placeholder` (57.8%, vs x86_64's 33.7%),
while x86_64 skews harder toward `other` (62.8%, vs arm64's 42.2%). `operand_type_violation` is
effectively an x86_64-only phenomenon in this run (255 x86_64 vs 0 arm64) — plausible, since the
category's pattern match (`$imm` in a destination-operand slot) is AT&T-immediate-syntax-specific
and doesn't have a direct arm64 analog in how `categorize_failure()` is written.

## Which "what happens after" scenario matches

Per the design doc (`docs/superpowers/specs/2026-08-11-generator-validity-triage-design.md`,
"What happens after this task"), the real data does **not** cleanly match a single scenario —
reporting that honestly rather than picking the most convenient one:

- **`other` is the largest bucket (52.4% overall, majority in both arches).** Per the design doc,
  this means neither hypothesized category explains most failures, and the next step is reading
  real `other`-bucket examples before designing a fix. That's the dominant finding here, and 10
  real examples are pulled below.
- **`unresolved_placeholder` is also large (45.9% overall, 57.8% of arm64 failures) — not
  small enough to ignore.** Per the design doc, this independently justifies implementing `<fn>`
  properly in `gen/realize.py` (`gen/realize.py:47-48`, currently a stub: `if kind == "<fn>":
  return "<fn>"`) as a cheap, high-leverage fix, regardless of any bigger decision about `other` or
  `operand_type_violation`. This is worth doing immediately and independently.
- **`operand_type_violation` is small (1.8% overall)** — no case is made here for the bigger
  constrained-decoding investment on this category's evidence alone. It's real but minor, and
  entirely x86_64.

So: fix `<fn>` first (cheap, unambiguous, independent win), but that alone would leave the single
largest bucket (`other`) untouched — `other` needs the investigation below before any further
design decision.

## `other`-bucket: 10 real examples

The committed script only reports `other` counts, not example instruction text (by design — Task
1's scope was categorization + counts, not example collection). To satisfy this task's "don't just
report the count" requirement, a small uncommitted helper script re-ran the same
generate→realize→`llvm-mc` pipeline at a smaller scale (`--n 20`, not the full `--n 100`, since
only a handful of illustrative examples were needed) and collected the actual instruction text for
every `other`-categorized failure, then sampled 10 at random (seed 0). This helper reuses
`categorize_failure()` unmodified — it is not part of the deliverable and is not committed.

At `--n 20` scale it collected 1,720 `other` instructions out of 3,168 malformed
(`other`: 1720, `unresolved_placeholder`: 1388, `operand_type_violation`: 60) — proportionally
consistent with the real `--n 100` run's category split, confirming the smaller sample is
representative enough for example-pulling purposes.

Random sample of 10, with the real `llvm-mc` error each one produces (reproduced directly against
the same `llvm-mc` binary and flags `spec/external_oracle.py` uses):

1. `[x86_64 SPECTRE_RSB] movzbl (%r11,%rsi), %r9`
   → `error: invalid operand for instruction` (destination `%r9` is a 64-bit register; `movzbl`
   zero-extends a byte into a **32-bit** destination — needs `%r9d`).
2. `[arm64 BRANCH_HISTORY_INJECTION] ldur x1, [x4, x2]`
   → `error: index must be an integer in range [-256, 255].` (`ldur` only accepts an **immediate**
   offset; `x2` here is a register, which is not a legal `ldur` operand — a register-offset load
   needs plain `ldr`, not `ldur`).
3. `[x86_64 BENIGN] ldr %r10, (%r12,%r11)`
   → `error: invalid instruction mnemonic 'ldr'` (`ldr` is an **ARM64 mnemonic** appearing in an
   instruction assembled against `--arch=x86-64` — an ARM64 opcode token leaked into x86_64
   output, then got x86 AT&T-style register/addressing operands stitched onto it).
4. `[x86_64 SPECTRE_V1] movl %rdx, (%rbx)`
   → `error: invalid operand for instruction` (source `%rdx` is 64-bit; `movl` is the **32-bit**
   move — needs `%edx`).
5. `[x86_64 RETBLEED] movl (%rcx), %r13`
   → same class of bug as #4: `movl` (32-bit) paired with 64-bit destination `%r13` instead of
   `%r13d`.
6. `[arm64 SPECTRE_V1] ldur x9, [x6, x8]`
   → same class of bug as #2: `ldur` given a register offset (`x8`) instead of an immediate.
7. `[x86_64 BENIGN] movl (%r13), %rbx`
   → same class of bug as #4/#5: `movl` (32-bit) with 64-bit destination `%rbx` instead of `%ebx`.
8. `[x86_64 BENIGN] ldrsb %rsi, (%rbx)`
   → same class of bug as #3: `ldrsb` is an **ARM64 mnemonic** (load register signed byte) leaking
   into x86_64-targeted output with x86 AT&T register/addressing operands.
9. `[arm64 SPECTRE_RSB] ldp x7, x4, [x3, x2]`
   → `error: invalid operand for instruction` — same class of bug as #2/#6: `ldp` (load pair) given
   a register offset (`x2`) where it requires a scaled immediate.
10. `[arm64 BENIGN] ldur x0, [x2, x9]`
    → same class of bug as #2/#6/#9: `ldur` with a register offset instead of an immediate.

### Real sub-patterns inside `other` (from this sample, all independently confirmed against
`llvm-mc` directly — not just this script's pattern-matched guess)

- **x86 register-width / mnemonic-suffix mismatch** (examples 1, 4, 5, 7 — 4/10): the size suffix
  on the mnemonic (`movl`, `movzbl`) doesn't match the width of the register operand actually
  emitted (`%rdx`/`%r13`/`%rbx`/`%r9` are 64-bit; the mnemonics call for 32-bit). This looks like a
  Realizer register-selection bug: it's choosing a register from the wrong width class for a given
  size-suffixed mnemonic.
- **arm64 `ldur`/`ldp` given a register offset** (examples 2, 6, 9, 10 — 4/10): `ldur` and `ldp`
  only accept a signed 9-bit **immediate** offset in AArch64; a register-offset load needs the
  plain `ldr` mnemonic. This also looks like a Realizer addressing-mode bug — it's filling an
  `ldur`/`ldp` template with a register token where the ISA requires an immediate.
- **ARM64 mnemonic leaking into x86_64-targeted output** (examples 3, 8 — 2/10): `ldr`/`ldrsb`
  (ARM64-only mnemonics) appear in instructions being assembled with `--arch=x86-64`, dressed in
  x86 AT&T-style operands (`%r10`, `(%r12,%r11)`). This is the most concerning pattern of the
  three — it suggests the generator's class/arch conditioning is not fully arch-separated for at
  least some opcode tokens, and the x86_64 Realizer is willing to realize an ARM opcode token
  without rejecting it. This wasn't in the four failures documented in
  `gen/ORACLE_VALIDATION_FINDINGS.md` and is new information from this run.

10 examples is not a rigorous frequency breakdown of `other` (1,720 examples exist in the smaller
collection run alone) — these are illustrative real cases, not a claim about relative sub-pattern
weight within `other`. But all three sub-patterns recurred multiple times in a random sample of 10,
suggesting they're not one-off noise.

### The ARM64-mnemonic-leak finding is not new territory — it evades an existing purity guard

Examples 3 and 8 above (`ldr`/`ldrsb` leaking into x86_64-targeted output) are not a brand-new
category of bug for this project — they land squarely inside a metric that already exists to
catch exactly this class of failure, and it turns out that metric structurally cannot see them.

This project already has an ISA-purity guard: `isa_purity()` in `gen/train_generator.py:61`
computes, for a sampled sequence, the fraction of "ISA-decisive" opcodes (opcodes exclusive to one
architecture) that are actually native to the target architecture. It does this by checking each
opcode's membership in `_X86_ONLY` / `_ARM_ONLY` (both imported from `v54/inline_features.py:45-50`
via `gen/train_generator.py:43`). Project memory records a prior claim from an earlier session's
run of this check: **"ISA-purity: x86_64=97.6%, arm64=96.1% (fixed the pre-conditioning
ARM-emits-x86 bug)."**

This session verified `v54/inline_features.py:48-50` directly rather than trusting that recorded
claim at face value:

```python
_ARM_ONLY  = frozenset(['adrp','stp','ldp','cbz','cbnz','tbz','tbnz','bl','blr','br',
                         'lsl','lsr','asr','ror','madd','msub','udiv','sdiv','csel','cset',
                         'mrs','msr','dsb','dmb','isb'])
```

Confirmed: `_ARM_ONLY` contains `stp` and `ldp` (the pair load/store forms) but is **missing
`ldr`, `ldrsb`, `ldur`, `str`, and `stur`** — the single-register ARM64 load/store family, which
is exactly the mnemonic family that examples 3 and 8 above show leaking into x86_64-targeted
output (`ldr %r10, (%r12,%r11)`, `ldrsb %rsi, (%rbx)`).

`isa_purity()` (`gen/train_generator.py:64-73`) sums opcode occurrences over `_ARM_ONLY` /
`_X86_ONLY` membership only — an opcode that isn't in either set contributes to neither the
numerator nor the denominator, i.e. it is invisible to the metric rather than counted against it.
Concretely: an `ldr` or `ldrsb` leaking into x86_64 output is not an "ISA-decisive opcode from the
wrong architecture" as far as `isa_purity()` is concerned — it's simply not tracked, so it cannot
lower the reported purity score no matter how often it appears.

**Practical consequence: the recorded 97.6% (x86_64) / 96.1% (arm64) purity figures are likely
over-optimistic specifically with respect to this leak class.** The earlier "fixed the
pre-conditioning ARM-emits-x86 bug" claim in project memory was true only for the mnemonics
`_ARM_ONLY` happens to cover (`stp`/`ldp`, branch/system instructions, etc.) — it was not, and
could not have been, verified against the `ldr`/`ldrsb`/`ldur`/`str`/`stur` family, because the
metric has no way to see leaks in that family. The "ARM-emits-x86 bug" is therefore best described
as **partially fixed, not fixed** — real leakage of the most common ARM64 load/store mnemonics
into x86_64 output may still be happening at a rate the existing metric cannot detect.

This is a documentation finding only. Whether to extend `_ARM_ONLY` to close this blind spot (and
what else besides `ldr`/`ldrsb`/`ldur`/`str`/`stur` it might still be missing) is a decision left
to whoever scopes the next brainstorm — `v54/inline_features.py` and `gen/train_generator.py` are
intentionally left unmodified by this task.

## Bottom line / recommended next steps

1. **Fix `<fn>` in `gen/realize.py:47-48` immediately.** It's a documented stub. The whole
   `unresolved_placeholder` bucket is 45.9% of all failures overall and the majority (57.8%) of
   arm64 failures, but per the sub-cause split above, `<fn>` itself is only *part* of that bucket
   — roughly **~36% of all malformed instructions overall** and **~45% of arm64's malformed
   instructions** (not 45.9% / 57.8%, which also include the separate `.L`-misuse sub-cause). Even
   at the corrected, smaller share, `<fn>` is still likely the single largest identifiable cheap
   win in this data — it remains worth fixing immediately and independently. The design doc's
   "independent of any bigger decision" framing still holds; only the size of the win changes.
   The `.L`-misuse sub-cause (~10% overall, ~13% of arm64) is a separate, smaller generator
   operand-slot-selection bug (see the correction above) and is not fixed by the `<fn>` stub —
   it should be scoped separately by a future brainstorm.
2. **Investigate `other` before deciding between constrained decoding vs. rejection filtering** —
   it's the single largest bucket (52.4% overall) and dominates x86_64 specifically (62.8%). The
   real examples above point at three concrete, distinct root causes (register-width/mnemonic
   mismatch, `ldur`/`ldp` immediate-vs-register addressing mode, and ARM64-mnemonic leakage into
   x86_64 output) that a future brainstorm should scope separately — they are not the same bug and
   likely don't share one fix.
3. **`operand_type_violation` (1.8% overall, x86_64-only) does not, on its own, justify the bigger
   constrained-decoding investment.** It's real but minor at this scale.

Not forcing a tidier story: this run does not cleanly match any single one of the design doc's
three named scenarios — it matches a mix of the `unresolved_placeholder`-is-large scenario and the
`other`-is-large scenario simultaneously, with `operand_type_violation` staying negligible
throughout.

## Test suite

`.venv_fix/bin/pytest tests/gen/ -v` — **42 passed**, 0 failed (33 pre-existing + 9 added in Task 1
for `categorize_failure()`; the plan's "33 + 10 = 43" estimate was off by one test — Task 1 added
9 categorization tests, not 10 — this is a pre-existing count discrepancy in the plan text, not a
regression). No regressions from this task, which only adds a new markdown file and runs the
already-merged script.
