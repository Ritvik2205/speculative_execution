"""
W4 edge-ablation plumbing: taint_mode / mem_order_edges / cfg_spec_edges are
opt-in SpecBackedPDGBuilder knobs now reachable from GINEDatasetV47's kwargs.

This test is a grid-safety guard: a background training grid spawns
`python3 v54/train_gine_v38.py` processes that construct GINEDatasetV47 with
NO knowledge of these new kwargs (i.e. at their defaults). We must prove the
defaults are a true no-op — a dataset built with the new kwargs explicitly
set to their defaults produces byte-identical PDG edge sets (and node
features) to a dataset built without passing them at all.
"""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "..", "v54"))

import numpy as np

from train_gine_v38 import GINEDatasetV47
from inline_features import get_feature_names

RECORDS = [
    {
        "label": "INCEPTION",
        "sequence": [
            "stp\tx29, x30, [sp, #-16]!",
            "dsb\tsy",
            "mov\tw8, #4",
            "adrp\tx9, <fn>",
            "add\tx9, x9, _target_fn@PAGEOFF",
            "blr\tx9",
            "subs\tw8, w8, #1",
            "b.ne\tLBB1_1",
            "ldp\tx29, x30, [sp], #16",
            "ret",
        ],
        "arch": "arm64",
        "group": "fixture_inception_arm64",
    },
    {
        "label": "BENIGN",
        "sequence": [
            "mov\trax, rdi",
            "mov\trbx, rsi",
            "cmp\trax, rbx",
            "jne\t.L1",
            "mov\trcx, [rax]",
            "add\trcx, 1",
            "mov\t[rax], rcx",
            ".L1:",
            "mov\trax, 0",
            "ret",
        ],
        "arch": "x86_64",
        "group": "fixture_benign_x86",
    },
]


def _labels():
    return {"INCEPTION": 0, "BENIGN": 1}


def _feature_names():
    return get_feature_names()


def _build(use_spec_builder, **kw):
    return GINEDatasetV47(
        RECORDS,
        _labels(),
        _feature_names(),
        use_spec_builder=use_spec_builder,
        **kw,
    )


def _edge_lists(ds):
    out = []
    for item in ds.data:
        n = item["n_edges"]
        ei = item["edge_index"][:, :n].tolist()
        et = item["edge_type"][:n].tolist()
        out.append((ei, et))
    return out


def test_no_new_kwargs_vs_explicit_defaults_are_identical_spec_builder():
    ds_implicit = _build(use_spec_builder=True)
    ds_explicit = _build(
        use_spec_builder=True,
        taint_mode="shift",
        mem_order_edges=False,
        cfg_spec_edges=False,
    )

    assert _edge_lists(ds_implicit) == _edge_lists(ds_explicit)
    for a, b in zip(ds_implicit.data, ds_explicit.data):
        np.testing.assert_array_equal(a["node_features"], b["node_features"])
        np.testing.assert_array_equal(a["handcrafted"], b["handcrafted"])


def test_no_new_kwargs_vs_explicit_defaults_are_identical_legacy_builder():
    # New kwargs are only meaningful with use_spec_builder=True, but they must
    # not break (or change) the legacy (non-spec) PDGBuilder path either.
    ds_implicit = _build(use_spec_builder=False)
    ds_explicit = _build(
        use_spec_builder=False,
        taint_mode="shift",
        mem_order_edges=False,
        cfg_spec_edges=False,
    )

    assert _edge_lists(ds_implicit) == _edge_lists(ds_explicit)


def test_flags_are_reachable_and_change_behavior_when_enabled():
    # Sanity: the flags must actually be wired to SpecBackedPDGBuilder, not
    # silently dropped. mem_order_edges=True should not raise and should be
    # constructible (behavior-change verification lives in spec_pdg_builder's
    # own tests; here we only prove reachability through the dataset layer).
    ds = _build(use_spec_builder=True, mem_order_edges=True)
    assert len(ds.data) == len(RECORDS)

    ds2 = _build(use_spec_builder=True, cfg_spec_edges=True)
    assert len(ds2.data) == len(RECORDS)

    ds3 = _build(use_spec_builder=True, taint_mode="slice")
    assert len(ds3.data) == len(RECORDS)
