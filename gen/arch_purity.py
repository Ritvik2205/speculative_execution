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

The spec rule alone is not enough, measured on arm64 (n=72 sequences per
condition, gen/isa_runnability.py): no mask 0.15 of sequences assemble, spec
mask 0.75. What survives the spec rule but the assembler still rejects is
exactly what a spec written for one assembler cannot know:
  - ARM32 branch spellings (`bne`) reaching the arm64 vocabulary, because
    `norm_arch` folds arm32 records into arm64. aarch64 spells it `b.ne`.
  - Apple-style NEON "dot" syntax (`add.4s`, `movi.4s`, `and.16b`), which the
    GNU aarch64 assembler does not accept.
So `assembler_check=True` adds a second rule: keep a token only if it can be
REALIZED into an instruction the target assembler accepts. The realizer draws
operands at random, so each token gets several attempts and is kept if any
attempt assembles; the result is cached, keyed by the vocabulary and the spec
files, because it costs one assembler call per token per architecture.

Usage:
    from arch_purity import attach_arch_masks
    attach_arch_masks(model, {"x86_64": "x86_64.json", "arm64": "arm64.json"},
                      assembler_check=True)
    # model.sample(...) now emits only tokens that realize to valid asm
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


DEFAULT_CACHE = ROOT / "gen" / "arch_purity_cache.json"


def _cache_key(vocab, spec_for_arch, tries: int) -> str:
    """Identity of a mask: the vocabulary, the spec files' contents, and how
    many realization attempts each token got."""
    import hashlib
    h = hashlib.sha256()
    h.update("\n".join(vocab.itos).encode())
    for a in sorted(spec_for_arch):
        h.update(a.encode())
        pth = ROOT / "spec" / spec_for_arch[a]
        h.update(pth.read_bytes() if pth.is_file() else spec_for_arch[a].encode())
    h.update(str(tries).encode())
    return h.hexdigest()[:16]


def _assembler_filter(vocab, spec_for_arch, allowed: dict, tries: int) -> dict:
    """Drop tokens that cannot be realized into assemblable text."""
    import sys as _sys
    _sys.path.insert(0, str(ROOT / "gen"))
    from isa_spec import load_spec                    # noqa: E402
    from realize import Realizer                      # noqa: E402
    _sys.path.insert(0, str(ROOT / "spec"))
    from external_oracle import ExternalOracle        # noqa: E402

    oracle = ExternalOracle()
    if not oracle.mc:
        return allowed                                # no assembler: spec rule only
    out = {}
    for arch, ids in allowed.items():
        realizer = Realizer(load_spec(spec_for_arch[arch]), seed=0)
        keep = set()
        for i in sorted(ids):
            tok = vocab.itos[i]
            for _ in range(tries):
                try:
                    instr = realizer.realize_instruction(tok, reject_invalid=False)
                except Exception:                     # noqa: BLE001
                    continue
                if instr and oracle.assemble(instr, arch) is not None:
                    keep.add(i)
                    break
        out[arch] = keep
    return out


def build_allowed_ids(vocab, spec_for_arch, *, assembler_check: bool = False,
                      tries: int = 4, cache_path=None) -> dict:
    """-> {arch: set(token_id)} the ids sample() may emit for that arch.

    With `assembler_check`, a token must additionally realize into text the
    target assembler accepts (see the module docstring). That pass is cached,
    since it costs one assembler invocation per surviving token per arch.
    """
    engines = {a: load_engine(f) for a, f in spec_for_arch.items()}
    allowed = {a: set() for a in spec_for_arch}
    for i, tok in enumerate(vocab.itos):
        if tok.startswith("<"):          # control tokens handled separately
            continue
        op = _opcode(tok)
        for a, eng in engines.items():
            if eng.mnemonic_valid(op):   # canonical_op OR operand-determined load/store
                allowed[a].add(i)
    if not assembler_check:
        return allowed

    import json
    cache_path = Path(cache_path) if cache_path else DEFAULT_CACHE
    key = _cache_key(vocab, spec_for_arch, tries)
    if cache_path.is_file():
        try:
            doc = json.loads(cache_path.read_text())
            if doc.get("key") == key:
                return {a: set(v) for a, v in doc["allowed"].items()}
        except (ValueError, KeyError):
            pass
    allowed = _assembler_filter(vocab, spec_for_arch, allowed, tries)
    try:
        cache_path.parent.mkdir(parents=True, exist_ok=True)
        cache_path.write_text(json.dumps(
            {"key": key, "allowed": {a: sorted(v) for a, v in allowed.items()}}) + "\n")
    except OSError:
        pass
    return allowed


def attach_arch_masks(model, spec_for_arch, *, assembler_check: bool = False,
                      tries: int = 4, cache_path=None) -> dict:
    """Compute and attach a per-arch DISALLOW id tensor; sample() honors it via a
    single masked assignment. Returns the allowed-id sets for inspection."""
    import torch
    v = model.vocab
    allowed = build_allowed_ids(v, spec_for_arch, assembler_check=assembler_check,
                               tries=tries, cache_path=cache_path)
    keep_always = {v.pad_id, v.eos_id} | set(v.control_ids)
    model._arch_disallow = {}
    for a, ok in allowed.items():
        dis = [i for i, tok in enumerate(v.itos)
               if tok.startswith("<") is False        # instruction tokens only
               and i not in ok and i not in keep_always]
        model._arch_disallow[a] = torch.tensor(dis, dtype=torch.long)
    return allowed
