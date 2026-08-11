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
