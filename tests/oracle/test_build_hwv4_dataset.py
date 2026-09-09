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


def test_merged_train_file_preserves_v55h_and_appends_train_add(tmp_path):
    """End-to-end: run main() into a temp dir and check the merge."""
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
    heldout = load_jsonl(out_heldout)
    real_v4 = load_jsonl(REAL_V4_PATH)

    assert len(heldout) + (len(merged) - len(v55h_train)) == 16
    assert len(merged) == len(v55h_train) + (16 - len(heldout))

    # Every original v55h_train record is present unchanged, in order, as a prefix.
    assert merged[: len(v55h_train)] == v55h_train

    # The appended tail is exactly the train-add records (by group).
    tail = merged[len(v55h_train):]
    tail_groups = {r["group"] for r in tail}
    heldout_groups = {r["group"] for r in heldout}
    real_v4_groups = {r["group"] for r in real_v4}

    assert tail_groups.isdisjoint(heldout_groups)
    assert tail_groups | heldout_groups == real_v4_groups

    # No generator seed spans both.
    tail_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in tail}
    heldout_seeds = {build_hwv4_dataset.extract_gen_seed(r) for r in heldout}
    assert tail_seeds.isdisjoint(heldout_seeds)

    # All appended records are SPECTRE_V4 and carry their group intact.
    for r in tail:
        assert r["label"] == "SPECTRE_V4"
        assert r["group"].startswith("revizor_v4_")
