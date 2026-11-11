"""Minimal, Spectector-analyzable victim gadgets, one per vulnerability class.

Each victim is a standalone C translation unit: `extern` globals only (no
definitions, so Spectector doesn't have to enumerate large arrays), no
`main`, and a `{fence}` placeholder positioned right after the speculation
gate (the branch/call/return that Spectector's symbolic PHT model reasons
about). `render_spec` fills that placeholder with an `lfence` barrier
(`fenced=True`) or nothing (`fenced=False`).

Honesty note: Spectector's published model covers conditional-branch (PHT)
speculation only. Only SPECTRE_V1 (and, partially, SPECTRE_V4's
store-to-load path) are expected to produce a genuine speculative leak
under that model. The indirect-call (V2/BHI), return-based (RETBLEED/
INCEPTION), and faulting-load (L1TF/MDS) gadgets are included for
structural completeness / future oracle work, but Spectector is expected
to report them `safe` or unsupported since it doesn't model indirect-branch
target prediction, RSB/return speculation, or micro-architectural fault
buffering. That is the correct, documented outcome for this task, not a
bug in the gadgets. `ADJUDICABLE` (from `gen/synth/params.py`) records
which classes fall under Spectector's coverage.
"""

from __future__ import annotations

import json
import os
import re

from gen.synth.params import ADJUDICABLE, CLASSES

_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\n'
)

# --- SPECTRE_V1: proven bounds-check-bypass victim ---
_V1 = _HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}{gen_body} } }\n'
)

# --- BENIGN: same shape, but transmits a public constant, never the loaded value ---
_BENIGN = _HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}(void)arr[i]; probe[3*64]=1; } }\n'
)

# --- SPECTRE_V4: speculative store-bypass. The speculation gate is the
# stale-store forwarding hazard between the store and the immediately
# following load of the same address; {fence} sits right after it. ---
_V4_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t store[]; extern size_t sz;\n'
)
_V4 = _V4_HEADER + (
    'void gadget(size_t i){ if(i<sz){ store[i]=0; {fence}{gen_body} } }\n'
)

# --- SPECTRE_V2 / BHI: indirect-call gate. The gate is the indirect call
# itself (target predicted speculatively); {fence} sits right before it,
# serializing execution before the (possibly mispredicted) call target is
# reached. ---
_INDIRECT_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\n'
    'extern void (*fp)(size_t);\n'
)
_V2 = _INDIRECT_HEADER + 'void gadget(size_t i){ {fence}{gen_body} }\n'
_BHI = _INDIRECT_HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}{gen_body} } }\n'
)

# --- RETBLEED / INCEPTION: return-based gate. The gate is the `ret`
# (return-address / RSB speculation); {fence} sits right after the call
# whose return is the speculation target, guarding the post-call use. ---
_RET_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;\n'
    'extern void leaf(size_t i);\n'
)
_RETBLEED = _RET_HEADER + (
    'void gadget(size_t i){ leaf(i); {fence}if(i<sz){ {gen_body} } }\n'
)
_INCEPTION = _RET_HEADER + (
    'void gadget(size_t i){ leaf(i); {fence}if(i<sz){ {gen_body} } }\n'
)

# --- L1TF / MDS: faulting/transient load gate. The gate is the dereference
# of a pointer that may fault or read stale buffer contents during
# out-of-order execution; {fence} sits right after it, before the value is
# transmitted through the probe array. ---
_FAULT_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t *secret_ptr;\n'
)
_L1TF = _FAULT_HEADER + (
    'void gadget(void){ uint8_t v=*secret_ptr; {fence}{gen_body} }\n'
)
_MDS = _FAULT_HEADER + (
    'void gadget(void){ uint8_t v=*secret_ptr; {fence}{gen_body} }\n'
)

SPEC_GADGETS: dict[str, str] = {
    "BENIGN": _BENIGN,
    "SPECTRE_V1": _V1,
    "SPECTRE_V2": _V2,
    "SPECTRE_V4": _V4,
    "L1TF": _L1TF,
    "MDS": _MDS,
    "RETBLEED": _RETBLEED,
    "INCEPTION": _INCEPTION,
    "BHI": _BHI,
}

assert set(SPEC_GADGETS) == set(CLASSES), "SPEC_GADGETS must cover exactly CLASSES"

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


