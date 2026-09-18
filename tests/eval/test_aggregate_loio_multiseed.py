"""Tests for eval/aggregate_loio_multiseed.py and the pure per-class-metrics
helper it consumes (eval.leave_one_isa_out.per_class_metrics).

Both are pure stdlib/numpy (no sklearn training, no compiler, no torch): the
metrics helper works off already-computed (y_true, y_pred) arrays, and the
aggregator works off a machine-readable JSON file, so these tests build a
small synthetic --metrics-out-shaped JSON rather than running the real RF
sweep (out of scope for a unit test — see tests/eval/test_leave_one_isa_out.py's
own docstring for the same rationale).
"""
import json

import numpy as np

from eval.leave_one_isa_out import per_class_metrics

from eval.aggregate_loio_multiseed import (
    _ci,
    best_tier_for_class,
    chance_threshold,
    collect_benign_fp,
    collect_macro_f1,
    collect_recall_by_class,
    collect_support,
    filter_held_out,
    load_metrics,
    verdict_for_class,
)


# ---------------------------------------------------------------------------
# per_class_metrics — the pure helper factored out of leave_one_isa_out.py's
# main sweep so it's testable without fitting a RandomForest.
# ---------------------------------------------------------------------------

def test_per_class_metrics_recall_and_support():
    y_true = np.array(["MDS", "MDS", "MDS", "L1TF", "L1TF", "BENIGN", "BENIGN"])
    y_pred = np.array(["MDS", "MDS", "L1TF", "L1TF", "L1TF", "BENIGN", "MDS"])
    out = per_class_metrics(y_true, y_pred, ["MDS", "L1TF", "BENIGN"])
    assert out["support"] == {"MDS": 3, "L1TF": 2, "BENIGN": 2}
    assert out["recall"]["MDS"] == 2 / 3
    assert out["recall"]["L1TF"] == 1.0
    assert out["recall"]["BENIGN"] == 0.5
    assert out["benign_fp_rate"] == 0.5  # 1 of 2 true-BENIGN predicted non-BENIGN
    assert 0 <= out["accuracy"] <= 100
    assert 0 <= out["macro_f1"] <= 100


def test_per_class_metrics_zero_support_class_is_none_not_zero():
    y_true = np.array(["MDS", "MDS"])
    y_pred = np.array(["MDS", "L1TF"])
    out = per_class_metrics(y_true, y_pred, ["MDS", "L1TF", "SPECTRE_V1"])
    assert out["support"]["SPECTRE_V1"] == 0
    assert out["recall"]["SPECTRE_V1"] is None  # unmeasurable, not "measured zero"
    assert out["recall"]["MDS"] == 0.5


def test_per_class_metrics_benign_fp_none_when_benign_absent():
    # Mirrors the real harvested riscv64 attack-only corpus
    # (spec/data/riscv_cvulns_batch.jsonl has no BENIGN records).
    y_true = np.array(["MDS", "SPECTRE_V1"])
    y_pred = np.array(["MDS", "MDS"])
    out = per_class_metrics(y_true, y_pred, ["MDS", "SPECTRE_V1"])
    assert out["benign_fp_rate"] is None


def test_per_class_metrics_benign_fp_none_when_benign_has_zero_true_records():
    y_true = np.array(["MDS", "MDS"])
    y_pred = np.array(["MDS", "BENIGN"])
    out = per_class_metrics(y_true, y_pred, ["MDS", "BENIGN"])
    assert out["support"]["BENIGN"] == 0
    assert out["benign_fp_rate"] is None


# ---------------------------------------------------------------------------
# _ci — mirrors gen/aggregate_rl_multiseed.py's helper (normal-approx 95% CI,
# n annotation, None/NaN-safe).
# ---------------------------------------------------------------------------

