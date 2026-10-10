"""Pure-logic tests for oracle/run_v2_combined.py (no container)."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT))

from gen.synth.spectector_gadgets import render_spec  # noqa: E402
from oracle.run_v2_combined import extract_gen_body, summarize  # noqa: E402


def test_extract_round_trips_the_upstream_v2_victim():
    body = '__asm__ __volatile__(\n"nop\\n\\tretq"\n: : "r"(i), "r"(probe) : "memory");'
    assert extract_gen_body(render_spec("SPECTRE_V2", False, gen_body=body)) == body


def test_extract_rejects_other_victims():
    assert extract_gen_body("void gadget(size_t i){ if(i<sz){ x; } }") is not None
    assert extract_gen_body("void other(void){ x; }") is None


def test_summarize_counts_adjudicability_and_the_fenced_control():
    rows = [
        {"source_id": "a", "unfenced": "leak", "fenced": "safe"},
        {"source_id": "b", "unfenced": "leak", "fenced": "leak"},
        {"source_id": "c", "unfenced": "safe", "fenced": "safe"},
        {"source_id": "d", "unfenced": "unrunnable", "fenced": "unrunnable"},
    ]
    s = summarize(rows)
    assert s["n"] == 4 and s["adjudicable"] == 3
    assert s["adjudicable_rate"] == 0.75
    assert s["leak"] == 2 and abs(s["leak_rate_of_adjudicable"] - 2 / 3) < 1e-9
    assert s["mitigated_rate"] == 0.5
    assert s["fenced_leak_anomalies"] == 1


def test_summarize_empty():
    s = summarize([])
    assert s["n"] == 0 and s["adjudicable_rate"] == 0.0 and s["mitigated_rate"] == 0.0
