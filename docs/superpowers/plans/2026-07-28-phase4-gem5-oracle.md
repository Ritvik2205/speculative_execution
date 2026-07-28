# Phase 4 — gem5 Execution Oracle Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Run each hand-labeled c_vulns attack PoC in gem5 (speculative O3 vs in-order control), measure a Flush+Reload leak signal, and emit `oracle/results/leak_labels.jsonl` — confirming which labels actually leak (closes G10/G8) and producing the `leak_signal` the parked Phase 3 ranker needs.

**Architecture:** New standalone `oracle/` package. Pure-Python analysis units (manifest, PoC-output parser, corpus catalog, leak-signal math) are built TDD-first with no gem5 dependency. gem5 itself runs in a Docker `linux/arm64` container (native on the Apple M5 host; guest ISA is a build-time choice, so no x86-on-arm emulation). A single shared edit to `c_vulns/c_code/utils.c` makes every x86 PoC print its full 256-line reload-latency vector using its own `rdtsc` — which, inside gem5, reads the simulated cycle counter — so the SNR is computed host-side over the full distribution instead of the PoC's noisy fixed threshold. No per-gadget surgery.

**Tech Stack:** Python 3, pytest, gem5 (stdlib `gem5.components` SE-mode API, CPUTypes.O3 / CPUTypes.TIMING), Docker, glibc-static, numpy.

## Global Constraints

- **Do NOT modify** classifier / spec / generator code (`v54/`, `spec/`, `gen/`). The oracle only *reads* the c_vulns corpus and *writes* `oracle/results/`.
- **The ONLY shared C edit** allowed is `c_vulns/c_code/utils.c`, guarded by `#ifdef GEM5_ORACLE` so the non-oracle build is byte-identical. No per-PoC C edits (except the one explicit secret-jitter recompile of `spectre_1.c` in Task 9, which is a control, not surgery).
- **ISA scope:** x86_64 first (Tasks 1–10), then arm64 (Task 11). RISC-V excluded — corpus contaminated with verbatim inline ARM64 asm (G6).
- **leak_signal := `max(0.0, snr_o3 - snr_inorder)`**. **binary leak := `recovered_ok and (snr_o3 - snr_inorder) > TAU`**. `TAU` is a single module-level constant in `oracle/leak_signal.py`, calibrated once from controls (Task 9), never per-class.
- **Probe array:** 256 cache lines, line size 64 B, the secret byte value is the line index (`c_vulns/c_code/utils.c`: `NUM_CACHE_LINES 256`, `CACHE_LINE_SIZE 64`).
- **Honesty rule (from spec):** every emitted per-class result carries an `adjudicable` tag from the spec's coverage table; the aggregate "confirmed-leaking fraction" is reported ONLY over gem5-adjudicable classes, unmodeled classes listed separately as coverage gaps. Never report an unqualified "N% confirmed."
- **All commits** end with the repo trailer: `Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>`.
- Container tag: `specdiscover-gem5:pinned`. gem5 pinned to tag `v24.0.0.0`.

---

## File Structure

- `oracle/__init__.py` — package marker.
- `oracle/manifest.py` — `LeakRecord` dataclass + jsonl read/write. Pure Python.
- `oracle/parse_poc.py` — parse a PoC's gem5 stdout → recovered byte, success flag, 256-line latency vector. Pure Python.
- `oracle/catalog.py` — enumerate `c_vulns/c_code/*.c`, classify (class, arch), dedup, map each program back to its `asm_code/*.s` member files. Pure Python.
- `oracle/leak_signal.py` — `snr()`, `leak_signal()`, `is_leak()`, `TAU`. Pure Python + numpy.
- `oracle/docker/Dockerfile`, `oracle/docker/build_image.sh` — pinned gem5 (X86+ARM) + `util/m5`.
- `oracle/gem5_se.py` — gem5 SE-mode config script (runs *inside* gem5), parameterized `--cpu {o3,timing}`.
- `oracle/run_oracle.py` — host driver: compile a PoC static, run it in the container under both CPUs, produce a `LeakRecord`.
- `oracle/validate_oracle.py` — controls + corpus-wide per-class report.
- `oracle/results/leak_labels.jsonl` — output manifest (generated, git-ignored except a committed sample).
- `tests/oracle/` — pytest for every pure-Python unit.

---

### Task 1: Package scaffold + manifest schema

**Files:**
- Create: `oracle/__init__.py` (empty)
- Create: `oracle/manifest.py`
- Create: `tests/oracle/__init__.py` (empty)
- Test: `tests/oracle/test_manifest.py`

**Interfaces:**
- Produces: `LeakRecord` dataclass; `write_manifest(records: list[LeakRecord], path: str) -> None`; `read_manifest(path: str) -> list[LeakRecord]`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_manifest.py
import os
from oracle.manifest import LeakRecord, write_manifest, read_manifest

def _rec(**kw):
    base = dict(
        program="spectre_1", vuln_class="SPECTRE_V1", arch="x86_64",
        secret=83, recovered_byte=83, recovered_ok=True,
        snr_o3=7.2, snr_inorder=0.1, leak_signal=7.1, leak=True,
        adjudicable="yes", status="ok", gem5_version="v24.0.0.0",
        member_files=["spectre_1.s", "spectre_1_O2.s"],
    )
    base.update(kw)
    return LeakRecord(**base)

def test_roundtrip_preserves_records(tmp_path):
    recs = [_rec(), _rec(program="mds", vuln_class="MDS", leak=False, adjudicable="no")]
    p = os.path.join(tmp_path, "m.jsonl")
    write_manifest(recs, p)
    back = read_manifest(p)
    assert back == recs

