#!/usr/bin/env python3
"""
dataflow_taint.py — ISA-agnostic secret-source/transmitter detection via
data-dependence graph reachability, GATED on a page/cache-line-scale shift.

Root cause this fixes (see SPECDISCOVER_VERIFICATION_GAPS.md, G6): the
existing `is_secret_source`/`is_transmitter` spec_flag_rules (spec/base.json)
only fire when a single instruction's memory operand is syntactically
INDEXED (base+index in one instruction, e.g. x86 `(%base,%idx)`). RISC-V
(and any ISA without register+register addressing) expresses the same
operation across TWO instructions instead:

    add  t0, base, idx      ; compute address
    ld   a0, 0(t0)          ; load using the computed address

No single-instruction regex can see this — `spec/riscv.json`'s
`indexed_access`/`mem_idx` patterns are literal never-match placeholders,
so these flags measure exactly 0.000% on real RISC-V code, collapsing every
class whose signature depends on them (L1TF, MDS) to near-zero recall.

FIRST ATTEMPT (superseded): "any LOAD reachable from an earlier LOAD via
DATA_DEP" was tried and empirically falsified (spec/validate_dataflow_taint.py)
— it fires on ordinary pointer chasing (array indexing, struct access,
linked lists), which is everywhere in benign code. 89.5% of the new signal
landed on BENIGN; 0% landed on L1TF/MDS, the classes it was meant to help.

REFINED (this version): require the backward DATA_DEP path between the two
LOADs to pass through a SHIFT instruction whose immediate is a page-scale
(9-15 bits, 512B-32KB — Meltdown/L1TF page-probe) or cache-line-scale (6
bits, 64B — Flush+Reload/MDS) amount. This mirrors what the existing hand
feature `has_page_probe_load` (v54/inline_features.py, `_PAGE_SHIFT_RE`)
already discovered was necessary on x86: a bare indexed load isn't
discriminating (ordinary array indexing looks identical topologically),
but "shift by page/cache-line size, THEN use the result as a load address"
is the actual attack-specific idiom. This version generalizes that
DISCRIMINATING constraint across instructions/ISAs instead of dropping it.

STORE-BASED TRANSMISSION (this version): a real RISC-V BHI gadget found
during validation leaks via a STORE, not a LOAD —

    lbu   a5, -17(s0)     ; load secret byte
    slliw a5, a5, 6       ; scale by cache-line size
    add   a5, a4, a5      ; probe_array + secret*64
    sb    a4, 0(a5)       ; STORE to the secret-dependent address <- the leak

The original x86/ARM single-instruction rule never covered this either (both
`is_secret_source`/`is_transmitter` in base.json only ever checked
`when_cat_in: ["LOAD"]`), so this isn't a regression — it's new coverage.
STORE is treated as an additional valid transmitter endpoint alongside LOAD:
if the backward search from a STORE's registers reaches an earlier LOAD
through a probe-scale SHIFT, the STORE gets is_transmitter. Known coarseness:
`extract_registers` treats STORE as "all-source" (it doesn't split address
vs. stored-value registers), so the search explores both — in practice this
still requires the probe-shift gate to fire, which stored *values* rarely
trigger (a stored value is data, not typically shifted by exactly 6/9-15 bits
before being written), so this stays conservative in practice, validated
empirically (see spec/validate_dataflow_taint.py) rather than assumed.

Usage:
    from dataflow_taint import apply_dataflow_taint
    pdg = builder.build(sequence)
    apply_dataflow_taint(pdg)   # mutates pdg.nodes' spec_flags in place
"""

from __future__ import annotations

import re
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))

from pdg_builder import PDG, EDGE_TYPES, OPCODE_CATEGORIES, SPEC_FLAGS  # noqa: E402

