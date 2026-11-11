"""Conditioning labels the vocab carries follow the labels in the corpus."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))
from generator import MIT_VALUES, mit_values_for  # noqa: E402


def test_default_labels_are_unchanged_when_the_corpus_uses_only_them():
    rows = [{"mit": "leak"}, {"mit": "safe"}, {}, {"mit": None}]
    assert mit_values_for(rows) == MIT_VALUES == ["leak", "safe", "unknown"]


def test_extra_corpus_labels_are_appended_in_sorted_order():
    rows = [{"mit": "selfgated"}, {"mit": "leak"}, {"mit": "aaa"}]
    assert mit_values_for(rows) == ["leak", "safe", "unknown", "aaa", "selfgated"]
