"""Tests for the assembler-backed token mask in gen/arch_purity.py.

The spec-engine rule alone leaves tokens that the target assembler rejects,
because a spec written for this pipeline cannot know what one particular
assembler accepts. Two real cases, both present in the committed generator's
vocabulary:

  - `bne` is an ARM32 spelling that reached the arm64 vocabulary because
    `norm_arch` folds arm32 records into arm64; aarch64 spells it `b.ne`.
  - `add.4s` / `movi.4s` / `and.16b` are Apple-style NEON "dot" syntax, which
    the GNU aarch64 assembler does not accept.

These tests pin that the assembler rule removes them while keeping the
mnemonics that are genuinely valid for each ISA.
"""
import json
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from external_oracle import ExternalOracle  # noqa: E402

GEN = ROOT / "gen" / "generator.pt"
if not GEN.is_file():
    pytest.skip("gen/generator.pt not present", allow_module_level=True)
if not ExternalOracle().mc:
    pytest.skip("llvm-mc not available", allow_module_level=True)

import arch_purity  # noqa: E402
from generator import CondTransformerLM  # noqa: E402

SPECS = {"x86_64": "x86_64.json", "arm64": "arm64.json"}


@pytest.fixture(scope="module")
def vocab():
    return CondTransformerLM.load(str(GEN)).vocab


@pytest.fixture(scope="module")
def spec_only(vocab):
    return arch_purity.build_allowed_ids(vocab, SPECS)


@pytest.fixture(scope="module")
def with_assembler(vocab, tmp_path_factory):
    cache = tmp_path_factory.mktemp("ap") / "cache.json"
    return arch_purity.build_allowed_ids(vocab, SPECS, assembler_check=True,
                                         cache_path=cache)


def _mnemonics(vocab, ids):
    return {vocab.itos[i].split()[0] for i in ids}


def test_assembler_rule_drops_arm32_branch_spelling(vocab, spec_only, with_assembler):
    """`bne` is ARM32; aarch64 needs `b.ne`. The spec rule keeps it."""
    before = _mnemonics(vocab, spec_only["arm64"])
    after = _mnemonics(vocab, with_assembler["arm64"])
    assert "bne" in before, "fixture precondition: spec rule admits bne"
    assert "bne" not in after


def test_assembler_rule_drops_apple_neon_dot_syntax(vocab, with_assembler):
    after = _mnemonics(vocab, with_assembler["arm64"])
    for tok in ("add.4s", "movi.4s", "and.16b"):
        assert tok not in after, f"{tok} is Apple NEON syntax, not GNU aarch64"


def test_assembler_rule_keeps_real_arm64_mnemonics(vocab, with_assembler):
    after = _mnemonics(vocab, with_assembler["arm64"])
    assert "b.ne" in after
    assert "ldr" in after


def test_cross_isa_and_symbol_tokens_excluded(vocab, with_assembler):
    """The spec rule already handles these; pin that the stricter rule does
    not accidentally let them back in."""
    arm = _mnemonics(vocab, with_assembler["arm64"])
    assert "pushq" not in arm          # x86 mnemonic
    assert "main_func" not in arm      # a symbol name, not an instruction
    x86 = _mnemonics(vocab, with_assembler["x86_64"])
    assert "main_func" not in x86


def test_assembler_rule_is_a_subset_of_the_spec_rule(spec_only, with_assembler):
    for arch in SPECS:
        assert with_assembler[arch] <= spec_only[arch]


def test_every_surviving_token_realizes_to_assemblable_text(vocab, with_assembler):
    """The rule's own contract, checked end to end on a sample."""
    from isa_spec import load_spec
    from realize import Realizer
    oracle = ExternalOracle()
    for arch in SPECS:
        r = Realizer(load_spec(SPECS[arch]), seed=0)
        ids = sorted(with_assembler[arch])[:40]
        for i in ids:
            tok = vocab.itos[i]
            if any(r.realize_instruction(tok, reject_invalid=False) and
                   oracle.assemble(r.realize_instruction(tok, reject_invalid=False),
                                   arch) is not None
                   for _ in range(6)):
                continue
            pytest.fail(f"{arch}: kept token {tok!r} never assembles")


def test_cache_is_written_and_reused(vocab, tmp_path):
    cache = tmp_path / "c.json"
    first = arch_purity.build_allowed_ids(vocab, SPECS, assembler_check=True,
                                          cache_path=cache)
    assert cache.is_file()
    doc = json.loads(cache.read_text())
    assert doc["key"] and set(doc["allowed"]) == set(SPECS)
    second = arch_purity.build_allowed_ids(vocab, SPECS, assembler_check=True,
                                           cache_path=cache)
    assert second == first


def test_cache_key_changes_with_tries(vocab, tmp_path):
    """A cache built with a different attempt budget must not be reused."""
    k1 = arch_purity._cache_key(vocab, SPECS, 4)
    k2 = arch_purity._cache_key(vocab, SPECS, 7)
    assert k1 != k2


def test_attach_sets_a_disallow_tensor_per_arch(tmp_path):
    model = CondTransformerLM.load(str(GEN))
    arch_purity.attach_arch_masks(model, SPECS, assembler_check=True,
                                  cache_path=tmp_path / "c.json")
    assert set(model._arch_disallow) == set(SPECS)
    # arm64 is the more restricted ISA here, so it must disallow more tokens
    assert len(model._arch_disallow["arm64"]) > len(model._arch_disallow["x86_64"])
