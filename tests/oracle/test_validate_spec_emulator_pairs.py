import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "oracle"))
import validate_spec_emulator_pairs as v


def rows(kind, leak_ok, leak_bad, safe_ok, safe_bad, unrunnable=0):
    r = [{"kind": kind, "side": "leak", "verdict": "leak"}] * leak_ok
    r += [{"kind": kind, "side": "leak", "verdict": "safe"}] * leak_bad
    r += [{"kind": kind, "side": "safe", "verdict": "safe"}] * safe_ok
    r += [{"kind": kind, "side": "safe", "verdict": "leak"}] * safe_bad
    r += [{"kind": kind, "side": "leak", "verdict": "unrunnable"}] * unrunnable
    return r


def test_agreement_is_over_runnable_rows_per_side():
    a = v.agreement(rows("inject", 3, 1, 4, 0, unrunnable=2))
    assert a["leak"] == {"n": 6, "runnable": 4, "agree": 3, "rate": 0.75}
    assert a["safe"]["rate"] == 1.0


def test_decision_passes_kills_or_sits_between():
    ok = v.agreement(rows("inject", 96, 4, 100, 0))
    assert v.decision(ok, {"inject": ok}) == "PASS"
    low = v.agreement(rows("inject", 42, 58, 97, 3))
    assert v.decision(low, {"inject": low}) == "KILL"
    mid = v.agreement(rows("inject", 92, 8, 100, 0))
    assert v.decision(mid, {"inject": mid}) == "BELOW PASS"
    weak_kind = v.agreement(rows("fence", 80, 20, 100, 0))
    assert v.decision(ok, {"inject": ok, "fence": weak_kind}) == "BELOW PASS"


def test_victim_program_binds_the_symbols_and_keeps_the_body():
    asm = v.victim_asm(["movq\t16(%r15), %rsi", "movb\t%dl, (%rsi,%rcx)"])
    assert not any("(%rip)" in l for l in asm)
    assert sum("movb\t%dl, (%rsi,%rcx)" in l for l in asm) == 2        # speculative and clamped path
    assert any(l.startswith("jae") for l in asm)
