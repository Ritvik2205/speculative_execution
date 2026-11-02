"""Tests for the opt-in mechanism features in v54/inline_features.py
(plan 2026-11-02-mechanism-vs-shape, Task 5). Off must be byte-identical to
the 58-dim vector every existing checkpoint was trained on; on appends 6
label-free speculative-window features (eval/mechanism/spec_window.py
computed for every trigger family, never from the record's class)."""
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "v54"))

from inline_features import (  # noqa: E402
    MECH_FEATURE_NAMES,
    compute_inline_features,
    feature_selection,
    get_feature_names,
)

V1 = ["andq $0x1fff, %rsi", "movw (%r14,%rsi), %ax", "cmpb %al, %sil",
      "jnp 0x54 <.bb_0.1>", "jmp 0x98 <.exit_0>",
      "andq $0x1fff, %rax", "movb (%r14,%rax), %bl"]


def _f(seq, mech):
    v = compute_inline_features(seq, mech=mech)
    return dict(zip(get_feature_names(mech=mech), v))


def test_off_is_byte_identical():
    assert len(get_feature_names()) == 58
    assert get_feature_names(mech=False) == get_feature_names()
    a = compute_inline_features(V1)
    b = compute_inline_features(V1, mech=False)
    assert a.shape == (58,) and np.array_equal(a, b)


def test_on_appends_six():
    names = get_feature_names(mech=True)
    assert len(names) == 64
    assert names[:58] == get_feature_names()
    assert names[58:] == MECH_FEATURE_NAMES
    v = compute_inline_features(V1, mech=True)
    assert v.shape == (64,) and np.array_equal(v[:58], compute_inline_features(V1))


def test_v1_window_cut_feature():
    off = _f(V1, True)
    on = _f(V1[:5] + ["lfence"] + V1[5:], True)
    assert off["mech_v1_has_window"] == 1.0 and off["mech_v1_frac_cut"] == 0.0
    assert on["mech_v1_has_window"] == 1.0 and on["mech_v1_frac_cut"] == 1.0


def test_no_windows_is_zero():
    v = compute_inline_features(["addq $1, %rax", "nop"], mech=True)
    assert np.array_equal(v[58:], np.zeros(6))


def test_features_do_not_depend_on_class():
    # compute_inline_features never sees a label — same sequence, same vector
    assert compute_inline_features(V1, mech=True).tolist() == compute_inline_features(list(V1), mech=True).tolist()
    # every family is computed whatever the gadget: a straight-line
    # load -> dependent read opens a load window, and the store a V4 one
    seq = ["movl %eax, (%r14,%rdx)", "movw (%r14,%rcx), %cx",
           "andq $0x1fff, %rcx", "andb (%r14,%rcx), %bl"]
    f = _f(seq, True)
    assert f["mech_load_has_window"] == 1.0 and f["mech_v4_has_window"] == 1.0
    assert f["mech_v1_has_window"] == 0.0


def test_feature_selection():
    assert feature_selection(get_feature_names()) == (False, None)
    mech, idx = feature_selection(get_feature_names(mech=True))
    assert mech is True and idx is None
    mech, idx = feature_selection(["frac_nop", "frac_ret"] + MECH_FEATURE_NAMES)
    allm = get_feature_names(mech=True)
    assert mech is True and idx == [allm.index(n) for n in ["frac_nop", "frac_ret"] + MECH_FEATURE_NAMES]
    mech, idx = feature_selection(["frac_nop"])
    assert mech is False and idx == [get_feature_names().index("frac_nop")]


def _dataset(names):
    from train_gine_v38 import GINEDatasetV47
    recs = [{"label": "SPECTRE_V1", "arch": "x86_64", "group": "fx_v1",
             "sequence": V1[:5] + ["lfence"] + V1[5:]},
            {"label": "BENIGN", "arch": "x86_64", "group": "fx_b",
             "sequence": V1}]
    return GINEDatasetV47(recs, {"BENIGN": 0, "SPECTRE_V1": 1}, names, use_spec_builder=True)


def test_dataset_off_unchanged_on_appends():
    off = _dataset(get_feature_names())
    on = _dataset(get_feature_names(mech=True))
    assert off.data and len(off.data) == len(on.data)
    for a, b in zip(off.data, on.data):
        assert a["handcrafted"].shape == (58,) and b["handcrafted"].shape == (64,)
        np.testing.assert_array_equal(a["handcrafted"], b["handcrafted"][:58])
    # fenced record: V1 window cut; unfenced: not
    i = MECH_FEATURE_NAMES.index("mech_v1_frac_cut") + 58
    assert [d["handcrafted"][i] for d in on.data] == [1.0, 0.0]


def test_dataset_subset_plus_mech():
    names = ["frac_nop", "frac_ret"] + MECH_FEATURE_NAMES
    ds = _dataset(names)
    assert all(d["handcrafted"].shape == (8,) for d in ds.data)
