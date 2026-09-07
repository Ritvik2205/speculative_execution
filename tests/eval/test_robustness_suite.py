import json, subprocess, sys
from pathlib import Path
from eval.robustness_suite import evaluate_checkpoint  # noqa

def test_shortcut_detector_collapses_under_neutralization(tmp_path, monkeypatch):
    # A stub "model" that predicts MDS iff 'verw' present must lose recall when masked.
    from eval.robustness_suite import _apply_perturbation
    recs = [{"label":"MDS","arch":"x86_64","sequence":["verw %ax","mov %rax,%rbx","ret"]}]
    perturbed = _apply_perturbation(recs, "trigger_masked")
    assert not any("verw" in l for l in perturbed[0]["sequence"])
