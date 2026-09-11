"""Tests for oracle/revizor/convert_revizor_gadgets.py (Step 2b).

Generalizes convert_v4_gadgets's Revizor Intel program.asm -> AT&T
`sequence` conversion to MDS, L1TF, and SPECTRE_V1 real hardware gadgets
found under rvzr_runs/{baseline,smt_off}/{MDS,L1TF,SPECTRE_V1}/violation-*/.
"""
import shutil
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT))
sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor"))

import convert_revizor_gadgets as crg  # noqa: E402

RVZR_RUNS = REPO_ROOT / "rvzr_runs"
SAMPLE_MDS = RVZR_RUNS / "baseline" / "MDS" / "violation-260811-074739" / "program.asm"
SAMPLE_L1TF = RVZR_RUNS / "baseline" / "L1TF" / "violation-260811-075907" / "program.asm"
SAMPLE_V1 = RVZR_RUNS / "baseline" / "SPECTRE_V1" / "violation-260811-075301" / "program.asm"

TOOLCHAIN_AVAILABLE = (
    shutil.which("clang") is not None and shutil.which("objdump") is not None
)
HAS_FALLBACK = hasattr(crg.cvg, "translate_intel_line_fallback")
CAN_CONVERT = TOOLCHAIN_AVAILABLE or HAS_FALLBACK
HAS_RVZR_RUNS = RVZR_RUNS.is_dir()


# ---------------------------------------------------------------------------
# infer_class_from_path
# ---------------------------------------------------------------------------

def test_infer_class_from_path_mds():
    assert crg.infer_class_from_path(
        "rvzr_runs/baseline/MDS/violation-260811-074739/program.asm"
    ) == "MDS"


def test_infer_class_from_path_l1tf():
    assert crg.infer_class_from_path(
        "rvzr_runs/smt_off/L1TF/violation-260811-083200/program.asm"
    ) == "L1TF"


def test_infer_class_from_path_spectre_v1():
    assert crg.infer_class_from_path(
        "rvzr_runs/baseline/SPECTRE_V1/violation-260811-075301/program.asm"
    ) == "SPECTRE_V1"


def test_infer_class_from_path_v4_variants():
    assert crg.infer_class_from_path("rvzr_runs/v4_1000000/violation-1/program.asm") == "SPECTRE_V4"
    assert crg.infer_class_from_path("rvzr_runs/v4_smtoff_1000000/violation-1/program.asm") == "SPECTRE_V4"
    assert crg.infer_class_from_path(
        "oracle/revizor/results/v4_ssb_260907/ssbp_off/seed1_x/program.asm"
    ) == "SPECTRE_V4"


def test_infer_class_from_path_unknown_returns_none():
    assert crg.infer_class_from_path("some/other/dir/program.asm") is None


def test_infer_class_from_path_case_insensitive():
    assert crg.infer_class_from_path("x/mds/y/program.asm") == "MDS"
    assert crg.infer_class_from_path("x/l1tf/y/program.asm") == "L1TF"


# ---------------------------------------------------------------------------
# find_program_asm_files
# ---------------------------------------------------------------------------

@pytest.mark.skipif(not HAS_RVZR_RUNS, reason="rvzr_runs/ fixture directory not present")
def test_find_program_asm_files_finds_known_samples():
    paths = crg.find_program_asm_files(["rvzr_runs"], repo_root=REPO_ROOT)
    resolved = {p.resolve() for p in paths}
    assert SAMPLE_MDS.resolve() in resolved
    assert SAMPLE_L1TF.resolve() in resolved
    assert SAMPLE_V1.resolve() in resolved


@pytest.mark.skipif(not HAS_RVZR_RUNS, reason="rvzr_runs/ fixture directory not present")
def test_find_program_asm_files_dedups():
    paths = crg.find_program_asm_files(["rvzr_runs", "rvzr_runs"], repo_root=REPO_ROOT)
    assert len(paths) == len(set(p.resolve() for p in paths))


# ---------------------------------------------------------------------------
# convert_for_classes (end-to-end on real fixtures)
# ---------------------------------------------------------------------------

@pytest.mark.skipif(not (HAS_RVZR_RUNS and CAN_CONVERT), reason="rvzr_runs/ or a converter unavailable")
def test_convert_for_classes_mds_nonempty_and_labeled():
    records, stats = crg.convert_for_classes(["MDS"], ["rvzr_runs"], repo_root=REPO_ROOT)
    assert stats["MDS"]["matched"] >= 1
    assert stats["MDS"]["converted"] >= 1
    assert len(records["MDS"]) >= 1
    for r in records["MDS"]:
        assert r["label"] == "MDS"
        assert r["arch"] == "x86_64"
        assert isinstance(r["sequence"], list) and len(r["sequence"]) > 0
        assert r["group"].startswith("revizor_mds_")
        assert r["source"] == "revizor_hw_i5_8300h"


@pytest.mark.skipif(not (HAS_RVZR_RUNS and CAN_CONVERT), reason="rvzr_runs/ or a converter unavailable")
def test_convert_for_classes_only_requested_classes_populated():
    records, stats = crg.convert_for_classes(["MDS"], ["rvzr_runs"], repo_root=REPO_ROOT)
    assert set(records.keys()) == {"MDS"}
    assert "L1TF" not in records


@pytest.mark.skipif(not (HAS_RVZR_RUNS and CAN_CONVERT), reason="rvzr_runs/ or a converter unavailable")
def test_convert_for_classes_all_three_have_disjoint_groups():
    records, stats = crg.convert_for_classes(
        ["MDS", "L1TF", "SPECTRE_V1"], ["rvzr_runs"], repo_root=REPO_ROOT
    )
    for cls, prefix in [("MDS", "revizor_mds_"), ("L1TF", "revizor_l1tf_"), ("SPECTRE_V1", "revizor_spectre_v1_")]:
        assert stats[cls]["matched"] >= 1, f"{cls}: expected at least one matched program.asm"
        for r in records[cls]:
            assert r["group"].startswith(prefix)
    all_groups = [r["group"] for recs in records.values() for r in recs]
    assert len(all_groups) == len(set(all_groups))


@pytest.mark.skipif(not (HAS_RVZR_RUNS and CAN_CONVERT), reason="rvzr_runs/ or a converter unavailable")
def test_convert_for_classes_dedup_by_content():
    """Feeding the same root twice should not double the converted count
    (dedup keyed on converted-sequence content, same convention as
    convert_v4_gadgets.dedup_sequences)."""
    once, _ = crg.convert_for_classes(["MDS"], ["rvzr_runs"], repo_root=REPO_ROOT)
    twice, _ = crg.convert_for_classes(["MDS"], ["rvzr_runs", "rvzr_runs"], repo_root=REPO_ROOT)
    assert len(once["MDS"]) == len(twice["MDS"])


# ---------------------------------------------------------------------------
# default_out_path
# ---------------------------------------------------------------------------

def test_default_out_path_naming():
    assert crg.default_out_path("MDS").name == "revizor_mds_real.jsonl"
    assert crg.default_out_path("L1TF").name == "revizor_l1tf_real.jsonl"
    assert crg.default_out_path("SPECTRE_V1").name == "revizor_spectre_v1_real.jsonl"
    assert crg.default_out_path("SPECTRE_V4").name == "revizor_spectre_v4_real.jsonl"


def test_default_classes_and_roots():
    assert crg.DEFAULT_CLASSES == ["MDS", "L1TF", "SPECTRE_V1", "SPECTRE_V4"]
    assert crg.DEFAULT_ROOTS == ["rvzr_runs"]
