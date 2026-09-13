import math

import pytest

from eval.isa_windowing import rewindow, predict_windowed


# ---------------------------------------------------------------------------
# rewindow
# ---------------------------------------------------------------------------

def test_rewindow_200_instr_target40_stride20_count_matches_formula():
    seq = [f"i{n}" for n in range(200)]
    windows = rewindow(seq, target_len=40, stride=20)
    expected = math.ceil((200 - 40) / 20) + 1
    assert expected == 9
    assert len(windows) == expected
    # every window is exactly target_len long
    assert all(len(w) == 40 for w in windows)
    # the tail of the sequence is covered even though 160 (last stride start)
    # + 40 == 200 is not itself hit by the strided loop
    assert windows[-1] == seq[-40:]
    # first window is the head of the sequence
    assert windows[0] == seq[0:40]


def test_rewindow_windows_are_contiguous_slices_at_stride_offsets():
    seq = list(range(200))
    windows = rewindow(seq, target_len=40, stride=20)
    for i, w in enumerate(windows[:-1]):  # last window is the tail, not on-grid
        assert w == seq[i * 20: i * 20 + 40]


def test_rewindow_short_sequence_passes_through_as_single_window():
    seq = ["mov", "add", "ret"]
    assert rewindow(seq, target_len=40, stride=20) == [seq]


def test_rewindow_sequence_exactly_target_len_passes_through_as_single_window():
    seq = [f"i{n}" for n in range(40)]
    assert rewindow(seq, target_len=40, stride=20) == [seq]


def test_rewindow_empty_sequence_returns_no_windows():
    assert rewindow([], target_len=40, stride=20) == []


def test_rewindow_exact_multiple_of_stride_has_no_duplicate_tail_window():
    # n - target_len (60) is an exact multiple of stride (20): the strided
    # loop's last window ([40:80]) must not coincide with the tail ([60:100]).
    seq = [f"i{n}" for n in range(100)]
    windows = rewindow(seq, target_len=40, stride=20)
    assert windows[-2] != windows[-1]
    assert windows[-1] == seq[-40:]
    assert len(windows) == math.ceil((100 - 40) / 20) + 1


def test_rewindow_rejects_nonpositive_target_len_or_stride():
    with pytest.raises(ValueError):
        rewindow([1, 2, 3], target_len=0, stride=1)
    with pytest.raises(ValueError):
        rewindow([1, 2, 3], target_len=1, stride=0)


# ---------------------------------------------------------------------------
# predict_windowed
# ---------------------------------------------------------------------------

def _seq(n):
    return [f"i{k}" for k in range(n)]


def test_predict_windowed_all_windows_agree_confidently():
    def predict_fn(window, arch):
        return "SPECTRE_V1", 0.9

    result = predict_windowed(
        model=None, sequence=_seq(200), arch="riscv64",
        target_len=40, k_threshold=0.5, predict_fn=predict_fn,
    )
    assert result == "SPECTRE_V1"


def test_predict_windowed_single_confident_attack_among_many_unconfident_benign():
    """Policy: only windows whose confidence clears k_threshold get a vote.
    A single confidently-classified attack window outvotes many BENIGN
    windows that never cleared the threshold (attack sensitivity) -- this is
    the mechanism, not majority-rule over all windows regardless of
    confidence."""
    calls = {"n": 0}

    def predict_fn(window, arch):
        calls["n"] += 1
        if calls["n"] == 3:
            return "L1TF", 0.95
        return "BENIGN", 0.2  # below threshold -> does not vote

    result = predict_windowed(
        model=None, sequence=_seq(200), arch="riscv64",
        target_len=40, k_threshold=0.6, predict_fn=predict_fn,
    )
    assert result == "L1TF"


def test_predict_windowed_majority_among_confident_votes_wins():
    seq_windows = rewindow(_seq(200), target_len=40, stride=20)
    n = len(seq_windows)
    assert n >= 3
    calls = {"n": 0}

    def predict_fn(window, arch):
        calls["n"] += 1
        # majority confidently BENIGN, one confidently an attack
        if calls["n"] == 1:
            return "MDS", 0.99
        return "BENIGN", 0.8

    result = predict_windowed(
        model=None, sequence=_seq(200), arch="riscv64",
        target_len=40, k_threshold=0.5, predict_fn=predict_fn,
    )
    assert result == "BENIGN"


def test_predict_windowed_no_confident_window_abstains_to_benign():
    def predict_fn(window, arch):
        return "SPECTRE_V2", 0.4  # below threshold everywhere

    result = predict_windowed(
        model=None, sequence=_seq(200), arch="riscv64",
        target_len=40, k_threshold=0.6, predict_fn=predict_fn,
    )
    assert result == "BENIGN"


def test_predict_windowed_empty_sequence_abstains_to_benign():
    def predict_fn(window, arch):
        raise AssertionError("predict_fn should never be called on zero windows")

    result = predict_windowed(
        model=None, sequence=[], arch="riscv64",
        target_len=40, k_threshold=0.5, predict_fn=predict_fn,
    )
    assert result == "BENIGN"


def test_predict_windowed_tie_break_is_deterministic_by_confidence_then_name():
    windows = rewindow(_seq(200), target_len=40, stride=20)
    assert len(windows) == 9
    calls = {"n": 0}

    def predict_fn(window, arch):
        calls["n"] += 1
        # 2 confident RETBLEED (max conf 0.7), 2 confident BHI (max conf 0.9),
        # rest unconfident -- BHI must win the count-tie via higher confidence.
        if calls["n"] in (1, 2):
            return "RETBLEED", 0.7
        if calls["n"] in (3, 4):
            return "BHI", 0.9 if calls["n"] == 4 else 0.6
        return "BENIGN", 0.1

    result = predict_windowed(
        model=None, sequence=_seq(200), arch="riscv64",
        target_len=40, k_threshold=0.6, predict_fn=predict_fn,
    )
    assert result == "BHI"


def test_predict_windowed_default_stride_is_target_len_when_unset():
    seen = []

    def predict_fn(window, arch):
        seen.append(tuple(window))
        return "BENIGN", 0.9

    predict_windowed(
        model=None, sequence=_seq(120), arch="x86_64",
        target_len=40, k_threshold=0.5, predict_fn=predict_fn,
    )
    # non-overlapping windows: 120 / 40 == 3
    assert len(seen) == 3