# --- Spectector-Combined (`-v 2`) victims -----------------------------------
# The templates above were written for UPSTREAM Spectector, which cannot model
# indirect-branch speculation, so SPECTRE_V2's victim there is only a bare
# `fp(i)` call with nothing to speculate into. The combined fork models V2 as
# a mispredicted indirect jump landing on any `endbr` landing pad in the
# program (its v2_tests/func_table.c). Measured on the cluster (2026-10-09):
# the upstream V2 victim under `-v 2` exhausts 32 GB at every window tried --
# no landing pad exists, so the target set is unbounded -- while the shape
# below adjudicates in ~4 s / ~170 MB: unfenced -> data leak, fenced -> safe.
#
# Shape: `gadget` makes an architecturally benign indirect call; `leaky` is a
# never-called function holding the transmit body ({gen_body}). An attacker
# who mistrains the BTB redirects the call speculatively into `leaky`. The
# fence sits at the landing pad's entry, as in the fork's func_table_barrier.c
# -- a barrier before the call would not stop the mispredicted target.
# Requires `endbr64` in the compiled .s (gcc -fcf-protection=branch), which
# oracle/spectector_oracle.py's versioned path passes. Kept separate from
# SPEC_GADGETS so the upstream V2 numbers stay reproducible.
_V2_COMBINED = _HEADER + (
    'void leaky(size_t i){ {fence}{gen_body} }\n'
    'void benign(size_t i){ (void)i; }\n'
    'void (*fp)(size_t) = benign;\n'
    'void gadget(size_t i){ fp(i); }\n'
)

SPEC_GADGETS_COMBINED: dict[str, str] = {
    "SPECTRE_V2": _V2_COMBINED,
}

# The default landing-pad body is a plain transmit: the speculation gate is
# the indirect call itself, so `fp(i);` (the upstream default) no longer fits.
_DEFAULT_GEN_BODY_COMBINED: dict[str, str] = {
    "SPECTRE_V2": "uint8_t v=arr[i]; probe[v*64]=1;",
}


def render_spec_combined(vuln_class: str, fenced: bool,
                         gen_body: str | None = None) -> str:
    """render_spec() for the Spectector-Combined victims. Same `{fence}` /
    `{gen_body}` contract; only classes in SPEC_GADGETS_COMBINED."""
    fence = 'asm volatile("lfence":::"memory"); ' if fenced else ''
    body = gen_body if gen_body is not None else _DEFAULT_GEN_BODY_COMBINED[vuln_class]
    return (SPEC_GADGETS_COMBINED[vuln_class]
            .replace("{fence}", fence).replace("{gen_body}", body))


# --- Gate-only victims (step 1, 2026-11-10) -------------------------------
# The templates in SPEC_GADGETS splice an injected secret load + transmit
# around the body, so the leak lives in the scaffold (verified: an empty or
# NOP body leaks 1.00). These gate-only victims supply ONLY the speculation
# gate and declare the arrays with a STATIC, link-time-constant base
# (`arr[]`, not `*arr`), so a plain in-bounds access is public; a leak
# requires the body to speculatively read out of bounds through the reserved
# secret-pointer register (%r15, seeded with `arr + i` by splice_gate_only)
# and transmit through the probe base (%r14). `{fence}` sits right after the
# gate. With these, empty/NOP/benign bodies are SAFE and the oracle verdict
# depends on the body. x86_64 only; kept separate from SPEC_GADGETS so every
# upstream V1/V4 number stays reproducible.
_GATE_HEADER = (
    '#include <stdint.h>\n#include <stddef.h>\n'
    'extern uint8_t probe[]; extern uint8_t arr[]; extern size_t sz;\n'
)
# V1 gate: conditional-bounds-bypass. The body (seeded with arr+i in %r15,
# probe in %r14) must load through %r15 and transmit through %r14.
_V1_GATE = _GATE_HEADER + (
    'void gadget(size_t i){ if(i<sz){ {fence}{gen_body} } }\n'
)
# V4 gate: store-bypass, written as a whole-function asm block (see
# render_spec_gate_ssb). It cannot be a C function: at -O0 GCC spills `i` to
# the stack, and under the store-bypass model (-v 4) the reload of that spill
# is itself a bypassable load, so an EMPTY body already leaks (measured:
# empty / NOP -> leak under -v 4 with the C victim). The earlier C template
# `if(i<sz){ arr[i]=0; body }` was also a conditional-branch victim, i.e. a
# second V1 measurement under upstream Spectector.
_V4_SSB_LINES_HEAD = (
    ".text", ".globl gadget", ".type gadget, @function", "gadget:", "endbr64",
    "leaq arr(%rip), %r15",     # secret pointer = arr + i   (i public, in %rdi)
    "addq %rdi, %r15",
    "leaq probe(%rip), %r14",   # probe base
)
_V4_SSB_STORE = "movb $0, (%r15)"   # the bypassable store: the speculation gate

SPEC_GADGETS_GATE: dict[str, str] = {
    "SPECTRE_V1": _V1_GATE,
}


