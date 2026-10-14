#!/usr/bin/env python3
"""splice_safety.py -- constrain the generator to control flow the oracle can
adjudicate and the victim template can splice, at sample time, no retraining.

Why. Cold generations fail the x86 oracle en masse (measured: 112/119
unrunnable) because they emit control flow the upstream (conditional-branch)
Spectector cannot model and the splice cannot host: a `ret` mid-body returns
before the spliced secret->transmit sink, so the sink is unreachable, and a bare
unconditional jump to a data immediate strands the rest. This mirrors
gen/arch_purity.py -- a per-class DISALLOW id tensor that
CondTransformerLM.sample() applies alongside the arch mask -- but keyed by what
each class's ORACLE actually models, so the mask never removes a class's own
mechanism:

  - conditional-branch classes (SPECTRE_V1/V4, L1TF, MDS): forbid `ret`,
    unconditional direct jumps, and indirect call/jump. Keep forward conditional
    branches, direct calls, loads/stores, arithmetic.
  - indirect-mechanism classes (SPECTRE_V2, BHI, INCEPTION): the indirect branch
    IS the mechanism -> keep indirect call/jump; still forbid `ret` and
    unconditional direct jumps.
  - return-mechanism classes (RETBLEED, SPECTRE_RSB): `ret` IS the mechanism ->
    keep it and indirect transfers; forbid only unconditional direct jumps.
  - BENIGN: unmasked (not spliced for leaks; keep it realistic).

A bare unconditional direct jump (`jmp <imm>`/`jmp <sym>`, arm `b <sym>`) is
forbidden for every non-benign class because it jumps to a data operand or an
undefined label and strands the body; conditional branches (and, for arm, the
`b.<cc>` forms whose opcode is not bare `b`) are untouched.

Usage:
    from splice_safety import attach_splice_masks
    attach_splice_masks(model)          # after attach_arch_masks(...)
    model.sample("SPECTRE_V1", "x86_64")  # now emits no ret / stranding CF
"""
from __future__ import annotations

# class policy groups (vocab class names)
_COND = {"SPECTRE_V1", "SPECTRE_V4", "L1TF", "MDS"}
_INDIRECT_MECH = {"SPECTRE_V2", "BRANCH_HISTORY_INJECTION", "INCEPTION"}
_RET_MECH = {"RETBLEED", "SPECTRE_RSB"}
# BENIGN and anything unlisted: no splice-safety mask.

_RET_OPS = {"ret", "retq", "retn", "retw"}
_JMP_OPS = {"jmp", "jmpq", "b"}                 # unconditional (x86 jmp*, arm bare b)
_TRANSFER_OPS = {"call", "callq", "jmp", "jmpq", "br", "blr"}
_INDIRECT_OPERANDS = ("<reg>", "<mem>", "<mem-idx>")


def _opcode(token: str) -> str:
    parts = token.split()
    return parts[0] if parts else ""


def _is_ret(tok: str) -> bool:
    return _opcode(tok) in _RET_OPS


def _is_uncond_direct_jmp(tok: str) -> bool:
    op = _opcode(tok)
    if op not in _JMP_OPS:
        return False
    # direct = target is a data immediate or a symbol, not a register/memory
    return not any(k in tok for k in _INDIRECT_OPERANDS)


def _is_indirect_transfer(tok: str) -> bool:
    return _opcode(tok) in _TRANSFER_OPS and any(k in tok for k in _INDIRECT_OPERANDS)


def forbidden_for_class(cls: str, tok: str) -> bool:
    """True if token `tok` must not be emitted while generating class `cls`.

    NOTE on `ret`: it is deliberately NOT masked here, even for the
    conditional-branch classes whose oracle cannot model it. Masking `ret`
    removed the model's learned stop cue (<eos> follows `ret` in the victim
    corpus), so cold gadgets ran to near max_len and the length-conditioning
    token could not shorten them. `ret` is instead stripped at splice time for
    every non-return-mechanism class (strip_ret_for_class / gen.decode's
    build_gen_body), which keeps the stop cue -- and length control -- while
    still guaranteeing no mid-body `ret` strands the transmit sink. Only the
    stranding CF with no stop-cue value (unconditional direct jumps, and
    indirect transfers for the conditional-branch classes) is masked at decode.
    """
    if cls in _COND:
        return _is_uncond_direct_jmp(tok) or _is_indirect_transfer(tok)
    if cls in _INDIRECT_MECH:
        return _is_uncond_direct_jmp(tok)        # keep indirect (the mechanism)
    if cls in _RET_MECH:
        return _is_uncond_direct_jmp(tok)
    return False                                 # BENIGN / unlisted: unmasked


# Classes whose mechanism IS a return: their body must keep `ret`. Every other
# class has `ret` stripped from the realized body before splicing (the victim
# template supplies the function return; a mid-body `ret` would strand the sink).
def strip_ret_for_class(cls: str) -> bool:
    return cls not in _RET_MECH


def strip_ret(realized, cls: str):
    """Drop `ret`-family instructions from a realized body unless `ret` is the
    class's mechanism. Returns a new list."""
    if not strip_ret_for_class(cls):
        return list(realized)
    return [ins for ins in realized if not _is_ret(ins.replace("\t", " "))]


def build_splice_disallow(vocab) -> dict:
    """-> {class_name: [token_id, ...]} the ids sample() must not emit."""
    out = {}
    for cls in vocab.classes:
        dis = [i for i, tok in enumerate(vocab.itos)
               if not tok.startswith("<") and forbidden_for_class(cls, tok)]
        if dis:
            out[cls] = dis
    return out


def attach_splice_masks(model) -> dict:
    """Attach a per-class DISALLOW id tensor honored by sample() via a masked
    assignment, exactly like arch_purity's arch mask. Returns the raw id map."""
    import torch
    dis = build_splice_disallow(model.vocab)
    model._splice_disallow = {c: torch.tensor(ids, dtype=torch.long)
                              for c, ids in dis.items()}
    return dis
