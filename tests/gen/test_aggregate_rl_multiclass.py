"""The per-class aggregator must report the ADJUDICABLE FRACTION correctly:
Spectector fully rules SPECTRE_V1 but only partially rules V2/V4/RETBLEED, so
raw yield (leak/all) understates a partial class vs adjudicated yield
(leak/ruled). These tests pin run_metrics + _ci without RL runs.
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT))

import aggregate_rl_multiclass as agg  # noqa: E402


def _write(tmp, recs):
    p = tmp / "samples.jsonl"
    p.write_text("\n".join(json.dumps(r) for r in recs) + "\n")
    return p


def test_fully_adjudicable_class(tmp_path):
    # 4 samples, all ruled (2 leak, 2 safe) -> adjudicable 1.0
    recs = [
        {"verdict": "leak", "token_sequence": ["A", "B"]},
        {"verdict": "leak", "token_sequence": ["C", "D"]},
        {"verdict": "safe", "token_sequence": ["E"]},
        {"verdict": "safe", "token_sequence": ["F"]},
    ]
    m = agg.run_metrics(_write(tmp_path, recs))
    assert abs(m["adjudicable_frac"] - 1.0) < 1e-9
    assert abs(m["raw_yield"] - 0.5) < 1e-9
    assert abs(m["adjudicated_yield"] - 0.5) < 1e-9  # ruled==all here
    assert m["unique_leak"] == 2


def test_partial_class_raw_vs_adjudicated_diverge(tmp_path):
    # 2 leak, 0 safe, 6 unsupported/unrunnable -> oracle ruled only 2/8
    recs = ([{"verdict": "leak", "token_sequence": [f"L{i}"]} for i in range(2)]
            + [{"verdict": "unsupported", "token_sequence": [f"U{i}"]} for i in range(4)]
            + [{"verdict": "unrunnable", "token_sequence": [f"R{i}"]} for i in range(2)])
    m = agg.run_metrics(_write(tmp_path, recs))
    assert abs(m["raw_yield"] - 2 / 8) < 1e-9           # 0.25, understates
    assert abs(m["adjudicable_frac"] - 2 / 8) < 1e-9    # only 2 ruled
    assert abs(m["adjudicated_yield"] - 1.0) < 1e-9     # both ruled were leaks
    # raw yield must be strictly below adjudicated yield for a partial class
    assert m["raw_yield"] < m["adjudicated_yield"]


def test_top1_and_unique(tmp_path):
    recs = [{"verdict": "leak", "token_sequence": ["X", "Y"]} for _ in range(3)] \
        + [{"verdict": "leak", "token_sequence": ["Z"]}]
    m = agg.run_metrics(_write(tmp_path, recs))
    assert m["top1_mult"] == 3       # ["X","Y"] appears 3x
    assert m["unique_leak"] == 2     # two distinct leaking sequences


def test_ci_helper():
    m, h, n = agg._ci([0.2, 0.3, 0.4])
    assert abs(m - 0.3) < 1e-9 and n == 3 and h > 0
    assert agg._ci([])[2] == 0
    assert agg._ci([0.5])[1] == 0.0
