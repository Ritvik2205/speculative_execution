"""Tests for the `--with-synth-twins` extension of
oracle/revizor/build_hw_transfer.py (task B3): wires the per-class
mitigated-BENIGN twins (oracle/revizor/synth_v4_benign.py's
`make_benign_variant`) into the real-hardware transfer split so MDS/L1TF/
SPECTRE_V1 get a false-positive metric, mirroring how SPECTRE_V4 already
does it in build_hwv4_dataset.py.

Uses small synthetic per-class real JSONLs under tmp_path -- does NOT
require the real eval/data files or a trained checkpoint.
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


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(line) for line in f if line.strip()]


def write_jsonl(path, records):
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def make_real_records(cls, groups_and_seqs):
    """[(group, sequence), ...] -> synthetic real gadget records for `cls`,
    shaped like eval/data/revizor_<cls>_real.jsonl (label, arch, sequence,
    group, source)."""
    out = []
    for group, seq in groups_and_seqs:
        out.append({
            "label": cls,
            "arch": "x86_64",
            "sequence": list(seq),
            "group": group,
            "source": "revizor_hw_i5_8300h",
        })
    return out


# 6 groups per class gives the same 60/40-ish brute-force split as
# tests/oracle/test_build_hw_transfer.py.
MDS_RECORDS = make_real_records("MDS", [
    (f"revizor_mds_g{i}", ["mov %rax, %rbx", "movl (%rax), %rbx", "addq %rbx, %rcx"])
    for i in range(1, 7)
])
L1TF_RECORDS = make_real_records("L1TF", [
    (f"revizor_l1tf_g{i}", ["mov %rax, %rbx", "movl (%rax), %rbx", "addq %rbx, %rcx"])
    for i in range(1, 7)
])
SPECTRE_V1_RECORDS = make_real_records("SPECTRE_V1", [
    (f"revizor_spectre_v1_g{i}", ["movq $1, %rax", "jne 0x10 <.bb_0.1>", "movq (%r14,%rdi), %rax"])
    for i in range(1, 7)
])

CLASS_RECORDS = {
    "MDS": MDS_RECORDS,
    "L1TF": L1TF_RECORDS,
    "SPECTRE_V1": SPECTRE_V1_RECORDS,
}


def setup_repo(tmp_path, cls, records):
    """Write a minimal repo_root layout (eval/data/revizor_<cls>_real.jsonl
    + a tiny v55h_train.jsonl) under tmp_path and return
    (repo_root, v55h_train_path, v55h_train_records)."""
    repo_root = tmp_path
    rp = build_hw_transfer.real_path(cls, repo_root)
    write_jsonl(rp, records)

    v55h_train_path = repo_root / "v54" / "data" / "v55h_train.jsonl"
    v55h_train_records = [
        {"label": "BENIGN", "arch": "x86_64", "sequence": ["nop"], "group": "filler_1", "source": "existing_pool"},
        {"label": cls, "arch": "x86_64", "sequence": ["nop"], "group": "filler_2", "source": "existing_pool"},
    ]
    write_jsonl(v55h_train_path, v55h_train_records)
    return repo_root, v55h_train_path, v55h_train_records


def origin_group(twin_group):
    assert twin_group.endswith("_fenced")
    return twin_group[: -len("_fenced")]


# ---------------------------------------------------------------------------
# default OFF: byte-identical to current (positives-only) behavior
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("cls", ["MDS", "L1TF", "SPECTRE_V1"])
def test_flag_off_is_byte_identical_to_no_flag(tmp_path, cls):
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, v55h_train_records = setup_repo(tmp_path / "off_default", cls, records)
    repo_root2, v55h_train_path2, _ = setup_repo(tmp_path / "off_explicit", cls, records)

    summary_default = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=v55h_train_path, repo_root=repo_root
    )
    summary_explicit = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=v55h_train_path2, repo_root=repo_root2, with_synth_twins=False
    )

    merged_default = load_jsonl(summary_default["train_out"])
    merged_explicit = load_jsonl(summary_explicit["train_out"])
    heldout_default = load_jsonl(summary_default["heldout_out"])
    heldout_explicit = load_jsonl(summary_explicit["heldout_out"])

    assert merged_default == merged_explicit
    assert heldout_default == heldout_explicit

    # No BENIGN twins anywhere; same record counts as the positives-only split.
    assert all(r["label"] != "BENIGN" or r in v55h_train_records for r in merged_default)
    assert all(r["label"] == cls for r in heldout_default)
    assert len(merged_default) == len(v55h_train_records) + summary_default["train_add"]
    assert len(heldout_default) == summary_default["heldout"]


# ---------------------------------------------------------------------------
# --with-synth-twins ON
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("cls", ["MDS", "L1TF", "SPECTRE_V1"])
def test_flag_on_adds_matching_twin_per_side(tmp_path, cls):
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, v55h_train_records = setup_repo(tmp_path, cls, records)

    summary = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=v55h_train_path, repo_root=repo_root, with_synth_twins=True
    )

    merged = load_jsonl(summary["train_out"])
    heldout = load_jsonl(summary["heldout_out"])

    # Restrict to the REAL split's positives (by group membership), not any
    # same-labeled filler already present in v55h_train.
    train_groups_set = set(summary["train_groups"])
    heldout_groups_set = set(summary["heldout_groups"])
    train_positives = [r for r in merged if r["label"] == cls and r["group"] in train_groups_set]
    train_twins = [r for r in merged if r["label"] == "BENIGN" and r["group"].endswith("_fenced")]
    heldout_positives = [r for r in heldout if r["label"] == cls and r["group"] in heldout_groups_set]
    heldout_twins = [r for r in heldout if r["label"] == "BENIGN" and r["group"].endswith("_fenced")]

    # twin count == positive count, per side
    assert len(train_twins) == len(train_positives) == summary["train_add"]
    assert len(heldout_twins) == len(heldout_positives) == summary["heldout"]
    assert summary["train_twins"] == len(train_twins)
    assert summary["heldout_twins"] == len(heldout_twins)

    # every positive on a side has a matching <group>_fenced BENIGN twin on
    # the SAME side
    train_positive_groups = {r["group"] for r in train_positives}
    heldout_positive_groups = {r["group"] for r in heldout_positives}
    train_twin_origins = {origin_group(r["group"]) for r in train_twins}
    heldout_twin_origins = {origin_group(r["group"]) for r in heldout_twins}

    assert train_twin_origins == train_positive_groups
    assert heldout_twin_origins == heldout_positive_groups

    # no _fenced group appears on the opposite side from its positive
    assert train_twin_origins.isdisjoint(heldout_positive_groups)
    assert heldout_twin_origins.isdisjoint(train_positive_groups)

    # group-disjointness assertion still holds for the base (unsuffixed) groups
    assert train_positive_groups.isdisjoint(heldout_positive_groups)


@pytest.mark.parametrize("cls", ["MDS", "L1TF", "SPECTRE_V1"])
def test_twin_records_are_benign_with_structural_source(tmp_path, cls):
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, _ = setup_repo(tmp_path, cls, records)

    summary = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=v55h_train_path, repo_root=repo_root, with_synth_twins=True
    )

    merged = load_jsonl(summary["train_out"])
    heldout = load_jsonl(summary["heldout_out"])
    twins = [r for r in merged + heldout if r["group"].endswith("_fenced")]

    assert twins, "expected at least one twin to be generated"
    for r in twins:
        assert r["label"] == "BENIGN"
        assert r["source"] == "synth_mitigated_twin"


def test_flag_on_does_not_mutate_v55h_train_prefix(tmp_path):
    cls = "MDS"
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, v55h_train_records = setup_repo(tmp_path, cls, records)

    summary = build_hw_transfer.build_one_class(
        cls, seed=0, v55h_train_path=v55h_train_path, repo_root=repo_root, with_synth_twins=True
    )
    merged = load_jsonl(summary["train_out"])
    assert merged[: len(v55h_train_records)] == v55h_train_records


def test_main_cli_with_synth_twins_flag(tmp_path, capsys):
    cls = "MDS"
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, _ = setup_repo(tmp_path, cls, records)

    build_hw_transfer.main([
        "--classes", cls,
        "--seed", "0",
        "--v55h-train-path", str(v55h_train_path),
        "--repo-root", str(repo_root),
        "--with-synth-twins",
    ])
    captured = capsys.readouterr()
    assert "twins" in captured.out.lower()
    assert "synth_mitigated_twin" in captured.out

    heldout = load_jsonl(build_hw_transfer.heldout_path(cls, repo_root))
    assert any(r["label"] == "BENIGN" for r in heldout)


def test_main_cli_default_has_no_twin_mention(tmp_path, capsys):
    cls = "MDS"
    records = CLASS_RECORDS[cls]
    repo_root, v55h_train_path, _ = setup_repo(tmp_path, cls, records)

    build_hw_transfer.main([
        "--classes", cls,
        "--seed", "0",
        "--v55h-train-path", str(v55h_train_path),
        "--repo-root", str(repo_root),
    ])
    heldout = load_jsonl(build_hw_transfer.heldout_path(cls, repo_root))
    assert all(r["label"] != "BENIGN" for r in heldout)
