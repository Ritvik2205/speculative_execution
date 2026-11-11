import random
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen"):
    sys.path.insert(0, str(p))
import minimise_split as ms  # noqa: E402


def test_pick_takes_only_the_requested_kind_and_caps_per_source():
    rows = ([{"cond": "a", "kind": "indexed", "body": [f"i{k}"]} for k in range(5)]
            + [{"cond": "a", "kind": "selfgated", "body": ["x"]},
               {"cond": "b", "kind": "indexed", "body": ["y"]},
               {"cond": "b", "verdict": "safe", "body": ["z"]}])
    got = ms.pick(rows, "indexed", 3, random.Random(0))
    assert [c for c, _, _ in got] == ["a", "a", "a", "b"]
    assert all(b[0].startswith(("i", "y")) for _, _, b in got)


def test_summary_counts_sizes_and_control_checks():
    rows = [{"source": "s", "core_len": 2, "orig_len": 20, "canonical": "c1", "template": "t1",
             "core": ["a", "b"], "core_control": "safe"},
            {"source": "s", "core_len": 6, "orig_len": 30, "canonical": "c2", "template": "t1",
             "core": ["a", "b"], "core_control": "leak"}]
    line = [l for l in ms.summarise(rows).splitlines() if l.startswith("| s ")][0]
    assert "| 2 | 30 | 6 | 2-6 | 0/1/0/0/1 | 2 | 1/2 |" in line
    assert "| 2 | {'s': 2} | `a; b` |" in ms.top_cores(rows)
