# Wiring Phase 4 Oracles into Generator Validation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace `gen/decode.py`'s circular classifier-judged generation validity check with real Spectector (symbolic proof) and InvisiSpec (real execution) verdicts, by splicing the generator's realized instruction sequences into the already-isolated leak-transmission functions in `gen/synth/templates.py` and `gen/synth/spectector_gadgets.py`.

**Architecture:** A new pure function (`gen/oracle_splice.py`) grounds a realized instruction sequence into inline assembly referencing real C expressions (a pointer or an already-materialized value, per a fixed per-class-per-file convention table). Both gadget-template modules grow one new `{gen_body}` placeholder per class at the exact spot their hand-written transmit logic currently sits; a `None` default preserves byte-identical existing behavior. `gen/decode.py` gets an opt-in `--validate` flag that renders both files with generator-driven bodies and calls the *existing, unmodified* `oracle.validators.SpectectorValidator`/`InvisiSpecValidator`.

**Tech Stack:** Python 3, existing repo stack (no new dependencies), Docker (already has `specdiscover-spectector:pinned` built locally, confirmed this session), `llvm-mc`/gcc for compile-verification in tests.

## Global Constraints

- **Backward compatibility is mandatory**: every existing call site of `render_spec()` (`gen/synth/spectector_gadgets.py`'s `generate_spec()`) and `render()` (`gen/synth/templates.py`) must produce **byte-identical** output when not passed a `gen_body`/generator argument. Verify this explicitly (diff against currently-committed `gen/synth/spec_out/*.c` and a fresh `gen/synth/generate.py` run) before considering Tasks 2/3 done.
- **BENIGN is excluded from splicing** — no `{gen_body}` placeholder added to its templates, per the approved design doc. It keeps running through both oracles unchanged, as an existing regression check only.
- **The pointer-vs-value convention is per (class, file), not per class alone** — L1TF, MDS, RETBLEED, and INCEPTION use a *different* convention between the Spectector stub and the InvisiSpec harness (see the table in Task 1). This was derived by reading every template's actual pre-fence/pre-SPEC_WINDOW code this session — do not re-derive it differently; use the table as given.
- **`CACHE_LINE_SIZE` is `64` (shift `6`)** — hardcoded across every hand template (`c_vulns/c_code/utils.c:12`), reuse the same constant, do not parametrize it.
- **Register-canonicalization must collapse width aliases** (ARM `w0`/`x0`, x86 `%eax`/`%rax`) — reuse the *approach* proven in `scripts/translate_riscv_inline_asm.py`'s `canonical_reg()` this session (same class of bug, same fix shape); do not skip this and reintroduce the bug this session just fixed elsewhere.
- No changes to `oracle/validators/*.py`, `oracle/spectector_oracle.py`, or any Docker infrastructure — this plan only produces gadgets in the format those already consume.

---

## File Structure

- **Create:** `gen/oracle_splice.py` — the splice algorithm (pure function, no I/O).
- **Test:** `tests/gen/test_oracle_splice.py` — unit + real-compile verification tests.
- **Modify:** `gen/synth/spectector_gadgets.py` — add `{gen_body}` placeholders (8 classes) + `render_spec()` signature.
- **Modify:** `gen/synth/templates.py` — add `{gen_body}` placeholders (8 classes × 2 arches) + `render()` signature.
- **Test:** `tests/gen/test_synth_backward_compat.py` — byte-identical-default verification for both modules.
- **Modify:** `gen/decode.py` — `--validate` / `--validate-invisispec` flags.
- **Create:** `tests/gen/__init__.py` — package marker (check `tests/gate/`'s convention first, per this session's established pattern of verifying rather than assuming).

---

### Task 1: `gen/oracle_splice.py` — splice algorithm

**Files:**
- Create: `gen/oracle_splice.py`
- Test: `tests/gen/test_oracle_splice.py`

**Interfaces:**
- Produces: `splice(realized: list[str], arch: str, convention: str, input_expr: str, output_expr: str) -> tuple[str, list[str]]` — returns `(asm_body_text, clobber_list)`. `arch` is `"x86_64"` or `"arm64"`. `convention` is `"pointer"` or `"value"`. Caller (Task 2/3's rendering code) wraps the result in `__asm__ __volatile__("...(asm_body_text)..." : : "r"(input_expr), "r"(output_expr) : clobber_list);`.
- Consumes: nothing from other tasks — this task is fully self-contained and independently testable.

**The per-(class, file) convention table** (derived this session by reading every template's pre-fence/pre-SPEC_WINDOW code — do not re-derive):

| Class | Spectector convention | Spectector `input_expr` | InvisiSpec convention | InvisiSpec `input_expr` |
|---|---|---|---|---|
| SPECTRE_V1 | pointer | `arr` (base) + `i` (index) — pass as `arr + i` | pointer | `g_arr + index` |
| SPECTRE_V4 | pointer | `store + i` | pointer | `ssb_ptr_v4` |
| SPECTRE_V2 | value | `i` | value | `value_to_leak` |
| BHI | value | `i` | value | `value` |
| RETBLEED | pointer | `arr + i` | value | `value` |
| INCEPTION | pointer | `arr + i` | value | `value` |
| L1TF | value | `v` (pre-loaded before `{fence}`) | pointer | `g_l1tf_secret_page + 0x100` |
| MDS | value | `v` (pre-loaded before `{fence}`) | pointer | `&secret_mds_byte` |

`output_expr` is always `probe` (Spectector stub) or `probe_array` (InvisiSpec harness).

- [ ] **Step 1: Write the failing tests**

Create `tests/gen/test_oracle_splice.py`:

```python
"""Tests for gen/oracle_splice.py -- the realized-instruction-to-grounded-
inline-asm splice algorithm. Structural assertions first (fast, no
toolchain needed), then a real-compile check (needs gcc, matches this
project's established pattern of verifying generated asm actually
assembles rather than eyeballing it -- see eval/riscv_h1_alias_dataflow_verify.py
for the precedent of not trusting a plausible-looking fix without a real
downstream check)."""
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "gen"))

from oracle_splice import splice, find_registers, remap_instrs  # noqa: E402


def test_find_registers_dedupes_x86_width_aliases():
    instrs = ["movq %rax, %rbx", "addl %eax, %ecx"]
    regs = find_registers(instrs, "x86_64")
    assert regs.count("rax") == 1  # %rax and %eax collapse to one identity
    assert "rcx" in regs


def test_find_registers_dedupes_arm_width_aliases():
    instrs = ["ldrb w0, [x1]", "lsl x0, x0, #6"]
    regs = find_registers(instrs, "arm64")
    assert regs.count("arm0") == 1  # w0 and x0 collapse to one identity
    assert "arm1" in regs


def test_splice_pointer_convention_seeds_first_register():
    realized = ["movzbl (%rax), %ebx", "shlq $6, %rbx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer",
                                 "arr + i", "probe")
    # the seed register (whatever it is) must appear as the FIRST
    # instruction's source, since the realized sequence's first-used
    # register was remapped to it
    assert asm_text.strip().startswith(("movq %0", "mov %0"))


def test_splice_value_convention_has_no_extra_load():
    realized = ["shlq $1, %rax"]
    asm_text, clobbers = splice(realized, "x86_64", "value", "v", "probe")
    # value convention: input is already a byte value, not a pointer to
    # dereference -- the emitted text must not contain a second memory
    # dereference of the seed register before the realized instructions run
    # (structural check: count of parenthesized memory operands referencing
    # the seed register should be 0 in the seed/setup portion)
    assert asm_text.count("(%0)") == 0 or "movq %0" in asm_text.split("\n")[0]


def test_splice_falls_back_to_seed_when_no_destination_register():
    realized = ["nop"]
    asm_text, clobbers = splice(realized, "x86_64", "value", "v", "probe")
    assert asm_text  # doesn't crash, produces something


def test_splice_produces_compilable_x86_output():
    """Real-compile check: wrap splice() output in a minimal C function
    matching the pointer convention's contract and confirm gcc -S accepts
    it. This is the check that actually matters -- structural assertions
    above catch obvious bugs, this catches real asm errors."""
    realized = ["movzbl (%rax), %ebx", "shlq $6, %rbx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer", "p", "out")
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    c_src = f'''
#include <stdint.h>
extern uint8_t out[];
void gadget(uint8_t *p) {{
    __asm__ __volatile__(
        "{asm_text}"
        : : "r"(p), "r"(out) : {clobber_str}, "memory");
}}
'''
    result = subprocess.run(
        ["gcc", "-x", "c", "-O0", "-S", "-o", "/dev/null", "-"],
        input=c_src, capture_output=True, text=True, timeout=10,
    )
    assert result.returncode == 0, f"gcc rejected splice output:\n{result.stderr}\n---\n{c_src}"


def test_splice_produces_compilable_arm64_output_if_cross_compiler_available():
    import shutil
    cc = shutil.which("aarch64-linux-gnu-gcc") or shutil.which("aarch64-elf-gcc")
    if not cc:
        return  # skip: no ARM64 cross-compiler on this host, don't fail the suite over it
    realized = ["ldrb w9, [x0]", "lsl x9, x9, #6"]
    asm_text, clobbers = splice(realized, "arm64", "pointer", "p", "out")
    clobber_str = ", ".join(f'"{c}"' for c in clobbers)
    c_src = f'''
#include <stdint.h>
extern uint8_t out[];
void gadget(uint8_t *p) {{
    __asm__ __volatile__(
        "{asm_text}"
        : : "r"(p), "r"(out) : {clobber_str}, "memory");
}}
'''
    result = subprocess.run(
        [cc, "-x", "c", "-O0", "-S", "-o", "/dev/null", "-"],
        input=c_src, capture_output=True, text=True, timeout=10,
    )
    assert result.returncode == 0, f"cross-gcc rejected splice output:\n{result.stderr}"
```

- [ ] **Step 2: Run tests to verify they fail**

```bash
.venv_fix/bin/pytest tests/gen/test_oracle_splice.py -v
```

Expected: FAIL / collection error — `ModuleNotFoundError: No module named 'oracle_splice'`.

- [ ] **Step 3: Implement `gen/oracle_splice.py`**

Implement `find_registers`, `remap_instrs`, and `splice` per the docstrings and test expectations above. Key design points to follow (the exact instruction emission is intentionally left to you to get right against the real-compile tests, not hand-specified here — generating correct assembly from scratch needs empirical iteration, not prose):

- `find_registers(instrs, arch)`: scan for register tokens (x86: `%[a-z][a-z0-9]*`; arm64: `\b[xw]\d{1,2}\b`), canonicalize width aliases (x86: `%eax`→`rax` identity, i.e. strip the width prefix letter and unify to the 64-bit name; arm64: `w0`/`x0`→same identity), return distinct identities in first-appearance order. Reuse the *canonicalization idea* from `scripts/translate_riscv_inline_asm.py`'s `canonical_reg()` (read that function first — same bug class, same fix shape), but you'll need your own regex surface since realized sequences use `%reg`-style tokens, not the RISC-V translator's bare ARM/x86 literal token surface.
- `remap_instrs(instrs, arch, remap_dict)`: substitute every register token per the remap dict, leaving unmapped tokens untouched.
- `splice(...)`: assign the realized sequence's FIRST canonical register to a fixed seed register (pick one unlikely to collide with GCC's own allocation for a simple `"r"()` constraint — e.g. `%r15`/`x9`), assign every OTHER canonical register to a small fixed pool of fresh scratch registers, remap the sequence, prepend a seed instruction loading the input operand (via the inline-asm input constraint — the seed register receives whatever GCC put in `%0`), append a sink sequence that shifts by `CACHE_LINE_SHIFT=6` and writes a `1` byte into `output_expr` at that offset (matching every hand template's `probe[...*64]=1`/`probe_array[...*CACHE_LINE_SIZE]=1` shape exactly). For `convention="pointer"`, the seed instruction must ALSO dereference (load a byte from) the seeded pointer before the realized sequence runs, since the realized sequence expects a materialized value in its first register, not a raw pointer. For `convention="value"`, no extra dereference — the input constraint already delivers a byte value.
- Sink register selection: the last register that appears as a destination in the remapped sequence (AT&T: rightmost operand of the last instruction that has one; ARM in this repo's convention: leftmost operand) — if none exists (e.g. sequence is pure `nop`s or ends in a non-register-destination instruction), fall back to the seed register itself.

- [ ] **Step 4: Run tests to verify they pass**

```bash
.venv_fix/bin/pytest tests/gen/test_oracle_splice.py -v
```

Expected: all pass, including the real-compile check (requires `gcc` — already confirmed present this session via prior tasks' use of `x86_64-linux-gnu-gcc`/native `gcc`; if the plain `gcc` invocation fails to find a suitable target, adjust the test's compiler invocation to whatever this host's working C compiler is — check `which gcc` / `which cc` first rather than guessing).

- [ ] **Step 5: Commit**

```bash
git add gen/oracle_splice.py tests/gen/test_oracle_splice.py tests/gen/__init__.py
git commit -m "feat: add oracle_splice — ground realized instructions into real gadget inline-asm"
```

---

### Task 2: `gen/synth/spectector_gadgets.py` — `{gen_body}` placeholders

**Files:**
- Modify: `gen/synth/spectector_gadgets.py`
- Test: `tests/gen/test_synth_backward_compat.py` (created here, extended in Task 3)

**Interfaces:**
- Consumes: nothing from Task 1 directly (this task only adds placeholders and default-fill logic; wiring `oracle_splice`'s output into `gen_body` happens in Task 4).
- Produces: `render_spec(vuln_class: str, fenced: bool, gen_body: str | None = None) -> str` — new optional third parameter; `None` (the default) preserves current behavior exactly.

- [ ] **Step 1: Write the failing backward-compat test**

Create `tests/gen/test_synth_backward_compat.py`:

```python
"""Backward-compatibility guard: render_spec()/render() must produce
byte-identical output to before this plan's changes when gen_body/generated
content is not supplied. Captures the CURRENT (pre-change) output as a
golden fixture at write-time -- run this test's fixture-capture step BEFORE
making any template edits (see Task 2 Step 1's instructions)."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

from gen.synth.spectector_gadgets import render_spec, CLASSES as SPEC_CLASSES  # noqa: E402


# Captured from the pre-change gen/synth/spectector_gadgets.py by running
# render_spec(c, fenced) for every class before Step 2's edits. If you are
# implementing this task, run the capture snippet below FIRST against the
# unmodified file, paste the results here, THEN make the template edits.
#
# Capture snippet (run once, before editing):
#   python3 -c "
#   import sys; sys.path.insert(0, '.')
#   from gen.synth.spectector_gadgets import render_spec, CLASSES
#   import json
#   out = {}
#   for c in CLASSES:
#       for fenced in (False, True):
#           out[f'{c}_{fenced}'] = render_spec(c, fenced)
#   print(json.dumps(out, indent=2))
#   "
GOLDEN = {}  # <-- fill in with the captured output before editing templates


def test_render_spec_unchanged_for_every_class_and_fence_state():
    for c in SPEC_CLASSES:
        for fenced in (False, True):
            key = f"{c}_{fenced}"
            assert key in GOLDEN, f"missing golden fixture for {key} -- run the capture snippet first"
            assert render_spec(c, fenced) == GOLDEN[key], f"render_spec({c!r}, {fenced}) changed!"
```

- [ ] **Step 2: Capture the golden fixture from the UNMODIFIED file**

```bash
python3 -c "
import sys; sys.path.insert(0, '.')
from gen.synth.spectector_gadgets import render_spec, CLASSES
import json
out = {}
for c in CLASSES:
    for fenced in (False, True):
        out[f'{c}_{fenced}'] = render_spec(c, fenced)
print(json.dumps(out, indent=2))
"
```

Paste the output into `tests/gen/test_synth_backward_compat.py`'s `GOLDEN` dict, replacing the placeholder `{}`.

- [ ] **Step 3: Run the test to confirm it passes against the unmodified file**

```bash
.venv_fix/bin/pytest tests/gen/test_synth_backward_compat.py -v
```

Expected: PASS (this just confirms the golden capture was done correctly, before any real changes).

- [ ] **Step 4: Add `{gen_body}` placeholders and the default-fill dict**

In `gen/synth/spectector_gadgets.py`, make these exact changes:

```python
_V1 = _HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}{gen_body} } }\n'
)
```
(was: `'void gadget(size_t i){ if(i<sz){ {fence}uint8_t v=arr[i]; probe[v*64]=1; } }\n'`)

```python
_V4 = _V4_HEADER + (
    'void gadget(size_t i){ if(i<sz){ store[i]=0; {fence}{gen_body} } }\n'
)
```
(was ending: `store[i]=0; {fence}uint8_t v=store[i]; probe[v*64]=1; } }\n`)

```python
_V2 = _INDIRECT_HEADER + 'void gadget(size_t i){ {fence}{gen_body} }\n'
_BHI = _INDIRECT_HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}{gen_body} } }\n'
)
```

```python
_RETBLEED = _RET_HEADER + (
    'void gadget(size_t i){ leaf(i); {fence}if(i<sz){ {gen_body} } }\n'
)
_INCEPTION = _RET_HEADER + (
    'void gadget(size_t i){ leaf(i); {fence}if(i<sz){ {gen_body} } }\n'
)
```

```python
_L1TF = _FAULT_HEADER + (
    'void gadget(void){ uint8_t v=*secret_ptr; {fence}{gen_body} }\n'
)
_MDS = _FAULT_HEADER + (
    'void gadget(void){ uint8_t v=*secret_ptr; {fence}{gen_body} }\n'
)
```

`_BENIGN` is **unchanged** (no `{gen_body}` marker — excluded from splicing per the design).

Add, right after the `SPEC_GADGETS` dict definition:

```python
# Default {gen_body} fill when no generator splice is requested -- must
# reproduce the exact hand-written transmit logic each class had before
# {gen_body} existed, so render_spec(c, fenced) with gen_body=None is
# byte-identical to the pre-this-task behavior.
_DEFAULT_GEN_BODY: dict[str, str] = {
    "SPECTRE_V1": "uint8_t v=arr[i]; probe[v*64]=1;",
    "SPECTRE_V4": "uint8_t v=store[i]; probe[v*64]=1;",
    "SPECTRE_V2": "fp(i);",
    "BHI": "fp(i);",
    "RETBLEED": "uint8_t v=arr[i]; probe[v*64]=1;",
    "INCEPTION": "uint8_t v=arr[i]; probe[v*64]=1;",
    "L1TF": "probe[v*64]=1;",
    "MDS": "probe[v*64]=1;",
}
```

- [ ] **Step 5: Update `render_spec`**

```python
def render_spec(vuln_class: str, fenced: bool, gen_body: str | None = None) -> str:
    """Render the C source for `vuln_class`, filling the `{fence}` slot and,
    for classes with a `{gen_body}` marker, the transmit-body slot.

    fenced=True inserts an `lfence` speculation barrier right after the
    speculation gate; fenced=False leaves it empty (baseline, speculative).
    gen_body=None (default) fills with the original hand-written transmit
    logic (_DEFAULT_GEN_BODY) -- byte-identical to pre-generator-splice
    behavior. BENIGN has no {gen_body} marker; gen_body is ignored for it.
    """
    fence = 'asm volatile("lfence":::"memory"); ' if fenced else ''
    text = SPEC_GADGETS[vuln_class].replace("{fence}", fence)
    if "{gen_body}" in text:
        body = gen_body if gen_body is not None else _DEFAULT_GEN_BODY[vuln_class]
        text = text.replace("{gen_body}", body)
    return text
```

- [ ] **Step 6: Run the backward-compat test again**

```bash
.venv_fix/bin/pytest tests/gen/test_synth_backward_compat.py -v
```

Expected: PASS — confirms the placeholder additions didn't change default output.

- [ ] **Step 7: Regenerate and diff against committed files**

```bash
python3 -c "
import sys; sys.path.insert(0, '.')
from gen.synth.spectector_gadgets import generate_spec
generate_spec('/tmp/spec_out_regen')
"
diff -r gen/synth/spec_out /tmp/spec_out_regen
```

Expected: no diff (or only the expected `.jsonl`/`.s`/`.dump` artifacts that `generate_spec` doesn't itself produce — check what `generate_spec` actually writes vs. what's committed; the `.c` files specifically must match exactly).

- [ ] **Step 8: Commit**

```bash
git add gen/synth/spectector_gadgets.py tests/gen/test_synth_backward_compat.py
git commit -m "feat: add {gen_body} placeholder to spectector_gadgets.py, backward-compatible"
```

---

### Task 3: `gen/synth/templates.py` — `{gen_body}` placeholders (8 classes × 2 arches)

**Files:**
- Modify: `gen/synth/templates.py`
- Test: `tests/gen/test_synth_backward_compat.py` (extend from Task 2)

**Interfaces:**
- Produces: `render(p: GadgetParams, gen_body: str | None = None) -> str` — new optional parameter.

- [ ] **Step 1: Capture the golden fixture for `templates.render()` from the UNMODIFIED file**

```bash
python3 -c "
import sys; sys.path.insert(0, '.')
from gen.synth.templates import render
from gen.synth.params import GadgetParams, CLASSES, ARCHES
import json
out = {}
for c in CLASSES:
    for arch in ARCHES:
        p = GadgetParams(vuln_class=c, arch=arch, secret=42, train_iters=100,
                          pad_nops=2, reorder=False, variant_idx=0)
        out[f'{c}_{arch}'] = render(p)
print(json.dumps(out, indent=2))
"
```

Add a second `GOLDEN_TEMPLATES` dict to `tests/gen/test_synth_backward_compat.py` with this output, and a second test:

```python
from gen.synth.templates import render as render_template  # noqa: E402
from gen.synth.params import GadgetParams, CLASSES as ALL_CLASSES, ARCHES  # noqa: E402

GOLDEN_TEMPLATES = {}  # <-- fill in with the captured output before editing templates.py


def test_render_template_unchanged_for_every_class_and_arch():
    for c in ALL_CLASSES:
        for arch in ARCHES:
            key = f"{c}_{arch}"
            assert key in GOLDEN_TEMPLATES, f"missing golden fixture for {key}"
            p = GadgetParams(vuln_class=c, arch=arch, secret=42, train_iters=100,
                              pad_nops=2, reorder=False, variant_idx=0)
            assert render_template(p) == GOLDEN_TEMPLATES[key], f"render() changed for {key}!"
```

- [ ] **Step 2: Run to confirm it passes against the unmodified file**

```bash
.venv_fix/bin/pytest tests/gen/test_synth_backward_compat.py -v
```

Expected: PASS (both the Task 2 and this new test).

- [ ] **Step 3: Add `{gen_body}` placeholders — exact per-class edits**

Make these exact replacements in `gen/synth/templates.py` (each appears once per arch, i.e. 16 total edits — the pattern is identical between `_V1_X86`/`_V1_ARM64` etc., apply to both):

**V1** (`_V1_X86` and `_V1_ARM64`, identical change in both):
```
        /*SPEC_WINDOW*/
        __asm__ __volatile__({pad} ::: "memory");
        volatile uint8_t value = g_arr[index];
        probe_array[value * CACHE_LINE_SIZE] = 1;
```
→
```
        /*SPEC_WINDOW*/
        __asm__ __volatile__({pad} ::: "memory");
        {gen_body}
```

**V4** (`_V4_X86` and `_V4_ARM64`):
```
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    volatile uint8_t value = *ssb_ptr_v4;
    probe_array[value * CACHE_LINE_SIZE] = 1;
```
→
```
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    {gen_body}
```

**V2** (`_V2_X86` and `_V2_ARM64`):
```
__attribute__((noinline)) void speculative_gadget_v2(uint8_t value_to_leak) {{
    probe_array[value_to_leak * CACHE_LINE_SIZE] = 1;
}}
```
→
```
__attribute__((noinline)) void speculative_gadget_v2(uint8_t value_to_leak) {{
    {gen_body}
}}
```

**BHI** (`_BHI_X86` and `_BHI_ARM64`):
```
__attribute__((noinline)) void leak_gadget_bhi(uint8_t value) {{
    probe_array[value * CACHE_LINE_SIZE] = 1;
}}
```
→
```
__attribute__((noinline)) void leak_gadget_bhi(uint8_t value) {{
    {gen_body}
}}
```

**RETBLEED** (`_RETBLEED_X86` and `_RETBLEED_ARM64`):
```
__attribute__((noinline)) void leak_gadget_retbleed(uint8_t value) {{
    probe_array[value * CACHE_LINE_SIZE] = 1;
}}
```
→
```
__attribute__((noinline)) void leak_gadget_retbleed(uint8_t value) {{
    {gen_body}
}}
```

**INCEPTION** (`_INCEPTION_X86` and `_INCEPTION_ARM64`):
```
__attribute__((noinline)) void leak_gadget_inception(uint8_t value) {{
    probe_array[value * CACHE_LINE_SIZE] = 1;
    volatile int dummy = value * 2;
    (void)dummy;
}}
```
→
```
__attribute__((noinline)) void leak_gadget_inception(uint8_t value) {{
    {gen_body}
}}
```

**L1TF** (`_L1TF_X86`):
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            __asm__ __volatile__(
                "1:\n\t"
                "movq (%0), %%rax\n\t"
                "shl $6, %%rax\n\t"
                "movq (%1, %%rax, 1), %%rbx\n"
                "2:\n\t"
                :
                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)
                : "rax", "rbx", "memory");
```
→
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
```

**L1TF** (`_L1TF_ARM64`) — same structural change, replacing:
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            __asm__ __volatile__(
                "1:\n\t"
                "ldr x0, [%0]\n\t"
                "lsl x0, x0, #6\n\t"
                "ldr x1, [%1, x0]\n\t"
                "2:\n\t"
                :
                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)
                : "x0", "x1", "memory");
```
→
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
```

**MDS** (`_MDS_X86`) — replacing:
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            __asm__ __volatile__(
                "xor %%eax, %%eax\n\t"
                "movb %0, %%al\n\t"
                "shl $6, %%rax\n\t"
                "movq (%1, %%rax, 1), %%rbx\n"
                :
                : "r"(secret_mds_byte), "r"(probe_array)
                : "rax", "rbx");
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
```
→
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
```
(Note: MDS's default `gen_body` needs `&secret_mds_byte`, not `secret_mds_byte`, per Task 1's convention table — the default-fill string below reflects the corrected, pointer-based convention this plan standardizes on, not the original x86 template's inconsistent value-based form. This is an intentional, documented behavior change for the *default* fill in this one spot — see the backward-compat note below.)

**MDS** (`_MDS_ARM64`) — replacing:
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            __asm__ __volatile__(
                "eor x0, x0, x0\n\t"
                "ldrb w0, [%0]\n\t"
                "lsl x0, x0, #6\n\t"
                "ldr x1, [%1, x0]\n\t"
                :
                : "r"(&secret_mds_byte), "r"(probe_array)
                : "x0", "x1", "memory");
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
```
→
```
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
```

**BENIGN**: unchanged, no `{gen_body}` marker.

- [ ] **Step 4: Add the default-fill dict and update `render()`**

Add, near `_REORDER`:

```python
# Default {gen_body} fill when no generator splice is requested. For most
# classes this reproduces the exact original hand-written body
# byte-for-byte. EXCEPTION: MDS's x86 template originally passed
# secret_mds_byte BY VALUE while its arm64 template passed &secret_mds_byte
# BY POINTER (a pre-existing inconsistency between arches for the same
# class) -- this plan standardizes MDS on the pointer convention for BOTH
# arches (matching arm64's original form), since the splice algorithm
# needs one consistent convention per class. This means the x86 default
# fill below is NOT byte-identical to the pre-this-task x86 MDS body's
# *pointer expression* (uses "r"(&secret_mds_byte) instead of
# "r"(secret_mds_byte) with a movb-from-register-operand step) -- it IS
# semantically equivalent (same value ends up in the same computation) and
# was re-verified to compile and match the original asm's behavior. This
# is the one intentional non-byte-identical default in this task; every
# other class's default is exactly byte-identical to its pre-task form.
_DEFAULT_GEN_BODY = {
    "SPECTRE_V1": "volatile uint8_t value = g_arr[index]; probe_array[value * CACHE_LINE_SIZE] = 1;",
    "SPECTRE_V4": "volatile uint8_t value = *ssb_ptr_v4; probe_array[value * CACHE_LINE_SIZE] = 1;",
    "SPECTRE_V2": "probe_array[value_to_leak * CACHE_LINE_SIZE] = 1;",
    "BHI": "probe_array[value * CACHE_LINE_SIZE] = 1;",
    "RETBLEED": "probe_array[value * CACHE_LINE_SIZE] = 1;",
    "INCEPTION": "probe_array[value * CACHE_LINE_SIZE] = 1;\n    volatile int dummy = value * 2;\n    (void)dummy;",
    "L1TF_X86": (
        '__asm__ __volatile__(\n'
        '                "1:\\n\\t"\n'
        '                "movq (%0), %%rax\\n\\t"\n'
        '                "shl $6, %%rax\\n\\t"\n'
        '                "movq (%1, %%rax, 1), %%rbx\\n"\n'
        '                "2:\\n\\t"\n'
        '                :\n'
        '                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)\n'
        '                : "rax", "rbx", "memory");'
    ),
    "L1TF_ARM64": (
        '__asm__ __volatile__(\n'
        '                "1:\\n\\t"\n'
        '                "ldr x0, [%0]\\n\\t"\n'
        '                "lsl x0, x0, #6\\n\\t"\n'
        '                "ldr x1, [%1, x0]\\n"\n'
        '                "2:\\n\\t"\n'
        '                :\n'
        '                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)\n'
        '                : "x0", "x1", "memory");'
    ),
    "MDS": (
        '__asm__ __volatile__(\n'
        '                "xor %%eax, %%eax\\n\\t"\n'
        '                "movb (%0), %%al\\n\\t"\n'
        '                "shl $6, %%rax\\n\\t"\n'
        '                "movq (%1, %%rax, 1), %%rbx\\n"\n'
        '                :\n'
        '                : "r"(&secret_mds_byte), "r"(probe_array)\n'
        '                : "rax", "rbx");'
    ),
}


def _default_gen_body(vuln_class: str, arch: str) -> str:
    if vuln_class == "L1TF":
        return _DEFAULT_GEN_BODY["L1TF_X86" if arch == "x86_64" else "L1TF_ARM64"]
    return _DEFAULT_GEN_BODY[vuln_class]
```

Update `render()`:

```python
def render(p: GadgetParams, gen_body: str | None = None) -> str:
    """Thin dispatcher: look up the (class, arch) template and the class's
    reorder-statement pair, then format. gen_body=None fills with the
    original hand-written transmit body (see _DEFAULT_GEN_BODY); BENIGN has
    no {gen_body} marker and ignores this parameter.
    """
    tmpl = TEMPLATES[(p.vuln_class, p.arch)]
    stmt_a, stmt_b = _REORDER[p.vuln_class]
    a, b = (stmt_b, stmt_a) if p.reorder else (stmt_a, stmt_b)
    body = gen_body if gen_body is not None else (
        _default_gen_body(p.vuln_class, p.arch) if "{gen_body}" in tmpl else ""
    )
    return tmpl.format(secret=p.secret, train_iters=p.train_iters,
                        pad=_pad_asm(p.pad_nops), reorder_a=a, reorder_b=b,
                        gen_body=body)
```

(Note: `tmpl.format(..., gen_body=body)` is safe even for BENIGN's templates, which have no `{gen_body}` field — Python's `str.format` ignores unused keyword arguments.)

- [ ] **Step 5: Run the backward-compat tests**

```bash
.venv_fix/bin/pytest tests/gen/test_synth_backward_compat.py -v
```

Expected: the `spectector_gadgets` test still passes unchanged. The `templates` test **will fail for MDS specifically** (documented, intentional convention-standardization change above) — update `GOLDEN_TEMPLATES["MDS_x86_64"]` and `GOLDEN_TEMPLATES["MDS_arm64"]` in the test fixture to the NEW expected output (re-capture just those two keys using the same capture snippet, now against the edited file) rather than treating this as a bug. Every other class/arch must remain byte-identical — if any of those changed, that's a real bug, fix the template edit.

- [ ] **Step 6: Commit**

```bash
git add gen/synth/templates.py tests/gen/test_synth_backward_compat.py
git commit -m "feat: add {gen_body} placeholder to templates.py (8 classes x 2 arches)"
```

---

### Task 4: `gen/decode.py` — `--validate` / `--validate-invisispec` flags

**Files:**
- Modify: `gen/decode.py`

**Interfaces:**
- Consumes: `oracle_splice.splice()` (Task 1), `spectector_gadgets.render_spec(..., gen_body=...)` (Task 2), `templates.render(..., gen_body=...)` (Task 3), `oracle.validators.SpectectorValidator`/`InvisiSpecValidator` (existing, unmodified).

- [ ] **Step 1: Read the current full file**

Already read this session (reproduced in the design doc) — `gen/decode.py`'s `main()` samples, realizes, builds a PDG, and reports parseability. Confirm no drift since that read before editing.

- [ ] **Step 2: Add the convention table and splice-and-validate helper**

Add near the top of `gen/decode.py`, after the existing imports:

```python
from oracle_splice import splice as splice_gen_body               # noqa: E402
from gen.synth import spectector_gadgets as spec_gadgets           # noqa: E402
from gen.synth import templates as synth_templates                 # noqa: E402
from gen.synth.params import GadgetParams                          # noqa: E402

sys.path.insert(0, str(ROOT))
from oracle.validators import SpectectorValidator, InvisiSpecValidator  # noqa: E402

# (class, is_invisispec) -> (convention, input_expr) -- see the design doc
# and Task 1's table. Spectector uses "arr"/"i"/"v"/"store"; InvisiSpec
# uses the harness's real C variable names.
_SPLICE_CONVENTION = {
    ("SPECTRE_V1", False): ("pointer", "arr + i"),
    ("SPECTRE_V1", True):  ("pointer", "g_arr + index"),
    ("SPECTRE_V4", False): ("pointer", "store + i"),
    ("SPECTRE_V4", True):  ("pointer", "ssb_ptr_v4"),
    ("SPECTRE_V2", False): ("value", "i"),
    ("SPECTRE_V2", True):  ("value", "value_to_leak"),
    ("BHI", False):        ("value", "i"),
    ("BHI", True):         ("value", "value"),
    ("RETBLEED", False):   ("pointer", "arr + i"),
    ("RETBLEED", True):    ("value", "value"),
    ("INCEPTION", False):  ("pointer", "arr + i"),
    ("INCEPTION", True):   ("value", "value"),
    ("L1TF", False):       ("value", "v"),
    ("L1TF", True):        ("pointer", "g_l1tf_secret_page + 0x100"),
    ("MDS", False):        ("value", "v"),
    ("MDS", True):         ("pointer", "&secret_mds_byte"),
}


def build_gen_body(realized, cls, arch, is_invisispec):
    """cls == 'BENIGN' is not splicable -- caller must not call this for
    BENIGN (falls back to the default hand-written body instead)."""
    convention, input_expr = _SPLICE_CONVENTION[(cls, is_invisispec)]
    output_expr = "probe_array" if is_invisispec else "probe"
    asm_text, clobbers = splice_gen_body(realized, arch, convention, input_expr, output_expr)
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    return (
        f'__asm__ __volatile__(\n"{asm_text}"\n'
        f': : "r"({input_expr}), "r"({output_expr}) : {clobber_str}, "memory");'
    )
```

- [ ] **Step 3: Add the CLI flags and validation loop**

In `main()`, after the existing `ap.add_argument("--gen", ...)` line, add:

```python
    ap.add_argument("--validate", action="store_true",
                     help="run each sample through Spectector for a real leak/safe verdict "
                          "(opt-in, ~30-300s per sample; not run for BENIGN, which has no "
                          "splicable secret input)")
    ap.add_argument("--validate-invisispec", action="store_true",
                     help="also run InvisiSpec (real execution, ~10min/gadget) -- requires "
                          "--validate")
```

After the existing PDG-parseability print block for each sample (the `ok = len(pdg.nodes) >= 2` section), add:

```python
        if args.validate and args.cls != "BENIGN":
            gen_body = build_gen_body(concrete, args.cls, args.arch, is_invisispec=False)
            spec_c = spec_gadgets.render_spec(args.cls, fenced=False, gen_body=gen_body)
            spec_path = ROOT / "oracle" / "build" / f"gen_spec_{args.cls}_{i}.c"
            spec_path.parent.mkdir(parents=True, exist_ok=True)
            spec_path.write_text(spec_c)
            spec_result = SpectectorValidator(str(ROOT)).validate({
                "gadget_id": f"gen_{args.cls}_{i}", "vuln_class": args.cls,
                "spectector_source": str(spec_path.relative_to(ROOT)),
                "adjudicable": "yes",
            })
            print(f"    spectector: {spec_result.verdict} (signal={spec_result.signal})")

            if args.validate_invisispec:
                gen_body_iv = build_gen_body(concrete, args.cls, args.arch, is_invisispec=True)
                p = GadgetParams(vuln_class=args.cls, arch=args.arch, secret=42,
                                  train_iters=100, pad_nops=2, reorder=False, variant_idx=i)
                iv_c = synth_templates.render(p, gen_body=gen_body_iv)
                iv_path = ROOT / "oracle" / "build" / f"gen_iv_{args.cls}_{i}.c"
                iv_path.write_text(iv_c)
                # timeout=5400 (90min): InvisiSpecValidator's own default is
                # 1800s (30min) -- the WSL session this repo already merged
                # (SPECDISCOVER_WSL_ORACLE_SETUP.md) found that default
                # silently misreports real leaks as unrunnable/timeout on
                # slower-than-the-original-Mac hardware, and fixed it to
                # 5400s in oracle/run_cross_validation.py and
                # oracle/build_leak_dataset.py -- but NOT in this Validator
                # class's own default, so callers that construct it directly
                # (like this one) must pass the longer timeout explicitly or
                # silently reintroduce that exact already-found bug.
                iv_result = InvisiSpecValidator(str(ROOT), timeout=5400).validate({
                    "gadget_id": f"gen_{args.cls}_{i}", "vuln_class": args.cls,
                    "execution_source": str(iv_path.relative_to(ROOT)),
                    "adjudicable": "yes",
                })
                print(f"    invisispec: {iv_result.verdict} (signal={iv_result.signal})")
        elif args.validate and args.cls == "BENIGN":
            print("    (--validate skipped: BENIGN has no splicable secret input)")
```

Verified this session: `InvisiSpecValidator.__init__(self, repo_root, timeout=1800)` / `.validate(gadget)` (`oracle/validators/invisispec_validator.py`) matches `SpectectorValidator`'s `(repo_root)` / `.validate(gadget_dict)` pattern exactly, same `execution_source`/`gadget_id`/`vuln_class`/`adjudicable` keys — the code above is confirmed correct against the real file, not assumed.

- [ ] **Step 4: Manual smoke test — flags parse and Spectector path runs**

```bash
python3 gen/decode.py --class SPECTRE_V1 --arch x86_64 --n 1 --validate
```

Expected: prints the existing PDG-parseability line, then a `spectector: <verdict> (signal=...)` line. Verdict is whatever it is (likely `unrunnable` for raw model output given the known 2.3% syntactic validity rate) — this step confirms the PLUMBING works end-to-end, not that the verdict is `leak`. Do not treat `unrunnable` here as a failure of this task.

- [ ] **Step 5: Commit**

```bash
git add gen/decode.py
git commit -m "feat: wire Spectector/InvisiSpec into decode.py via --validate flags"
```

---

### Task 5: Integration smoke test with a known-good hand-written sequence

**Files:**
- Create: `tests/gen/test_oracle_splice_integration.py`

**Interfaces:**
- Consumes: `oracle_splice.splice()`, `spec_gadgets.render_spec()`, `SpectectorValidator` — all from prior tasks, unmodified.

- [ ] **Step 1: Write a test using a HAND-WRITTEN, known-good realized sequence for SPECTRE_V1/x86_64**

```python
"""Integration smoke test: splice a HAND-WRITTEN (not model-sampled)
known-good V1 sequence through the full pipeline and confirm Spectector
reports a real leak -- validates the plumbing against a case with a known
expected answer, before trusting it on real (mostly-invalid, per
eval/check_syntactic_validity_results.txt) generator output."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT))

from oracle_splice import splice  # noqa: E402
from gen.synth.spectector_gadgets import render_spec  # noqa: E402
from oracle.validators import SpectectorValidator  # noqa: E402


def test_hand_written_v1_leak_confirmed_via_real_spectector():
    # A minimal, hand-verified bounds-check-bypass load+transmit sequence
    # (load through the seeded pointer, scale, write) -- NOT sampled from
    # the model. If this doesn't come back "leak", the splice plumbing
    # itself is broken, not the generator.
    realized = ["movzbl (%rax), %ebx"]
    asm_text, clobbers = splice(realized, "x86_64", "pointer", "arr + i", "probe")
    clobber_str = ", ".join(f'"{c.lstrip("%")}"' for c in clobbers)
    gen_body = (
        f'__asm__ __volatile__(\n"{asm_text}"\n'
        f': : "r"(arr + i), "r"(probe) : {clobber_str}, "memory");'
    )
    c_src = render_spec("SPECTRE_V1", fenced=False, gen_body=gen_body)
    out_path = ROOT / "oracle" / "build" / "test_integration_v1.c"
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(c_src)

    result = SpectectorValidator(str(ROOT)).validate({
        "gadget_id": "test_integration_v1", "vuln_class": "SPECTRE_V1",
        "spectector_source": str(out_path.relative_to(ROOT)),
        "adjudicable": "yes",
    })
    assert result.verdict == "leak", (
        f"expected a real leak verdict for a hand-verified V1 sequence, got "
        f"{result.verdict!r} -- the splice plumbing itself is broken, not "
        f"generator quality (this test doesn't use the generator at all)"
    )
```

- [ ] **Step 2: Run it**

```bash
.venv_fix/bin/pytest tests/gen/test_oracle_splice_integration.py -v
```

Requires Docker + the `specdiscover-spectector:pinned` image (confirmed present locally this session). Expected: PASS. If it does NOT pass, do not proceed to Task 6 — debug the splice/render/validate plumbing here first, since this is the one case where the correct answer is known in advance.

- [ ] **Step 3: Commit**

```bash
git add tests/gen/test_oracle_splice_integration.py
git commit -m "test: integration smoke test proving splice plumbing against a known-good V1 sequence"
```

---

### Task 6: Full run and honest findings report

**Files:**
- Create: `gen/ORACLE_VALIDATION_FINDINGS.md`

**Interfaces:**
- Consumes: everything above, run for real.

- [ ] **Step 1: Run `--validate` (Spectector only, fast) across all 7 splicable classes on x86_64**

(SPECTRE_V1, SPECTRE_V4, SPECTRE_V2, BHI, RETBLEED, INCEPTION, L1TF, MDS — 8 classes; BENIGN excluded per design.)

```bash
for cls in SPECTRE_V1 SPECTRE_V4 SPECTRE_V2 BHI RETBLEED INCEPTION L1TF MDS; do
  python3 gen/decode.py --class "$cls" --arch x86_64 --n 10 --validate 2>&1 | tee -a /tmp/oracle_validate_run.txt
done
```

- [ ] **Step 2: Report the real distribution honestly**

Count leak/safe/unrunnable/unsupported per class from `/tmp/oracle_validate_run.txt`. Per the design doc's own testing-plan note: **`unrunnable` is expected to dominate**, given the 2.3% syntactic validity baseline — this is the correct, informative outcome, not a bug in this task. Write `gen/ORACLE_VALIDATION_FINDINGS.md` reporting the real counts, honestly, without spinning a mostly-unrunnable result as a success or a failure — it's the accurate current state, and the number that the *next* brainstorm (improving generator validity) should move.

- [ ] **Step 3: Commit**

```bash
git add gen/ORACLE_VALIDATION_FINDINGS.md
git commit -m "results: first real Spectector-verdict run on generator output (8 classes, x86_64)"
```

---

## Self-Review Notes

- **Spec coverage**: every component from the design doc has a task — `oracle_splice.py` (Task 1), both template files' `{gen_body}` wiring (Tasks 2-3), `decode.py` flags (Task 4), the known-good integration check (Task 5), and the honest first real-world report (Task 6).
- **No placeholders**: Tasks 2-3's template edits use exact, session-verified current text (read in full this session) and exact replacement text. Task 1's low-level asm-emission logic is intentionally left to TDD iteration against real-compile tests rather than hand-specified — generating correct assembly from scratch needs empirical verification, and pretending false precision there would be worse than an honest, testable contract.
- **Backward compatibility is a first-class, tested requirement** in Tasks 2-3, with the one intentional, explicitly-flagged exception (MDS's x86 convention standardization) called out rather than silently introduced.
- **Known risk flagged upfront, not hidden**: Task 6 expects `unrunnable` to dominate given the already-measured 2.3% syntactic validity rate. This is stated in the design doc, this plan, and the task itself — three places — specifically so it isn't later mistaken for a bug in this implementation.
- **Type/interface consistency**: `splice()`'s signature (Task 1) is used identically in Task 4's `build_gen_body` and Task 5's integration test. `render_spec(..., gen_body=...)` and `render(..., gen_body=...)` signatures (Tasks 2-3) are used identically in Task 4. The `_SPLICE_CONVENTION` table in Task 4 matches Task 1's table exactly (same source, transcribed once, referenced not re-derived).
- **`InvisiSpecValidator`'s interface was verified against the real file this session** (not assumed) — confirmed to match `SpectectorValidator`'s `(repo_root)` / `.validate(gadget_dict)` pattern exactly. One real risk found and fixed in the plan itself: the class's own default `timeout=1800` is shorter than the 5400s this repo's own WSL session already found necessary on non-original hardware — Task 4's code explicitly passes `timeout=5400` rather than silently reintroducing that already-diagnosed bug.
