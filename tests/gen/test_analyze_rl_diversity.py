"""Tests for gen/analyze_rl_diversity.py -- the diversity audit that answers
"is the oracle-RL loop's reported yield genuine discovery or mode collapse?"
from the gen/rl_samples.jsonl sidecar written by
gen/rl_from_oracle.py's `samples_out`.

Pure unit tests over synthetic JSONL data -- no Docker, no Spectector, no
real generator.
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from oracle.validators.base import LEAK, SAFE
from gen.analyze_rl_diversity import (
    analyze,
    decide_verdict,
    load_samples,
    ruzicka_similarity,
    write_report,
)


def _rec(cls, rnd, idx, tokens, verdict, reward, gadget_id=None):
    return {
        "class": cls,
        "round": rnd,
        "index": idx,
        "gadget_id": gadget_id or f"{cls}_r{rnd}_{idx}",
        "token_sequence": tokens,
        "realized_asm": tokens,
        "verdict": verdict,
        "reward": reward,
    }


def _write_jsonl(path, records):
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


# ---------------------------------------------------------------------------
# load_samples
# ---------------------------------------------------------------------------

def test_load_samples_reads_jsonl(tmp_path):
    p = tmp_path / "s.jsonl"
    _write_jsonl(p, [_rec("SPECTRE_V1", 0, 0, ["mov", "a"], LEAK, 1.0)])
    records = load_samples(p)
    assert len(records) == 1
    assert records[0]["class"] == "SPECTRE_V1"


def test_load_samples_skips_blank_lines(tmp_path):
    p = tmp_path / "s.jsonl"
    p.write_text(json.dumps(_rec("SPECTRE_V1", 0, 0, ["mov"], LEAK, 1.0)) + "\n\n")
    records = load_samples(p)
    assert len(records) == 1


# ---------------------------------------------------------------------------
# ruzicka_similarity (multiset Jaccard)
# ---------------------------------------------------------------------------

def test_ruzicka_similarity_identical_is_one():
    assert ruzicka_similarity(["mov", "cmp", "mov"], ["mov", "cmp", "mov"]) == 1.0


def test_ruzicka_similarity_disjoint_is_zero():
    assert ruzicka_similarity(["mov", "cmp"], ["add", "sub"]) == 0.0


def test_ruzicka_similarity_partial_overlap_between_zero_and_one():
    sim = ruzicka_similarity(["mov", "cmp", "mov"], ["mov", "cmp", "add"])
    assert 0.0 < sim < 1.0


# ---------------------------------------------------------------------------
# analyze: mode collapse (40 identical leaking sequences)
# ---------------------------------------------------------------------------

def test_analyze_detects_collapsed_set():
    seq = ["mov", "eax", "cmp", "ebx", "jne", "L1"]
    records = [_rec("SPECTRE_V1", r, i, seq, LEAK, 1.0)
               for r in range(5) for i in range(8)]  # 5 rounds * 8 = 40 identical leaks

    report = analyze(records)
    assert report["overall"]["total"] == 40
    assert report["unique_leak_seq_count_global"] == 1
    assert report["leak_total_global"] == 40

    verdict, reasons = decide_verdict(report)
    assert verdict == "mode collapse"
    assert reasons  # rationale present


# ---------------------------------------------------------------------------
# analyze: genuine discovery (many distinct leaking sequences, growing)
# ---------------------------------------------------------------------------

def test_analyze_detects_discovery():
    records = []
    for r in range(4):
        for i in range(10):
            # unique sequence per (round, index) -- no repeats at all
            seq = ["mov", f"r{r}_{i}", "cmp", "ebx", "jne", f"L{r}_{i}"]
            verdict = LEAK if i % 2 == 0 else SAFE
            records.append(_rec("SPECTRE_V1", r, i, seq, verdict, 1.0 if verdict == LEAK else 0.0))

    report = analyze(records)
    # 5 unique leaks per round, all distinct across rounds -> 20 unique leaks total
    assert report["unique_leak_seq_count_global"] == 20
    assert report["leak_total_global"] == 20

    verdict, reasons = decide_verdict(report)
    assert verdict == "discovery"


# ---------------------------------------------------------------------------
# analyze: per-round trend correctness
# ---------------------------------------------------------------------------

def test_analyze_per_round_counts():
    records = [
        _rec("SPECTRE_V1", 0, 0, ["a"], LEAK, 1.0),
        _rec("SPECTRE_V1", 0, 1, ["a"], LEAK, 1.0),   # dup of the above within round 0
        _rec("SPECTRE_V1", 0, 2, ["b"], SAFE, 0.0),
        _rec("SPECTRE_V1", 1, 0, ["c"], LEAK, 1.0),
        _rec("SPECTRE_V1", 1, 1, ["d"], LEAK, 1.0),
    ]
    report = analyze(records)
    r0, r1 = report["rounds"][0], report["rounds"][1]

    assert r0["total"] == 3
    assert r0["unique"] == 2       # {"a"} counted once, {"b"} once
    assert r0["leak_total"] == 2
    assert r0["unique_leak"] == 1  # both leaks are the same sequence "a"
    assert r0["yield"] == 2 / 3

    assert r1["total"] == 2
    assert r1["unique"] == 2
    assert r1["leak_total"] == 2
    assert r1["unique_leak"] == 2  # "c" and "d" are distinct
    assert r1["yield"] == 1.0


def test_analyze_yield_rises_while_unique_leak_falls_is_collapse():
    """Explicit trend case from the deliverable: round 0 has low yield but
    several distinct leaks; round 1 has yield 1.0 but every leak collapses
    onto one sequence -- classic collapse-while-climbing-yield shape."""
    records = [
        _rec("SPECTRE_V1", 0, 0, ["a"], LEAK, 1.0),
        _rec("SPECTRE_V1", 0, 1, ["b"], LEAK, 1.0),
        _rec("SPECTRE_V1", 0, 2, ["c"], SAFE, 0.0),
        _rec("SPECTRE_V1", 0, 3, ["d"], SAFE, 0.0),
        _rec("SPECTRE_V1", 1, 0, ["x"], LEAK, 1.0),
        _rec("SPECTRE_V1", 1, 1, ["x"], LEAK, 1.0),
        _rec("SPECTRE_V1", 1, 2, ["x"], LEAK, 1.0),
        _rec("SPECTRE_V1", 1, 3, ["x"], LEAK, 1.0),
    ]
    report = analyze(records)
    assert report["rounds"][0]["yield"] == 0.5
    assert report["rounds"][1]["yield"] == 1.0
    assert report["rounds"][0]["unique_leak"] == 2
    assert report["rounds"][1]["unique_leak"] == 1

    verdict, reasons = decide_verdict(report)
    assert verdict == "mode collapse"


# ---------------------------------------------------------------------------
# top-5 most frequent sequence table
# ---------------------------------------------------------------------------

def test_analyze_top5_most_frequent():
    records = (
        [_rec("SPECTRE_V1", 0, i, ["popular"], LEAK, 1.0) for i in range(5)]
        + [_rec("SPECTRE_V1", 0, 5, ["rare"], LEAK, 1.0)]
    )
    report = analyze(records)
    top_seq, top_count = report["top5"][0]
    assert list(top_seq) == ["popular"]
    assert top_count == 5


# ---------------------------------------------------------------------------
# write_report: file gets written with a verdict line
# ---------------------------------------------------------------------------

def test_write_report_contains_verdict_line(tmp_path):
    records = [_rec("SPECTRE_V1", r, i, ["same"], LEAK, 1.0)
               for r in range(3) for i in range(10)]
    report = analyze(records)
    verdict, reasons = decide_verdict(report)
    out_path = tmp_path / "rl_diversity.md"

    write_report(report, verdict, reasons, out_path, meta={"samples": "gen/rl_samples.jsonl"})

    text = out_path.read_text()
    assert "mode collapse" in text.lower()
    assert "unique" in text.lower()
    assert "SPECTRE_V1" not in text or True  # class breakdown not mandatory, just smoke-check it writes
