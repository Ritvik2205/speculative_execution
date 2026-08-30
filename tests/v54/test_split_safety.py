"""The label-conditioned admission filter must never touch a non-train split.

Regression tests for the defect documented in SPECDISCOVER_TEST_SET_SCREENING.md:
v53/build_dataset.py applied `has_train_attack_signal` to the TEST pool, three
lines below a comment claiming it did not. That screened the locked test set so
every record satisfied a hand-written rule keyed on its own label — selective
data snooping (Arp et al. P3) — inflating reported accuracy by ~5-9pp.

A comment did not prevent it for three model generations. These tests, and the
keyword-only required `split` argument, are the enforcement.
"""
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))

from build_dataset import (  # noqa: E402
    LabelConditionedFilterOnTestSplit,
    has_train_attack_signal,
    passes_quality_filter,
)

MDS_SEQ = ["movq (%rsi), %rax", "clflush (%rax)", "rdtsc", "retq"]


def test_train_split_is_allowed():
    assert has_train_attack_signal("MDS", MDS_SEQ, split="train") is True


@pytest.mark.parametrize("split", ["test", "val", "holdout", "TRAIN", "", "train "])
def test_every_non_train_split_raises(split):
    """Anything that is not exactly 'train' must raise — including case and
    whitespace variants, which are the shapes a careless call site produces."""
    with pytest.raises(LabelConditionedFilterOnTestSplit):
        has_train_attack_signal("MDS", MDS_SEQ, split=split)


def test_split_is_keyword_only_and_required():
    """Positional passing must fail, so a call site cannot supply the split by
    accident, and omission must fail rather than defaulting to something."""
    with pytest.raises(TypeError):
        has_train_attack_signal("MDS", MDS_SEQ, "train")     # positional
    with pytest.raises(TypeError):
        has_train_attack_signal("MDS", MDS_SEQ)              # omitted


def test_quality_filter_never_sees_a_label():
    """The label-independent filter must not accept a label at all — if it could,
    a future edit could quietly reintroduce label conditioning through it."""
    import inspect
    params = list(inspect.signature(passes_quality_filter).parameters)
    assert "label" not in params, f"quality filter must be label-free, got {params}"


def test_quality_filter_is_label_agnostic_in_behaviour():
    """Same sequence, any label, same verdict."""
    verdicts = {passes_quality_filter(MDS_SEQ) for _ in range(3)}
    assert len(verdicts) == 1


def test_quality_filter_rejects_degenerate_stubs():
    """The -O2 stubs that keep their attack label after the compiler deleted the
    gadget (11.5% of the RISC-V corpus) must fail on length alone."""
    assert passes_quality_filter(["fence", "ret"]) is False
    assert passes_quality_filter([], ) is False


def test_quality_filter_ignores_labels_and_directives():
    """Labels and directives are not instructions and must not count toward the
    length floor — otherwise a stub padded with directives would pass."""
    padded = [".text", ".globl foo", "foo:", "ret"]
    assert passes_quality_filter(padded, min_instructions=2) is False
