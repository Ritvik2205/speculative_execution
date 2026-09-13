"""Tests for oracle/revizor/build_hwv4_dataset.py

Verifies the generator-seed-disjoint train/heldout split of the 16
hardware-confirmed real SPECTRE_V4 gadgets, and the merge into the
de-shortcut training pool.
"""
import importlib.util
import json
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "build_hwv4_dataset.py"

spec = importlib.util.spec_from_file_location("build_hwv4_dataset", MODULE_PATH)
build_hwv4_dataset = importlib.util.module_from_spec(spec)
sys.modules["build_hwv4_dataset"] = build_hwv4_dataset
spec.loader.exec_module(build_hwv4_dataset)

REAL_V4_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_real.jsonl"
V55H_TRAIN_PATH = REPO_ROOT / "v54" / "data" / "v55h_train.jsonl"


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(line) for line in f if line.strip()]


def test_extract_gen_seed():
    assert build_hwv4_dataset.extract_gen_seed(
        {"group": "revizor_v4_1000000_d74476ad07"}
    ) == "1000000"
    assert build_hwv4_dataset.extract_gen_seed(
        {"group": "revizor_v4_5555555_4f468fa6ab"}
    ) == "5555555"


def test_real_v4_input_has_16_records_and_5_distinct_seeds():
    records = load_jsonl(REAL_V4_PATH)
    assert len(records) == 16
    seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in records}
    assert seeds == {"1000000", "2222222", "3333333", "4444444", "5555555"}


def test_split_is_seed_disjoint():
    records = load_jsonl(REAL_V4_PATH)
    train_add, heldout, train_seeds, heldout_seeds = build_hwv4_dataset.split_by_gen_seed(
        records, seed=0
    )
    train_add_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in train_add}
    heldout_seeds_actual = {build_hwv4_dataset.extract_gen_seed(r) for r in heldout}

    assert train_add_seeds.isdisjoint(heldout_seeds_actual)
    assert set(train_seeds).isdisjoint(set(heldout_seeds))
    assert train_add_seeds == set(train_seeds)
    assert heldout_seeds_actual == set(heldout_seeds)


def test_split_uses_all_16_gadgets_no_drop_no_dup():
    records = load_jsonl(REAL_V4_PATH)
    train_add, heldout, _, _ = build_hwv4_dataset.split_by_gen_seed(records, seed=0)

    assert len(train_add) + len(heldout) == 16

    train_groups = [r["group"] for r in train_add]
    heldout_groups = [r["group"] for r in heldout]
    assert len(set(train_groups)) == len(train_groups)
    assert len(set(heldout_groups)) == len(heldout_groups)
    assert set(train_groups).isdisjoint(set(heldout_groups))
    assert set(train_groups) | set(heldout_groups) == {r["group"] for r in records}


def test_split_roughly_targets_30pct_heldout():
    records = load_jsonl(REAL_V4_PATH)
    train_add, heldout, _, _ = build_hwv4_dataset.split_by_gen_seed(records, seed=0)
    # Not an exact 30% (seed sizes are lumpy) but should be in a sane range.
    assert 3 <= len(heldout) <= 8
    assert 8 <= len(train_add) <= 13


def test_split_is_deterministic_for_same_seed():
    records = load_jsonl(REAL_V4_PATH)
    a = build_hwv4_dataset.split_by_gen_seed(records, seed=0)
    b = build_hwv4_dataset.split_by_gen_seed(records, seed=0)
    assert [r["group"] for r in a[0]] == [r["group"] for r in b[0]]
    assert [r["group"] for r in a[1]] == [r["group"] for r in b[1]]
    assert a[2] == b[2]
    assert a[3] == b[3]


def test_make_benign_variants_produces_one_fenced_twin_per_record():
    records = load_jsonl(REAL_V4_PATH)[:3]
    benign = build_hwv4_dataset.make_benign_variants(records)
    assert len(benign) == 3
    for orig, twin in zip(records, benign):
        assert twin["label"] == "BENIGN"
        assert twin["group"] == f"{orig['group']}_fenced"
        assert build_hwv4_dataset.extract_gen_seed(twin) == build_hwv4_dataset.extract_gen_seed(orig)


