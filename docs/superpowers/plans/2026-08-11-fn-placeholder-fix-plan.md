# Fix the `<fn>` Realizer Stub Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace `gen/realize.py`'s never-implemented `<fn>` stub (returns the literal, always-invalid text `"<fn>"`) with the same fixed-literal pattern already used for `<sym>`, eliminating a guaranteed-failure mechanism responsible for ~36% of the generator's malformed instructions.

**Architecture:** One new `realize.fn_sym` field in each arch's spec file, one new `self.fn_sym` attribute on `Realizer`, one changed return value in `_operand()`. No changes to the generator, decode.py, oracle_splice.py, or any gadget template.

**Tech Stack:** Python 3, `spec/external_oracle.py::ExternalOracle` (for the regression test, same independent llvm-mc oracle already used by `gen/check_syntactic_validity.py`).

## Global Constraints

- Scope is strictly `<fn>` — do not touch `<sym>`/`.L0` handling, `operand_type_violation`, or the `other` bucket's findings. Those are separate, already-scoped follow-ups.
- `fn_sym`'s value must be a plain, valid assembly identifier — no `<`/`>`/spaces/special characters (the exact class of bug being fixed).
- No changes to `gen/generator.py`'s vocabulary or sampling.

---

## File Structure

- **Modify:** `spec/x86_64.json` — add `"fn_sym": "fn_target"` to the `realize` block.
- **Modify:** `spec/arm64.json` — add `"fn_sym": "fn_target"` to the `realize` block.
- **Modify:** `gen/realize.py` — add `self.fn_sym`, change `<fn>`'s return value.
- **Create:** `tests/gen/test_realize.py` — unit tests + the llvm-mc-backed regression test.

---

### Task 1: Fix `<fn>` and verify it end-to-end

**Files:**
- Modify: `spec/x86_64.json`, `spec/arm64.json`, `gen/realize.py`
- Test: `tests/gen/test_realize.py`

**Interfaces:**
- Produces: `Realizer._operand("<fn>", used)` now returns `self.fn_sym` (a real identifier) instead of the literal string `"<fn>"`. No other public interface changes — `realize_instruction`/`realize_sequence` signatures untouched.
- Consumes: `spec/external_oracle.py::ExternalOracle` (existing, unmodified) for the regression test.

- [ ] **Step 1: Write the failing tests**

Create `tests/gen/test_realize.py`:

```python
"""Tests for gen/realize.py's <fn> placeholder fix.

Unit tests need no external dependency (pure Realizer logic). The
regression test uses the real, independent llvm-mc oracle
(spec/external_oracle.py -- shares no code with the generator/realizer/
classifier, same oracle gen/check_syntactic_validity.py already trusts) to
prove the specific <fn>-shaped failure is actually gone, not just that the
Python code returns a different string."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec              # noqa: E402
from realize import Realizer                 # noqa: E402
from external_oracle import ExternalOracle   # noqa: E402


def test_fn_placeholder_no_longer_returns_literal_angle_brackets():
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    result = realizer._operand("<fn>", set())
    assert result != "<fn>"
    assert "<" not in result and ">" not in result


def test_fn_placeholder_x86_64_matches_configured_fn_sym():
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    assert realizer._operand("<fn>", set()) == spec["realize"]["fn_sym"]


def test_fn_placeholder_arm64_matches_configured_fn_sym():
    spec = load_spec("arm64.json")
    realizer = Realizer(spec, seed=0)
    assert realizer._operand("<fn>", set()) == spec["realize"]["fn_sym"]


def test_fn_sym_is_a_plain_valid_identifier():
    for arch in ("x86_64.json", "arm64.json"):
        spec = load_spec(arch)
        fn_sym = spec["realize"]["fn_sym"]
        assert fn_sym.isidentifier(), f"{arch}: fn_sym {fn_sym!r} is not a plain identifier"


def test_realize_sequence_with_fn_token_no_longer_guaranteed_invalid():
    """Regression test against the real independent oracle: a direct-call
    instruction using <fn> must no longer fail SOLELY because of the <fn>
    token. `callq fn_target` is valid AT&T syntax; the pre-fix `callq <fn>`
    could never assemble under any circumstances."""
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    instr = realizer.realize_instruction("callq <fn>")
    oracle = ExternalOracle()
    code = oracle.assemble(instr, "x86_64")
    assert code is not None, f"expected {instr!r} to assemble cleanly, oracle rejected it"
```

