#!/usr/bin/env python3
"""
taint_slice.py — shift-magnitude-independent secret-source/transmitter
taint slice (Task 4.2, W4, closes G2).

Supersedes the ``PROBE_SHIFT_AMOUNTS`` gate in ``spec/dataflow_taint.py``
(dataflow_taint.py:89), which only recognizes the Meltdown/L1TF/MDS
page-or-cache-line-scale SHIFT idiom and therefore MISSES any gadget that
scales an index by a non-shift instruction — most commonly x86
``lea (%base,%idx,8)`` (a scaled-index LEA, no ``shl`` anywhere), but also
``imul``/``mul``-scaled indices on any ISA. G2 in the verification-gap audit
calls this out explicitly.

## Fix round 1 (controller-ruled redesign)

The first version of this module seeded taint from function-argument
registers (``default_attacker_inputs``). Code review found that this
OVER-FIRES: it marks ordinary benign pointer-chase code
(``mov (%rdi),%rax; mov (%rax),%rbx``, `rdi` an argument, `rax` a loaded
pointer immediately dereferenced) as `is_transmitter`, because it never
required the tainted value to have been COMBINED with anything before
reaching a second address — the exact failure mode the "precision guard"
was supposed to prevent. It also let a bare ``lea`` (categorized LOAD by
`isa_spec`'s classifier, but a pure address computation that touches no
memory) get marked `is_secret_source`, which is never correct — `lea` never
reads memory, so it can never be the load that made a value "the secret."

The controller's ruling replaces attacker-argument-register seeding with a
DIFFERENT, still shift-magnitude-independent discriminator:

1. **Seed taint from real LOADs, not argument registers.** Every real
   memory LOAD's destination register becomes a *candidate secret* — this is
   what "secret source" literally means (a value that came from memory,
   not from the caller's own arguments). A LOAD's own address doesn't need
   to already be tainted for this — every real load is a candidate; only
   the ones that *actually* feed a later transmitter get the
   `is_secret_source` flag (see step 3).
2. **Track a "transformed" bit alongside each tainted register.** A tainted
   value becomes `transformed` the moment it passes through a COMBINATION
   node: `opcode_category in {ARITHMETIC, LOGIC, SHIFT}`, OR an address
   computation that combines base+index (`mem_access_type == INDEXED` —
   covers both `lea` and a real indexed load/store). A bare register copy
   (MOVE) or a direct dereference (the tainted register used, unmodified, as
   the WHOLE address of a load) does NOT set `transformed` — this is exactly
   what makes an ordinary pointer chase (load a pointer, immediately
   dereference it) inert: the loaded pointer is tainted but never
   `transformed`, so it can never trigger a mark.
3. **Mark `is_transmitter`** on a real memory-access node (LOAD or STORE,
   `mem_access_type != NONE`, excluding `lea`) when one of its ADDRESS
   registers is tainted AND (`transformed`, OR the access node's OWN
   `mem_access_type == INDEXED`). The second disjunct (fix round 2) covers
   a single-instruction indexed store/load whose index register IS the raw
   secret with no separate prior lea/shift — e.g.
   `movzbl (%rdi),%rsi; mov %rdx,(%rbx,%rsi,8)` — because using a tainted
   register as the INDEX of an indexed access is itself the
   secret-used-as-index combination, happening at the access rather than
   before it (this is the RISC-V BHI store-transmitter shape called out in
   `dataflow_taint.py`'s own docstring). At that point, also mark
   `is_secret_source` on the ORIGIN load — the specific earlier LOAD whose
   destination register the taint traces back to (tracked alongside the
   `transformed` bit, not re-derived).
4. `lea` (and, generally, anything that isn't a real LOAD/STORE) never gets
   either flag: it isn't a "real mem op" so it's never a transmitter
   candidate, and it never re-seeds a fresh secret so it can never become an
   `is_secret_source` origin either — only real LOADs create origins.

This keeps the shift-magnitude independence of the original design (a
SHIFT is still one instance of a combination node, so
``shl $12,%rsi; mov (%rbx,%rsi),%rcx`` still marks the final load) while
fixing both bugs: benign pointer chasing never transforms, and `lea` is
structurally incapable of being marked at all.

## "Flows into an address" — unchanged

`address_regs_of` still decides this: the registers written textually
inside an instruction's memory-operand delimiters (`(...)` for x86/RISC-V,
`[...]` for ARM64) — i.e. exactly the registers that participate in
computing the effective address, as opposed to (for a STORE) the value
register, which sits outside those delimiters.

Usage:
    from taint_slice import mark_secret_transmitter
    from ir_defuse import defuse_for_sequence

    defuse = defuse_for_sequence(sequence, "x86_64")
    mark_secret_transmitter(pdg, defuse, arch="x86_64")
"""

