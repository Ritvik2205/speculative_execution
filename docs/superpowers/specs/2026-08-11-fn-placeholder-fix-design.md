# Fix the `<fn>` Realizer Stub — Design

**Status:** Approved by user 2026-08-11, ready for implementation planning.

## Problem

`gen/realize.py:47-48` has never implemented the `<fn>` operand kind:

```python
if kind == "<fn>":
    return "<fn>"
```

Every occurrence renders as the literal 4-character text `<fn>` — `<`/`>` are not valid
assembly-identifier characters, so any instruction containing this operand is guaranteed to
fail `llvm-mc`/`gcc -S`, unconditionally, regardless of anything else about the sequence.
Per `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md`'s real 2000-sample triage, this accounts for
~36% of all malformed instructions overall (~45% of arm64's).

## Non-goals

- `<sym>` / local-label (`.L0`) handling — a related but genuinely separate root cause
  (`.L`-token misuse in a non-branch-target operand position), already scoped as its own
  follow-up in the triage doc. Not touched here.
- Anything about `operand_type_violation` or the `other` bucket (register-width mismatches,
  ARM/x86 cross-arch mnemonic leakage) — unrelated failure classes, separate fixes.
- Any change to `gen/generator.py`'s token vocabulary or sampling — this is purely a Realizer
  fix (how an already-sampled `<fn>` token gets turned into text), not a generation-time change.

## Design

Treat `<fn>` exactly like the existing `<sym>` handling — a single, fixed, syntactically-valid
literal, sourced from a new `realize.fn_sym` field in each arch's spec file, rather than the
unimplemented stub.

- Add `"fn_sym": "fn_target"` to `spec/x86_64.json`'s `realize` block (alongside the existing
  `"sym": ".L0"`).
- Add the same to `spec/arm64.json`'s `realize` block.
- In `gen/realize.py`'s `Realizer.__init__`, add `self.fn_sym = r["fn_sym"]` (alongside the
  existing `self.sym = r["sym"]`).
- In `Realizer._operand()`, change:
  ```python
  if kind == "<fn>":
      return "<fn>"
  ```
  to:
  ```python
  if kind == "<fn>":
      return self.fn_sym
  ```

This is intentionally the smallest possible change that eliminates the guaranteed-failure
mechanism. `fn_target` is a plain identifier — valid as a direct-call target (`callq
fn_target`), valid as a `leaq` source (`leaq fn_target(%rip), %reg` — though the realized
form won't include `(%rip)`, since that's not something the Realizer adds contextually
either; the fix here is scoped to making the SYMBOL valid, not to auditing every instruction
shape `<fn>` might appear inside), and valid on arm64 equivalents (`bl fn_target`).

## Why not a fresh/unique symbol per occurrence

Considered generating a unique label per `<fn>` occurrence (`fn_target_0`, `fn_target_1`, ...)
instead of reusing one fixed name everywhere. Rejected for this fix: `<sym>`'s existing
`.L0`-everywhere precedent already establishes that this Realizer's job is "produce something
syntactically plausible," not "produce a semantically coherent multi-symbol program" — Phase
4's oracle validation is what actually checks semantic correctness downstream. Matching the
existing convention keeps the fix minimal and consistent; if uniqueness turns out to matter
later (e.g. for a future oracle-splice use case that needs distinct call targets), that's a
separate, larger change to make deliberately, not a side effect of this bug fix.

## Testing

- Unit test: `Realizer._operand("<fn>", used)` returns the configured `fn_sym` value (not the
  literal string `"<fn>"`), for both x86_64 and arm64 specs.
- Regression test: a realized sequence containing a `<fn>` token, run through the real
  `llvm-mc`-backed `ExternalOracle.assemble()` (the same independent oracle
  `gen/check_syntactic_validity.py` already uses), must no longer fail solely because of the
  `<fn>` token. (It can still fail for other, unrelated reasons — this test only needs to prove
  the specific `<fn>`-shaped failure is gone, not that every possible sequence containing `<fn>`
  now assembles.)
- Re-run a small sample (`gen/check_syntactic_validity.py --n 50`) after the fix and compare
  the `unresolved_placeholder` category count against the committed 2000-sample baseline —
  expect a real, measurable drop, reported honestly (not necessarily all the way to zero, since
  `.L`-misuse is the same bucket's other sub-cause and isn't touched by this fix).