def test_ci_matches_hand_computed_mean_and_halfwidth():
    xs = [0.5, 0.6, 0.7]
    m, h, n = _ci(xs)
    assert n == 3
    assert abs(m - 0.6) < 1e-9
    assert h > 0


def test_ci_single_value_has_zero_halfwidth():
    m, h, n = _ci([0.5])
    assert m == 0.5 and h == 0.0 and n == 1


def test_ci_drops_none_entries():
    m, h, n = _ci([0.5, None, 0.7, float("nan")])
    assert n == 2


def test_ci_empty_is_nan():
    m, h, n = _ci([])
    assert m != m  # NaN
    assert n == 0


# ---------------------------------------------------------------------------
# Synthetic --metrics-out-shaped JSON: 2 tiers x 3 seeds x one riscv64-held-out
# split, giving one class a recall CI that clearly clears a base-rate
# threshold ("transfers") and another whose CI does not clear it ("does NOT
# transfer"), plus a low-support class.
# ---------------------------------------------------------------------------

def _synthetic_records():
    records = []
    # RETBLEED: high, tight recall on both tiers -> should transfer.
    # SPECTRE_V4: low recall, near-chance -> should NOT transfer.
    # SPECTRE_RSB: only 3 held-out records (< low-support default of 5) ->
    # underpowered regardless of the point estimate.
    per_seed = {
        "hand-58": {
            42: {"RETBLEED": 0.90, "SPECTRE_V4": 0.05, "SPECTRE_RSB": 1.0},
            1:  {"RETBLEED": 0.85, "SPECTRE_V4": 0.10, "SPECTRE_RSB": 0.66},
            7:  {"RETBLEED": 0.95, "SPECTRE_V4": 0.00, "SPECTRE_RSB": 1.0},
        },
        "spec-42": {
            42: {"RETBLEED": 0.40, "SPECTRE_V4": 0.20, "SPECTRE_RSB": 0.33},
            1:  {"RETBLEED": 0.35, "SPECTRE_V4": 0.15, "SPECTRE_RSB": 0.0},
            7:  {"RETBLEED": 0.45, "SPECTRE_V4": 0.25, "SPECTRE_RSB": 0.33},
        },
    }
    support = {"RETBLEED": 10, "SPECTRE_V4": 5, "SPECTRE_RSB": 3}
    for tier, by_seed in per_seed.items():
        for seed, recall in by_seed.items():
            records.append({
                "split": "x86_64+arm64 -> riscv64",
                "held_out": "riscv64",
                "train_archs": ["x86_64", "arm64"],
                "tier": tier,
                "seed": seed,
                "windowed": False,
                "idiomatic": True,
                "support": support,
                "recall": recall,
                "benign_fp_rate": None,
                "macro_f1": 20.0,
                "accuracy": 30.0,
            })
    # A record from a DIFFERENT held-out ISA, to prove filter_held_out excludes it.
    records.append({
        "split": "x86_64 -> arm64", "held_out": "arm64",
        "train_archs": ["x86_64"], "tier": "hand-58", "seed": 42,
        "windowed": False, "idiomatic": False,
        "support": {"MDS": 20}, "recall": {"MDS": 0.9},
        "benign_fp_rate": 0.1, "macro_f1": 80.0, "accuracy": 85.0,
    })
    return records


def test_load_metrics_and_filter_held_out(tmp_path):
    p = tmp_path / "metrics.json"
    p.write_text(json.dumps(_synthetic_records()))
    all_records = load_metrics(p)
    assert len(all_records) == 7
    riscv = filter_held_out(all_records, "riscv64")
    assert len(riscv) == 6
    assert all(r["held_out"] == "riscv64" for r in riscv)


def test_collect_recall_by_class_groups_per_tier_per_class():
    riscv = filter_held_out(_synthetic_records(), "riscv64")
    by_class = collect_recall_by_class(riscv)
    assert set(by_class["hand-58"]) == {"RETBLEED", "SPECTRE_V4", "SPECTRE_RSB"}
    assert len(by_class["hand-58"]["RETBLEED"]) == 3
    assert sorted(by_class["hand-58"]["RETBLEED"]) == sorted([0.90, 0.85, 0.95])


