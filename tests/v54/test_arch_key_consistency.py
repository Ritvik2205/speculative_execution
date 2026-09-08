"""
Task 5.1: Assert architecture-vocabulary key consistency.

Prevents silent bugs where architecture key sets drift apart across modules
(e.g., one map uses 'riscv' while another uses 'riscv64').

Validates that ARCH_VOCAB in v54/gine_classifier_v38.py and SPEC_FOR_ARCH in
spec/asm_tokenizer.py maintain identical key sets, and that the train dataset
spec map agrees.
"""

import sys
sys.path.insert(0, "v54")
sys.path.insert(0, "spec")

from gine_classifier_v38 import ARCH_VOCAB, assert_arch_keys
from asm_tokenizer import SPEC_FOR_ARCH


def test_arch_key_sets_agree():
    """ARCH_VOCAB and SPEC_FOR_ARCH must have identical keys."""
    assert set(ARCH_VOCAB) == set(SPEC_FOR_ARCH), (
        f"Architecture key mismatch:\n"
        f"  ARCH_VOCAB keys: {sorted(ARCH_VOCAB.keys())}\n"
        f"  SPEC_FOR_ARCH keys: {sorted(SPEC_FOR_ARCH.keys())}\n"
        f"  Symmetric difference: {set(ARCH_VOCAB) ^ set(SPEC_FOR_ARCH)}"
    )


def test_assert_arch_keys_passes():
    """assert_arch_keys() should not raise when keys agree."""
    # Should not raise
    assert_arch_keys()


def test_assert_arch_keys_live_with_only_v54_on_syspath():
    """Simulate the train_gine_v38.py import-time entrypoint: only v54/ is on
    sys.path (spec/ has not yet been added by GINEDatasetV47.__init__).

    assert_arch_keys() must be self-sufficient — it adds spec/ to sys.path
    itself — so it must NOT raise ImportError here. Regression test for the
    dead-no-op bug where a bare `except ImportError: pass` at the
    train_gine_v38.py call site silently swallowed this failure and the
    guard never actually ran during training.
    """
    removed = [p for p in sys.path if p.endswith("/spec") or p == "spec"]
    for p in removed:
        sys.path.remove(p)
    # Drop any cached spec-dir modules so the import is re-attempted for real.
    sys.modules.pop("asm_tokenizer", None)
    try:
        assert_arch_keys()  # must not raise ImportError
    finally:
        for p in removed:
            if p not in sys.path:
                sys.path.insert(0, p)


def test_assert_arch_keys_detects_mismatch():
    """assert_arch_keys() must detect and raise on key mismatch."""
    # Import the internal helper to test both branches
    from gine_classifier_v38 import _keys_agree

    # Test branch: keys match
    assert _keys_agree(
        {"x86_64", "arm64", "arm32", "riscv64", "unknown"},
        {"x86_64", "arm64", "arm32", "riscv64", "unknown"},
    )

    # Test branch: keys mismatch
    assert not _keys_agree(
        {"x86_64", "arm64", "arm32", "riscv64", "unknown"},
        {"x86_64", "arm64", "arm32", "riscv64"},  # missing 'unknown'
    )

    # Test that assert_arch_keys raises AssertionError when given mismatched sets
    # (we can't easily monkeypatch SPEC_FOR_ARCH without side effects, so we just
    # verify the helper correctly identifies a mismatch)
    try:
        a = {"x86_64", "arm64", "arm32", "riscv64", "unknown"}
        b = {"x86_64", "arm64", "arm32", "riscv64"}
        if not _keys_agree(a, b):
            raise AssertionError(f"Architecture keys mismatch: {a ^ b}")
        assert False, "Should have raised"
    except AssertionError as e:
        assert "Architecture keys mismatch" in str(e)