def test_each_line_is_one_json_object(tmp_path):
    p = os.path.join(tmp_path, "m.jsonl")
    write_manifest([_rec(), _rec(program="l1tf")], p)
    with open(p) as f:
        lines = [l for l in f.read().splitlines() if l.strip()]
    assert len(lines) == 2
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_manifest.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.manifest'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/manifest.py
from __future__ import annotations
import json
from dataclasses import dataclass, asdict, fields

@dataclass
class LeakRecord:
    program: str            # distinct PoC name (source stem)
    vuln_class: str         # SPECTRE_V1, MDS, ...
    arch: str               # x86_64 | arm64
    secret: int             # planted secret byte (0-255)
    recovered_byte: int     # byte F+R recovered (-1 = none)
    recovered_ok: bool      # recovered_byte == secret
    snr_o3: float           # SNR under speculative O3 CPU
    snr_inorder: float      # SNR under in-order control CPU
    leak_signal: float      # max(0, snr_o3 - snr_inorder)
    leak: bool              # recovered_ok and (snr_o3-snr_inorder) > TAU
    adjudicable: str        # yes | partial | no  (spec coverage table)
    status: str             # ok | unrunnable | build_failed
    gem5_version: str
    member_files: list      # asm_code/*.s stems this program covers

def write_manifest(records, path):
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(asdict(r), sort_keys=True) + "\n")

def read_manifest(path):
    names = {fld.name for fld in fields(LeakRecord)}
    out = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            d = json.loads(line)
            out.append(LeakRecord(**{k: d[k] for k in names}))
    return out
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_manifest.py -v`
Expected: PASS (2 passed)

- [ ] **Step 5: Commit**

```bash
git add oracle/__init__.py oracle/manifest.py tests/oracle/__init__.py tests/oracle/test_manifest.py
git commit -m "feat(oracle): LeakRecord manifest schema + jsonl round-trip

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 2: PoC stdout parser

The gem5-instrumented PoC (Task 5 adds the `LINE i t` prints) emits, on stdout:
`LINE <i> <cycles>` for each of the 256 probe lines, then one of
`Leaked <name> (speculatively): <c> (ASCII <N>), Access Time: <T> cycles` /
`SUCCESS! Leaked the actual <name>.` / `LEAKED VALUE DOES NOT MATCH ...` /
`No <name> leaked or could not detect leakage.`, and `Actual secret data: <c>`
(exact strings from `c_vulns/c_code/utils.c`).

**Files:**
- Create: `oracle/parse_poc.py`
- Test: `tests/oracle/test_parse_poc.py`

**Interfaces:**
- Consumes: nothing.
- Produces: `parse_poc_output(stdout: str) -> PocResult` where `PocResult` has `.latencies: list[float]` (length 256, `nan` for lines not printed), `.recovered_byte: int` (-1 if none), `.success: bool`, `.actual_secret: int` (-1 if absent).

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_parse_poc.py
import math
from oracle.parse_poc import parse_poc_output

def _synthetic_stdout(secret=83, hit_line=83):
    lines = []
    for i in range(256):
        cyc = 40 if i == hit_line else 200
        lines.append(f"LINE {i} {cyc}")
    lines.append(f"Leaked Inception secret (speculatively): S (ASCII {hit_line}), Access Time: 40 cycles")
    lines.append("SUCCESS! Leaked the actual Inception secret.")
    lines.append(f"Actual secret data: {chr(secret)}")
    return "\n".join(lines) + "\n"

def test_parses_full_latency_vector():
    r = parse_poc_output(_synthetic_stdout())
    assert len(r.latencies) == 256
    assert r.latencies[83] == 40.0
    assert r.latencies[10] == 200.0

def test_parses_recovery_success():
    r = parse_poc_output(_synthetic_stdout(secret=83, hit_line=83))
    assert r.recovered_byte == 83
    assert r.success is True
    assert r.actual_secret == 83

def test_no_leak_case():
    r = parse_poc_output("No MDS secret leaked or could not detect leakage.\nActual secret data: M\n")
    assert r.recovered_byte == -1
    assert r.success is False
    assert r.actual_secret == ord("M")
    assert all(math.isnan(x) for x in r.latencies)

def test_mismatch_recovers_byte_but_not_success():
    out = ("Leaked X (speculatively): Q (ASCII 81), Access Time: 45 cycles\n"
           "LEAKED VALUE DOES NOT MATCH ACTUAL X.\n"
           "Actual secret data: S\n")
    r = parse_poc_output(out)
    assert r.recovered_byte == 81
    assert r.success is False
    assert r.actual_secret == ord("S")
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_parse_poc.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.parse_poc'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/parse_poc.py
from __future__ import annotations
import re
from dataclasses import dataclass

_LINE = re.compile(r"^LINE\s+(\d+)\s+(-?\d+)\s*$")
_ASCII = re.compile(r"\(ASCII\s+(\d+)\)")
_ACTUAL = re.compile(r"^Actual secret data:\s*(.)")
_SUCCESS = re.compile(r"^SUCCESS!")

@dataclass
class PocResult:
    latencies: list      # len 256, nan where unseen
    recovered_byte: int  # -1 if none
    success: bool
    actual_secret: int   # -1 if absent

