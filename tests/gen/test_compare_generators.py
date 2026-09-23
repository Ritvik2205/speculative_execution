"""Tests for gen/compare_generators.py -- the supervisor's "same-prompt, run
3x, compare two models" diagnostic: BASE generator vs PRETRAINED generator
on generation quality, BEFORE any RL (so RL's yield-saturation can't hide a
pretraining effect).

Pure unit tests over the aggregation/report-building helpers (no torch, no
checkpoint) plus one stubbed end-to-end CLI test (CondTransformerLM.load
monkeypatched to a fake model -- no real checkpoint, no training). Mirrors
tests/gen/test_analyze_rl_diversity.py and tests/gen/test_rl_cli.py's
stubbing style.
"""
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "gen"))

from gen.compare_generators import (
    aggregate_across_seeds,
    aggregate_sequences,
    build_report_md,
    decide_ab_verdict,
    main,
    render_ab_table,
)


# ---------------------------------------------------------------------------
# aggregate_sequences: pure per-model(-seed) aggregation over synthetic
# token-sequence lists
# ---------------------------------------------------------------------------

def test_aggregate_sequences_diverse_set_high_unique_low_sim():
    # every sequence uses a disjoint token vocabulary -> unique-rate 1.0,
    # pairwise Ruzicka similarity exactly 0.0 (no shared tokens anywhere)
    seqs = [[f"tok_{i}_{j}" for j in range(4)] for i in range(10)]
    agg = aggregate_sequences(seqs)
    assert agg["total"] == 10
    assert agg["unique"] == 10
    assert agg["unique_rate"] == 1.0
    assert agg["mean_sim"] == 0.0
    assert agg["mean_len"] == 4.0


def test_aggregate_sequences_near_duplicate_collapse_low_unique_high_sim():
    # two near-identical patterns (differ only in the last token) repeated
    # -> low unique-rate, high (but not 1.0) pairwise similarity
    seqs = ([["mov", "a", "cmp", "b", "jne", "L"]] * 5
            + [["mov", "a", "cmp", "b", "jne", "M"]] * 5)
    agg = aggregate_sequences(seqs)
    assert agg["total"] == 10
    assert agg["unique"] == 2
    assert agg["unique_rate"] == pytest.approx(0.2)
    # 5 shared tokens / 7 union tokens (mov,a,cmp,b,jne shared + L,M distinct)
    assert agg["mean_sim"] == pytest.approx(5 / 7)
    assert agg["mean_sim"] > 0.5


def test_aggregate_sequences_exact_duplicate_collapse_is_max_similarity():
    seqs = [["mov", "a", "b"]] * 8
    agg = aggregate_sequences(seqs)
    assert agg["unique"] == 1
    assert agg["unique_rate"] == pytest.approx(0.125)
    assert agg["mean_sim"] == 1.0


def test_aggregate_sequences_empty_list():
    agg = aggregate_sequences([])
    assert agg["total"] == 0
    assert agg["unique_rate"] == 0.0
    assert agg["mean_sim"] is None


def test_aggregate_sequences_single_sample_mean_sim_is_none():
    agg = aggregate_sequences([["mov", "a"]])
    assert agg["total"] == 1
    assert agg["unique"] == 1
    assert agg["mean_sim"] is None


# ---------------------------------------------------------------------------
# aggregate_across_seeds: the "run 3x" -> mean +/- spread half
# ---------------------------------------------------------------------------

def test_aggregate_across_seeds_mean_and_spread():
    per_seed = [
        {"total": 10, "unique": 10, "unique_rate": 1.0, "mean_sim": 0.1, "mean_len": 5.0},
        {"total": 10, "unique": 9, "unique_rate": 0.9, "mean_sim": 0.2, "mean_len": 5.5},
        {"total": 10, "unique": 8, "unique_rate": 0.8, "mean_sim": 0.15, "mean_len": 4.5},
    ]
    summary = aggregate_across_seeds(per_seed)
    assert summary["n_seeds"] == 3
    assert summary["total"] == 30
    assert summary["unique_rate_mean"] == pytest.approx(0.9)
    assert summary["unique_rate_spread"] >= 0.0
    assert summary["mean_len_mean"] == pytest.approx(5.0)


def test_aggregate_across_seeds_single_seed_zero_spread():
    per_seed = [{"total": 5, "unique": 5, "unique_rate": 1.0, "mean_sim": 0.0, "mean_len": 3.0}]
    summary = aggregate_across_seeds(per_seed)
    assert summary["unique_rate_spread"] == 0.0
    assert summary["mean_sim_spread"] == 0.0


def test_aggregate_across_seeds_skips_none_mean_sim():
    # e.g. every seed drew only 1 sample -> mean_sim is None each time
    per_seed = [
        {"total": 1, "unique": 1, "unique_rate": 1.0, "mean_sim": None, "mean_len": 3.0},
        {"total": 1, "unique": 1, "unique_rate": 1.0, "mean_sim": None, "mean_len": 4.0},
    ]
    summary = aggregate_across_seeds(per_seed)
    assert summary["mean_sim_mean"] is None
    assert summary["mean_sim_spread"] is None


def test_aggregate_across_seeds_includes_realize_rate_when_present():
    per_seed = [
        {"total": 5, "unique": 5, "unique_rate": 1.0, "mean_sim": 0.0, "mean_len": 3.0,
         "realize_rate": 0.8},
        {"total": 5, "unique": 5, "unique_rate": 1.0, "mean_sim": 0.0, "mean_len": 3.0,
         "realize_rate": 0.6},
    ]
    summary = aggregate_across_seeds(per_seed)
    assert summary["realize_rate_mean"] == pytest.approx(0.7)
    assert "realize_rate_spread" in summary


