"""Splitting indexed-victim leaks into attacker-indexed and self-gated."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen"):
    sys.path.insert(0, str(p))

from split_indexed_leaks import leak_kind, split_rows, summarise  # noqa: E402


def test_leak_kind_needs_a_safe_control_to_call_a_leak_attacker_indexed():
    assert leak_kind("leak", "safe") == "indexed"
    assert leak_kind("leak", "leak") == "selfgated"
    assert leak_kind("leak", "unrunnable") == "undecided"
    assert leak_kind("safe", None) is None
    assert leak_kind("unrunnable", None) is None


def test_split_rows_only_asks_the_control_about_leaks():
    asked = []

    def ctl(body):
        asked.append(tuple(body))
        return "leak" if "jae" in body[0] else "safe"

    rows = [{"cond": "g", "body": ["jae .L"], "verdict": "leak"},
            {"cond": "g", "body": ["movq (%r15), %rax"], "verdict": "leak"},
            {"cond": "g", "body": ["nop"], "verdict": "safe"},
            {"cond": "b", "body": ["x"], "verdict": "unrunnable"}]
    out = split_rows(rows, ctl, workers=1)
    assert [r.get("kind") for r in out] == ["selfgated", "indexed", None, None]
    assert sorted(asked) == [("jae .L",), ("movq (%r15), %rax",)]
    s = summarise(out)
    assert s["g"] == {"n": 3, "leak": 2, "indexed": 1, "selfgated": 1, "undecided": 0}
    assert s["b"] == {"n": 1, "leak": 0, "indexed": 0, "selfgated": 0, "undecided": 0}
