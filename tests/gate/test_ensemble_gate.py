"""Tests for the ensemble agreement gate (spec/class_diff_features.py).

The subtle parts are the vote semantics, not the arithmetic:
  - abstention must NOT count as a vote to discard;
  - suppression requires unanimity among arms that actually adjudicate;
  - two arms are deliberately one-directional and must stay that way.
These are what a future refactor is most likely to silently break.
"""
import sys
from pathlib import Path

import numpy as np
import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from class_diff_features import (  # noqa: E402
    ARM_NAMES, DISCARD, KEEP, NODE_GATE_FLOOR, EnsembleContext,
    _arm_votes, ensemble_gate_scores,
)

DIM = 8
KW = dict(diff_threshold=0.5, knn_threshold=0.5, contrast_margin=0.02,
          prune_threshold=0.95, dilate=0)


def _ctx(benign=None, knn=None, attack=None):
    z = np.zeros((0, DIM), dtype=np.float32)
    return EnsembleContext(benign if benign is not None else z,
                           knn if knn is not None else z,
                           attack if attack is not None else z)


def _rows(*vecs):
    return np.array(vecs, dtype=np.float32)


def test_empty_input_is_handled():
    w, u = ensemble_gate_scores(np.zeros((0, DIM), np.float32), _ctx(), **KW)
    assert w.shape == (0,) and u == 0.0


def test_position_no_arm_adjudicates_keeps_full_weight():
    """With no reference material and no flags, only `redundancy` can vote, and
    it abstains on novel positions. Nothing licenses suppression -> weight 1.0."""
    H = _rows([1, 0, 0, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0, 0, 0])
    w, _ = ensemble_gate_scores(H, _ctx(), **KW)
    assert np.allclose(w, 1.0)


def test_spec_flag_arm_never_votes_discard():
    """A missing speculation flag is not evidence of irrelevance — it abstains."""
    H = _rows([1, 0, 0, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0, 0, 0])
    flags = np.array([True, False])
    votes = _arm_votes(H, _ctx(), flags, 0.5, 0.5, 0.02, 0.95, 0)
    assert votes["spec_flag"][0] == KEEP
    assert votes["spec_flag"][1] != DISCARD      # abstains, never discards


def test_redundancy_arm_never_votes_keep():
    """Being novel is not evidence of relevance — it abstains rather than keeping."""
    dup = [1, 0, 0, 0, 0, 0, 0, 0]
    H = _rows(dup, dup, [0, 1, 0, 0, 0, 0, 0, 0])
    votes = _arm_votes(H, _ctx(), None, 0.5, 0.5, 0.02, 0.95, 0)
    assert votes["redundancy"][1] == DISCARD     # exact duplicate of row 0
    assert votes["redundancy"][0] != KEEP        # novel -> abstain, not keep
    assert votes["redundancy"][2] != KEEP


def test_one_keep_vote_prevents_suppression():
    """Paul's rule: a lone dissenting KEEP blocks the discard."""
    dup = np.array([1, 0, 0, 0, 0, 0, 0, 0], dtype=np.float32)
    H = _rows(dup, dup)
    # redundancy votes DISCARD on row 1; spec_flag votes KEEP on row 1.
    w_no_flag, _ = ensemble_gate_scores(H, _ctx(), flags=np.array([False, False]), **KW)
    w_flag, _ = ensemble_gate_scores(H, _ctx(), flags=np.array([False, True]), **KW)
    assert w_no_flag[1] == pytest.approx(NODE_GATE_FLOOR)   # unanimous discard
    assert w_flag[1] > NODE_GATE_FLOOR                       # dissent lifts it


def test_unanimous_discard_hits_the_floor_and_keep_hits_one():
    dup = np.array([1, 0, 0, 0, 0, 0, 0, 0], dtype=np.float32)
    H = _rows(dup, dup)
    w, _ = ensemble_gate_scores(H, _ctx(), flags=np.array([True, False]), **KW)
    assert w[0] == pytest.approx(1.0)                 # only KEEP votes
    assert w[1] == pytest.approx(NODE_GATE_FLOOR)     # only DISCARD votes


