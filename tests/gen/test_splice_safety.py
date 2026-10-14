"""Lock the class-aware splice-safety policy (gen/splice_safety.py)."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))

from splice_safety import forbidden_for_class  # noqa: E402


def test_cond_class_forbids_ret_and_stranding_cf():
    for cls in ("SPECTRE_V1", "SPECTRE_V4", "L1TF", "MDS"):
        assert forbidden_for_class(cls, "retq")
        assert forbidden_for_class(cls, "ret")
        assert forbidden_for_class(cls, "jmp <imm>")      # uncond direct jump strands
        assert forbidden_for_class(cls, "jmp <sym>")
        assert forbidden_for_class(cls, "callq <reg>")    # indirect transfer
        assert forbidden_for_class(cls, "jmpq <reg>")
        # kept: forward conditional branch, loads, arithmetic, direct call
        assert not forbidden_for_class(cls, "jae <sym>")
        assert not forbidden_for_class(cls, "movzbl (%r15), %r15d")
        assert not forbidden_for_class(cls, "callq <fn>")


def test_v2_keeps_indirect_call_but_not_ret():
    for cls in ("SPECTRE_V2", "BRANCH_HISTORY_INJECTION", "INCEPTION"):
        assert forbidden_for_class(cls, "retq")            # ret not their mechanism
        assert not forbidden_for_class(cls, "callq <reg>")  # indirect call IS
        assert not forbidden_for_class(cls, "jmpq <reg>")
        assert forbidden_for_class(cls, "jmp <imm>")        # still strand-prone


def test_retbleed_keeps_ret():
    for cls in ("RETBLEED", "SPECTRE_RSB"):
        assert not forbidden_for_class(cls, "retq")         # ret IS the mechanism
        assert not forbidden_for_class(cls, "callq <reg>")
        assert forbidden_for_class(cls, "jmp <imm>")        # uncond direct jump still out


def test_benign_unmasked():
    assert not forbidden_for_class("BENIGN", "retq")
    assert not forbidden_for_class("BENIGN", "jmp <imm>")


def test_conditional_branch_bcc_not_treated_as_uncond_b():
    # arm `b.ne` opcode is not bare `b`, so it is not an unconditional jump
    assert not forbidden_for_class("SPECTRE_V1", "b.ne <sym>")
    # bare arm `b <sym>` IS unconditional -> forbidden for cond classes
    assert forbidden_for_class("SPECTRE_V1", "b <sym>")
