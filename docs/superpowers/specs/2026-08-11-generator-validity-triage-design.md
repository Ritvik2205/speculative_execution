# Categorizing Generator Syntactic Failures — Design

**Status:** Approved by user 2026-08-11, ready for implementation planning.

## Problem

`gen/decode.py --validate` (this session's earlier work, merged `eed96fd`) proved real oracle
verdicts work end-to-end, but also confirmed the generator's raw output is mostly invalid: 73/80
samples (91.25%) came back `unrunnable` — real GCC compile failures inside the Spectector Docker
container. This is consistent with, and slightly better than, the independently-measured 71.5%
per-instruction / 2.3% per-sequence syntactic-validity baseline in
`eval/check_syntactic_validity_results.txt`.

We don't yet know the *composition* of that failure rate. Four real failing instructions are
already documented in `gen/ORACLE_VALIDATION_FINDINGS.md`:
- `leaq <fn>, %r9` / `callq <fn>` — literal, unresolved `<fn>` placeholder text.
- `movzbl .L0, %rdx` / `movb .L0, (%r13)` — a local-label token used as a data operand.
- `movl (%r13), $0` — an immediate in a destination-operand slot.
- `ret $4096` — a bogus operand on `ret`.

These split into two different ROOT CAUSES needing two different fixes, and we don't know their
relative weight:
- **Realizer bug** (fixable without touching the model): `gen/realize.py:47-48` has
  `if kind == "<fn>": return "<fn>"` — a placeholder documented in the code as never actually
  implemented. This guarantees failure every time a `<fn>` token appears, regardless of anything
  else about the sequence.
- **Generator token-choice problem** (not fixable by the Realizer at all): the model itself chose
  an invalid operand *type* for that position (label-as-data, immediate-as-destination). Fixing
  this needs either constrained decoding (block invalid continuations at sample time) or
  rejection filtering after the fact — a materially bigger design decision than a Realizer patch.

## Non-goals

- Deciding or implementing the actual fix for category 2 (generator token-choice violations) —
  that's the next brainstorm, informed by this task's real numbers. This task is diagnostic only.
- Retraining/fine-tuning the generator against oracle feedback — flagged as a bigger future step
  in the earlier oracle-wiring design doc, still out of scope here.
- Touching `gen/decode.py`'s `--validate` path, `oracle_splice.py`, or either gadget-template
  module — none of that is implicated in syntactic validity; this is upstream of all of it (the
  Realizer's raw output, before any splicing into a gadget harness).

## Architecture

Extend `gen/check_syntactic_validity.py` (already the trusted, independent tool behind the
71.5%/2.3% baseline — reuses `spec/external_oracle.py::ExternalOracle.assemble`, which shares no
code with the generator/realizer/classifier) rather than building a new script. Add
failure-categorization on top of its existing per-instruction llvm-mc check, using
**pattern-matching on the failing instruction's text** — not parsing llvm-mc's stderr message,
which is fragile and ties the categorization to a specific compiler's exact wording.

### Categories

1. **`unresolved_placeholder`** — the instruction text contains the literal substring `<fn>`, OR
   contains a `.L`-prefixed token in an operand position that is not the sole target of a
   branch/call mnemonic (`jmp`/`je`/`jne`/`jae`/.../`call`/`callq` with a bare `.LN` target is
   legitimate; `.LN` appearing as a `movzbl`/`movb`/etc. operand is not).
2. **`operand_type_violation`** — an immediate token (`$N` prefix) appears in what AT&T syntax
   treats as a destination-operand position (the last comma-separated operand) for a
   non-immediate-destination mnemonic, or an operand-count mismatch is evident from the token
   structure (best-effort pattern match, not a full operand-arity table per mnemonic — that level
   of precision isn't needed to get a first real category count).
3. **`other`** — anything llvm-mc rejects that matches neither pattern above. This bucket must be
   reported explicitly (not silently dropped) so the categorization's own coverage is honest — if
   `other` turns out to be the largest bucket, that's a real finding (it means the two
   hypothesized categories don't explain most of the failures, and further investigation is
   needed before picking a fix).

### Scale

Run at `--n 100` per (class, arch) — 2000 samples across 10 classes × 2 arches (both x86_64 and
arm64; Task 6's oracle run only covered x86_64). Cheap: this is local `llvm-mc` invocation, no
Docker, no GCC, no Spectector — orders of magnitude faster than the oracle-verdict pipeline.

### Output

Extend the script's existing summary print block with a per-category breakdown: overall counts
and percentages, plus a per-arch breakdown (x86_64 vs arm64 may differ substantially — arm64 has
zero real oracle-verdict data from Task 6, so this triage's arm64 numbers are new information, not
just a confirmation of something already partially measured for x86_64). Do not change the
existing per-instruction/per-sequence summary lines already printed — this is additive.

## Testing

- Unit test for the categorization logic itself (`unresolved_placeholder` / `operand_type_violation`
  / `other`) against a small set of hand-constructed instruction strings covering: the 4 real
  documented failures above (each must land in the category the design doc claims), plus at least
  one clearly-valid instruction (must not be miscategorized as any failure type — though the
  categorization function only runs on instructions llvm-mc already rejected, so this is a
  belt-and-suspenders check on the categorizer's own logic, not on llvm-mc).
- The real 2000-sample run itself is the integration check — no oracle/Docker dependency, so it's
  safe and fast to run as part of normal task verification, not something to defer to a separate
  "full run" task the way Task 6's Docker-bound run was.

## What happens after this task

The categorized counts directly inform the next brainstorm:
- If `unresolved_placeholder` is a large fraction: implementing `<fn>` properly in the Realizer
  (and fixing whatever `.L`-token handling is actually broken) is a cheap, high-leverage,
  low-risk fix worth doing immediately, independent of any bigger decision.
- If `operand_type_violation` dominates: that's the evidence needed to justify the bigger
  investment in constrained decoding (or to decide rejection-filtering is good enough instead).
- If `other` is large: neither hypothesized category explains most failures, and the next step is
  reading actual `other`-bucket examples before designing any fix.