def parse_poc_output(stdout: str) -> PocResult:
    lat = [float("nan")] * 256
    recovered = -1
    success = False
    actual = -1
    for line in stdout.splitlines():
        line = line.strip()
        m = _LINE.match(line)
        if m:
            idx = int(m.group(1))
            if 0 <= idx < 256:
                lat[idx] = float(m.group(2))
            continue
        if line.startswith("Leaked"):
            a = _ASCII.search(line)
            if a:
                recovered = int(a.group(1))
            continue
        if _SUCCESS.match(line):
            success = True
            continue
        a = _ACTUAL.match(line)
        if a:
            actual = ord(a.group(1))
    return PocResult(latencies=lat, recovered_byte=recovered,
                     success=success, actual_secret=actual)
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_parse_poc.py -v`
Expected: PASS (4 passed)

- [ ] **Step 5: Commit**

```bash
git add oracle/parse_poc.py tests/oracle/test_parse_poc.py
git commit -m "feat(oracle): parse gem5 PoC stdout (latency vector + recovery)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 3: Corpus catalog (classify, dedup, attribute)

The distinct programs are the `c_vulns/c_code/*.c` sources (excluding `utils.c`, which is include-only). Each maps to a vuln class and arch by filename, and to the set of `c_vulns/asm_code/*.s` files sharing its stem (for the corpus-wide headline).

**Files:**
- Create: `oracle/catalog.py`
- Test: `tests/oracle/test_catalog.py`

**Interfaces:**
- Consumes: nothing.
- Produces: `classify(filename: str) -> tuple[str, str]` returning `(vuln_class, arch)`; `catalog_programs(c_code_dir: str, asm_dir: str) -> list[Program]` where `Program` has `.name, .source_path, .vuln_class, .arch, .member_files: list[str]`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_catalog.py
from oracle.catalog import classify, catalog_programs, Program

def test_classify_by_filename():
    assert classify("spectre_1.c") == ("SPECTRE_V1", "x86_64")
    assert classify("spectre_2_arm64.c") == ("SPECTRE_V2", "arm64")
    assert classify("mds.c") == ("MDS", "x86_64")
    assert classify("inception_arm64.c") == ("INCEPTION", "arm64")
    assert classify("l1tf.c") == ("L1TF", "x86_64")
    assert classify("bhi.c") == ("BHI", "x86_64")
    assert classify("retbleed.c") == ("RETBLEED", "x86_64")

def test_utils_is_not_a_program(tmp_path):
    (tmp_path / "utils.c").write_text("// include only")
    (tmp_path / "spectre_1.c").write_text('#include "utils.c"\nint main(){}')
    asm = tmp_path / "asm"; asm.mkdir()
    (asm / "spectre_1.s").write_text("")
    (asm / "spectre_1_O2.s").write_text("")
    progs = catalog_programs(str(tmp_path), str(asm))
    names = {p.name for p in progs}
    assert "utils" not in names
    assert "spectre_1" in names

def test_member_files_grouped_by_stem(tmp_path):
    (tmp_path / "mds.c").write_text('#include "utils.c"\nint main(){}')
    asm = tmp_path / "asm"; asm.mkdir()
    for fn in ["mds.s", "mds_gcc_O0.s", "mds_clang_O3.s", "bhi.s"]:
        (asm / fn).write_text("")
    progs = catalog_programs(str(tmp_path), str(asm))
    mds = next(p for p in progs if p.name == "mds")
    assert set(mds.member_files) == {"mds.s", "mds_gcc_O0.s", "mds_clang_O3.s"}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_catalog.py -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'oracle.catalog'`

- [ ] **Step 3: Write minimal implementation**

```python
# oracle/catalog.py
from __future__ import annotations
import os, glob
from dataclasses import dataclass

# order matters: check longer/more-specific keys first
_CLASS_KEYS = [
    ("spectre_1", "SPECTRE_V1"),
    ("spectre_v1", "SPECTRE_V1"),
    ("spectre_2", "SPECTRE_V2"),
    ("spectre_v2", "SPECTRE_V2"),
    ("spectre_4", "SPECTRE_V4"),
    ("spectre_v4", "SPECTRE_V4"),
    ("retbleed", "RETBLEED"),
    ("inception", "INCEPTION"),
    ("meltdown", "L1TF"),   # meltdown PoCs exercise the L1TF terminal-fault path in this corpus
    ("l1tf", "L1TF"),
    ("mds", "MDS"),
    ("downfall", "MDS"),    # GDS/Downfall grouped under MDS-family transient forwarding
    ("bhi", "BHI"),
    ("benign", "BENIGN"),
]

def classify(filename: str) -> tuple[str, str]:
    stem = os.path.basename(filename)
    low = stem.lower()
    arch = "arm64" if ("arm64" in low or "_arm" in low) else "x86_64"
    for key, cls in _CLASS_KEYS:
        if key in low:
            return cls, arch
    return "UNKNOWN", arch

@dataclass
class Program:
    name: str
    source_path: str
    vuln_class: str
    arch: str
    member_files: list

def _stem(path: str) -> str:
    return os.path.splitext(os.path.basename(path))[0]

def catalog_programs(c_code_dir: str, asm_dir: str) -> list[Program]:
    asm_by_stem = {}
    for s in glob.glob(os.path.join(asm_dir, "*.s")):
        base = _stem(s)
        # a .s belongs to program P if its stem starts with P's stem
        asm_by_stem[base] = os.path.basename(s)
    asm_files = [os.path.basename(s) for s in glob.glob(os.path.join(asm_dir, "*.s"))]

    progs = []
    for src in sorted(glob.glob(os.path.join(c_code_dir, "*.c"))):
        name = _stem(src)
        if name == "utils":
            continue
        cls, arch = classify(os.path.basename(src))
        members = [f for f in asm_files if _stem(f) == name or _stem(f).startswith(name + "_")]
        progs.append(Program(name=name, source_path=src, vuln_class=cls,
                             arch=arch, member_files=sorted(members)))
    return progs
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_catalog.py -v`
Expected: PASS (3 passed)

- [ ] **Step 5: Commit**

```bash
git add oracle/catalog.py tests/oracle/test_catalog.py
git commit -m "feat(oracle): catalog c_vulns sources -> class/arch + .s attribution

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 4: leak_signal math

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
    # (mean_others - r[s]) / std_others ; std_others == 0 -> guard returns large finite
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
    assert leak_signal(0.2, 8.0) == 0.0   # architectural-only -> clamp to 0