from __future__ import annotations

import re
import sys
from pathlib import Path
from typing import Dict, List, Optional, Set, Tuple

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import PDG, MEM_ACCESS_TYPES, OPCODE_CATEGORIES, SPEC_FLAGS  # noqa: E402
from ir_defuse import _ARCH_SPEC_FILES, _engine_for, _regs_in  # noqa: E402

LOAD_CAT = OPCODE_CATEGORIES["LOAD"]
STORE_CAT = OPCODE_CATEGORIES["STORE"]
MEM_OP_CATS = (LOAD_CAT, STORE_CAT)
COMBINATION_CATS = (
    OPCODE_CATEGORIES["ARITHMETIC"],
    OPCODE_CATEGORIES["LOGIC"],
    OPCODE_CATEGORIES["SHIFT"],
)
MEM_NONE = MEM_ACCESS_TYPES["NONE"]
MEM_INDEXED = MEM_ACCESS_TYPES["INDEXED"]
IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

# Registers that participate in computing an effective address sit inside
# the memory-operand delimiters: x86/RISC-V `(...)` (`(%rax,%rbx,8)`,
# `0(t0)`), ARM64 `[...]` (`[x0, x1, lsl #3]`). Matching either, ISA-agnostic,
# and letting `_regs_in` (Task 4.1's canonicalizing register finder) do the
# per-arch extraction on the captured substring keeps this free of any new
# per-ISA literal.
_MEM_OPERAND_RE = re.compile(r"\(([^)]*)\)|\[([^\]]*)\]")

# `lea` is a pure address computation — it never reads or writes memory —
# but `isa_spec`'s classifier puts bare `lea` (no size suffix) in the LOAD
# category (matched by base.json's `load` pattern) purely because its
# syntax matches a memory operand. It must never be treated as a "real"
# memory access for secret-source/transmitter purposes. (`leaq`/`leal`/...
# with a size suffix already fall through to OTHER in the current spec —
# matched here too, defensively, in case that classification ever changes.)
_LEA_RE = re.compile(r"^\s*lea[bwlq]?\b", re.IGNORECASE)

# Calling-convention argument registers, canonicalized to match
# `ir_defuse.defuse_for_sequence`'s output convention exactly (64-bit/x-root
# for x86/arm64; RISC-V ABI names are already root-width). No longer used to
# seed `mark_secret_transmitter` (see module docstring, Fix round 1) — kept
# as a utility for callers that still want a canonical arg-register set.
_DEFAULT_ATTACKER_INPUTS = {
    "x86_64.json": {"rdi", "rsi", "rdx", "rcx", "r8", "r9"},
    "arm64.json": {"x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7"},
    "riscv.json": {"a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7"},
}


def default_attacker_inputs(arch: str) -> Set[str]:
    """Function-argument registers for `arch`, in the canonical form
    `ir_defuse.defuse_for_sequence` uses: x86_64 {rdi,rsi,rdx,rcx,r8,r9},
    arm64 {x0..x7}, riscv {a0..a7}. NOT used to seed `mark_secret_transmitter`
    (Fix round 1 replaced argument-register seeding with real-LOAD seeding —
    see module docstring); kept as a standalone utility."""
    spec_fname = _ARCH_SPEC_FILES.get(arch.strip().lower())
    if spec_fname is None or spec_fname not in _DEFAULT_ATTACKER_INPUTS:
        raise ValueError(f"taint_slice: unknown arch {arch!r}")
    return set(_DEFAULT_ATTACKER_INPUTS[spec_fname])


def _is_lea(raw_instruction: str) -> bool:
    return bool(_LEA_RE.match(raw_instruction))


