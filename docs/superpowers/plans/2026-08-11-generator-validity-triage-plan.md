# Categorizing Generator Syntactic-Validity Failures Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Extend `gen/check_syntactic_validity.py` to categorize *why* the generator's raw output fails llvm-mc validation (unresolved placeholder vs. operand-type violation vs. other), then run it at real scale (2000 samples, both arches) to get the evidence needed to pick the next fix.

**Architecture:** A pure, unit-testable `categorize_failure(instr: str) -> str` function added to the existing script, wired into its existing per-instruction validity loop (additive — the script's current per-instruction/per-sequence summary output is unchanged, category breakdown is a new section appended after it).

**Tech Stack:** Python 3, `spec/external_oracle.py::ExternalOracle` (already used by this script, no changes needed there), `llvm-mc` (confirmed present this session at `/opt/homebrew/opt/llvm/bin/llvm-mc`).

## Global Constraints

- No changes to `spec/external_oracle.py`, `gen/generator.py`, `gen/realize.py`, `gen/decode.py`, `oracle_splice.py`, or either gadget-template module — this task is diagnostic only, entirely within `gen/check_syntactic_validity.py` plus its tests.
- The script's existing per-instruction/per-sequence summary output (`overall_instr`, `overall_seq`, `per_arch_instr` prints) must remain byte-for-byte unchanged — the categorization is a new, additive section.
- Categorization is by **pattern-matching the failing instruction's text**, not by parsing `llvm-mc`'s stderr message — the design doc explicitly rejects stderr-parsing as fragile.
- `ret $imm16` is legitimate AT&T syntax (near-return with stack cleanup) — `ret`/`retq` must be excluded from the immediate-as-destination check, or every `ret $N` instruction will be miscategorized as `operand_type_violation` regardless of whether llvm-mc actually rejected it for that reason.
- The `other` category must be reported explicitly, never silently folded into one of the other two — an honest "we don't know why these failed yet" count is a real, useful result.

---

## File Structure

- **Modify:** `gen/check_syntactic_validity.py` — add `categorize_failure()` + two small helpers, wire into `main()`'s existing loop, add the new summary section.
- **Create:** `tests/gen/test_check_syntactic_validity_categorization.py` — unit tests for `categorize_failure()` against the 4 real documented failures plus edge cases.
- **Create:** `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md` — the real 2000-sample run's findings (Task 2).

---

### Task 1: `categorize_failure()` — implement and unit test

**Files:**
- Modify: `gen/check_syntactic_validity.py`
- Test: `tests/gen/test_check_syntactic_validity_categorization.py`

**Interfaces:**
- Produces: `categorize_failure(instr: str) -> str`, returning one of `"unresolved_placeholder"`, `"operand_type_violation"`, `"other"`. Pure function, no I/O, no dependency on `llvm-mc`/`ExternalOracle` — testable standalone.
- Consumes: nothing from other tasks.

- [ ] **Step 1: Write the failing tests**

Create `tests/gen/test_check_syntactic_validity_categorization.py`:

```python
"""Unit tests for gen/check_syntactic_validity.py's categorize_failure().

Pure pattern-matching logic, no llvm-mc/Docker dependency -- this function
only runs on instruction text llvm-mc has ALREADY rejected (see the real
2000-sample run in Task 2), so these tests verify the categorization LOGIC
against known-shape strings, not whether llvm-mc would actually reject them."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "gen"))

from check_syntactic_validity import categorize_failure  # noqa: E402


# The 4 real failing instructions documented in gen/ORACLE_VALIDATION_FINDINGS.md
def test_unresolved_fn_placeholder_leaq():
    assert categorize_failure("leaq\t<fn>, %r9") == "unresolved_placeholder"


def test_unresolved_fn_placeholder_callq():
    assert categorize_failure("callq\t<fn>") == "unresolved_placeholder"


def test_local_label_used_as_source_operand():
    assert categorize_failure("movzbl\t.L0, %rdx") == "unresolved_placeholder"


def test_local_label_used_as_dest_operand():
    assert categorize_failure("movb\t.L0, (%r13)") == "unresolved_placeholder"


def test_immediate_as_destination():
    assert categorize_failure("movl\t(%r13), $0") == "operand_type_violation"


def test_ret_with_immediate_is_not_flagged_as_operand_violation():
    # ret $imm16 is legitimate AT&T syntax (near-return with stack cleanup) --
    # must not be miscategorized just because $N appears in the last operand
    # position. Whatever the REAL reason llvm-mc rejected "ret $4096" is (if
    # it did), it isn't "immediate in a destination slot" -- ret has no
    # destination operand at all.
    assert categorize_failure("ret\t$4096") == "other"
    assert categorize_failure("retq\t$4096") == "other"


def test_legitimate_branch_to_local_label_not_flagged():
    # a bare jump/call to a .L-prefixed target is completely normal and must
    # never be categorized as an unresolved placeholder.
    assert categorize_failure("jne\t.L0") == "other"
    assert categorize_failure("je\t.L3") == "other"
    assert categorize_failure("callq\t.L1") == "other"


def test_valid_looking_instruction_falls_to_other():
    # this function is only ever called on instructions llvm-mc already
    # rejected, but as a belt-and-suspenders check: a normal-looking
    # register-register move must not land in either failure-specific bucket.
    assert categorize_failure("movq\t%rax, %rbx") == "other"


def test_indexed_memory_operand_with_immediate_source_not_flagged():
    # the immediate is in the SOURCE position here, not the destination --
    # must not trigger operand_type_violation.
    assert categorize_failure("movq\t$1, (%rbx,%rcx,1)") == "other"
```

- [ ] **Step 2: Run tests to verify they fail**

```bash
.venv_fix/bin/pytest tests/gen/test_check_syntactic_validity_categorization.py -v
```

Expected: FAIL — `ImportError: cannot import name 'categorize_failure'`.

- [ ] **Step 3: Implement `categorize_failure()` and its helpers in `gen/check_syntactic_validity.py`**

Add near the top of the file, after the existing imports:

```python
import re

# Local-label token (.L0, .L3, ...) -- ARM's b/cbz/etc and x86's j*/call*
# families can legitimately take a bare .LN as their sole operand (a real
# branch/call target); anywhere else, a .LN token is a generator mistake
# (it picked a branch-target-shaped token for a non-branch-target slot).
_LOCAL_LABEL_RE = re.compile(r'\.L\w*')
_BRANCH_MNEMONIC_RE = re.compile(
    r'^(j\w+|call\w?|b|b\.\w+|bl|blr|br|cbn?z|tbn?z)$', re.IGNORECASE
)
_IMM_RE = re.compile(r'^\$-?\w+$')
# ret/retq legitimately take an immediate operand (near-return with stack
# cleanup, AT&T `ret $imm16`) -- excluded from the immediate-as-destination
# check, which would otherwise misfire on every valid `ret $N`.
_IMM_DEST_EXCLUDED_MNEMONICS = {"ret", "retq"}


def _split_operands(instr: str) -> list[str]:
    """Split an AT&T-syntax instruction's operand portion on top-level commas
    (commas inside parens -- SIB addressing like (%rbx,%rcx,1) -- are not
    top-level separators). Returns [] if there's no operand portion."""
    parts = instr.strip().split(None, 1)
    if len(parts) < 2:
        return []
    operand_str = parts[1]
    out, depth, cur = [], 0, ""
    for ch in operand_str:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur)
            cur = ""
        else:
            cur += ch
    out.append(cur)
    return [o.strip() for o in out]


def _mnemonic(instr: str) -> str:
    parts = instr.strip().split(None, 1)
    return parts[0].lower() if parts else ""


def _is_legitimate_branch_target_use(instr: str) -> bool:
    """True iff instr is `<branch-or-call-mnemonic> .LN` -- a bare local-label
    operand on a mnemonic that actually takes a branch/call target."""
    mnemonic = _mnemonic(instr)
    if not _BRANCH_MNEMONIC_RE.match(mnemonic):
        return False
    operands = _split_operands(instr)
    return len(operands) == 1 and bool(_LOCAL_LABEL_RE.fullmatch(operands[0]))


def categorize_failure(instr: str) -> str:
    """Best-effort categorization of why llvm-mc rejected `instr`, by
    pattern-matching the instruction TEXT (not llvm-mc's error message --
    fragile, compiler-specific). Only meaningful when called on an
    instruction llvm-mc has already rejected. Returns one of:
    "unresolved_placeholder", "operand_type_violation", "other".
    """
    if "<fn>" in instr:
        return "unresolved_placeholder"
    if _LOCAL_LABEL_RE.search(instr) and not _is_legitimate_branch_target_use(instr):
        return "unresolved_placeholder"

    operands = _split_operands(instr)
    if operands:
        dest = operands[-1]
        mnemonic = _mnemonic(instr)
        if _IMM_RE.match(dest) and mnemonic not in _IMM_DEST_EXCLUDED_MNEMONICS:
            return "operand_type_violation"

    return "other"
```

- [ ] **Step 4: Run tests to verify they pass**

```bash
.venv_fix/bin/pytest tests/gen/test_check_syntactic_validity_categorization.py -v
```

Expected: all 10 tests pass.

- [ ] **Step 5: Wire categorization into `main()`'s existing loop**

In `gen/check_syntactic_validity.py`'s `main()`, add category counters alongside the existing ones:

```python
    overall_categories = Counter()
    per_arch_categories = {a: Counter() for a in ARCHS}
```

(Place next to the existing `overall_instr = Counter()` / `per_arch_instr` declarations.)

In the existing per-instruction loop, change:

```python
                    if code is None:
                        overall_instr["malformed"] += 1
                        per_arch_instr[arch]["malformed"] += 1
                        seq_ok = False
```

to:

```python
                    if code is None:
                        overall_instr["malformed"] += 1
                        per_arch_instr[arch]["malformed"] += 1
                        seq_ok = False
                        cat = categorize_failure(instr)
                        overall_categories[cat] += 1
                        per_arch_categories[arch][cat] += 1
```

(The `else` branch incrementing `overall_instr["ok"]` is untouched.)

After the existing summary prints (the `print(f"\nNote: this only checks syntax...")` block at the end of `main()`), add:

```python
    _CATS = ("unresolved_placeholder", "operand_type_violation", "other")
    total_malformed = overall_instr["malformed"]
    print(f"\n{'='*60}")
    print(f"failure categorization (of {total_malformed} malformed instructions):")
    for cat in _CATS:
        n = overall_categories[cat]
        print(f"  {cat:24s} {n:6d} ({100*n/max(total_malformed,1):.1f}%)")
    for a in ARCHS:
        tot_a = sum(per_arch_categories[a].values())
        print(f"\n  {a}: ({tot_a} malformed)")
        for cat in _CATS:
            n = per_arch_categories[a][cat]
            print(f"    {cat:22s} {n:6d} ({100*n/max(tot_a,1):.1f}%)")
```

- [ ] **Step 6: Verify the existing summary output is unchanged**

```bash
python3 gen/check_syntactic_validity.py --n 5
```

Confirm the original "per-instruction syntactic validity" / "per-sequence" lines print exactly as before, followed by the new "failure categorization" section. This is a smoke check, not a full run — Task 2 does the real-scale run.

- [ ] **Step 7: Commit**

```bash
git add gen/check_syntactic_validity.py tests/gen/test_check_syntactic_validity_categorization.py
git commit -m "feat: categorize generator syntactic-validity failures by root cause"
```

---

### Task 2: Run the real 2000-sample triage and report findings

**Files:**
- Create: `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md`

**Interfaces:**
- Consumes: `categorize_failure()` and the updated `gen/check_syntactic_validity.py` from Task 1, run for real.

- [ ] **Step 1: Confirm `gen/generator.pt` is present**

```bash
ls -la gen/generator.pt
```

If missing (gitignored, may not be present in a fresh worktree), copy from the main checkout: `cp /Users/ritvikgupta/SpecExec/gen/generator.pt gen/generator.pt`.

- [ ] **Step 2: Run the real triage**

```bash
python3 gen/check_syntactic_validity.py --n 100 > /tmp/syntax_triage_run.txt 2>&1
cat /tmp/syntax_triage_run.txt
```

This covers both `ARCHS = ["x86_64", "arm64"]` and all 10 classes the checkpoint was trained on (the script already filters to `trained_classes = [c for c in CLASSES if c in model.vocab.cls_id]`) — 100 samples each, 2000 total. Local `llvm-mc` only, no Docker — should complete in well under Task 6's Docker-bound runtime (minutes, not hours).

- [ ] **Step 3: Write `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md`**

Report the real category counts and percentages (overall and per-arch), quoting the actual run output. Per the design doc's "what happens after" section, state plainly which of the three scenarios the real numbers match:
- If `unresolved_placeholder` is large: name it as the clear next fix (implementing `<fn>` properly in `gen/realize.py`), independent of any bigger decision.
- If `operand_type_violation` dominates: name it as the evidence for investing in constrained decoding (or deciding rejection-filtering is sufficient instead) as the next brainstorm.
- If `other` is large: say so plainly, and pull 5-10 real `other`-bucket examples from the run (instructions that failed but matched neither pattern) into the doc for future investigation — don't just report the count with no examples, since an uninvestigated "other" bucket isn't actionable on its own.

Do not force the data into a tidier story than it is — this doc's job is the same as every other findings doc this session: report what the evidence says, not what would be convenient.

- [ ] **Step 4: Run the test suite**

```bash
.venv_fix/bin/pytest tests/gen/ -v
```

Confirm no regressions (expected: 33 + 10 new = 43 passing, adjust if the actual pre-task count differs from this plan's assumption — check `tests/gen/` test count first if unsure).

- [ ] **Step 5: Commit**

```bash
git add gen/SYNTACTIC_FAILURE_CATEGORIZATION.md
git commit -m "results: first real categorization of generator syntactic-validity failures"
```

---

## Self-Review Notes

- **Spec coverage**: both components from the design doc have a task — the categorization function + its wiring (Task 1), and the real-scale run + honest findings report (Task 2).
- **No placeholders**: Task 1's code is fully specified, including the `ret $imm16` exclusion the Global Constraints section calls out explicitly (a real correctness requirement, not a nice-to-have — without it, every legitimate `ret $N` would be miscategorized). Task 2 doesn't pre-write the findings doc's content, since it depends on real data not yet gathered — that's correct, not a placeholder (the doc's *structure and honesty requirement* is fully specified, its *content* is an empirical result).
- **Backward compatibility**: Task 1 Step 6 explicitly verifies the script's pre-existing summary output is unchanged before considering the wiring done.
- **Type/interface consistency**: `categorize_failure(instr: str) -> str` is used identically in Task 1's tests and Task 1 Step 5's wiring into `main()`. No other task depends on this interface, so no cross-task drift risk.
- **Scope check**: this plan is small and single-purpose by design (a diagnostic step, not the fix itself) — appropriately not decomposed further.
