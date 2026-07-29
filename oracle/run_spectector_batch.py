"""Batch runner for Spectector-based oracle."""
from __future__ import annotations
import sys
import json

from gen.synth.spectector_gadgets import generate_spec
from oracle.spectector_oracle import run_spec_gadget
from oracle.manifest import write_manifest

REPO = "/Users/ritvikgupta/SpecExec"


def spec_report(records):
    """
    Generate per-class adjudicability report for Spectector gadgets.

    Args:
        records: list[LeakRecord]

    Returns:
        dict with per_class {n, n_leak, leak_rate, adjudicable},
        aggregate_adjudicable over adjudicable=="yes" only,
        and coverage_gaps (classes with adjudicable=="no").
    """
    per_class = {}
    for r in records:
        d = per_class.setdefault(
            r.vuln_class, {"n": 0, "n_leak": 0, "adjudicable": r.adjudicable}
        )
        d["n"] += 1
        d["n_leak"] += int(r.leak)
    for cls, d in per_class.items():
        d["leak_rate"] = (d["n_leak"] / d["n"]) if d["n"] else 0.0

    # Aggregate only over adjudicable=="yes" records
    adj = [r for r in records if r.adjudicable == "yes"]
    agg = {"n": len(adj), "n_leak": sum(int(r.leak) for r in adj)}
    agg["leak_rate"] = (agg["n_leak"] / agg["n"]) if agg["n"] else 0.0

    # Coverage gaps: classes with adjudicable=="no"
    coverage_gaps = sorted({r.vuln_class for r in records if r.adjudicable == "no"})

    return {
        "per_class": per_class,
        "aggregate_adjudicable": agg,
        "coverage_gaps": coverage_gaps,
    }


def main():
    """Generate Spectector gadgets, run oracle, and report results."""
    # Generate Spectector gadgets
    rows = generate_spec("gen/synth/spec_out")

    # Run oracle on each gadget
    records = []
    for row in rows:
        try:
            record = run_spec_gadget(row, REPO)
            records.append(record)
        except Exception as e:
            print(f"WARN {row['gadget_id']}: {e}")

    # Write results
    write_manifest(records, f"{REPO}/oracle/results/spectector_leak_labels.jsonl")

    # Print report
    report = spec_report(records)
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
