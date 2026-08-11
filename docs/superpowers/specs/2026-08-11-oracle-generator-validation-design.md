# Wiring Phase 4 Oracles into Generator Validation — Design

**Status:** Approved by user 2026-08-11, ready for implementation planning.

## Problem

`gen/decode.py` (Phase 2's class-conditioned generator, `gen/generator.py` +
`gen/realize.py`) currently judges its own output two ways, both weak:

1. **PDG-parseability** — our own permissive PDG builder accepting the
   realized instructions. This is a very low bar; it says nothing about
   whether the sequence is real assembly, let alone a real attack.
2. **"Looks like class X"** — scored by the same RF/MLM classifier family
   that's being independently audited elsewhere in this project. Circular:
   the generator and its judge share an embedding lineage.

Independently, `eval/check_syntactic_validity_results.txt` (an earlier,
independent llvm-mc check) found only **2.3% of full generated sequences
assemble cleanly** (71.5% of individual instructions) — the current
validity signal is not just weak, it's actively misleading (99.9%
PDG-parseable vs. 2.3% actually valid).

Phase 4 built two working, now-hardware-verified leak oracles — Spectector
(symbolic prover) and InvisiSpec (real gem5 execution) — but they were
never connected to the generator. This design wires them in, replacing the
circular classifier-judged validity check with real proof/execution
verdicts for every generator sample.

## Non-goals

- Fixing the 2.3% syntactic validity problem itself (grounding removes one
  failure mode — dereferencing garbage addresses — but a syntactically
  malformed instruction is still malformed; `unrunnable` is the correct,
  honest verdict for those, not a bug to suppress). That's the *next*
  brainstorm, deliberately sequenced after this one.
- Revizor (real-hardware fuzzing) — separate oracle, separate infrastructure
  decision (`oracle/revizor/DUAL_BOOT_VS_CLOUD_PLAN.md`), out of scope here.
- Retraining the generator on oracle feedback (RL / rejection sampling from
  oracle verdicts) — a natural future step once this wiring exists and
  produces enough labeled samples to be worth training on, but not part of
  this task.

## Key finding that shapes the design

`gen/synth/templates.py` (InvisiSpec harnesses) and
`gen/synth/spectector_gadgets.py` (Spectector minimal victims) already
exist for 8 of 9 classes (all except BENIGN don't apply here — see below;
SPECTRE_RSB has no template in `gen/synth` at all and is out of scope).
Each class's actual leak-transmission code is an already-isolated,
`__attribute__((noinline))` function (or, for L1TF/MDS, an inline-asm
block) with a **uniform shape**: receive a secret-tainted value → transform
→ `probe_array[value * CACHE_LINE_SIZE] = 1`. What's genuinely
class-specific is the *misdirection mechanism* that gets speculative
execution there (bounds-check bypass, BTB poisoning, RSB underflow, SRSO,
store-bypass, page fault) — that mechanism is the vulnerability under test
and stays fixed/hand-templated. The generator's job is to supply the
transmit body, not reinvent the misdirection mechanism (which it has no
training signal for anyway — the corpus doesn't record which record was
"the misdirection setup" vs "the transmit body").

## The grounding contract

Two input conventions cover the 8 splicable classes:

| Class | Convention | Grounded input | Grounded output |
|---|---|---|---|
| SPECTRE_V1 | pointer | `g_arr + index` | `probe_array` |
| SPECTRE_V4 | pointer | `ssb_ptr_v4` | `probe_array` |
| L1TF | pointer | `g_l1tf_secret_page + 0x100` | `probe_array` |
| MDS | pointer | `&secret_mds_byte` | `probe_array` |
| SPECTRE_V2 | value | `value_to_leak` (fn arg) | `probe_array` |
| BHI | value | `value` (fn arg) | `probe_array` |
| RETBLEED | value | `value` (fn arg) | `probe_array` |
| INCEPTION | value | `value` (fn arg) | `probe_array` |

(Existing hand templates are inconsistent between x86_64/arm64 for MDS
specifically — x86 currently passes the value, arm64 a pointer. This
design standardizes on pointer-based for MDS on both arches; since we're
replacing the transmit body entirely, the original inconsistency doesn't
need preserving.)

**BENIGN is excluded.** Its shape has no secret-tainted input by design (a
public, secret-independent index) — there is nothing for a generator
sample to plausibly replace while preserving the "must not leak" property
the class exists to test. BENIGN keeps its current hand-templated body,
unchanged, still run through both oracles as an existing regression check
— just not generator-driven.

## Splice algorithm (pointer and value cases)

Given a realized instruction sequence (from `gen/realize.py`, unchanged)
for (class, arch):

1. **Seed**: emit one instruction loading the grounded input operand
   (pointer or value, passed in via a GCC inline-asm input constraint, same
   `"r"(...)` pattern the existing L1TF/MDS hand-asm already uses) into a
   designated temp register.
2. **Register remap**: apply the *same canonicalization approach already
   proven this session* (`scripts/translate_riscv_inline_asm.py`'s
   `canonical_reg`/width-alias handling) to the realized sequence, but with
   one difference: instead of assigning the sequence's first-referenced
   register to a fresh scratch temp, assign it to the **seeded register**
   from step 1. All other registers the sequence references get fresh,
   non-colliding scratch temps as before. This makes the realized
   sequence's first operand genuinely receive the real grounded input,
   the same bug class (and same fix) as this session's alias fix — reusing
   proven logic rather than re-deriving register plumbing from scratch.
