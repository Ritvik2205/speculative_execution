"""check_hw_labels.py: Task 4 step 4 gate on emitted hardware-label files."""
import importlib.util
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("check_hw_labels", ROOT / "oracle/revizor/scripts/check_hw_labels.py")
ch = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = ch
spec.loader.exec_module(ch)


def R(v, label, hits, runs=3, cls="SPECTRE_V1"):
    return {"label": label, "variant": v, "vuln_class": cls, "hw_hits": hits, "hw_runs": runs,
            "group": "revizor_spectre_v1_violation-260101-000001_fenced", "sequence": ["nop"]}


def test_clean_file_passes():
    rep = ch.check([R("cf_wrong_path", "SPECTRE_V1", 3), R("cf_nonleak", "BENIGN", 0)])
    assert rep["ok"] and rep["bad_hits"] == 0
    assert rep["cf_vulnerable_share"] == 0.5


def test_inconsistent_hits_fail():
    assert not ch.check([R("twin", "BENIGN", 1)])["ok"]


def test_label_hits_mismatch_fails():
    assert not ch.check([R("twin", "BENIGN", 3)])["ok"]


def test_one_sided_cf_set_is_flagged_untestable():
    rep = ch.check([R("cf_wrong_path", "SPECTRE_V1", 3), R("cf_nonleak", "SPECTRE_V1", 3)])
    assert rep["h1_testable"] is False


def test_dev_set_is_clean():
    import json
    recs = [json.loads(l) for l in open(ROOT / "eval/data/revizor_hwlabel_variants.jsonl")]
    assert ch.check(recs)["ok"]
