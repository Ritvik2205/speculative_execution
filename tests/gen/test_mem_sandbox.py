"""F3: realiser memory-base sandboxing (reserved, never-clobbered base reg).

Pure string-level tests (no clang/qemu): the opt-in pins every memory-operand
base to spec.realize.mem_base_reg, which is excluded from register_pool, so the
generated body never clobbers it and the emulator's seeded in-sandbox value
survives. Default OFF must be byte-identical to the old random-base behaviour.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
for p in (ROOT / "gen", ROOT / "spec", str(ROOT)):
    sys.path.insert(0, str(p))

from realize import Realizer  # noqa: E402
from decode import load_spec  # noqa: E402  (gen/decode.load_spec resolves spec names)

RV = load_spec("riscv.json")


def test_reserved_base_not_in_pool():
    r = Realizer(RV, sandbox_mem_base=True)
    assert r.mem_base_reg == "s11"
    assert r.mem_base_reg not in r.pool          # never emitted as a random operand
    assert r.sandbox_mem_base is True


def test_mem_operand_uses_reserved_base_when_on():
    r = Realizer(RV, seed=0, sandbox_mem_base=True)
    assert r._operand("<mem>", set()) == "0(s11)"
    assert r._operand("<mem-idx>", set()) == "0(s11)"   # riscv mem_idx has no index


def test_mem_operand_random_base_when_off():
    r = Realizer(RV, seed=0, sandbox_mem_base=False)
    out = r._operand("<mem>", set())
    assert out.startswith("0(") and out.endswith(")")
    base = out[2:-1]
    assert base in r.pool                        # a pool reg, not the reserved one
    assert base != "s11"


def test_off_is_default():
    assert Realizer(RV).sandbox_mem_base is False


def test_sandbox_flag_inert_without_spec_field():
    # an ISA whose spec has no mem_base_reg must ignore the flag (stay random).
    x86 = load_spec("x86_64.json")
    r = Realizer(x86, sandbox_mem_base=True)
    assert r.sandbox_mem_base is False           # no mem_base_reg -> disabled
    assert r.mem_base_reg is None


def test_reserved_base_stable_across_draws():
    # the base must be the reserved reg every time (so the body never clobbers
    # it), while a random base would vary; check several draws stay s11.
    r = Realizer(RV, seed=7, sandbox_mem_base=True)
    assert {r._operand("<mem>", set()) for _ in range(10)} == {"0(s11)"}
