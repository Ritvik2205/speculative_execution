"""build_hw_joint --hw-labels-only (allhw3) tests: train on hardware labels,
never on structural twins / synthetic misfenced variants, and never on a base
gadget that appears in any evaluation set (plan 2026-11-02 Task 6)."""
import importlib.util
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("build_hw_joint_t6", ROOT / "oracle/revizor/build_hw_joint.py")
joint = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = joint
spec.loader.exec_module(joint)


def R(g, label="BENIGN", **kw):
    return {"label": label, "group": g, "sequence": ["nop"], **kw}


def HW(vid, variant, label, cls="SPECTRE_V1", hits=None):
    return R(f"revizor_{cls.lower()}_violation-{vid}_fenced", label, variant=variant,
             vuln_class=cls, hw_runs=3, hw_hits=(3 if label != "BENIGN" else 0) if hits is None else hits,
             src_path=f"~/rvzr/violation-{vid}/program.asm")


BASE = [R("b1"), R("b2", "MDS")]
CF = {"spectre_v1": BASE + [R("revizor_spectre_v1_violation-260101-000001", "SPECTRE_V1"),
                            R("revizor_spectre_v1_violation-260101-000001_fenced")]}


def test_hw_labels_only_no_structural_twins():
    hw = [HW("260101-000001", "twin", "BENIGN"), HW("260101-000001", "cf_wrong_path", "SPECTRE_V1")]
    out = joint.build_hw_labels_only(BASE, CF, hw, forbidden=[])
    assert out[:2] == BASE
    added = out[2:]
    # real positive kept; structural twin (no hw label) dropped; hw variants kept as labelled
    assert R("revizor_spectre_v1_violation-260101-000001", "SPECTRE_V1") in added
    assert not any(r.get("group", "").endswith("_fenced") and "hw_runs" not in r for r in added)
    assert [r["variant"] for r in added if "hw_runs" in r] == ["twin", "cf_wrong_path"]
    assert not any(str(r.get("group", "")).endswith("_misfenced") for r in added)


def test_hw_labels_only_rejects_base_overlap():
    hw = [HW("260101-000009", "twin", "BENIGN")]
    held = [HW("260101-000009", "entry", "SPECTRE_V1")]   # same base in an eval set
    with pytest.raises(ValueError, match="leak"):
        joint.build_hw_labels_only(BASE, CF, hw, forbidden=held)


def test_hw_labels_only_rejects_positive_overlap():
    held = [R("revizor_spectre_v1_violation-260101-000001", "SPECTRE_V1")]
    with pytest.raises(ValueError, match="leak"):
        joint.build_hw_labels_only(BASE, CF, [], forbidden=held)


def test_hw_labels_only_drops_inconsistent_labels():
    hw = [HW("260101-000001", "twin", "BENIGN", hits=1),   # 1/3: not a label
          HW("260101-000001", "tail", "SPECTRE_V1")]
    out = joint.build_hw_labels_only(BASE, CF, hw, forbidden=[])
    assert [r["variant"] for r in out if "hw_runs" in r] == ["tail"]


def test_cli_hw_labels_only(tmp_path):
    import json
    d, e = tmp_path / "v54", tmp_path / "eval"
    d.mkdir(); e.mkdir()
    w = lambda p, rs: p.write_text("".join(json.dumps(r) + "\n" for r in rs))
    w(d / "v55h_train.jsonl", BASE)
    w(d / "v55h_spectre_v1hw_train.jsonl", CF["spectre_v1"])
    w(e / "revizor_spectre_v1_heldout.jsonl", [HW("260101-000009", "entry", "SPECTRE_V1")])
    hw = tmp_path / "hw.jsonl"
    w(hw, [HW("260101-000001", "twin", "BENIGN")])
    out = tmp_path / "o.jsonl"
    joint.main(["--classes", "spectre_v1", "--data-dir", str(d), "--heldout-dir", str(e),
                "--hw-labels-only", str(hw), "--out", str(out)])
    recs = [json.loads(l) for l in open(out)]
    assert len(recs) == len(BASE) + 2
