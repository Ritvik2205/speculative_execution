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

## Bottom line / recommended next steps

1. **Fix `<fn>` in `gen/realize.py:47-48` immediately.** It's a documented stub, it's 45.9% of all
   failures overall and the majority (57.8%) of arm64 failures, and the design doc is explicit
   this is worth doing "independent of any bigger decision." No further investigation needed to
   justify this one.
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
