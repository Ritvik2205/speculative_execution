"""gen/generate_c.py — Task 6.2 of the SpecExec research-hardening plan (W6).

Class-conditioned C-source generation that compiles to MULTIPLE ISAs from a
single source file. This is the strategic fix for two audit findings:

  P1 (91% of generated gadgets are unrunnable asm) — every source here is
     REAL C compiled by a REAL cross-compiler, so the output assembles by
     construction. Nothing here hand-writes assembly.
  P3 (the oracle is x86_64-only)               — one C source compiles to
     x86_64 + arm64 + riscv64 asm, so a single oracle run (external to this
     module — deliberately NOT invoked here) can validate all three ISAs
     from the same ground-truth gadget.

Design constraints (see plan Task 6.2 and the calling task's environment
notes):
  * FREESTANDING: no #include, no libc calls. Every gadget is a
    self-contained function (plus the minimal file-scope globals the
    structural pattern needs) using hand-rolled typedefs (u8/u32/...)
    instead of <stdint.h>.
  * riscv64-elf-gcc targets bare-metal ELF with no libc at all, so this is
    a hard requirement, not a style preference, for that ISA to compile.
  * `volatile` on probe/leak arrays is load-bearing: without it, -O2 proves
    a never-written static array is all-zero and constant-folds the whole
    gadget body away (verified empirically — see the accompanying report).
"""

from __future__ import annotations

import random
import shutil
import subprocess
import tempfile
from pathlib import Path

# ---------------------------------------------------------------------------
# Cross-compiler configuration
# ---------------------------------------------------------------------------
# Each entry: which binary name(s) to look for (first found wins), and the
# flag list to invoke it with (compiler path prepended by the caller).
_COMPILER_CANDIDATES: dict[str, list[str]] = {
    "x86_64": ["clang"],
    "arm64": ["clang"],
    "riscv64": ["riscv64-elf-gcc", "riscv64-unknown-elf-gcc"],
}

_COMPILER_FLAGS: dict[str, list[str]] = {
    # clang cross-compiling to a Linux x86_64 target -- no host toolchain
    # needed since we only ask for -S (compile-to-asm, no link).
    "x86_64": ["-target", "x86_64-linux-gnu", "-S", "-O2", "-ffreestanding"],
    # Native arm64 clang (avoids darwin-gcc quirks per environment notes).
    "arm64": ["-target", "arm64-apple-macos", "-S", "-O2", "-ffreestanding"],
    # Bare-metal riscv64 ELF gcc -- freestanding is mandatory here, there is
    # no libc to link against even if we wanted one.
    "riscv64": ["-S", "-O2", "-ffreestanding"],
}


def _find_compiler(arch: str) -> str | None:
    """Return the path to the first available compiler for `arch`, or None."""
    for name in _COMPILER_CANDIDATES[arch]:
        path = shutil.which(name)
        if path:
            return path
    return None


def available_isas() -> dict[str, str]:
    """Return {arch: compiler_path} for every cross-compiler found on PATH."""
    found = {}
    for arch in _COMPILER_CANDIDATES:
        path = _find_compiler(arch)
        if path:
            found[arch] = path
    return found


def compile_multi_isa(
    c_src: str, record: dict[str, str] | None = None
) -> dict[str, str]:
    """Compile `c_src` (freestanding C) to assembly for every available ISA.

    Returns {arch: asm_text} for archs whose compiler is present on PATH
    AND that compiled successfully (non-empty .s emitted). Archs whose
    compiler is absent, or whose compile fails, are simply omitted from the
    result -- this function never fabricates asm.

    If `record` is passed, it is filled in with a one-line status per arch
    ("ok", "compiler not found", or the compiler's stderr on failure) so
    callers can see *why* an arch was skipped without changing the return
    type.
    """
    results: dict[str, str] = {}
    with tempfile.TemporaryDirectory(prefix="specexec_genc_") as tmpdir:
        src_path = Path(tmpdir) / "gadget.c"
        src_path.write_text(c_src)

        for arch in _COMPILER_CANDIDATES:
            compiler = _find_compiler(arch)
            if compiler is None:
                if record is not None:
                    record[arch] = "compiler not found"
                continue

            out_path = Path(tmpdir) / f"gadget_{arch}.s"
            cmd = [compiler, *_COMPILER_FLAGS[arch], "-o", str(out_path), str(src_path)]
            try:
                proc = subprocess.run(
                    cmd, capture_output=True, text=True, timeout=60
                )
            except (subprocess.TimeoutExpired, OSError) as exc:
                if record is not None:
                    record[arch] = f"invocation error: {exc}"
                continue

            if proc.returncode != 0 or not out_path.exists():
                if record is not None:
                    record[arch] = proc.stderr.strip() or f"exit code {proc.returncode}"
                continue

            asm_text = out_path.read_text()
            if not asm_text.strip():
                if record is not None:
                    record[arch] = "empty asm output"
                continue

            results[arch] = asm_text
            if record is not None:
                record[arch] = "ok"

    return results