def render_spec_gate_ssb(body_lines, fenced: bool = False, store: bool = True) -> str:
    """Gate-only store-bypass victim. `body_lines` are plain AT&T instructions
    (single `%`). `store=False` removes the victim's store (control: nothing to
    bypass); `fenced` puts an lfence between the store and the body."""
    lines = list(_V4_SSB_LINES_HEAD)
    if store:
        lines.append(_V4_SSB_STORE)
    if fenced:
        lines.append("lfence")
    lines += [l.strip() for l in body_lines if l.strip()] + ["ret"]
    quoted = "\n".join('"%s\\n"' % l.replace("\\", "\\\\").replace('"', '\\"') for l in lines)
    return ('#include <stdint.h>\nextern uint8_t probe[]; extern uint8_t arr[];\n'
            '__asm__(\n' + quoted + ');\n')


# Attacker-indexed V1 victim (see tests/gen/test_gate_indexed.py for why).
# Whole-function asm with TWO copies of the body on the two sides of the
# bounds check:
#
#     cmp sz, i ; jae ARCH
#     A = arr + i ; body        <- architectural when i <  sz
#     jmp END                      speculative   when i >= sz  (out of bounds)
#   ARCH:
#     A = (i >= sz) ? arr : arr + i ; body   <- architectural when i >= sz
#   END:                                        (pointer forced in bounds)
#
# On the path i >= sz the architectural trace runs the body with an in-bounds
# pointer, which pins (through its address observations) every memory cell the
# body dereferences on its own; the mispredicted fall-through then runs the
# same body from the SAME state -- the rollback restores it, no save area --
# with the out-of-bounds pointer. Only chains that start at a load through the
# attacker-controlled register read anything new. On the path i < sz both
# sides use the same pointer, so nothing differs. Flags are reset before each
# copy (they would otherwise carry `i ? sz`, and sz is memory).
#
# An earlier version ran the body twice in sequence and restored the pool from
# the stack in between: body stores can symbolically alias that save area, so
# the restored registers looked secret-dependent and bodies that never touch
# the attacker register leaked (benign via plain stream 0.46).
_IDX_POOL = ("rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10",
             "r11", "r12", "r13", "r15")
_IDX_FRAME = ("subq $1024, %rsp", "leaq 512(%rsp), %rbp")


def _asm_file(lines) -> str:
    quoted = "\n".join('"%s\\n"' % l.replace("\\", "\\\\").replace('"', '\\"') for l in lines)
    return ('#include <stdint.h>\n#include <stddef.h>\n'
            'extern uint8_t probe[]; extern uint8_t arr[]; extern size_t sz;\n'
            '__asm__(\n' + quoted + ');\n')


def render_spec_gate_indexed(body_lines, attacker_reg: str = "r15",
                             fenced: bool = False, indexed: bool = True) -> str:
    """indexed=False is the control victim: one copy of the body with the
    designated register clamped in bounds and no outer bounds check. What
    leaks there brings its own speculation source (an inner branch), so it
    does not depend on the attacker's index."""
    a = attacker_reg.lstrip("%")
    if a not in _IDX_POOL:
        raise ValueError(f"attacker register must be one of {_IDX_POOL}, got {a!r}")
    body = [l.strip() for l in body_lines if l.strip()]
    if not indexed:
        lines = [".text", ".globl gadget", ".type gadget, @function", "gadget:"]
        lines += list(_IDX_FRAME)
        lines += ["cmpq sz(%rip), %rdi", "leaq arr(%rip), %r14",
                  f"leaq (%r14,%rdi), %{a}", f"cmovae %r14, %{a}",
                  "xorq %r14, %r14", "leaq probe(%rip), %r14"]
        lines += [l.replace(".L", ".Lc0_") for l in body]
        lines += ["addq $1024, %rsp", "ret"]
        return _asm_file(lines)

    def copy(k):
        return [l.replace(".L", f".Lc{k}_") for l in body]

    reset = ["xorq %r14, %r14", "leaq probe(%rip), %r14"]   # known flags, probe base
    lines = [".text", ".globl gadget", ".type gadget, @function", "gadget:"]
    lines += list(_IDX_FRAME)
    lines += ["cmpq sz(%rip), %rdi", "jae .Lgate_arch"]
    if fenced:
        lines.append("lfence")
    lines += ["leaq arr(%rip), %r14", f"leaq (%r14,%rdi), %{a}"] + reset
    lines += copy(1)
    lines += ["jmp .Lgate_end", ".Lgate_arch:",
              "cmpq sz(%rip), %rdi", "leaq arr(%rip), %r14",
              f"leaq (%r14,%rdi), %{a}", f"cmovae %r14, %{a}"] + reset
    lines += copy(0)
    lines += [".Lgate_end:", "addq $1024, %rsp", "ret"]
    return _asm_file(lines)


# --- tainted victim: concrete world, only attacker-reached memory is secret --
ZERO_WORLD = "zero_world_v1"
_ZW_FRAME, _ZW_STACK, _ZW_SAVED_RSP = 65536, 1048576, 4000
_RIP_CELL = re.compile(r"(-?\d+)\(%rip\)")


