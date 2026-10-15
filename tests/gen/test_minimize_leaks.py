"""Offline correctness tests for ddmin (gen/minimize_leaks.py).

ddmin is a pure function of a boolean test, so it is validated here with a fake
oracle -- no Spectector, no generator. The Spectector-backed test builder is
exercised only on the cluster (it needs the x86 oracle)."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "gen"))
from minimize_leaks import ddmin  # noqa: E402


def test_keeps_only_the_essential_instruction():
    body = [f"nop{i}" for i in range(20)]
    body[7] = "ESSENTIAL"
    # "leaks" iff the essential instruction is present
    out = ddmin(body, lambda s: "ESSENTIAL" in s)
    assert out == ["ESSENTIAL"]


def test_keeps_a_conjunction_both_needed():
    body = ["a", "x", "b", "y", "c"]
    # leaks iff BOTH markers survive
    out = ddmin(body, lambda s: "x" in s and "y" in s)
    assert set(out) == {"x", "y"}
    assert len(out) == 2  # 1-minimal: nothing else kept


def test_full_input_returned_when_everything_is_needed():
    body = ["i0", "i1", "i2", "i3"]
    out = ddmin(body, lambda s: len(s) == len(body))
    assert out == body


def test_is_one_minimal_no_single_removal_still_passes():
    body = [f"n{i}" for i in range(12)]
    needed = {"n2", "n5", "n9"}
    out = ddmin(body, lambda s: needed.issubset(set(s)))
    assert set(out) == needed
    # 1-minimality: removing any single element breaks the test
    for i in range(len(out)):
        assert not needed.issubset(set(out[:i] + out[i + 1:]))


def test_requires_full_input_to_pass():
    import pytest
    with pytest.raises(AssertionError):
        ddmin(["a", "b"], lambda s: False)