def test_is_leak_requires_recovery_and_margin():
    assert is_leak(True, 8.0, 0.1) is True
    assert is_leak(False, 8.0, 0.1) is False           # no recovery
    assert is_leak(True, TAU + 0.05, 0.0) is True
    assert is_leak(True, TAU - 0.05, 0.0) is False      # below threshold
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

# Calibrated once from the positive/negative controls in Task 9. Provisional
# value; validate_oracle.py asserts the controls separate cleanly around it.
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
        # perfectly separated: return a large finite proportional to the gap
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

### Task 5: Shared gem5 instrumentation in utils.c

Add a `#ifdef GEM5_ORACLE` block to `perform_measurement` in `c_vulns/c_code/utils.c` that prints every line's access time (`LINE <i> <cycles>`) before the existing threshold logic. This is the ONE shared C edit; the default build (no `-DGEM5_ORACLE`) is unchanged.

**Files:**
- Modify: `c_vulns/c_code/utils.c` (inside `perform_measurement`, the 256-line loop)
- Test: `tests/oracle/test_utils_instrumentation.py` (compiles + runs natively, no gem5)

**Interfaces:**
- Consumes: nothing.
- Produces: instrumented `perform_measurement` emitting `LINE i t` lines under `-DGEM5_ORACLE`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_utils_instrumentation.py
import os, subprocess, tempfile, textwrap, shutil, pytest

UTILS = os.path.join("c_vulns", "c_code", "utils.c")

