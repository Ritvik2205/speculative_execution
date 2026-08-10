"""Tests for eval/per_class_lift.py's recall-lift statistics."""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "eval"))

from per_class_lift import load_recalls, per_class_lift  # noqa: E402

SEEDS = [1, 7, 13, 21, 42]


def _write_mode(results_dir, mode, l1tf, benign):
    for seed, l1tf_r, benign_r in zip(SEEDS, l1tf, benign):
        d = results_dir / f"viz_{mode}_s{seed}"
        d.mkdir(parents=True)
        report = {
            "BENIGN": {"recall": benign_r},
            "L1TF": {"recall": l1tf_r},
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
    assert result["L1TF"]["lift_significant"] is True


def test_noise_only_not_flagged_significant(tmp_path):
    _write_mode(tmp_path, "hand", [0.79, 0.81, 0.80, 0.78, 0.82], [0.97, 0.96, 0.98, 0.97, 0.96])
    _write_mode(tmp_path, "both", [0.91, 0.89, 0.90, 0.92, 0.88], [0.96, 0.98, 0.97, 0.96, 0.97])
    hand = load_recalls(tmp_path, "hand", SEEDS)
    both = load_recalls(tmp_path, "both", SEEDS)
    result = per_class_lift(hand, both)
    assert result["BENIGN"]["lift_significant"] is False
