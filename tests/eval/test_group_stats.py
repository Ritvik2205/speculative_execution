"""Tests for eval/group_stats.py — group-aware (cluster) uncertainty for the
RISC-V corpus. See eval/group_stats.py and
.superpowers/sdd/SPECDISCOVER_NEW_ISA_ROADMAP/task-1-brief.md for the "why":
RISC-V records cluster into a handful of source families (near-duplicate
_gen_N variants, multiple opt levels of the same source), so the ordinary
record-level CI understates uncertainty. These tests check the cluster
bootstrap actually widens the interval when that clustering is present, and
degrades gracefully (explicit NaN, not a false 0.0) when there isn't enough
between-group information to say anything.
"""
import math

import numpy as np
import pytest

from eval.group_stats import (
    ci95,
    cluster_bootstrap_ci,
    effective_n,
    group_aware_accuracy_ci,
    group_of,
)


# ---------------------------------------------------------------------------
# cluster_bootstrap_ci
# ---------------------------------------------------------------------------

def _correlated_cluster_data(n_groups=8, group_size=20, group_spread=5.0,
                              within_noise=0.1, seed=0):
    """Synthetic data with STRONG within-group correlation: each group gets
    its own mean, drawn from a wide distribution, and records within a group
    are near-copies of that mean (near-duplicate _gen_N style). The naive
    record-level CI sees group_size * n_groups "independent" points and comes
    out falsely tight; the cluster bootstrap should see through the
    duplication and come out much wider."""
    rng = np.random.RandomState(seed)
    group_means = rng.normal(loc=0.0, scale=group_spread, size=n_groups)
    values, groups = [], []
    for gi, gm in enumerate(group_means):
        vals = gm + rng.normal(scale=within_noise, size=group_size)
        values.extend(vals.tolist())
        groups.extend([f"g{gi}"] * group_size)
    return np.array(values), np.array(groups)


def test_cluster_bootstrap_wider_than_naive_under_within_group_correlation():
    values, groups = _correlated_cluster_data()
    _, rec_hw = ci95(values)
    point, lo, hi = cluster_bootstrap_ci(values, groups, n_boot=3000, seed=0)
    assert not math.isnan(lo) and not math.isnan(hi)
    grp_hw = max(point - lo, hi - point)
    # This is the entire point of the module: naive record-level CI treats
    # near-duplicates as independent evidence and comes out far too narrow.
    assert grp_hw > 3 * rec_hw


def test_cluster_bootstrap_matches_naive_when_all_groups_singleton():
    rng = np.random.RandomState(1)
    values = rng.normal(loc=10.0, scale=2.0, size=300)
    groups = np.array([f"rec{i}" for i in range(len(values))])  # every group size 1
    rec_mean, rec_hw = ci95(values)
    point, lo, hi = cluster_bootstrap_ci(values, groups, n_boot=5000, seed=0)
    assert point == pytest.approx(rec_mean)
    grp_hw = (hi - lo) / 2.0
    # Not an exact match (different resampling scheme + bootstrap noise) but
    # should be in the same ballpark, not off by a wide-vs-narrow factor.
    assert grp_hw == pytest.approx(rec_hw, rel=0.35)


def test_single_group_returns_explicit_undefined_ci_not_zero():
    values = np.array([1.0, 2.0, 3.0, 4.0, 5.0])
    groups = np.array(["only_group"] * 5)
    point, lo, hi = cluster_bootstrap_ci(values, groups)
    assert point == pytest.approx(3.0)
    assert math.isnan(lo)
    assert math.isnan(hi)


def test_empty_input_returns_nan_not_crash():
    point, lo, hi = cluster_bootstrap_ci(np.array([]), np.array([]))
    assert math.isnan(point)
    assert math.isnan(lo)
    assert math.isnan(hi)


def test_cluster_bootstrap_deterministic_with_same_seed():
    values, groups = _correlated_cluster_data(seed=3)
    a = cluster_bootstrap_ci(values, groups, n_boot=2000, seed=42)
    b = cluster_bootstrap_ci(values, groups, n_boot=2000, seed=42)
    assert a == b


def test_cluster_bootstrap_mismatched_lengths_raises():
    with pytest.raises(ValueError):
        cluster_bootstrap_ci([1.0, 2.0], ["a"])


# ---------------------------------------------------------------------------
# effective_n
# ---------------------------------------------------------------------------

def test_effective_n_all_singletons_equals_record_count():
    groups = [f"g{i}" for i in range(50)]
    assert effective_n(groups) == pytest.approx(50.0)


def test_effective_n_one_giant_group_equals_one():
    groups = ["only"] * 40
    assert effective_n(groups) == pytest.approx(1.0)


def test_effective_n_bounded_by_records_and_reduced_when_unequal():
    # 3 singleton groups + 1 group of 20 -> heavily unequal.
    groups = ["a", "b", "c"] + ["big"] * 20
    n_records = len(groups)
    n_groups = 4
    eff = effective_n(groups)
    assert eff <= n_records
    assert eff <= n_groups
    # Strictly less than n_groups because the groups are unequal in size.
    assert eff < n_groups


def test_effective_n_empty():
    assert effective_n([]) == 0.0


# ---------------------------------------------------------------------------
# group_of
# ---------------------------------------------------------------------------

def test_group_of_collapses_gen_variants_of_same_family():
    r0 = {"group": "c_vulns_c_code_enhanced_variants_l1tf_arm64_gen_0"}
    r7 = {"group": "c_vulns_c_code_enhanced_variants_l1tf_arm64_gen_7"}
    assert group_of(r0) == group_of(r7)


def test_group_of_collapses_arch_and_gen_but_distinguishes_families():
    a = {"group": "c_vulns_c_code_enhanced_variants_l1tf_arm64_gen_3"}
    b = {"group": "c_vulns_c_code_enhanced_variants_bhi_x86_64_gen_3"}
    assert group_of(a) != group_of(b)


# ---------------------------------------------------------------------------
# group_aware_accuracy_ci
# ---------------------------------------------------------------------------

def test_group_aware_accuracy_ci_perfect_predictions():
    y_true = ["A"] * 10 + ["B"] * 10
    y_pred = list(y_true)
    groups = [f"g{i}" for i in range(20)]
    acc, lo, hi = group_aware_accuracy_ci(y_true, y_pred, groups, n_boot=1000, seed=0)
    assert acc == pytest.approx(1.0)
    assert lo == pytest.approx(1.0)
    assert hi == pytest.approx(1.0)


def test_group_aware_accuracy_ci_wider_with_clustered_errors():
    # All errors concentrated in one group -> a naive per-record CI
    # understates how much a single bad family can swing accuracy.
    rng = np.random.RandomState(0)
    n_groups = 10
    y_true, y_pred, groups = [], [], []
    for gi in range(n_groups):
        label = "A"
        correct = gi != 0  # group 0 is entirely wrong
        for _ in range(15):
            y_true.append(label)
            y_pred.append(label if correct else "B")
            groups.append(f"g{gi}")
    acc, lo, hi = group_aware_accuracy_ci(y_true, y_pred, groups, n_boot=3000, seed=0)
    naive_mean, naive_hw = ci95(
        (np.array(y_true) == np.array(y_pred)).astype(float)
    )
    grp_hw = max(acc - lo, hi - acc)
    assert grp_hw > naive_hw