def test_weight_is_graded_not_binary():
    """The point of the ensemble: partial agreement yields an intermediate
    weight, unlike the single-arm gate's binary {floor, 1.0}."""
    benign = _rows([1, 0, 0, 0, 0, 0, 0, 0])
    dup = np.array([1, 0, 0, 0, 0, 0, 0, 0], dtype=np.float32)
    H = _rows(dup, dup)
    w, _ = ensemble_gate_scores(H, _ctx(benign=benign),
                                flags=np.array([False, True]), **KW)
    intermediate = [x for x in w if NODE_GATE_FLOOR < x < 1.0]
    assert intermediate, f"expected a graded weight, got {w}"


def test_uncertainty_zero_when_arms_agree_and_positive_when_they_do_not():
    dup = np.array([1, 0, 0, 0, 0, 0, 0, 0], dtype=np.float32)
    H = _rows(dup, dup)
    _, u_agree = ensemble_gate_scores(H, _ctx(), flags=np.array([False, False]), **KW)
    _, u_split = ensemble_gate_scores(H, _ctx(), flags=np.array([False, True]), **KW)
    assert u_agree == pytest.approx(0.0)
    assert u_split > 0.0


def test_all_arms_are_represented_in_the_vote_matrix():
    H = _rows([1, 0, 0, 0, 0, 0, 0, 0])
    votes = _arm_votes(H, _ctx(), None, 0.5, 0.5, 0.02, 0.95, 0)
    assert set(votes) == set(ARM_NAMES)


# --- candidate feature space -------------------------------------------------
# Regression test for a real bug: fitting the candidate space with a SINGLE
# engine over a mixed-ISA corpus silently zeroed whole feature groups, because
# ARM's `ldr` does not match x86's load pattern and fell through to OTHER.
# `op_LOAD` measured 0.0% nonzero before the fix and 60.1% after.

from candidate_features import build_space, load_engines  # noqa: E402


def _recs():
    x86 = {"arch": "x86_64", "label": "L1TF",
           "sequence": ["movq (%rsi), %rax", "shlq $12, %rax",
                        "movq (%rdi,%rax), %rbx", "lfence", "retq"]}
    arm = {"arch": "arm64", "label": "L1TF",
           "sequence": ["ldr x0, [x1]", "lsl x0, x0, #12",
                        "ldr x2, [x3, x0]", "dsb sy", "ret"]}
    return [x86, arm] * 12


def test_candidate_space_is_arch_aware_for_both_isas():
    """A LOAD must register as a LOAD on x86 AND on arm64. With one shared
    engine, whichever ISA it didn't match silently produced OTHER."""
    recs = _recs()
    space = build_space(recs, load_engines())
    names = space.feature_names()
    assert "op_LOAD" in names, "canonical LOAD never observed during fit"
    X = space.transform(recs)
    col = X[:, names.index("op_LOAD")]
    x86_rows = [i for i, r in enumerate(recs) if r["arch"] == "x86_64"]
    arm_rows = [i for i, r in enumerate(recs) if r["arch"] == "arm64"]
    assert col[x86_rows].max() > 0, "LOAD not detected on x86_64"
    assert col[arm_rows].max() > 0, "LOAD not detected on arm64"


def test_single_engine_fallback_still_constructs():
    """Passing one engine must not crash — it just loses cross-ISA coverage."""
    eng = load_engines()["x86_64"]
    space = build_space(_recs(), eng)
    assert space.transform(_recs()).shape[0] == len(_recs())


def test_bigrams_capture_ordering():
    """The reason bigrams exist: a histogram cannot express LOAD -> SHIFT."""
    recs = _recs()
    space = build_space(recs, load_engines())
    assert any(n.startswith("bg_LOAD__") for n in space.feature_names()), \
        "no LOAD-initiated bigram was generated"