def test_collect_support_takes_stable_value_across_seeds():
    riscv = filter_held_out(_synthetic_records(), "riscv64")
    sup = collect_support(riscv)
    assert sup["hand-58"]["RETBLEED"] == 10
    assert sup["hand-58"]["SPECTRE_RSB"] == 3


def test_collect_benign_fp_and_macro_f1():
    riscv = filter_held_out(_synthetic_records(), "riscv64")
    fp = collect_benign_fp(riscv)
    assert fp["hand-58"] == [None, None, None]
    f1 = collect_macro_f1(riscv)
    assert f1["hand-58"] == [20.0, 20.0, 20.0]


def test_chance_threshold_is_one_over_k():
    assert abs(chance_threshold(4) - 0.25) < 1e-9
    assert chance_threshold(0) != chance_threshold(0)  # nan


def test_verdict_transfers_when_ci_lower_bound_clears_threshold():
    # RETBLEED hand-58: mean ~0.90, small spread -> lower bound well above
    # a 1/3 chance threshold.
    ci = _ci([0.90, 0.85, 0.95])
    v = verdict_for_class(ci, support=10, threshold=1 / 3, low_support_n=5)
    assert v == "transfers"


def test_verdict_does_not_transfer_when_ci_lower_bound_at_or_below_threshold():
    # SPECTRE_V4 hand-58: mean ~0.05, lower bound can't clear 1/3.
    ci = _ci([0.05, 0.10, 0.00])
    v = verdict_for_class(ci, support=5, threshold=1 / 3, low_support_n=5)
    assert v == "does NOT transfer / underpowered"


def test_verdict_flags_low_support_regardless_of_point_estimate():
    # SPECTRE_RSB hand-58: mean ~0.89 (would "transfer"), but support=3 < 5.
    ci = _ci([1.0, 0.66, 1.0])
    v = verdict_for_class(ci, support=3, threshold=1 / 3, low_support_n=5)
    assert v == "underpowered, not evidence"


def test_best_tier_for_class_picks_highest_mean_recall():
    riscv = filter_held_out(_synthetic_records(), "riscv64")
    by_class = collect_recall_by_class(riscv)
    tiers = sorted(by_class)
    recall_ci = {t: {c: _ci(by_class[t].get(c, [])) for c in by_class[t]} for t in tiers}
    assert best_tier_for_class(recall_ci, "RETBLEED", tiers) == "hand-58"


def test_aggregator_end_to_end_writes_markdown(tmp_path):
    import eval.aggregate_loio_multiseed as agg

    metrics_path = tmp_path / "metrics.json"
    metrics_path.write_text(json.dumps(_synthetic_records()))
    out_path = tmp_path / "loio_multiseed.md"

    rc = agg.main([
        "--metrics-in", str(metrics_path),
        "--out", str(out_path),
        "--held-out", "riscv64",
    ])
    assert rc == 0
    text = out_path.read_text()
    assert "RETBLEED" in text
    assert "SPECTRE_V4" in text
    assert "SPECTRE_RSB" in text
    assert "underpowered" in text
    assert "transfers" in text
    # the excluded arm64 split's class must not leak into the riscv64 report
    assert "MDS" not in text


def test_aggregator_errors_cleanly_when_no_matching_held_out(tmp_path):
    import eval.aggregate_loio_multiseed as agg

    metrics_path = tmp_path / "metrics.json"
    metrics_path.write_text(json.dumps(_synthetic_records()))
    out_path = tmp_path / "loio_multiseed.md"

    rc = agg.main([
        "--metrics-in", str(metrics_path),
        "--out", str(out_path),
        "--held-out", "does_not_exist",
    ])
    assert rc == 1
