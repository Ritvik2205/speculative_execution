"""Tests for eval/mechanism/scoreboard.py — scores the non-learned bars, the
mechanism rule and dumped model predictions on hardware-labelled variant sets,
with a base-clustered paired bootstrap (variants of one base gadget share body
and sandboxing, so they are not independent)."""
import json
import math
import subprocess
import sys
from pathlib import Path

from eval.mechanism.scoreboard import base_id, paired_bootstrap, score

ROOT = Path(__file__).resolve().parents[2]
DEV = ROOT / "eval/data/revizor_hwlabel_variants.jsonl"


def r(base, variant, label, cls="SPECTRE_V1"):
    return {"group": f"revizor_x_violation-{base}_fenced", "variant": variant,
            "label": label, "vuln_class": cls, "sequence": [],
            "src_path": f"~/rvzr/violation-{base}/program.asm"}


TOY = [r("260101-000001", "entry", "SPECTRE_V1"),
       r("260101-000001", "twin", "BENIGN"),
       r("260101-000002", "entry", "SPECTRE_V1"),
       r("260101-000002", "twin", "BENIGN")]


def test_base_id_uses_violation_tag():
    assert base_id(TOY[0]) == base_id(TOY[1]) == "SPECTRE_V1::violation-260101-000001"
    assert base_id(TOY[0]) != base_id(TOY[2])


def test_score_hand_computed():
    preds = ["SPECTRE_V1", "BENIGN", "SPECTRE_V1", "SPECTRE_V1"]
    s = score(TOY, preds)
    assert s["acc"] == 0.75
    assert s["vuln_recall"] == 1.0
    assert s["mitig_spec"] == 0.5
    assert s["abstain"] == 0
    assert s["per_variant"] == {"entry": 1.0, "twin": 0.5}
    assert s["flip"] == 0.5           # base 1 separates, base 2 does not


def test_abstain_counts_wrong_and_is_reported():
    s = score(TOY, [None, "BENIGN", "SPECTRE_V1", "BENIGN"])
    assert s["abstain"] == 1
    assert s["acc"] == 0.75
    assert s["vuln_recall"] == 0.5


def test_wrong_attack_class_is_wrong_for_acc_but_a_leak_call():
    s = score(TOY[:1], ["MDS"])
    assert s["acc"] == 0.0 and s["vuln_recall"] == 1.0


def test_paired_bootstrap_identical_is_zero():
    p = ["SPECTRE_V1", "BENIGN", "SPECTRE_V1", "BENIGN"]
    assert paired_bootstrap(TOY, p, p) == (0.0, 0.0, 0.0)


def test_paired_bootstrap_resamples_bases():
    # all disagreement in base 1: a record-level bootstrap would exclude 0,
    # resampling the 2 bases cannot
    a = ["SPECTRE_V1", "BENIGN", "SPECTRE_V1", "BENIGN"]
    b = ["BENIGN", "SPECTRE_V1", "SPECTRE_V1", "BENIGN"]
    d, lo, hi = paired_bootstrap(TOY, a, b)
    assert d == 0.5
    assert lo <= 0.0 <= hi


def test_paired_bootstrap_single_base_is_undefined():
    d, lo, hi = paired_bootstrap(TOY[:2], ["SPECTRE_V1", "BENIGN"], ["BENIGN", "BENIGN"])
    assert d == 0.5 and math.isnan(lo) and math.isnan(hi)


def test_cli_dev_reports_bars(tmp_path):
    out = tmp_path / "sb.md"
    subprocess.run([sys.executable, "-m", "eval.mechanism.scoreboard", "--data", str(DEV),
                    "--out", str(out)], cwd=ROOT, check=True)
    md = out.read_text()
    # headline excludes MDS (review I1); the full-806 0.991/0.871 paper
    # numbers are pinned in test_mechanism_bars.py
    assert "headline excludes MDS" in md
    assert "| interior | 0.992 |" in md
    assert "| adjacent | 0.863 |" in md
    assert "| mechanism | 0.992 |" in md
    assert "MDS" in md and "unconfirmed" in md


