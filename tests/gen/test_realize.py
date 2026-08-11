"""Tests for gen/realize.py's <fn> placeholder fix.

Unit tests need no external dependency (pure Realizer logic). The
regression test uses the real, independent llvm-mc oracle
(spec/external_oracle.py -- shares no code with the generator/realizer/
classifier, same oracle gen/check_syntactic_validity.py already trusts) to
prove the specific <fn>-shaped failure is actually gone, not just that the
Python code returns a different string."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec              # noqa: E402
from realize import Realizer                 # noqa: E402
from external_oracle import ExternalOracle   # noqa: E402


def test_fn_placeholder_no_longer_returns_literal_angle_brackets():
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    result = realizer._operand("<fn>", set())
    assert result != "<fn>"
    assert "<" not in result and ">" not in result


def test_fn_placeholder_x86_64_matches_configured_fn_sym():
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    assert realizer._operand("<fn>", set()) == spec["realize"]["fn_sym"]


def test_fn_placeholder_arm64_matches_configured_fn_sym():
    spec = load_spec("arm64.json")
    realizer = Realizer(spec, seed=0)
    assert realizer._operand("<fn>", set()) == spec["realize"]["fn_sym"]


def test_fn_sym_is_a_plain_valid_identifier():
    for arch in ("x86_64.json", "arm64.json"):
        spec = load_spec(arch)
        fn_sym = spec["realize"]["fn_sym"]
        assert fn_sym.isidentifier(), f"{arch}: fn_sym {fn_sym!r} is not a plain identifier"


def test_realize_sequence_with_fn_token_no_longer_guaranteed_invalid():
    """Regression test against the real independent oracle: a direct-call
    instruction using <fn> must no longer fail SOLELY because of the <fn>
    token. `callq fn_target` is valid AT&T syntax; the pre-fix `callq <fn>`
    could never assemble under any circumstances."""
    spec = load_spec("x86_64.json")
    realizer = Realizer(spec, seed=0)
    instr = realizer.realize_instruction("callq <fn>")
    oracle = ExternalOracle()
    code = oracle.assemble(instr, "x86_64")
    assert code is not None, f"expected {instr!r} to assemble cleanly, oracle rejected it"
