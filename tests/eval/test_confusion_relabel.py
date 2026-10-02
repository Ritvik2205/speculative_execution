"""_relabelled helper of aggregate_results (stubs robustness_suite; no torch)."""
import importlib.util, sys, types
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
stub = types.ModuleType("robustness_suite"); stub.evaluate_checkpoint = lambda *a, **k: {}
sys.modules.setdefault("robustness_suite", stub)
spec = importlib.util.spec_from_file_location("aggregate_results_t", ROOT / "eval/cluster/aggregate_results.py")
agg = importlib.util.module_from_spec(spec); spec.loader.exec_module(agg)

def test_relabelled():
    recs = [{"label": "MDS", "sequence": ["a"]}, {"label": "BENIGN", "sequence": ["b"]}]
    out = agg._relabelled(recs, "L1TF")
    assert [r["label"] for r in out] == ["L1TF", "L1TF"]
    assert recs[0]["label"] == "MDS" and out[0]["sequence"] == ["a"]

def test_pred_fraction_no_recs():
    m, h = agg.pred_fraction("nope", [], "MDS")
    assert m != m