# ---------------------------------------------------------------------------
# Class-conditioned C templates
# ---------------------------------------------------------------------------
# Each template is a function (rid, rng) -> C source string. `rid` is a
# unique identifier suffix (guarantees n distinct sources across a batch
# even with identical randomized parameters); `rng` is a random.Random used
# to slot in sizes/shifts/depths so repeated calls with the same class
# still vary structurally, not just by name.

CLASSES = (
    "SPECTRE_V1",
    "SPECTRE_V2",
    "SPECTRE_V4",
    "BHI",
    "MDS",
    "L1TF",
    "RETBLEED",
    "INCEPTION",
    "BENIGN",
)


def _probe_size(rng: random.Random) -> int:
    return rng.choice([128, 256, 512])


def _tpl_spectre_v1(rid: str, rng: random.Random) -> str:
    # Bounds check, THEN an index-dependent load, THEN a second
    # index-dependent load (the cache-timing transmit channel). This is the
    # textbook Spectre-V1 structural signature: the branch is the
    # mis-speculated gate, the two chained loads are the leak.
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};
typedef unsigned int u32_{rid};
static volatile u8_{rid} probe_{rid}[{probe_size}];

u8_{rid} gadget_{rid}(u8_{rid} *arr, u32_{rid} idx, u32_{rid} bound) {{
    u8_{rid} result = 0;
    if (idx < bound) {{
        u8_{rid} val = arr[idx];
        result = probe_{rid}[val % {probe_size}];
    }}
    return result;
}}
"""


def _tpl_spectre_v4(rid: str, rng: random.Random) -> str:
    # Speculative Store Bypass: a store to a pointer slot, a portable
    # compiler barrier (empty asm + memory clobber -- ISA-neutral, no
    # x86-specific mnemonics), then a dependent load through that slot that
    # may speculatively use the STALE pre-store pointer value, transmitted
    # via a probe-array index.
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};

static volatile u8_{rid} probe_{rid}[{probe_size}];

u8_{rid} gadget_{rid}(u8_{rid} **slot, u8_{rid} *safe_target) {{
    *slot = safe_target;
    __asm__ __volatile__("" ::: "memory");
    u8_{rid} v = **slot;
    return probe_{rid}[v % {probe_size}];
}}
"""


def _tpl_spectre_v2(rid: str, rng: random.Random) -> str:
    # Branch Target Injection: an indirect call through a function-pointer
    # PARAMETER (so the compiler cannot statically resolve/devirtualize the
    # target), landing in a gadget that indexes a probe array.
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};

static volatile u8_{rid} probe_{rid}[{probe_size}];
typedef u8_{rid} (*fn_{rid})(u8_{rid});

__attribute__((noinline))
u8_{rid} target_{rid}(u8_{rid} v) {{
    return probe_{rid}[v % {probe_size}];
}}

u8_{rid} gadget_{rid}(fn_{rid} target, u8_{rid} val) {{
    return target(val);
}}
"""


def _tpl_bhi(rid: str, rng: random.Random) -> str:
    # Branch History Injection: a conditioning loop of alternating taken /
    # not-taken conditional branches (poisons branch history) immediately
    # ahead of an indirect call through a function-pointer parameter.
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};
typedef unsigned int u32_{rid};

static volatile u8_{rid} probe_{rid}[{probe_size}];
typedef u8_{rid} (*fn_{rid})(u8_{rid});

__attribute__((noinline))
u8_{rid} target_{rid}(u8_{rid} v) {{
    return probe_{rid}[v % {probe_size}];
}}

u8_{rid} gadget_{rid}(fn_{rid} target, u8_{rid} val, u32_{rid} pattern, u32_{rid} n) {{
    u8_{rid} acc = 0;
    for (u32_{rid} i = 0; i < n; i++) {{
        if ((pattern >> (i % 32u)) & 1u) {{
            acc ^= (u8_{rid})i;
        }} else {{
            acc ^= (u8_{rid})(i + 1u);
        }}
    }}
    return target((u8_{rid})(val ^ acc));
}}
"""


def _tpl_mds(rid: str, rng: random.Random) -> str:
    # Microarchitectural Data Sampling: a load from a buffer that is never
    # gated by a bounds check (the structural contrast with Spectre V1,
    # whose defining feature IS the bounds check), then transmitted via a
    # probe-array index -- a stale-buffer-sample-then-leak shape.
    buf_size = rng.choice([32, 64, 128])
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};
typedef unsigned int u32_{rid};

static volatile u8_{rid} stale_{rid}[{buf_size}];
static volatile u8_{rid} probe_{rid}[{probe_size}];

u8_{rid} gadget_{rid}(u32_{rid} idx) {{
    u8_{rid} v = stale_{rid}[idx % {buf_size}];
    return probe_{rid}[v % {probe_size}];
}}
"""


def _tpl_l1tf(rid: str, rng: random.Random) -> str:
    # L1TF / Foreshadow: bounds-checked index scaled by a page-size-class
    # shift (9-15 bits, matching the project's known page-probe feature
    # `has_page_probe_load`), then an indexed load feeding a second
    # indexed (probe) load.
    mem_size = 1 << rng.choice([12, 13, 14])
    probe_size = _probe_size(rng)
    shift = rng.choice(list(range(9, 16)))
    return f"""\