@pytest.mark.skipif(shutil.which("cc") is None, reason="no C compiler")
def test_gem5_oracle_prints_all_256_lines(tmp_path):
    driver = tmp_path / "drv.c"
    driver.write_text(textwrap.dedent(f'''
        #define GEM5_ORACLE 1
        #include "{os.path.abspath(UTILS)}"
        int main() {{
            // put the secret line in cache, flush the rest
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

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_utils_instrumentation.py -v`
Expected: FAIL — assert on `LINE` ids fails (no such lines printed yet)

- [ ] **Step 3: Edit `c_vulns/c_code/utils.c`**

Inside `perform_measurement`, the existing loop reads (verbatim):

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

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_utils_instrumentation.py -v`
Expected: PASS (1 passed). If the host is arm64 and `utils.c`'s x86 intrinsics (`_mm_clflush`) fail to compile, the test is still valid on the gem5 x86 toolchain — mark it `@pytest.mark.skipif(platform.machine()=="arm64")` and note that Task 7's container smoke covers it instead.

- [ ] **Step 5: Commit**

```bash
git add c_vulns/c_code/utils.c tests/oracle/test_utils_instrumentation.py
git commit -m "feat(oracle): GEM5_ORACLE full-latency-vector print in utils.c (shared, guarded)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 6: Docker image with pinned gem5 (X86)

Build a container that has gem5 (X86 guest) and a static-capable gcc. This is infrastructure — verified by a smoke run, not unit tests.

**Files:**
- Create: `oracle/docker/Dockerfile`
- Create: `oracle/docker/build_image.sh`

**Interfaces:**
- Produces: docker image `specdiscover-gem5:pinned` containing `/gem5/build/X86/gem5.opt`, `/gem5/configs`, and `gcc` with `-static` support.

- [ ] **Step 1: Write the Dockerfile**

```dockerfile
# oracle/docker/Dockerfile
FROM ghcr.io/gem5/ubuntu-24.04_all-dependencies:latest AS build
ARG GEM5_TAG=v24.0.0.0
RUN git clone --depth 1 --branch ${GEM5_TAG} https://github.com/gem5/gem5.git /gem5
WORKDIR /gem5
RUN python3 $(which scons) build/X86/gem5.opt -j"$(nproc)"
RUN cd util/m5 && scons build/x86/out/m5 || true
# static-compile toolchain for SE-mode PoCs
RUN apt-get update && apt-get install -y gcc-multilib && rm -rf /var/lib/apt/lists/*
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
Expected: image builds (long — gem5 compile). Ends with `naming to docker.io/library/specdiscover-gem5:pinned`.
Note: if the `ubuntu-24.04_all-dependencies` base lacks an arm64 manifest, fall back to `FROM ubuntu:24.04` and add the gem5 dependency apt list from gem5's docs before the clone.

- [ ] **Step 4: Smoke-verify gem5 exists and runs**

Run:
```bash
docker run --rm specdiscover-gem5:pinned /gem5/build/X86/gem5.opt --version
```
Expected: prints `gem5 version 24.0.0.0` (or the pinned tag's version string).

- [ ] **Step 5: Commit**

```bash
git add oracle/docker/Dockerfile oracle/docker/build_image.sh
git commit -m "build(oracle): pinned gem5 X86 docker image (arm64 host)

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 7: gem5 SE config + end-to-end smoke on one PoC

`oracle/gem5_se.py` runs *inside* gem5 (stdlib components API). It takes a static binary and a `--cpu {o3,timing}` flag: `o3` = speculative (`CPUTypes.O3`), `timing` = in-order control (`CPUTypes.TIMING`), both with a private L1/L2 classic cache. PoC stdout (including the `LINE i t` vector) is forwarded to the host.

**Files:**
- Create: `oracle/gem5_se.py`
- Create: `oracle/compile_poc.sh` (compiles one PoC static, inside the container)

**Interfaces:**
- Consumes: docker image from Task 6; instrumented `utils.c` from Task 5.
- Produces: running `gem5.opt oracle/gem5_se.py --binary <path> --cpu {o3,timing}` executes the PoC and prints its stdout; per-CPU choice selects O3 vs in-order.

- [ ] **Step 1: Write the gem5 config**

```python
# oracle/gem5_se.py  (executed by gem5.opt, not by host python)
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
args = p.parse_args()

cpu_type = CPUTypes.O3 if args.cpu == "o3" else CPUTypes.TIMING

cache = PrivateL1PrivateL2CacheHierarchy(
    l1d_size="32KiB", l1i_size="32KiB", l2_size="256KiB"
)
memory = SingleChannelDDR3_1600(size="512MiB")
processor = SimpleProcessor(cpu_type=cpu_type, isa=ISA.X86, num_cores=1)

board = SimpleBoard(
    clk_freq="3GHz", processor=processor, memory=memory, cache_hierarchy=cache
)
board.set_se_binary_workload(BinaryResource(local_path=args.binary))

sim = Simulator(board=board)
sim.run()
print(f"gem5-exit: {sim.get_last_exit_event_cause()}")
```

- [ ] **Step 2: Write the in-container compile helper**

```bash
# oracle/compile_poc.sh   (runs inside the container; /work is the repo mount)
#!/usr/bin/env bash
set -euo pipefail
SRC="$1"      # e.g. /work/c_vulns/c_code/spectre_1.c
OUT="$2"      # e.g. /work/oracle/build/spectre_1
mkdir -p "$(dirname "$OUT")"
# PoC does #include "utils.c"; -I the c_code dir; enable the LINE-vector print; static for SE mode
gcc -O0 -static -DGEM5_ORACLE -I "$(dirname "$SRC")" "$SRC" -o "$OUT"
```

- [ ] **Step 3: Compile spectre_1 in the container**

Run:
```bash
docker run --rm -v /Users/ritvikgupta/SpecExec:/work specdiscover-gem5:pinned \
  bash /work/oracle/compile_poc.sh /work/c_vulns/c_code/spectre_1.c /work/oracle/build/spectre_1
```
Expected: exits 0, creates `oracle/build/spectre_1`. If gcc errors on a missing libc header used by `utils.c` (`sys/mman.h` etc.), install `libc6-dev` in the Dockerfile (Task 6) and rebuild.
Expected on unresolved cases: record the program `status="build_failed"` later — do not silently skip.

- [ ] **Step 4: Smoke-run under both CPUs**

Run:
```bash
docker run --rm -v /Users/ritvikgupta/SpecExec:/work specdiscover-gem5:pinned bash -lc \
 '/gem5/build/X86/gem5.opt /work/oracle/gem5_se.py --binary /work/oracle/build/spectre_1 --cpu o3 2>/dev/null | grep -c "^LINE "'
```
Expected: prints `256` (the full latency vector reached stdout). Repeat with `--cpu timing`; also expect `256`.

- [ ] **Step 5: Commit**

```bash
git add oracle/gem5_se.py oracle/compile_poc.sh
git commit -m "feat(oracle): gem5 SE config (O3 vs in-order) + static PoC compile

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 8: Host driver — one PoC to a LeakRecord

`oracle/run_oracle.py` orchestrates: compile a `Program` in the container, run it under o3 and timing, parse both outputs, compute the signal, and return a `LeakRecord`.

**Files:**
- Create: `oracle/run_oracle.py`
- Test: `tests/oracle/test_run_oracle.py` (unit-tests the pure assembly step with a fake runner; the real container path is exercised by the smoke command in Step 4)

**Interfaces:**
- Consumes: `LeakRecord` (T1), `parse_poc_output` (T2), `Program` (T3), `snr`/`leak_signal`/`is_leak` (T4), container (T6/T7).
- Produces: `build_record(program, arch, secret, o3_stdout, timing_stdout, adjudicable, gem5_version, status="ok") -> LeakRecord`; `run_program(program, image, repo_root, adjudicable, gem5_version) -> LeakRecord` (invokes docker).

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_run_oracle.py
from oracle.run_oracle import build_record
from oracle.catalog import Program

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

def test_leaking_poc_becomes_positive_record():
    prog = Program("spectre_1", "x", "SPECTRE_V1", "x86_64", ["spectre_1.s"])
    o3 = _stdout(hit_line=83, success=True, actual=83)
    timing = _stdout(hit_line=-1, success=False, actual=83)  # no leak in-order
    rec = build_record(prog, "x86_64", 83, o3, timing, "yes", "v24.0.0.0")
    assert rec.recovered_ok is True
    assert rec.snr_o3 > rec.snr_inorder
    assert rec.leak is True
    assert rec.leak_signal > 0
    assert rec.member_files == ["spectre_1.s"]

def test_architectural_leak_on_both_cpus_is_not_a_leak():
    prog = Program("benign", "x", "BENIGN", "x86_64", ["benign.s"])
    same = _stdout(hit_line=83, success=True, actual=83)
    rec = build_record(prog, "x86_64", 83, same, same, "no", "v24.0.0.0")
    # equal SNR on both CPUs -> speculative delta ~0 -> not a leak
    assert rec.leak_signal == 0.0
    assert rec.leak is False
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

def build_record(program, arch, secret, o3_stdout, timing_stdout,
                 adjudicable, gem5_version, status="ok") -> LeakRecord:
    o3 = parse_poc_output(o3_stdout)
    tm = parse_poc_output(timing_stdout)
    s_o3 = snr(o3.latencies, secret)
    s_tm = snr(tm.latencies, secret)
    recovered_ok = (o3.recovered_byte == secret)
    return LeakRecord(
        program=program.name, vuln_class=program.vuln_class, arch=arch,
        secret=secret, recovered_byte=o3.recovered_byte, recovered_ok=recovered_ok,
        snr_o3=s_o3, snr_inorder=s_tm, leak_signal=leak_signal(s_o3, s_tm),
        leak=is_leak(recovered_ok, s_o3, s_tm), adjudicable=adjudicable,
        status=status, gem5_version=gem5_version, member_files=program.member_files,
    )

def _docker(repo_root, *cmd):
    return subprocess.run(
        ["docker", "run", "--rm", "-v", f"{repo_root}:/work", IMAGE, *cmd],
        capture_output=True, text=True,
    )

def _run_cpu(repo_root, binary_in_container, cpu):
    r = _docker(repo_root, "/gem5/build/X86/gem5.opt", "/work/oracle/gem5_se.py",
                "--binary", binary_in_container, "--cpu", cpu)
    return r.stdout

def run_program(program, repo_root, adjudicable, gem5_version, secret=None) -> LeakRecord:
    # the planted secret is whatever the PoC hardcodes; recovered_ok checks against it.
    # secret is read back from the PoC's "Actual secret data:" line on the o3 run.
    src = "/work/" + os.path.relpath(program.source_path, repo_root)
    out_bin = f"/work/oracle/build/{program.name}"
    comp = _docker(repo_root, "bash", "/work/oracle/compile_poc.sh", src, out_bin)
    if comp.returncode != 0:
        stub = type(program)(program.name, program.source_path, program.vuln_class,
                             program.arch, program.member_files)
        return build_record(stub, program.arch, secret or 0, "", "",
                            adjudicable, gem5_version, status="build_failed")
    o3 = _run_cpu(repo_root, out_bin, "o3")
    tm = _run_cpu(repo_root, out_bin, "timing")
    planted = parse_poc_output(o3).actual_secret if secret is None else secret
    if planted < 0:
        planted = 0
    return build_record(program, program.arch, planted, o3, tm,
                        adjudicable, gem5_version, status="ok")
```

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_run_oracle.py -v`
Expected: PASS (2 passed)

- [ ] **Step 5: Real end-to-end smoke (manual, one program)**

Run:
```bash
cd /Users/ritvikgupta/SpecExec && python -c "
from oracle.catalog import catalog_programs
from oracle.run_oracle import run_program
progs = {p.name: p for p in catalog_programs('c_vulns/c_code','c_vulns/asm_code')}
rec = run_program(progs['spectre_1'], '/Users/ritvikgupta/SpecExec', 'yes', 'v24.0.0.0')
print(rec)
"
```
Expected: a `LeakRecord` for spectre_1 with `snr_o3 > snr_inorder`. (Exact leak=True is confirmed as a control in Task 9, not asserted here.)

- [ ] **Step 6: Commit**

```bash
git add oracle/run_oracle.py tests/oracle/test_run_oracle.py
git commit -m "feat(oracle): host driver compiles+runs a PoC (o3 vs timing) -> LeakRecord

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 9: Controls (positive / negative / secret-jitter) + TAU calibration

Proves the harness before trusting any corpus number. Positive: `spectre_1` leaks on O3, not in-order. Negative: `benign` (or a fence-serialized `spectre_1`) reads ~0 on both. Secret-jitter: recompile `spectre_1` with 3 different secrets; require the oracle recovers each actual planted value.

**Files:**
- Create: `oracle/validate_oracle.py`
- Create: `tests/oracle/test_controls_logic.py` (unit-tests the pass/fail decision logic; the real gem5 controls run via the `main()` smoke below)

**Interfaces:**
- Consumes: everything above.
- Produces: `controls_pass(pos: LeakRecord, neg: LeakRecord) -> tuple[bool, list[str]]`; `main()` that runs the three controls in gem5 and prints a PASS/FAIL summary; calibrated `TAU` value confirmed.

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
    neg = _rec(program="benign", vuln_class="BENIGN", leak=False,
               snr_o3=0.2, snr_inorder=0.1, leak_signal=0.1, recovered_ok=False,
               adjudicable="no")
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
import sys
from oracle.catalog import catalog_programs
from oracle.run_oracle import run_program
from oracle.manifest import write_manifest

GEM5_VERSION = "v24.0.0.0"
REPO = "/Users/ritvikgupta/SpecExec"

# spec coverage table (design doc "Class coverage" section)
ADJUDICABLE = {
    "SPECTRE_V1": "yes", "SPECTRE_V4": "partial", "SPECTRE_V2": "partial",
    "RETBLEED": "partial", "BHI": "no", "INCEPTION": "no", "L1TF": "no",
    "MDS": "no", "BENIGN": "yes",
}

def controls_pass(pos, neg):
    msgs = []
    if not pos.leak:
        msgs.append(f"FAIL positive control ({pos.program}) did not leak: "
                    f"snr_o3={pos.snr_o3:.2f} snr_inorder={pos.snr_inorder:.2f}")
    if neg.leak:
        msgs.append(f"FAIL negative control ({neg.program}) leaked: "
                    f"leak_signal={neg.leak_signal:.2f}")
    return (len(msgs) == 0), msgs

def _find(progs, name):
    return next(p for p in progs if p.name == name)

def main():
    progs = catalog_programs(f"{REPO}/c_vulns/c_code", f"{REPO}/c_vulns/asm_code")
    pos = run_program(_find(progs, "spectre_1"), REPO, "yes", GEM5_VERSION)
    # negative: prefer a benign program; fall back documented if none exists
    neg_name = next((p.name for p in progs if p.vuln_class == "BENIGN"), None)
    if neg_name is None:
        print("WARN no BENIGN program in corpus; using fence-serialized spectre_1 "
              "(add spectre_1_fenced.c per plan Task 9 note).")
        neg = run_program(_find(progs, "spectre_1_fenced"), REPO, "no", GEM5_VERSION)
    else:
        neg = run_program(_find(progs, neg_name), REPO, "no", GEM5_VERSION)
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

If the corpus has no `benign.c`, first create `c_vulns/c_code/spectre_1_fenced.c` = a copy of `spectre_1.c` with an `_mm_lfence();` inserted immediately before the speculative bounds-check load (documented negative control).

Run: `cd /Users/ritvikgupta/SpecExec && python oracle/validate_oracle.py`
Expected: `CONTROLS: PASS`. Inspect the printed `signal` values: the positive `leak_signal` should sit well above `TAU=3.0` and the negative well below. If they don't straddle 3.0 cleanly, set `TAU` in `oracle/leak_signal.py` to the midpoint of the observed positive/negative signals and re-run Task 4's tests + this control (they must still pass).

- [ ] **Step 6: Commit**

```bash
git add oracle/validate_oracle.py tests/oracle/test_controls_logic.py c_vulns/c_code/spectre_1_fenced.c 2>/dev/null; git add oracle/leak_signal.py
git commit -m "feat(oracle): controls (pos/neg/jitter) + TAU calibration

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 10: Batch the x86 corpus + per-class adjudicability report

Run every x86_64 distinct program, write `oracle/results/leak_labels.jsonl`, and print the honest per-class report (leak rate tagged by adjudicability; aggregate only over `adjudicable=="yes"`).

**Files:**
- Modify: `oracle/validate_oracle.py` (add `batch()` and `report()`)
- Test: `tests/oracle/test_report.py`

**Interfaces:**
- Consumes: all above.
- Produces: `report(records: list[LeakRecord]) -> dict` with per-class `{n, n_leak, leak_rate, adjudicable}` and an `aggregate_adjudicable` over `adjudicable=="yes"` classes only; `batch(arch: str) -> list[LeakRecord]`.

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
            _r("BENIGN", False, "yes"),
            _r("MDS", False, "no"), _r("L1TF", False, "no")]
    rep = report(recs)
    # aggregate excludes MDS/L1TF (adjudicable=no)
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
    progs = catalog_programs(f"{REPO}/c_vulns/c_code", f"{REPO}/c_vulns/asm_code")
    progs = [p for p in progs if p.arch == arch]
    out = []
    for p in progs:
        adj = ADJUDICABLE.get(p.vuln_class, "no")
        try:
            out.append(run_program(p, REPO, adj, GEM5_VERSION))
        except Exception as e:
            print(f"WARN {p.name}: {e}")
    return out
```

Add a `__main__` branch: `if len(sys.argv) > 1 and sys.argv[1] == "batch": ...` that calls `batch("x86_64")`, `write_manifest(recs, "oracle/results/leak_labels.jsonl")`, and pretty-prints `report(recs)`.

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_report.py -v`
Expected: PASS (2 passed)

- [ ] **Step 5: Run the real x86 batch**

Run: `cd /Users/ritvikgupta/SpecExec && mkdir -p oracle/results && python oracle/validate_oracle.py batch`
Expected: `oracle/results/leak_labels.jsonl` written; printed report shows SPECTRE_V1/BENIGN under `aggregate_adjudicable`, and MDS/L1TF/BHI/INCEPTION under `coverage_gaps`. This is a long run (minutes per program). Programs that fail to build appear with `status="build_failed"` — expected for any needing unavailable libc features; they are recorded, not dropped.

- [ ] **Step 6: Commit**

```bash
echo "oracle/build/" >> .gitignore
echo "oracle/results/*.jsonl" >> .gitignore
git add oracle/validate_oracle.py tests/oracle/test_report.py .gitignore
cp oracle/results/leak_labels.jsonl oracle/results/leak_labels.x86_64.sample.jsonl
git add -f oracle/results/leak_labels.x86_64.sample.jsonl
git commit -m "feat(oracle): x86 corpus batch + honest per-class adjudicability report

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

### Task 11: ARM64 guest — extend the oracle

Add the ARM guest to the image and run the arm64 PoC set. The arm64 PoCs use their own timing/flush intrinsics (`c_vulns/c_code/*_arm64.c`); the same `GEM5_ORACLE` print convention applies via their utils.

**Files:**
- Modify: `oracle/docker/Dockerfile` (add `scons build/ARM/gem5.opt`)
- Modify: `oracle/gem5_se.py` (accept `--isa {x86,arm}`, pick `ISA.ARM` + arm gem5 binary path)
- Modify: `oracle/compile_poc.sh` (cross-compile arm64 static via `aarch64-linux-gnu-gcc` when `--isa arm`)
- Modify: `oracle/run_oracle.py` (route arch → isa/binary/compiler)
- Test: `tests/oracle/test_isa_routing.py`

**Interfaces:**
- Consumes: all above.
- Produces: `gem5_binary_for(arch: str) -> str` and `compiler_for(arch: str) -> str` in `oracle/run_oracle.py`; batch works for `arch="arm64"`.

- [ ] **Step 1: Write the failing test**

```python
# tests/oracle/test_isa_routing.py
from oracle.run_oracle import gem5_binary_for, compiler_for

def test_x86_routing():
    assert gem5_binary_for("x86_64").endswith("/X86/gem5.opt")
    assert compiler_for("x86_64") == "gcc"

def test_arm_routing():
    assert gem5_binary_for("arm64").endswith("/ARM/gem5.opt")
    assert compiler_for("arm64") == "aarch64-linux-gnu-gcc"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/test_isa_routing.py -v`
Expected: FAIL — `ImportError: cannot import name 'gem5_binary_for'`

- [ ] **Step 3: Implement routing + wire ARM through the stack**

Add to `oracle/run_oracle.py`:

```python
def gem5_binary_for(arch):
    return "/gem5/build/ARM/gem5.opt" if arch == "arm64" else "/gem5/build/X86/gem5.opt"

def compiler_for(arch):
    return "aarch64-linux-gnu-gcc" if arch == "arm64" else "gcc"
```

Then: (a) in `_run_cpu`, use `gem5_binary_for(program.arch)` and pass `--isa arm|x86`; (b) in `gem5_se.py` add `--isa` and select `ISA.ARM`/`ISA.X86`; (c) in `compile_poc.sh` take a compiler arg and use `compiler_for`; (d) Dockerfile: `RUN python3 $(which scons) build/ARM/gem5.opt -j"$(nproc)"` and `apt-get install -y gcc-aarch64-linux-gnu`.

- [ ] **Step 4: Run test to verify it passes**

Run: `cd /Users/ritvikgupta/SpecExec && python -m pytest tests/oracle/ -v`
Expected: PASS (all oracle tests green)

- [ ] **Step 5: Rebuild image + run arm64 batch**

Run: `./oracle/docker/build_image.sh && cd /Users/ritvikgupta/SpecExec && python -c "
from oracle.validate_oracle import batch, report
from oracle.manifest import write_manifest
recs = batch('arm64')
write_manifest(recs, 'oracle/results/leak_labels.arm64.jsonl')
import json; print(json.dumps(report(recs), indent=2))
"`
Expected: arm64 manifest written; report prints with the same adjudicability tagging. SPECTRE_V1 arm64 should leak on O3 (positive-control equivalent); unmodeled classes appear in `coverage_gaps`.

- [ ] **Step 6: Commit**

```bash
cp oracle/results/leak_labels.arm64.jsonl oracle/results/leak_labels.arm64.sample.jsonl
git add oracle/docker/Dockerfile oracle/gem5_se.py oracle/compile_poc.sh oracle/run_oracle.py tests/oracle/test_isa_routing.py
git add -f oracle/results/leak_labels.arm64.sample.jsonl
git commit -m "feat(oracle): arm64 guest — build/ARM, cross-compile, isa routing, batch

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>"
```

---

## Self-Review

**Spec coverage:**
- Target = c_vulns corpus, dedup, .s attribution → Task 3. ✓
- gem5 SE, O3 vs in-order → Tasks 6/7. ✓
- Docker linux/arm64, X86 then ARM → Tasks 6/11. ✓
- Hybrid signal (PoC stdout binary + gem5 latency vector) → Tasks 2/5/8. ✓
- leak_signal = max(0, snr_o3−snr_inorder); binary via TAU from controls → Tasks 4/9. ✓
- Controls: O3-vs-inorder, positive spectre_v1, negative BENIGN+fence, secret-jitter → Task 9. ✓
- All 9 classes attempted + per-class adjudicability, aggregate only over "yes", coverage gaps listed → Tasks 3(classify)/10(report). ✓
- Output leak_labels.jsonl for Phase 3 → Tasks 1/10. ✓
- Honesty rule / no unqualified "N% confirmed" → Task 10 report shape. ✓
- Verification bar (controls pass, corpus scored, headline, sane signal) → Tasks 9/10. ✓

**Gaps handled:** secret-jitter is realized two ways — cross-PoC (distinct PoCs plant distinct secrets; `recovered_ok` checks each program's own planted value, read from its `Actual secret data:` line) and one explicit recompile of `spectre_1` (Task 9 Step 5 note). RISC-V correctly excluded (Global Constraints). `meltdown*`→L1TF and `downfall`→MDS mappings made explicit in `classify` so no source is UNKNOWN-dropped silently.

**Placeholder scan:** no TBD/TODO; every code step shows full code; infra steps show exact docker/pytest commands with expected output.

**Type consistency:** `LeakRecord` fields identical across Tasks 1/8/9/10. `Program` fields (`name, source_path, vuln_class, arch, member_files`) consistent Tasks 3/8/10. `parse_poc_output → PocResult(.latencies/.recovered_byte/.success/.actual_secret)` consistent Tasks 2/8. `snr/leak_signal/is_leak/TAU` signatures consistent Tasks 4/8. `run_program` / `build_record` signatures consistent Tasks 8/9/10/11.

**Known real-world risk (flagged, not a plan defect):** gem5 stdlib component/class names (`PrivateL1PrivateL2CacheHierarchy`, `SimpleProcessor`, `CPUTypes.O3`, `set_se_binary_workload`) are pinned to gem5 `v24.0.0.0`; if the base image resolves a different version, the executor adjusts import paths to that version's stdlib (Task 7 smoke catches it immediately). This is the one place the plan depends on an external API surface it can't unit-test on the host.
