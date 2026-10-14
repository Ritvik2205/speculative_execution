"""Lock the class-aware splice-safety policy (gen/splice_safety.py)."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))

from splice_safety import (forbidden_for_class, strip_ret_for_class,  # noqa: E402
                           strip_ret)


def test_cond_class_forbids_stranding_cf_but_not_ret():
    # ret is NOT decode-masked (masking it killed the stop cue + length control);
    # it is stripped at splice time instead. Only stranding CF with no stop-cue
    # value is masked at decode.
    for cls in ("SPECTRE_V1", "SPECTRE_V4", "L1TF", "MDS"):
        assert not forbidden_for_class(cls, "retq")       # NOT masked (stripped later)
        assert not forbidden_for_class(cls, "ret")
        assert forbidden_for_class(cls, "jmp <imm>")      # uncond direct jump strands
        assert forbidden_for_class(cls, "jmp <sym>")
        assert forbidden_for_class(cls, "callq <reg>")    # indirect transfer
        assert forbidden_for_class(cls, "jmpq <reg>")
        # kept: forward conditional branch, loads, arithmetic, direct call
        assert not forbidden_for_class(cls, "jae <sym>")
        assert not forbidden_for_class(cls, "movzbl (%r15), %r15d")
        assert not forbidden_for_class(cls, "callq <fn>")


def test_v2_keeps_indirect_call():
    for cls in ("SPECTRE_V2", "BRANCH_HISTORY_INJECTION", "INCEPTION"):
        assert not forbidden_for_class(cls, "callq <reg>")  # indirect call IS mechanism
        assert not forbidden_for_class(cls, "jmpq <reg>")
        assert forbidden_for_class(cls, "jmp <imm>")        # still strand-prone


def test_benign_unmasked():
    assert not forbidden_for_class("BENIGN", "retq")
    assert not forbidden_for_class("BENIGN", "jmp <imm>")


def test_ret_stripped_for_cond_classes_kept_for_ret_mechanism():
    body = ["movq %r15, %r14", "retq", "shlq $6, %r8", "movb $1, (%r9,%r8)"]
    # conditional-branch class: ret removed (template supplies the return)
    assert strip_ret_for_class("SPECTRE_V1")
    assert "retq" not in " ".join(strip_ret(body, "SPECTRE_V1"))
    # return-mechanism class: ret kept
    assert not strip_ret_for_class("RETBLEED")
    assert "retq" in " ".join(strip_ret(body, "RETBLEED"))
    assert "retq" in " ".join(strip_ret(body, "SPECTRE_RSB"))


def test_conditional_branch_bcc_not_treated_as_uncond_b():
    # arm `b.ne` opcode is not bare `b`, so it is not an unconditional jump
    assert not forbidden_for_class("SPECTRE_V1", "b.ne <sym>")
    # bare arm `b <sym>` IS unconditional -> forbidden for cond classes
    assert forbidden_for_class("SPECTRE_V1", "b <sym>")