def zero_world_conf() -> str:
    """Spectector initial configuration for the tainted victim: memory around
    address 0 (what a zeroed register dereferences), the frame and the stack
    all hold 0. Symbols are placed from address 1024 up (Spectector's heap
    default), so the zero zone stops below that and `arr` stays symbolic."""
    addrs = (list(range(-1000, 1001, 4))
             + list(range(_ZW_FRAME - 4096, _ZW_FRAME + 4097, 4))
             + list(range(_ZW_STACK - 2048, _ZW_STACK + 2049, 8)))
    cells = ",".join(f"{a}=0" if a >= 0 else f"({a})=0" for a in addrs)
    return f"c([{cells}],[])."


def render_spec_gate_tainted(body_lines, attacker_reg: str = "r15",
                             fenced: bool = False, attacker: bool = True) -> str:
    """The indexed victim's two-sided layout in a concrete world (see
    zero_world_conf): every pool register and %r14 start at 0, the frame and
    stack sit in initialised memory, and numeric rip-relative cells are moved
    into the frame. attacker=False also makes the designated register 0 -- a
    control in which any leak is an escape from the concrete world."""
    a = attacker_reg.lstrip("%")
    if a not in _IDX_POOL:
        raise ValueError(f"attacker register must be one of {_IDX_POOL}, got {a!r}")
    body = [_RIP_CELL.sub(lambda m: f"{int(m.group(1)) - 2048}(%rbp)", l.strip())
            for l in body_lines if l.strip()]

    def setup(arch_side):
        if not attacker:
            return [f"movq $0, %{a}", "movq $0, %rdi", "xorq %r14, %r14"]
        out = ["leaq arr(%rip), %r14", f"leaq (%r14,%rdi), %{a}"]
        if arch_side:
            out = ["cmpq sz(%rip), %rdi"] + out + [f"cmovae %r14, %{a}"]
        if a != "rdi":
            out.append("movq $0, %rdi")
        return out + ["xorq %r14, %r14"]          # known flags, %r14 = 0

    lines = [".text", ".globl gadget", ".type gadget, @function", "gadget:",
             "movq %rsp, %r14", f"movq ${_ZW_FRAME}, %rbp",
             f"movq %r14, {_ZW_SAVED_RSP}(%rbp)", f"movq ${_ZW_STACK}, %rsp"]
    lines += [f"movq $0, %{r}" for r in _IDX_POOL if r not in ("rdi", a)]
    lines += ["cmpq sz(%rip), %rdi", "jae .Lgate_arch"]
    if fenced:
        lines.append("lfence")
    lines += setup(False) + [l.replace(".L", ".Lc1_") for l in body]
    lines += ["jmp .Lgate_end", ".Lgate_arch:"]
    lines += setup(True) + [l.replace(".L", ".Lc0_") for l in body]
    lines += [".Lgate_end:", f"movq ${_ZW_FRAME}, %rbp",
              f"movq {_ZW_SAVED_RSP}(%rbp), %rsp", "ret"]
    return f"/* spectector-conf: {ZERO_WORLD} */\n" + _asm_file(lines)


def render_spec_gate(vuln_class: str, fenced: bool,
                     gen_body: str | None = None) -> str:
    """render_spec() for the gate-only victims. The body is REQUIRED (there is
    no default transmit -- the whole point is that the body carries the leak),
    so gen_body=None raises rather than silently inserting a scaffold."""
    if gen_body is None:
        raise ValueError(
            "gate-only victims have no default body; the body must carry the "
            "leak (pass gen_body=, built via splice_gate_only)")
    fence = 'asm volatile("lfence":::"memory"); ' if fenced else ''
    return (SPEC_GADGETS_GATE[vuln_class]
            .replace("{fence}", fence).replace("{gen_body}", gen_body))


def generate_spec(out_dir: str) -> list[dict]:
    """Write baseline + fenced .c files for every class plus an index jsonl.

    Returns the list of row dicts also written to `spec_gadgets.jsonl`
    (one row per gadget_id: gadget_id, path, vuln_class, variant,
    adjudicable).
    """
    os.makedirs(out_dir, exist_ok=True)
    rows = []
    for c in CLASSES:
        for fenced in (False, True):
            variant = "fenced" if fenced else "baseline"
            gid = f"{c}_{variant}"
            path = os.path.join(out_dir, gid + ".c")
            with open(path, "w") as f:
                f.write(render_spec(c, fenced))
            rows.append({
                "gadget_id": gid,
                "path": path,
                "vuln_class": c,
                "variant": variant,
                "adjudicable": ADJUDICABLE.get(c, "no"),
            })
    with open(os.path.join(out_dir, "spec_gadgets.jsonl"), "w") as f:
        for r in rows:
            f.write(json.dumps(r, sort_keys=True) + "\n")
    return rows