def test_cli_scores_dumped_preds(tmp_path):
    recs = [json.loads(l) for l in open(DEV)][:10]
    data = tmp_path / "d.jsonl"
    data.write_text("".join(json.dumps(x) + "\n" for x in recs))
    preds = tmp_path / "p.jsonl"
    preds.write_text("".join(json.dumps({"data": "d", "group": x["group"], "variant": x["variant"],
                                         "pred": x["label"]}) + "\n" for x in recs))
    out = tmp_path / "sb.md"
    subprocess.run([sys.executable, "-m", "eval.mechanism.scoreboard", "--data", str(data),
                    "--preds", f"oracle={preds}", "--out", str(out)], cwd=ROOT, check=True)
    assert "| oracle | 1.000 |" in out.read_text()


def test_cli_reports_constant_baselines_and_both_modes(tmp_path):
    # review C1: H1 must beat always-attack too; "any" reported co-primary
    out = tmp_path / "sb.md"
    subprocess.run([sys.executable, "-m", "eval.mechanism.scoreboard", "--data", str(DEV),
                    "--out", str(out)], cwd=ROOT, check=True)
    md = out.read_text()
    assert "| always-attack | 0.401 |" in md       # vulnerable share, MDS excluded
    assert "| always-benign |" in md
    assert "| mechanism-any | 0.992 |" in md
    assert "vs always-attack" in md


def test_headline_excludes_unconfirmed_mds(tmp_path):
    # review I1: a scorer that differs only on MDS must tie in the headline
    recs = [r("260101-000001", "entry", "SPECTRE_V1"), r("260101-000002", "twin", "BENIGN"),
            r("260101-000003", "entry", "MDS", cls="MDS")]
    data = tmp_path / "d.jsonl"
    data.write_text("".join(json.dumps(x) + "\n" for x in recs))
    good = tmp_path / "g.jsonl"
    bad = tmp_path / "b.jsonl"
    good.write_text("".join(json.dumps({"data": "d", "group": x["group"], "variant": x["variant"],
                                        "pred": x["label"]}) + "\n" for x in recs))
    bad.write_text("".join(json.dumps({"data": "d", "group": x["group"], "variant": x["variant"],
                                       "pred": x["label"] if x["vuln_class"] != "MDS" else "BENIGN"})
                           + "\n" for x in recs))
    out = tmp_path / "sb.md"
    subprocess.run([sys.executable, "-m", "eval.mechanism.scoreboard", "--data", str(data),
                    "--preds", f"good={good}", "--preds", f"bad={bad}", "--out", str(out)],
                   cwd=ROOT, check=True)
    md = out.read_text()
    assert "| good | 1.000 |" in md and "| bad | 1.000 |" in md
    assert "MDS (unconfirmed" in md


def test_seed_runs_get_arm_mean(tmp_path):
    recs = [json.loads(l) for l in open(DEV)][:20]
    data = tmp_path / "d.jsonl"
    data.write_text("".join(json.dumps(x) + "\n" for x in recs))
    args = []
    for s, right in (("1", True), ("7", False)):
        p = tmp_path / f"p{s}.jsonl"
        p.write_text("".join(json.dumps({"data": "d", "group": x["group"], "variant": x["variant"],
                                         "pred": x["label"] if right else "NOPE"}) + "\n" for x in recs))
        args += ["--preds", f"arm_s{s}={p}"]
    out = tmp_path / "sb.md"
    subprocess.run([sys.executable, "-m", "eval.mechanism.scoreboard", "--data", str(data), *args,
                    "--out", str(out)], cwd=ROOT, check=True)
    md = out.read_text()
    assert "| arm_s1 | 1.000 |" in md and "| arm_s7 | 0.000 |" in md
    assert "| arm (2 seeds) | 0.500 ± 0.707 |" in md