typedef unsigned char u8_{rid};
typedef unsigned int u32_{rid};

static volatile u8_{rid} mem_{rid}[{mem_size}];
static volatile u8_{rid} probe_{rid}[{probe_size}];

u8_{rid} gadget_{rid}(u32_{rid} idx, u32_{rid} bound) {{
    u8_{rid} result = 0;
    if (idx < bound) {{
        u32_{rid} scaled = (idx << {shift}) % {mem_size}u;
        u8_{rid} val = mem_{rid}[scaled];
        result = probe_{rid}[val % {probe_size}];
    }}
    return result;
}}
"""


def _tpl_retbleed(rid: str, rng: random.Random) -> str:
    # RETBLEED (return-stack-buffer underflow / speculative-ret
    # misprediction): a deep, explicitly non-inlined call/return chain
    # terminating in a probe-array leak. A genuine ret-misprediction can't
    # be forced from portable C -- this is a best-effort structural proxy
    # (deep call/ret depth) documented as approximate in the task report.
    probe_size = _probe_size(rng)
    depth = rng.choice([2, 3, 4])
    levels = []
    prev = f"leaf_{rid}"
    levels.append(
        f"__attribute__((noinline))\nstatic u8_{rid} {prev}(u8_{rid} v) {{"
        f" return probe_{rid}[v % {probe_size}]; }}\n"
    )
    for i in range(depth):
        cur = f"mid{i}_{rid}"
        levels.append(
            f"__attribute__((noinline))\nstatic u8_{rid} {cur}(u8_{rid} v) {{"
            f" return {prev}(v); }}\n"
        )
        prev = cur
    body = "".join(levels)
    return f"""\
typedef unsigned char u8_{rid};

static volatile u8_{rid} probe_{rid}[{probe_size}];

{body}
u8_{rid} gadget_{rid}(u8_{rid} v) {{
    return {prev}(v);
}}
"""


def _tpl_inception(rid: str, rng: random.Random) -> str:
    # INCEPTION (phantom speculation / RSB poisoning via self-referential
    # returns): recursion bounded by a runtime depth parameter, so the
    # compiler cannot unroll/inline it away, terminating in a probe leak.
    # Best-effort structural proxy, same caveat as RETBLEED above.
    probe_size = _probe_size(rng)
    return f"""\
typedef unsigned char u8_{rid};

static volatile u8_{rid} probe_{rid}[{probe_size}];

__attribute__((noinline))
static u8_{rid} recurse_{rid}(u8_{rid} v, int depth) {{
    if (depth <= 0) {{
        return probe_{rid}[v % {probe_size}];
    }}
    return recurse_{rid}(v, depth - 1);
}}

u8_{rid} gadget_{rid}(u8_{rid} v, int depth) {{
    return recurse_{rid}(v, depth);
}}
"""


def _tpl_benign(rid: str, rng: random.Random) -> str:
    # Safe counterpart: bounds-checked write-then-read of the SAME array
    # slot, no probe array, no secondary index-dependent load -- no
    # speculative side-channel shape at all.
    return f"""\
typedef unsigned char u8_{rid};
typedef unsigned int u32_{rid};

u8_{rid} gadget_{rid}(u8_{rid} *arr, u32_{rid} idx, u32_{rid} bound, u8_{rid} val) {{
    u8_{rid} result = 0;
    if (idx < bound) {{
        arr[idx] = val;
        result = arr[idx];
    }}
    return result;
}}
"""


_TEMPLATES = {
    "SPECTRE_V1": _tpl_spectre_v1,
    "SPECTRE_V2": _tpl_spectre_v2,
    "SPECTRE_V4": _tpl_spectre_v4,
    "BHI": _tpl_bhi,
    "MDS": _tpl_mds,
    "L1TF": _tpl_l1tf,
    "RETBLEED": _tpl_retbleed,
    "INCEPTION": _tpl_inception,
    "BENIGN": _tpl_benign,
}


def generate_c(target_class: str, n: int, seed: int | None = None) -> list[str]:
    """Generate `n` distinct, freestanding C gadget sources for `target_class`.

    Each source is a self-contained function (plus the minimal file-scope
    globals its structural pattern needs) that structurally embodies the
    class -- see the per-class template functions above for the exact
    shape. No #include, no libc calls: every emitted source compiles under
    a bare-metal freestanding cross-compiler with no runtime support.

    `seed` makes the batch reproducible; sources are always distinct
    regardless of seed because each one embeds a unique identifier suffix.
    """
    key = target_class.strip().upper()
    if key not in _TEMPLATES:
        raise ValueError(
            f"unknown target_class {target_class!r}; expected one of {CLASSES}"
        )
    template = _TEMPLATES[key]
    rng = random.Random(seed)

    sources = []
    for i in range(n):
        rid = f"{key.lower()}_{i}_{rng.randrange(10**6, 10**7)}"
        sources.append(template(rid, rng))
    return sources