def address_regs_of(raw_instruction: str, arch: str = "x86_64") -> Set[str]:
    """Registers used to compute the effective address of `raw_instruction`'s
    memory operand — i.e. the registers textually inside `(...)`/`[...]` —
    canonicalized the same way `ir_defuse.defuse_for_sequence` canonicalizes
    its (defs, uses). Returns an empty set for an instruction with no memory
    operand (or one written with no parens/brackets)."""
    spec_fname = _ARCH_SPEC_FILES.get(arch.strip().lower())
    if spec_fname is None:
        raise ValueError(f"taint_slice: unknown arch {arch!r}")
    engine = _engine_for(arch)
    regs: Set[str] = set()
    for m in _MEM_OPERAND_RE.finditer(raw_instruction):
        inner = m.group(1) if m.group(1) is not None else m.group(2)
        regs |= set(_regs_in(inner, spec_fname, engine))
    return regs


def mark_secret_transmitter(
    pdg: PDG,
    defuse: List[Tuple[Set[str], Set[str]]],
    arch: str = "x86_64",
) -> PDG:
    """Mutate `pdg.nodes`' spec_flags in place, using real-LOAD-seeded,
    transform-gated taint (Fix round 1 — see module docstring for the full
    ruling): every real LOAD's destination register is a candidate secret;
    it becomes `is_secret_source` only once its taint (having passed through
    at least one COMBINATION node — ARITHMETIC/LOGIC/SHIFT, or an
    INDEXED address computation such as `lea`) reaches a later real
    LOAD/STORE's ADDRESS operand, which is marked `is_transmitter`.

    `defuse` must be index-aligned 1:1 with `pdg.nodes` (see
    `spec_pdg_builder.py`'s "slice" taint_mode for how that alignment is
    produced from `ir_defuse.defuse_for_sequence`'s per-line output).
    """
    if len(defuse) != len(pdg.nodes):
        raise ValueError(
            f"taint_slice: defuse length {len(defuse)} != pdg.nodes length "
            f"{len(pdg.nodes)} — defuse must be index-aligned with pdg.nodes"
        )

    # reg -> (origin_node_id, transformed). `origin_node_id` is always a real
    # LOAD's node id (only real LOADs create/overwrite an entry with a fresh
    # origin); `transformed` is sticky-true once set.
    taint: Dict[str, Tuple[int, bool]] = {}

    for node, (defs, uses) in zip(pdg.nodes, defuse):
        is_lea = _is_lea(node.raw_instruction)
        is_real_mem_op = (
            node.opcode_category in MEM_OP_CATS
            and node.mem_access_type != MEM_NONE
            and not is_lea
        )
        is_combination = (
            node.opcode_category in COMBINATION_CATS
            or node.mem_access_type == MEM_INDEXED
        )

        if is_real_mem_op:
            addr_regs = address_regs_of(node.raw_instruction, arch)
            fired = False
            for r in addr_regs:
                info = taint.get(r)
                if info is None:
                    continue
                # Fires when the address register's taint was transformed
                # upstream (fix round 1), OR when THIS access itself is
                # INDEXED (address = base+index) — the tainted register
                # being used as the index IS the secret-used-as-index
                # combination happening at the access, with no separate
                # prior lea/shift needed (fix round 2, closes the
                # single-instruction indexed-store/load false negative —
                # the RISC-V BHI store-transmitter shape from
                # dataflow_taint.py's own docstring).
                if info[1] or node.mem_access_type == MEM_INDEXED:
                    fired = True
                    pdg.nodes[info[0]].spec_flags[IS_SECRET_SOURCE] = 1.0
            if fired:
                node.spec_flags[IS_TRANSMITTER] = 1.0

            # Every real LOAD's result is a fresh candidate secret,
            # regardless of whether this node itself fired above —
            # overwrites any stale taint on its destination register(s).
            # STOREs have no defs (all-source), so this is a no-op for them.
            for d in defs:
                taint[d] = (node.id, False)
            continue

        # Non-mem-op (or `lea`/excluded mem-op): standard forward taint
        # propagation, gated by the combination bit.
        tainted_uses = [u for u in uses if u in taint]
        if tainted_uses:
            origin = min(taint[u][0] for u in tainted_uses)
            transformed = is_combination or any(taint[u][1] for u in tainted_uses)
            for d in defs:
                taint[d] = (origin, transformed)
        else:
            # Redefined from untainted inputs: clear any stale taint so a
            # later reuse of this register doesn't fire on old provenance.
            for d in defs:
                taint.pop(d, None)

    return pdg
