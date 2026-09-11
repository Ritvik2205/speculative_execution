"""Tests for oracle/revizor/build_hw_transfer.py (Step 2b).

Verifies the group-disjoint train/heldout split of the real MDS, L1TF, and
SPECTRE_V1 hardware gadgets, and the merge into the de-shortcut training
pool -- generalizes tests/oracle/test_build_hwv4_dataset.py's coverage.
"""
import importlib.util
import json
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "build_hw_transfer.py"

spec = importlib.util.spec_from_file_location("build_hw_transfer", MODULE_PATH)
build_hw_transfer = importlib.util.module_from_spec(spec)
sys.modules["build_hw_transfer"] = build_hw_transfer
spec.loader.exec_module(build_hw_transfer)

V55H_TRAIN_PATH = REPO_ROOT / "v54" / "data" / "v55h_train.jsonl"

REAL_PATHS = {
    "MDS": REPO_ROOT / "eval" / "data" / "revizor_mds_real.jsonl",
    "L1TF": REPO_ROOT / "eval" / "data" / "revizor_l1tf_real.jsonl",
    "SPECTRE_V1": REPO_ROOT / "eval" / "data" / "revizor_spectre_v1_real.jsonl",
}
HAS_REAL_DATA = all(p.exists() for p in REAL_PATHS.values())


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(line) for line in f if line.strip()]


def make_records(groups_and_counts):
    """[(group, n), ...] -> n synthetic records per group."""
    out = []
    for group, n in groups_and_counts:
        for i in range(n):
            out.append({"label": "MDS", "arch": "x86_64", "sequence": [f"nop{group}{i}"], "group": group})
    return out


# ---------------------------------------------------------------------------
# split_by_group (synthetic, no fixtures needed)
# ---------------------------------------------------------------------------

def test_split_is_group_disjoint():
    records = make_records([("g1", 1), ("g2", 1), ("g3", 1), ("g4", 1), ("g5", 1), ("g6", 1)])
    train_add, heldout, train_groups, heldout_groups = build_hw_transfer.split_by_group(records, seed=0)
    train_add_groups = {r["group"] for r in train_add}
    heldout_groups_actual = {r["group"] for r in heldout}
    assert train_add_groups.isdisjoint(heldout_groups_actual)
    assert set(train_groups).isdisjoint(set(heldout_groups))


def test_split_uses_all_records_no_drop_no_dup():
    records = make_records([("g1", 1), ("g2", 1), ("g3", 1), ("g4", 1), ("g5", 1), ("g6", 1)])
    train_add, heldout, _, _ = build_hw_transfer.split_by_group(records, seed=0)
    assert len(train_add) + len(heldout) == len(records)
    all_seq = [r["sequence"][0] for r in train_add + heldout]
    assert len(set(all_seq)) == len(all_seq)


def test_split_targets_roughly_60_40_for_n6():
    records = make_records([("g1", 1), ("g2", 1), ("g3", 1), ("g4", 1), ("g5", 1), ("g6", 1)])
    train_add, heldout, _, _ = build_hw_transfer.split_by_group(records, seed=0)
    assert len(heldout) in (2, 3)
    assert len(train_add) in (3, 4)


def test_split_is_deterministic_for_same_seed():
    records = make_records([("g1", 1), ("g2", 1), ("g3", 1), ("g4", 1), ("g5", 1), ("g6", 1)])
    a = build_hw_transfer.split_by_group(records, seed=0)
    b = build_hw_transfer.split_by_group(records, seed=0)
    assert [r["group"] for r in a[0]] == [r["group"] for r in b[0]]
    assert [r["group"] for r in a[1]] == [r["group"] for r in b[1]]


def test_split_single_group_keeps_everything_in_train():
    records = make_records([("only_group", 3)])
    train_add, heldout, train_groups, heldout_groups = build_hw_transfer.split_by_group(records, seed=0)
    assert len(train_add) == 3
    assert len(heldout) == 0


def test_split_empty_records():
    train_add, heldout, train_groups, heldout_groups = build_hw_transfer.split_by_group([], seed=0)
    assert train_add == [] and heldout == [] and train_groups == [] and heldout_groups == []


# ---------------------------------------------------------------------------
# path helpers
# ---------------------------------------------------------------------------

def test_path_helpers_naming():
    assert build_hw_transfer.real_path("MDS").name == "revizor_mds_real.jsonl"
    assert build_hw_transfer.heldout_path("MDS").name == "revizor_mds_heldout.jsonl"
    assert build_hw_transfer.train_out_path("MDS").name == "v55h_mdshw_train.jsonl"
    assert build_hw_transfer.train_out_path("L1TF").name == "v55h_l1tfhw_train.jsonl"
    assert build_hw_transfer.train_out_path("SPECTRE_V1").name == "v55h_spectre_v1hw_train.jsonl"


# ---------------------------------------------------------------------------
# build_one_class / main (end-to-end, real converted fixtures)
# ---------------------------------------------------------------------------

@pytest.mark.skipif(not HAS_REAL_DATA, reason="run convert_revizor_gadgets.py first")
@pytest.mark.parametrize("cls", ["MDS", "L1TF", "SPECTRE_V1"])
def test_build_one_class_train_add_plus_v55h_equals_output(tmp_path, cls):
    v55h_train = load_jsonl(V55H_TRAIN_PATH)
    real = load_jsonl(REAL_PATHS[cls])

    summary = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=V55H_TRAIN_PATH, repo_root=REPO_ROOT
    )

    merged = load_jsonl(summary["train_out"])
    heldout = load_jsonl(summary["heldout_out"])

    assert merged[: len(v55h_train)] == v55h_train
    assert len(merged) - len(v55h_train) == summary["train_add"]
    assert len(heldout) == summary["heldout"]
    assert summary["train_add"] + summary["heldout"] == len(real) == summary["total"]

    for r in heldout:
        assert r["label"] == cls


@pytest.mark.skipif(not HAS_REAL_DATA, reason="run convert_revizor_gadgets.py first")
def test_build_one_class_group_disjoint_end_to_end():
    for cls in ["MDS", "L1TF", "SPECTRE_V1"]:
        summary = build_hw_transfer.build_one_class(
            cls, seed=0, v55h_train_path=V55H_TRAIN_PATH, repo_root=REPO_ROOT
        )
        assert set(summary["train_groups"]).isdisjoint(set(summary["heldout_groups"]))


@pytest.mark.skipif(not HAS_REAL_DATA, reason="run convert_revizor_gadgets.py first")
def test_main_is_deterministic_across_runs(tmp_path):
    import os
    orig_cwd = os.getcwd()
    # Run build twice with the same seed, compare outputs.
    r1 = {}
    r2 = {}
    for cls in ["MDS", "L1TF", "SPECTRE_V1"]:
        r1[cls] = build_hw_transfer.build_one_class(cls, seed=0, v55h_train_path=V55H_TRAIN_PATH, repo_root=REPO_ROOT)
        r2[cls] = build_hw_transfer.build_one_class(cls, seed=0, v55h_train_path=V55H_TRAIN_PATH, repo_root=REPO_ROOT)
        assert load_jsonl(r1[cls]["heldout_out"]) == load_jsonl(r2[cls]["heldout_out"])
        assert load_jsonl(r1[cls]["train_out"]) == load_jsonl(r2[cls]["train_out"])
