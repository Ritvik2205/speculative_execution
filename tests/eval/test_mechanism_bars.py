"""Tests for eval/mechanism/bars.py — the non-learned fence bars every
mitigation-awareness number is reported against (paper tab:hwscore). The
recorded counts on the pinned 806 hardware-labelled variants are regression
pins: 702/806 adjacent (2026-10-07), 799/806 interior (2026-10-08)."""
import json
from pathlib import Path

from eval.mechanism.bars import (
    BARS,
    adjacent_fence_pred,
    fence_count,
    fence_count_pred,
    interior_fence_pred,
)

ROOT = Path(__file__).resolve().parents[2]
DEV = ROOT / "eval/data/revizor_hwlabel_variants.jsonl"


def load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def rec(seq, cls="SPECTRE_V1", label=None):
    return {"label": label or cls, "vuln_class": cls, "sequence": seq}


def test_bars_reproduce_recorded_counts():
    recs = load(DEV)
    assert len(recs) == 806
    assert sum(adjacent_fence_pred(r) == r["label"] for r in recs) == 702
    assert sum(interior_fence_pred(r) == r["label"] for r in recs) == 799


def test_interior_ignores_leading_and_trailing_runs():
    r = rec(["lfence", "movq (%r14), %rax", "lfence"])
    assert interior_fence_pred(r) == "SPECTRE_V1"


def test_interior_mid_fence_is_benign():
    r = rec(["movq (%r14), %rax", "lfence", "movq (%r14,%rax), %rbx"])
    assert interior_fence_pred(r) == "BENIGN"


def test_pred_falls_back_to_label_without_vuln_class():
    r = {"label": "MDS", "sequence": ["movq (%r14), %rax"]}
    assert interior_fence_pred(r) == "MDS"
    assert adjacent_fence_pred(r) == "MDS"


def test_fence_count_and_threshold():
    seq = ["lfence", "movq (%r14), %rax", "mfence"]
    assert fence_count(seq) == 2
    assert fence_count_pred(rec(seq), threshold=2) == "BENIGN"
    assert fence_count_pred(rec(seq), threshold=3) == "SPECTRE_V1"


def test_bars_registry():
    assert set(BARS) == {"adjacent", "interior"}
    assert BARS["interior"] is interior_fence_pred
