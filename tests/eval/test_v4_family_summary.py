import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "eval"))
from gine_riscv_holdout_eval import v4_family_summary  # noqa: E402


def test_separation_is_vuln_minus_safe_v4_rate():
    recs = ([{"v4_variant": "vuln", "arch": "riscv64", "compiler": "gcc", "pred": "SPECTRE_V4"}] * 3
            + [{"v4_variant": "vuln", "arch": "riscv64", "compiler": "gcc", "pred": "BENIGN"}]
            + [{"v4_variant": "safe", "arch": "riscv64", "compiler": "gcc", "pred": "SPECTRE_V4"}]
            + [{"v4_variant": "safe", "arch": "riscv64", "compiler": "gcc", "pred": "SPECTRE_V1"}] * 3)
    s = v4_family_summary(recs)
    assert s["all"]["vuln"]["pred_v4"] == 0.75
    assert s["all"]["safe"]["pred_v4"] == 0.25
    assert s["all"]["safe"]["pred_attack"] == 1.0
    assert abs(s["all"]["v4_separation"] - 0.5) < 1e-9
    assert "riscv64/gcc" in s