3. **Emit** the remapped realized instructions as-is.
4. **Sink**: take the last register that appears as a computed
   destination in the sequence (best-effort heuristic — AT&T syntax's
   final/left-hand-most destination operand of the last `mov`-shaped
   instruction; if no plain register destination exists at all — e.g. the
   sequence ends in a pure control-flow or memory-store instruction — fall
   back to reusing the seed register directly, still a valid, if trivial,
   leak test), and emit the fixed transform+write:
   `<scale by CACHE_LINE_SIZE>; <write 1 into probe_array at that offset>` —
   identical in shape to what every hand template already does.
5. Wrap steps 1–4 in `__asm__ __volatile__(...)` with the correct
   input/clobber list, and substitute this block into both the Spectector
   stub's `{fence}`-adjacent transmit function and the InvisiSpec
   template's transmit function — both get a new `{gen_body}` placeholder
   at the exact spot currently occupied by the hand-written C/asm body.

This is a best-effort construction (flagged honestly, matching this
project's established candor about generator/realizer limitations) — it
does not guarantee the spliced sequence is semantically sensible, only
that it's grounded to real, valid memory. Whether it's semantically
sensible is exactly what the oracle verdict tells you.

## Components / files

- **Modify** `gen/synth/templates.py`: add `{gen_body}` placeholder to the
  8 splicable classes' transmit functions (16 edits: 8 classes × 2 arches),
  each replacing the current fixed C/asm body. BENIGN and the
  misdirection-mechanism code (everything else in each template) is
  unchanged.
- **Modify** `gen/synth/spectector_gadgets.py`: same `{gen_body}`
  placeholder in the 8 classes' minimal-victim `gadget()` bodies.
- **Create** `gen/oracle_splice.py`: implements the splice algorithm above.
  Input: realized instruction list + (class, arch). Output: the inline-asm
  text to fill `{gen_body}`, plus the clobber list. Pure function, unit
  testable without Docker/oracles.
- **Modify** `gen/decode.py`: add `--validate` flag (default off, per
  earlier scoping — real-oracle runs are slow). When set: for each sample,
  build both gadget files via `oracle_splice` + the two template modules,
  run through the **existing, unmodified** `SpectectorValidator` (always)
  and `InvisiSpecValidator` (only if `--validate-invisispec` is *also*
  passed, since it's ~10min/gadget vs Spectector's ~30s) from
  `oracle/validators/`, report LEAK/SAFE/UNRUNNABLE/UNSUPPORTED per sample
  alongside the existing PDG-parseable count.

No changes to `oracle/validators/*`, `oracle/spectector_oracle.py`, or any
InvisiSpec docker infrastructure — this task only produces gadgets in the
format those already expect and calls the existing interface.

## Data flow (example: SPECTRE_V1, x86_64, `--validate`)

`decode.py` samples from `CondTransformerLM` → `Realizer.realize_sequence`
(unchanged) → `oracle_splice.splice(realized, "SPECTRE_V1", "x86_64")`
returns inline-asm text using pointer convention (`g_arr + index` seed,
`probe_array` sink) → `templates.render(...)` and
`spectector_gadgets` render with `{gen_body}` filled in → two files
written under `oracle/build/` → `SpectectorValidator.validate(...)` (and
`InvisiSpecValidator.validate(...)` if requested) → `ValidationResult`
(verdict, signal) printed per sample, alongside the existing PDG-parseable
line.

## Error handling

- A syntactically malformed realized sequence still produces malformed
  spliced output → Spectector/InvisiSpec correctly report `unrunnable`.
  This is the expected, honest outcome for most samples until the
  follow-up validity work lands — not something this task suppresses or
  works around.
- If `oracle_splice` cannot find ANY usable register in the realized
  sequence (empty or all-immediate sequence), skip the oracle call
  entirely and report `unrunnable` locally without invoking Docker.
- Docker/timeout failures already return `UNRUNNABLE` per the existing
  `Validator` contract (`oracle/validators/base.py`) — no new handling
  needed, just consumed as-is.

## Testing

- **Unit** (`gen/oracle_splice.py`, no Docker needed): given a hand-built
  realized instruction list and a known (class, arch), assert the emitted
  inline-asm text seeds the correct register from the correct grounded
  operand, and that the sink correctly falls back to the seed register
  when no destination register exists. Mirrors this session's
  `tests/gate/test_oracle_gate.py`-style pure-logic testing — build the
  text, assert on it, no external dependencies.
- **Integration smoke test**: `--validate` on SPECTRE_V1/x86_64 with a
  **hand-written, known-good** realized sequence first (not model output)
  — sanity-checks the whole plumbing (splice → render → compile → run →
  parse verdict) against a case where the expected verdict (`leak`) is
  known, before trusting it on real generator samples where the verdict is
  unknown by construction.
- **Full run**: `--validate` across all 8 splicable classes × 2 arches on
  real generator output, Spectector only first (fast), InvisiSpec on a
  small subset after (slow) — reports the real, current distribution of
  leak/safe/unrunnable verdicts. This is a result to report honestly, not
  a bar to hit — given 2.3% syntactic validity, `unrunnable` is expected to
  dominate until the follow-up validity work lands.