def test_merged_train_file_preserves_v55h_and_appends_train_add(tmp_path):
    """End-to-end: run main() into a temp dir and check the merge.

    Since Step 2, the merge/heldout also carry a fenced BENIGN twin per
    positive, so the appended tail is 2x the positive-only count (N
    positives + N fenced BENIGN twins), and the heldout file likewise
    doubles (P positives + P fenced BENIGN twins)."""
    out_heldout = tmp_path / "revizor_v4_heldout.jsonl"
    out_train = tmp_path / "v55h_hwv4_train.jsonl"

    build_hwv4_dataset.main(
        [
            "--seed", "0",
            "--real-v4-path", str(REAL_V4_PATH),
            "--v55h-train-path", str(V55H_TRAIN_PATH),
            "--out-heldout", str(out_heldout),
            "--out-train", str(out_train),
        ]
    )

    v55h_train = load_jsonl(V55H_TRAIN_PATH)
    merged = load_jsonl(out_train)
    heldout_all = load_jsonl(out_heldout)
    real_v4 = load_jsonl(REAL_V4_PATH)

    heldout_pos = [r for r in heldout_all if r["label"] == "SPECTRE_V4"]
    heldout_benign = [r for r in heldout_all if r["label"] == "BENIGN"]
    assert len(heldout_pos) == len(heldout_benign)
    assert len(heldout_pos) + (len(merged) - len(v55h_train)) // 2 == 16

    # Every original v55h_train record is present unchanged, in order, as a prefix.
    assert merged[: len(v55h_train)] == v55h_train

    # The appended tail is exactly the train-add positives + their fenced
    # BENIGN twins.
    tail = merged[len(v55h_train):]
    tail_pos = [r for r in tail if r["label"] == "SPECTRE_V4"]
    tail_benign = [r for r in tail if r["label"] == "BENIGN"]
    assert len(tail_pos) == len(tail_benign)
    assert len(tail) == len(tail_pos) + len(tail_benign)

    tail_pos_groups = {r["group"] for r in tail_pos}
    heldout_pos_groups = {r["group"] for r in heldout_pos}
    real_v4_groups = {r["group"] for r in real_v4}

    assert tail_pos_groups.isdisjoint(heldout_pos_groups)
    assert tail_pos_groups | heldout_pos_groups == real_v4_groups

    # Every fenced BENIGN twin's group is its positive's group + "_fenced".
    assert {r["group"] for r in tail_benign} == {f"{g}_fenced" for g in tail_pos_groups}
    assert {r["group"] for r in heldout_benign} == {f"{g}_fenced" for g in heldout_pos_groups}

    # No generator seed spans train-add and heldout, for EITHER class.
    tail_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in tail}
    heldout_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in heldout_all}
    assert tail_seeds.isdisjoint(heldout_seeds)

    # All appended/heldout records carry their group intact and the right source.
    for r in tail_pos + heldout_pos:
        assert r["group"].startswith("revizor_v4_")
        assert r["source"] == "revizor_hw_i5_8300h"
    for r in tail_benign + heldout_benign:
        assert r["group"].startswith("revizor_v4_")
        assert r["group"].endswith("_fenced")
        assert r["source"] == "revizor_hw_mitigated"
        assert "lfence" in r["sequence"]


def test_heldout_has_both_labels_and_stays_seed_disjoint_from_train(tmp_path):
    out_heldout = tmp_path / "revizor_v4_heldout.jsonl"
    out_train = tmp_path / "v55h_hwv4_train.jsonl"

    build_hwv4_dataset.main(
        [
            "--seed", "0",
            "--real-v4-path", str(REAL_V4_PATH),
            "--v55h-train-path", str(V55H_TRAIN_PATH),
            "--out-heldout", str(out_heldout),
            "--out-train", str(out_train),
        ]
    )

    heldout = load_jsonl(out_heldout)
    merged = load_jsonl(out_train)
    v55h_train = load_jsonl(V55H_TRAIN_PATH)
    train_add = merged[len(v55h_train):]

    heldout_labels = {r["label"] for r in heldout}
    assert heldout_labels == {"SPECTRE_V4", "BENIGN"}

    heldout_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in heldout}
    train_add_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in train_add}
    assert heldout_seeds.isdisjoint(train_add_seeds)


def test_build_is_deterministic_across_runs(tmp_path):
    out_heldout_a = tmp_path / "heldout_a.jsonl"
    out_train_a = tmp_path / "train_a.jsonl"
    out_heldout_b = tmp_path / "heldout_b.jsonl"
    out_train_b = tmp_path / "train_b.jsonl"

    for out_h, out_t in ((out_heldout_a, out_train_a), (out_heldout_b, out_train_b)):
        build_hwv4_dataset.main(
            [
                "--seed", "0",
                "--real-v4-path", str(REAL_V4_PATH),
                "--v55h-train-path", str(V55H_TRAIN_PATH),
                "--out-heldout", str(out_h),
                "--out-train", str(out_t),
            ]
        )

    assert load_jsonl(out_heldout_a) == load_jsonl(out_heldout_b)
    assert load_jsonl(out_train_a) == load_jsonl(out_train_b)