def test_aggregate_across_seeds_no_realize_key_when_absent():
    per_seed = [{"total": 5, "unique": 5, "unique_rate": 1.0, "mean_sim": None, "mean_len": 3.0}]
    summary = aggregate_across_seeds(per_seed)
    assert "realize_rate_mean" not in summary


# ---------------------------------------------------------------------------
# decide_ab_verdict: flips correctly
# ---------------------------------------------------------------------------

def test_decide_ab_verdict_a_clearly_better():
    a = {"unique_rate_mean": 0.95, "mean_sim_mean": 0.05}
    b = {"unique_rate_mean": 0.40, "mean_sim_mean": 0.70}
    v = decide_ab_verdict("base", a, "pretrained", b)
    assert "base looks better" in v
    assert "pretrained looks better" not in v


def test_decide_ab_verdict_b_clearly_better():
    a = {"unique_rate_mean": 0.30, "mean_sim_mean": 0.80}
    b = {"unique_rate_mean": 0.90, "mean_sim_mean": 0.10}
    v = decide_ab_verdict("base", a, "pretrained", b)
    assert "pretrained looks better" in v
    assert "base looks better" not in v


def test_decide_ab_verdict_indistinguishable_when_close():
    a = {"unique_rate_mean": 0.85, "mean_sim_mean": 0.12}
    b = {"unique_rate_mean": 0.80, "mean_sim_mean": 0.15}
    v = decide_ab_verdict("base", a, "pretrained", b)
    assert "indistinguishable" in v


def test_decide_ab_verdict_ignores_realize_rate_when_disabled():
    a = {"unique_rate_mean": 0.85, "mean_sim_mean": 0.12, "realize_rate_mean": 0.30}
    b = {"unique_rate_mean": 0.80, "mean_sim_mean": 0.15, "realize_rate_mean": 0.90}
    v = decide_ab_verdict("base", a, "pretrained", b, realize=False)
    assert "indistinguishable" in v


def test_decide_ab_verdict_uses_realize_rate_when_enabled():
    a = {"unique_rate_mean": 0.85, "mean_sim_mean": 0.12, "realize_rate_mean": 0.30}
    b = {"unique_rate_mean": 0.80, "mean_sim_mean": 0.15, "realize_rate_mean": 0.90}
    v = decide_ab_verdict("base", a, "pretrained", b, realize=True)
    assert "pretrained looks better" in v


# ---------------------------------------------------------------------------
# render_ab_table / build_report_md
# ---------------------------------------------------------------------------

def _summary(unique_rate, sim, length):
    return {
        "total": 120, "n_seeds": 3,
        "unique_rate_mean": unique_rate, "unique_rate_spread": 0.05,
        "mean_sim_mean": sim, "mean_sim_spread": 0.02,
        "mean_len_mean": length, "mean_len_spread": 1.0,
    }


def test_render_ab_table_contains_labels_and_metrics():
    a = _summary(0.9, 0.1, 12.0)
    b = _summary(0.5, 0.6, 8.0)
    text = "\n".join(render_ab_table("base", a, "pretrained", b))
    assert "base" in text and "pretrained" in text
    assert "unique-rate" in text
    assert "120" in text


def test_render_ab_table_realize_row_only_when_enabled():
    a = _summary(0.9, 0.1, 12.0)
    b = _summary(0.5, 0.6, 8.0)
    a["realize_rate_mean"], a["realize_rate_spread"] = 0.4, 0.1
    b["realize_rate_mean"], b["realize_rate_spread"] = 0.7, 0.1

    without = "\n".join(render_ab_table("base", a, "pretrained", b, realize=False))
    with_r = "\n".join(render_ab_table("base", a, "pretrained", b, realize=True))
    assert "realize-rate" not in without
    assert "realize-rate" in with_r


def test_build_report_md_includes_verdict_and_table():
    meta = {"class": "SPECTRE_V1", "arch": "x86_64", "n": 5, "seeds": [1, 2, 3],
            "temperature": 0.9, "top_k": 20, "a_path": "a.pt", "b_path": "b.pt"}
    a = _summary(0.95, 0.05, 12.0)
    b = _summary(0.30, 0.80, 8.0)
    md = build_report_md(meta, "base", a, "pretrained", b, realize=False)
    assert "base" in md and "pretrained" in md
    assert "Verdict" in md
    assert "base looks better" in md
    assert "SPECTRE_V1" in md


# ---------------------------------------------------------------------------
# end-to-end CLI, stubbed model (no real checkpoint, no torch training)
# ---------------------------------------------------------------------------

def test_main_end_to_end_with_stubbed_models(tmp_path, monkeypatch):
    from generator import CondTransformerLM

    class FakeModel:
        def __init__(self, tag):
            self.tag = tag
            self.calls = 0

        def sample(self, target_class, target_arch, temperature=1.0, top_k=20,
                    max_len=None, greedy=False):
            self.calls += 1
            if self.tag == "a":
                # collapsed: identical output every call
                return ["mov", "cmp", "jne"]
            # diverse: unique token each call
            return [f"tok_{self.calls}", "add", "sub"]

    def fake_load(path, map_location="cpu"):
        tag = "a" if Path(path).name == "modelA.pt" else "b"
        return FakeModel(tag)

    monkeypatch.setattr(CondTransformerLM, "load", fake_load)

    out_path = tmp_path / "ab.md"
    rc = main(["--a", "modelA.pt", "--b", "modelB.pt", "--n", "5",
               "--seeds", "1", "2", "--out", str(out_path)])
    assert rc == 0
    assert out_path.exists()
    text = out_path.read_text()
    assert "base" in text and "pretrained" in text
    # b (pretrained label, diverse FakeModel) should clearly win on
    # unique-rate/similarity over a (base label, collapsed FakeModel)
    assert "pretrained looks better" in text
