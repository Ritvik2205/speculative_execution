"""Test controls logic for oracle validation."""
from oracle.validate_oracle import controls_pass
from oracle.manifest import LeakRecord


def _rec(**kw):
    """Helper to create a LeakRecord with sensible defaults."""
    b = dict(
        program="p",
        vuln_class="SPECTRE_V1",
        arch="x86_64",
        secret=83,
        recovered_byte=83,
        recovered_ok=True,
        snr_o3=8.0,
        snr_inorder=0.1,
        leak_signal=7.9,
        leak=True,
        adjudicable="yes",
        status="ok",
        gem5_version="v",
        member_files=[],
    )
    b.update(kw)
    return LeakRecord(**b)


def test_controls_pass_when_pos_leaks_and_neg_silent():
    """Positive control leaks, negative control is silent -> PASS."""
    pos = _rec()
    neg = _rec(
        program="benign",
        vuln_class="BENIGN",
        leak=False,
        snr_o3=0.2,
        snr_inorder=0.1,
        leak_signal=0.1,
        recovered_ok=False,
    )
    ok, msgs = controls_pass(pos, neg)
    assert ok is True


def test_controls_fail_if_positive_does_not_leak():
    """Positive control doesn't leak -> FAIL with msg about positive."""
    pos = _rec(leak=False, snr_o3=0.3, snr_inorder=0.1)
    neg = _rec(program="benign", leak=False, snr_o3=0.2, snr_inorder=0.1)
    ok, msgs = controls_pass(pos, neg)
    assert ok is False
    assert any("positive" in m.lower() for m in msgs)


def test_controls_fail_if_negative_leaks():
    """Negative control leaks -> FAIL with msg about negative."""
    pos = _rec()
    neg = _rec(program="benign", leak=True)
    ok, msgs = controls_pass(pos, neg)
    assert ok is False
    assert any("negative" in m.lower() for m in msgs)
