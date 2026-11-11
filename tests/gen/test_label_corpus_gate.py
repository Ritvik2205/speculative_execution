"""Oracle labels attach to training records by content, and only confirmed
verdicts become leak/safe (gen/label_corpus_gate.py)."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO / "gen"))
from label_corpus_gate import (apply_mit_labels, gate_class_for,  # noqa: E402
                               mit_for_verdict, record_key)


def test_only_adjudicated_verdicts_become_leak_or_safe():
    assert [mit_for_verdict(v) for v in ("leak", "safe", "unrunnable", "dropped")] == \
        ["leak", "safe", "unknown", "unknown"]


def test_store_bypass_records_use_the_store_bypass_victim():
    assert gate_class_for("SPECTRE_V4") == "SPECTRE_V4"
    assert gate_class_for("SPECTRE_V1") == "SPECTRE_V1"
    assert gate_class_for("MDS") == "SPECTRE_V1"


def test_labels_attach_by_sequence_content_and_leave_others_untouched():
    a = {"label": "SPECTRE_V1", "sequence": ["movq (%rax), %rbx", "movq (%rbx), %rcx"]}
    b = {"label": "SPECTRE_V1", "sequence": ["nop", "nop"]}
    c = {"label": "MDS", "sequence": ["rdtsc"], "mit": "leak"}   # already HW-confirmed
    labels = [{"key": record_key(a["sequence"]), "mit": "leak"},
              {"key": record_key(c["sequence"]), "mit": "safe"}]
    n = apply_mit_labels([a, b, c], labels)
    assert a["mit"] == "leak"
    assert "mit" not in b
    assert c["mit"] == "leak"        # an existing confirmed label is not overwritten
    assert n == 1
