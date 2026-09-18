"""The multi-seed aggregator's job is to only call a difference 'real' when the
two arms' 95% CIs don't overlap -- otherwise a lucky single run could carry a
claim. These tests pin the CI + separation logic without needing RL runs.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))

import aggregate_rl_multiseed as agg  # noqa: E402


def test_ci_mean_and_halfwidth():
    m, h, n = agg._ci([0.4, 0.5, 0.6])
    assert abs(m - 0.5) < 1e-9
    assert n == 3 and h > 0


def test_ci_single_value_zero_width():
    m, h, n = agg._ci([0.5])
    assert (m, h, n) == (0.5, 0.0, 1)


def test_ci_ignores_nans_and_empty():
    assert agg._ci([])[2] == 0
    m, _, n = agg._ci([float("nan"), 0.3, 0.3])
    assert n == 2 and abs(m - 0.3) < 1e-9


def _sep(a, b):
    # mirror the aggregator's inline separation test
    (ma, ha, _), (mb, hb, _) = a, b
    return (ma - ha > mb + hb) or (mb - hb > ma + ha)


def test_separated_cis_flag_real():
    a = agg._ci([0.90, 0.92, 0.91])   # ~0.91
    b = agg._ci([0.40, 0.42, 0.44])   # ~0.42
    assert _sep(a, b) is True


def test_overlapping_cis_not_significant():
    a = agg._ci([0.50, 0.55, 0.60])
    b = agg._ci([0.48, 0.52, 0.58])
    assert _sep(a, b) is False


def test_run_metrics_on_synthetic_samples(tmp_path):
    import json
    # 3 samples, 2 leak (one duplicated), 1 safe, all round 0
    recs = [
        {"round": 0, "verdict": "leak", "token_sequence": ["A", "B"]},
        {"round": 0, "verdict": "leak", "token_sequence": ["A", "B"]},  # dup
        {"round": 0, "verdict": "safe", "token_sequence": ["C"]},
    ]
    p = tmp_path / "samples.jsonl"
    p.write_text("\n".join(json.dumps(r) for r in recs) + "\n")
    m = agg._run_metrics(p)
    assert abs(m["round0_yield"] - 2 / 3) < 1e-9
    assert m["unique_leak"] == 1          # the two leaks are identical
    assert m["top1_mult"] == 2            # ["A","B"] appears twice
