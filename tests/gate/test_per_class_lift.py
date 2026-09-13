"""Tests for eval/per_class_lift.py's recall-lift statistics."""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "eval"))

from per_class_lift import (  # noqa: E402
    load_recalls,
    load_recalls_by_seed,
    load_support_by_seed,
    per_class_lift,
    paired_per_class_lift,
)

SEEDS = [1, 7, 13, 21, 42]


def _write_mode(results_dir, mode, l1tf, benign, support=None):
    for i, seed in enumerate(SEEDS):
        l1tf_r, benign_r = l1tf[i], benign[i]
        d = results_dir / f"viz_{mode}_s{seed}"
        d.mkdir(parents=True)
        sup = support[i] if support else 30.0
        report = {
            "BENIGN": {"recall": benign_r, "support": 500.0},
            "L1TF": {"recall": l1tf_r, "support": sup},
            "accuracy": 0.9,
            "macro avg": {"recall": 0.9},
        }
        (d / "gine_metrics.json").write_text(json.dumps({"classification_report": report}))


def test_load_recalls_reads_per_seed_values(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    recalls = load_recalls(tmp_path, "hand", SEEDS)
    assert recalls["L1TF"] == [0.79, 0.81, 0.80, 0.78, 0.82]
    assert len(recalls["BENIGN"]) == 5


def test_real_lift_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls(tmp_path, "hand", SEEDS)
    both = load_recalls(tmp_path, "both", SEEDS)
    result = per_class_lift(hand, both)
    assert result["L1TF"]["mean_diff"] > 0.05
    assert result["L1TF"]["significant"] is True


def test_noise_only_not_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls(tmp_path, "hand", SEEDS)
    both = load_recalls(tmp_path, "both", SEEDS)
    result = per_class_lift(hand, both)
    assert result["BENIGN"]["significant"] is False


def test_load_recalls_by_seed_keys_by_actual_seed(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    by_seed = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    assert by_seed["L1TF"] == {1: 0.79, 7: 0.81, 13: 0.80, 21: 0.78, 42: 0.82}


def test_paired_real_lift_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    both = load_recalls_by_seed(tmp_path, "both", SEEDS)
    result = paired_per_class_lift(hand, both, SEEDS)
    assert result["L1TF"]["mean_diff"] > 0.05
    assert result["L1TF"]["significant_uncorrected"] is True
    assert result["L1TF"]["n_paired_seeds"] == 5
    assert result["L1TF"]["dropped_seeds"] == []


def test_paired_ci_tighter_than_unpaired_on_correlated_data(tmp_path):
    # Same seed-to-seed shift in both modes (correlated noise) -> paired CI
    # should be narrower than the unpaired Welch CI, since pairing removes
    # the shared per-seed variance component.
    hand_l1tf = [0.70, 0.75, 0.65, 0.80, 0.72]
    shift = [0.05, 0.06, 0.04, 0.05, 0.05]
    both_l1tf = [h + s for h, s in zip(hand_l1tf, shift)]
    _write_mode(tmp_path, "hand", hand_l1tf, [0.90, 0.91, 0.89, 0.90, 0.92])
    _write_mode(tmp_path, "both", both_l1tf, [0.90, 0.92, 0.88, 0.91, 0.90])

    hand_list = load_recalls(tmp_path, "hand", SEEDS)
    both_list = load_recalls(tmp_path, "both", SEEDS)
    unpaired = per_class_lift(hand_list, both_list)

    hand_bs = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    both_bs = load_recalls_by_seed(tmp_path, "both", SEEDS)
    paired = paired_per_class_lift(hand_bs, both_bs, SEEDS)

    unpaired_width = unpaired["L1TF"]["ci95"][1] - unpaired["L1TF"]["ci95"][0]
    paired_width = paired["L1TF"]["ci95_uncorrected"][1] - paired["L1TF"]["ci95_uncorrected"][0]
    assert paired_width < unpaired_width


def test_paired_bonferroni_widens_ci_and_can_flip_significance(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.85, 0.83, 0.84, 0.82, 0.86], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    both = load_recalls_by_seed(tmp_path, "both", SEEDS)

    uncorrected = paired_per_class_lift(hand, both, SEEDS, correction="none")
    corrected = paired_per_class_lift(hand, both, SEEDS, correction="bonferroni")

    u = uncorrected["L1TF"]
    c = corrected["L1TF"]
    uncorr_width = u["ci95_uncorrected"][1] - u["ci95_uncorrected"][0]
    corr_width = c["ci_corrected"][1] - c["ci_corrected"][0]
    assert corr_width > uncorr_width
    assert c["alpha_used"] < 0.05


def test_paired_low_support_class_excluded_from_bonferroni_denominator(tmp_path):
    # L1TF has support=1 in every seed (like SPECTRE_RSB in the real data):
    # should be flagged low_support and NOT counted in n_classes_tested.
    _write_mode(tmp_path, "hand", [0.0, 1.0, 0.0, 1.0, 0.0], [0.97, 0.96, 0.98, 0.97, 0.96],
                support=[1.0, 1.0, 1.0, 1.0, 1.0])
    _write_mode(tmp_path, "both", [1.0, 0.0, 1.0, 0.0, 1.0], [0.96, 0.98, 0.97, 0.96, 0.97],
                support=[1.0, 1.0, 1.0, 1.0, 1.0])
    hand = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    both = load_recalls_by_seed(tmp_path, "both", SEEDS)
    hand_sup = load_support_by_seed(tmp_path, "hand", SEEDS)
    both_sup = load_support_by_seed(tmp_path, "both", SEEDS)

    result = paired_per_class_lift(hand, both, SEEDS, correction="bonferroni",
                                    hand_support_by_seed=hand_sup, other_support_by_seed=both_sup)
    assert result["L1TF"]["low_support"] is True
    assert result["L1TF"]["excluded_from_bonferroni_denominator"] is True
    # BENIGN (support=500) is the only remaining testable class -> n=1, not 2
    assert result["BENIGN"]["n_classes_tested"] == 1


def test_paired_dropped_seed_when_class_missing_from_one_mode(tmp_path):
    for seed in SEEDS:
        d = tmp_path / f"viz_hand_s{seed}"
        d.mkdir(parents=True)
        report = {"BENIGN": {"recall": 0.9, "support": 100.0}, "accuracy": 0.9, "macro avg": {"recall": 0.9}}
        if seed != 42:
            report["L1TF"] = {"recall": 0.7, "support": 30.0}
        (d / "gine_metrics.json").write_text(json.dumps({"classification_report": report}))
    _write_mode(tmp_path, "both", [0.8, 0.8, 0.8, 0.8, 0.8], [0.9] * 5)

    hand = load_recalls_by_seed(tmp_path, "hand", SEEDS)
    both = load_recalls_by_seed(tmp_path, "both", SEEDS)
    result = paired_per_class_lift(hand, both, SEEDS)
    assert result["L1TF"]["n_paired_seeds"] == 4
    assert result["L1TF"]["dropped_seeds"] == [42]
