"""Controls harness for oracle validation."""
from __future__ import annotations
import sys
import json

from oracle.run_oracle import run_gadget
from oracle.manifest import write_manifest

GEM5_VERSION = "v24.0.0.0"
REPO = "/Users/ritvikgupta/SpecExec"
INDEX = f"{REPO}/gen/synth/out/gadgets.jsonl"


def _rows():
    """Load gadget index from JSONL."""
    return [json.loads(l) for l in open(INDEX) if l.strip()]


def _first(rows, cls, arch="x86_64"):
    """Find first gadget with given vulnerability class and architecture."""
    return next(r for r in rows if r["vuln_class"] == cls and r["arch"] == arch)


def controls_pass(pos, neg):
    """
    Validate positive and negative controls.

    Args:
        pos: LeakRecord for positive control (should leak)
        neg: LeakRecord for negative control (should not leak)

    Returns:
        (bool, list[str]): (pass/fail, list of failure messages)
    """
    msgs = []

    if not pos.leak:
        msgs.append(
            f"FAIL positive control ({pos.program}) did not leak: "
            f"snr_o3={pos.snr_o3:.2f} snr_inorder={pos.snr_inorder:.2f}"
        )

    if neg.leak:
        msgs.append(
            f"FAIL negative control ({neg.program}) leaked: "
            f"leak_signal={neg.leak_signal:.2f}"
        )

    return (len(msgs) == 0), msgs


def report(records):
    """
    Generate per-class adjudicability report.

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
    adj = [r for r in records if r.adjudicable == "yes"]
    agg = {"n": len(adj), "n_leak": sum(int(r.leak) for r in adj)}
    agg["leak_rate"] = (agg["n_leak"] / agg["n"]) if agg["n"] else 0.0
    coverage_gaps = sorted({r.vuln_class for r in records if r.adjudicable == "no"})
    return {
        "per_class": per_class,
        "aggregate_adjudicable": agg,
        "coverage_gaps": coverage_gaps,
    }


def batch(arch):
    """
    Run every gadget of the given architecture through gem5.

    Args:
        arch: architecture string (e.g., "x86_64")

    Returns:
        list[LeakRecord]
    """
    rows = [r for r in _rows() if r["arch"] == arch]
    out = []
    for row in rows:
        try:
            out.append(run_gadget(row, REPO, GEM5_VERSION))
        except Exception as e:
            print(f"WARN {row['gadget_id']}: {e}")
    return out


def main():
    """Run controls in gem5 and print results."""
    rows = _rows()
    pos = run_gadget(_first(rows, "SPECTRE_V1"), REPO, GEM5_VERSION)
    neg = run_gadget(_first(rows, "BENIGN"), REPO, GEM5_VERSION)
    ok, msgs = controls_pass(pos, neg)

    print(f"positive: {pos.program} leak={pos.leak} signal={pos.leak_signal:.2f}")
    print(f"negative: {neg.program} leak={neg.leak} signal={neg.leak_signal:.2f}")
    for m in msgs:
        print(m)
    print("CONTROLS:", "PASS" if ok else "FAIL")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "batch":
        recs = batch("x86_64")
        write_manifest(recs, f"{REPO}/oracle/results/synth_leak_labels.jsonl")
        print(json.dumps(report(recs), indent=2))
    else:
        main()
