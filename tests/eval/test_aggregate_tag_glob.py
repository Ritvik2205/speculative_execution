"""allhw2 must never be picked up by seeds_for('allhw') (glob allhw_s*)."""
import importlib.util, sys, types
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
stub = types.ModuleType("robustness_suite"); stub.evaluate_checkpoint = lambda *a, **k: {}
sys.modules.setdefault("robustness_suite", stub)
spec = importlib.util.spec_from_file_location("aggregate_results_glob", ROOT / "eval/cluster/aggregate_results.py")
agg = importlib.util.module_from_spec(spec); spec.loader.exec_module(agg)

def test_allhw2_in_conf_tags():
    assert "allhw2" in agg.CONF_TAGS and "allhw" in agg.CONF_TAGS

def test_glob_separation(tmp_path, monkeypatch):
    for d in ("allhw_s1", "allhw_s42", "allhw2_s1", "allhw2_s7"):
        (tmp_path / d).mkdir(); (tmp_path / d / "gine_best.pt").write_text("x")
    monkeypatch.setattr(agg, "OUT", tmp_path)
    a, b = agg.seeds_for("allhw"), agg.seeds_for("allhw2")
    assert [Path(p).parent.name for p in a] == ["allhw_s1", "allhw_s42"]
    assert [Path(p).parent.name for p in b] == ["allhw2_s1", "allhw2_s7"]
