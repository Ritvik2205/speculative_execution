"""Tests for eval/mechanism/hybrid.py — the re-registered (v2) mechanism rule:
mode "any" for SPECTRE_V4 (one fence between the store and the bypassing load
stops SSB), the frozen mode "all" for every other class. spec_window.py stays
byte-identical to tag mech-rule-frozen."""
import hashlib
import json
from pathlib import Path

from eval.mechanism.hybrid import HYBRID_MODES, hybrid_pred
from eval.mechanism.spec_window import mechanism_pred

ROOT = Path(__file__).resolve().parents[2]
CF = ROOT / "eval/data/revizor_hwlabel_cf_heldout.jsonl"
FROZEN_SHA = "c4bbe28ffd8d5a3de35fbb6ebd14272b4d6b68fbbf8183af1056597b7f0b9b83"


def test_modes_are_v4_any_rest_all():
    assert HYBRID_MODES == {"SPECTRE_V4": "any"}


def test_hybrid_matches_component_modes_per_class():
    recs = [json.loads(l) for l in open(CF)]
    for rec in recs:
        mode = "any" if rec["vuln_class"] == "SPECTRE_V4" else "all"
        assert hybrid_pred(rec) == mechanism_pred(rec, mode=mode)


def test_hybrid_differs_from_all_on_some_v4():
    recs = [json.loads(l) for l in open(CF) if '"SPECTRE_V4"' in l]
    assert any(hybrid_pred(r) != mechanism_pred(r, mode="all") for r in recs)


def test_frozen_rule_file_untouched():
    sha = hashlib.sha256((ROOT / "eval/mechanism/spec_window.py").read_bytes()).hexdigest()
    assert sha == FROZEN_SHA