- [ ] **Step 2: Run tests to verify they fail**

```bash
.venv_fix/bin/pytest tests/gen/test_realize.py -v
```

Expected: 4 of 5 tests FAIL (the ones asserting `!= "<fn>"` / matching `fn_sym` / valid identifier / oracle-assembles — since `fn_sym` doesn't exist in either spec file yet, these should fail with a `KeyError` on `spec["realize"]["fn_sym"]`).

- [ ] **Step 3: Add `fn_sym` to both spec files**

In `spec/x86_64.json`, add to the `realize` block (alongside the existing `"sym": ".L0"`):

```json
"fn_sym": "fn_target"
```

In `spec/arm64.json`, add the identical line to its `realize` block.

- [ ] **Step 4: Update `gen/realize.py`**

In `Realizer.__init__` (after the existing `self.sym = r["sym"]` line):

```python
self.fn_sym = r["fn_sym"]
```

In `Realizer._operand()`, change:

```python
        if kind == "<fn>":
            return "<fn>"
```

to:

```python
        if kind == "<fn>":
            return self.fn_sym
```

- [ ] **Step 5: Run tests to verify they pass**

```bash
.venv_fix/bin/pytest tests/gen/test_realize.py -v
```

Expected: all 5 pass, including the live llvm-mc regression test (requires `llvm-mc` — confirmed present this session at `/opt/homebrew/opt/llvm/bin/llvm-mc`).

- [ ] **Step 6: Confirm the real-scale improvement**

```bash
python3 gen/check_syntactic_validity.py --n 50 > /tmp/fn_fix_check.txt 2>&1
cat /tmp/fn_fix_check.txt
```

Compare the `unresolved_placeholder` category's percentage against the committed baseline in `gen/SYNTACTIC_FAILURE_CATEGORIZATION.md` (45.9% overall, pre-fix). Expect a real, measurable drop — report the actual number honestly, whatever it is (this is a smoke-scale n=50 check, not a rerun of the full 2000-sample study; don't overclaim precision from it, and don't expect the bucket to hit zero, since `.L`-misuse — the bucket's other sub-cause — is untouched by this fix).

- [ ] **Step 7: Run the full test suite**

```bash
.venv_fix/bin/pytest tests/ -q
```

Confirm no regressions (baseline before this task: 241 passed, 1 skipped).

- [ ] **Step 8: Commit**

```bash
git add spec/x86_64.json spec/arm64.json gen/realize.py tests/gen/test_realize.py
git commit -m "fix: realize <fn> placeholder as a valid identifier instead of literal <fn> text"
```

---

## Self-Review Notes

- **Spec coverage**: the design doc's entire scope (spec fields, Realizer change, testing requirements) is covered by this single task — appropriately small, not artificially split.
- **No placeholders**: all code is complete and exact; the only "unknown" is Step 6's real measured percentage, which is correctly left as an empirical result to report, not pre-written.
- **Backward compatibility**: not a concern here — `<fn>` currently NEVER produces valid output, so there is no existing "correct" behavior this change could regress. Any change is strictly an improvement or neutral.
- **Type/interface consistency**: `Realizer.__init__`'s new `self.fn_sym` follows the exact same pattern as the pre-existing `self.sym`, and `_operand()`'s change is a single-line, same-shape edit to an existing conditional branch — no signature changes anywhere.
