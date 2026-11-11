"""Relabelling a corpus window for the indexed victim (gen/build_indexed_corpus.py)."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))
from build_indexed_corpus import relabel_window  # noqa: E402

W = ["movq (%rbx), %rax", "movzbl (%rsi), %ecx", "movb $1, (%rdx,%rcx)"]


def test_leaking_window_is_rewritten_with_the_confirmed_register_as_r15():
    out = relabel_window(W, lambda body: "leak" if "(%r15), %ecx" in body[1] else "safe")
    assert out["mit"] == "leak" and out["attacker"] == "rsi"
    assert out["sequence"] == ["movq (%rbx), %rax", "movzbl (%r15), %ecx",
                               "movb $1, (%rdx,%rcx)"]


def test_window_safe_for_every_candidate_is_safe_and_keeps_first_candidate_as_attacker():
    out = relabel_window(W, lambda body: "safe")
    assert out["mit"] == "safe" and out["attacker"] == "rbx"
    assert out["sequence"][0] == "movq (%r15), %rax"


def test_unadjudicated_candidates_make_the_label_unknown_not_safe():
    out = relabel_window(W, lambda body: "unrunnable")
    assert out["mit"] == "unknown"


def test_window_without_candidates_never_mentions_r15():
    w = ["movq $1, %r15", "addq %r15, %rax"]
    out = relabel_window(w, lambda body: "safe")
    assert out["attacker"] is None
    assert not any("r15" in i for i in out["sequence"])
    assert out["mit"] == "safe"


def test_at_most_max_candidates_are_tried():
    w = ["movq (%rax), %r8", "movq (%rbx), %r8", "movq (%rcx), %r8", "movq (%rdx), %r8"]
    n = []
    relabel_window(w, lambda body: n.append(1) or "safe", max_candidates=2)
    assert len(n) == 2


def test_control_table_scores_a_window_by_its_best_attacker_candidate():
    import eval_gate_controls as e
    rows = [{"cond": "empty", "verdict": "safe"},
            {"cond": "b#0", "verdict": "safe"}, {"cond": "b#0", "verdict": "leak"},
            {"cond": "b#1", "verdict": "unrunnable"}, {"cond": "b#1", "verdict": "safe"},
            {"cond": "b#2", "verdict": "unrunnable"}]
    assert [(r["cond"], r["verdict"]) for r in e.fold_candidates(rows)] == \
        [("empty", "safe"), ("b", "leak"), ("b", "safe"), ("b", "unrunnable")]
