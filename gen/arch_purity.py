#!/usr/bin/env python3
"""arch_purity.py — constrain the generator to its target ISA at sample time.

The generator's vocabulary is SHARED across x86_64 and arm64 (one pool of 458
normalized-instruction tokens), and CondTransformerLM.sample() masks only the
pad/class/arch control tokens. So nothing stops it drawing an ARM token while
generating for x86, or vice versa — which triage
(gen/OTHER_BUCKET_TRIAGE.md) found is a large share of the residual "other"
failures (llvm-mc: "invalid instruction mnemonic 'ldur'"). The vocab also holds
41 tokens whose "opcode" is a symbol name (`l1tf_read_secret_byte`,
`deep_call_arm`) or a bare number — never a valid instruction on any ISA.

Fix, at sampling, no retraining: for a target arch, allow a token only if that
arch's spec engine recognizes its opcode (canonical_op != OTHER). This masks
(a) the other ISA's opcodes and (b) the 41 symbol/number tokens, in one rule,
using the same spec vocabulary the rest of the pipeline trusts. The 50 arch-
neutral opcodes (add/mov/…) stay available to both.

Usage:
    from arch_purity import attach_arch_masks
    attach_arch_masks(model, {"x86_64": "x86_64.json", "arm64": "arm64.json"})
    # model.sample(...) now emits only target-arch-valid opcodes
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine  # noqa: E402


def _opcode(token: str) -> str:
    parts = token.split()
    return parts[0] if parts else ""


def build_allowed_ids(vocab, spec_for_arch) -> dict:
    """-> {arch: set(token_id)} the ids sample() may emit for that arch."""
    engines = {a: load_engine(f) for a, f in spec_for_arch.items()}
    allowed = {a: set() for a in spec_for_arch}
    for i, tok in enumerate(vocab.itos):
        if tok.startswith("<"):          # control tokens handled separately
            continue
        op = _opcode(tok)
        for a, eng in engines.items():
            if eng.mnemonic_valid(op):   # canonical_op OR operand-determined load/store
                allowed[a].add(i)
    return allowed


def attach_arch_masks(model, spec_for_arch) -> dict:
    """Compute and attach a per-arch DISALLOW id tensor; sample() honors it via a
    single masked assignment. Returns the allowed-id sets for inspection."""
    import torch
    v = model.vocab
    allowed = build_allowed_ids(v, spec_for_arch)
    keep_always = {v.pad_id, v.eos_id} | set(v.control_ids)
    model._arch_disallow = {}
    for a, ok in allowed.items():
        dis = [i for i, tok in enumerate(v.itos)
               if tok.startswith("<") is False        # instruction tokens only
               and i not in ok and i not in keep_always]
        model._arch_disallow[a] = torch.tensor(dis, dtype=torch.long)
    return allowed