LOAD_CAT = OPCODE_CATEGORIES["LOAD"]
STORE_CAT = OPCODE_CATEGORIES["STORE"]
TRANSMITTER_CATS = (LOAD_CAT, STORE_CAT)
SHIFT_CAT = OPCODE_CATEGORIES["SHIFT"]
DATA_DEP = EDGE_TYPES["DATA_DEP"]
IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

# Cache-line probe (Flush+Reload, MDS: 64B = shift by 6) and page probe
# (Meltdown/L1TF: 4096B..32KB = shift by 9-15). Same magnitudes
# v54/inline_features.py's _PAGE_SHIFT_RE already validated on x86; extended
# here to also count 6 (cache-line) since MDS relies on that scale too.
PROBE_SHIFT_AMOUNTS = {6, 9, 10, 11, 12, 13, 14, 15}
_NUM_RE = re.compile(r'-?0[xX][0-9a-fA-F]+|-?\d+')


def _shift_amount_matches(raw_instruction: str) -> bool:
    """ISA-agnostic: does this instruction's text contain a bare numeric
    literal equal to a probe-scale shift amount? Works across AT&T ($12),
    ARM (#12), and RISC-V (12, no prefix) immediate syntax without needing
    per-ISA parsing — SHIFT instructions' only bare numbers are the shift
    amount (registers are always letters+digits, e.g. %rax/x0/t0)."""
    for tok in _NUM_RE.findall(raw_instruction):
        try:
            val = int(tok, 16) if 'x' in tok.lower() else int(tok)
        except ValueError:
            continue
        if val in PROBE_SHIFT_AMOUNTS:
            return True
    return False


def _is_probe_shift(node) -> bool:
    return node.opcode_category == SHIFT_CAT and _shift_amount_matches(node.raw_instruction)


def _find_probe_gated_ancestor_load(node_id, preds, nodes, max_hops):
    """Iterative DFS backward via DATA_DEP edges, up to max_hops. Returns the
    first LOAD node reached via a path that passed through a probe-scale
    SHIFT node, or None. `has_shift` is sticky true once seen on a path."""
    stack = [(pid, 0, False) for pid in preds.get(node_id, [])]
    seen: set[tuple[int, bool]] = set()
    while stack:
        pid, hops, has_shift = stack.pop()
        if hops >= max_hops:
            continue
        pred_node = nodes[pid]
        new_has_shift = has_shift or _is_probe_shift(pred_node)
        if pred_node.opcode_category == LOAD_CAT and new_has_shift:
            return pred_node
        key = (pid, new_has_shift)
        if key in seen:
            continue
        seen.add(key)
        for ppid in preds.get(pid, []):
            stack.append((ppid, hops + 1, new_has_shift))
    return None


def apply_dataflow_taint(pdg: PDG, max_hops: int = 4) -> PDG:
    """Mutate pdg.nodes' spec_flags in place: mark is_secret_source (on the
    earlier LOAD) / is_transmitter (on the later LOAD or STORE) whenever a
    LOAD's or STORE's register inputs are reachable, via DATA_DEP edges,
    from an earlier LOAD THROUGH a page/cache-line-scale SHIFT node — the
    ISA-agnostic form of the Meltdown/L1TF/MDS page-probe idiom (LOAD-based)
    and its store-based sibling (write to a secret-dependent address, seen
    in a real RISC-V BHI gadget). Ports to any ISA with zero JSON/regex
    changes; max_hops=4 (one hop more than the plain-LOAD attempt) to allow
    for the extra SHIFT node in the chain."""
    preds: dict[int, list[int]] = defaultdict(list)
    for e in pdg.edges:
        if e.edge_type == DATA_DEP:
            preds[e.dst].append(e.src)

    for node in pdg.nodes:
        if node.opcode_category not in TRANSMITTER_CATS:
            continue
        ancestor = _find_probe_gated_ancestor_load(node.id, preds, pdg.nodes, max_hops)
        if ancestor is not None:
            ancestor.spec_flags[IS_SECRET_SOURCE] = 1.0
            node.spec_flags[IS_TRANSMITTER] = 1.0

    return pdg
