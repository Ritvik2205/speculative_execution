"""Build a labeled (gadget-knobs -> actually-leaks?) dataset by running the grid
gadgets through the InvisiSpec execution oracle, and quantify the signal.

Run: PYTHONPATH=<repo> python oracle/build_leak_dataset.py [--full]
  (default = small proving grid: V1, stride x flush; --full = the whole grid)
Each InvisiSpec run is ~10 min, so --full is a long background job.
"""
from __future__ import annotations
import os
import sys
import json
from gen.synth.tuning_grid import generate_grid, grid_points
from oracle.validators.invisispec_validator import InvisiSpecValidator

REPO = os.environ.get("SPECEXEC_REPO") or os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(REPO, "oracle", "results", "leak_dataset.jsonl")


def build(points, out_path=OUT):
    grid_dir = os.path.join(REPO, "gen", "synth", "grid_out")
    rows = generate_grid(grid_dir, points)
    v = InvisiSpecValidator(REPO, timeout=1800)
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    records = []
    with open(out_path, "w") as f:
        for r in rows:
            g = {"gadget_id": r["gadget_id"], "vuln_class": r["vuln_class"],
                 "execution_source": r["path"]}
            res = v.validate(g)
            rec = {"gadget_id": r["gadget_id"], "vuln_class": r["vuln_class"],
                   "stride": r["stride"], "flush_bound": r["flush_bound"],
                   "mistrain": r["mistrain"], "secret": r["secret"],
                   "verdict": res.verdict, "leak": res.verdict == "leak",
                   "signal": res.signal}
            records.append(rec)
            f.write(json.dumps(rec, sort_keys=True) + "\n")
            f.flush()
            print(f"{r['gadget_id']}: {res.verdict}")
    return records


def signal_report(records):
    """Leak-rate per knob value — is leak status learnable from the knobs?"""
    rep = {}
    for knob in ("stride", "flush_bound", "mistrain", "vuln_class"):
        by_val = {}
        for rec in records:
            v = rec[knob]
            d = by_val.setdefault(str(v), {"n": 0, "leak": 0})
            d["n"] += 1
            d["leak"] += int(rec["leak"])
        for v, d in by_val.items():
            d["leak_rate"] = d["leak"] / d["n"] if d["n"] else 0.0
        rep[knob] = by_val
    rep["n_total"] = len(records)
    rep["n_leak"] = sum(int(r["leak"]) for r in records)
    return rep


def main():
    full = "--full" in sys.argv
    if full:
        pts = grid_points()
    else:
        # small proving grid: V1, stride x flush (the two decisive knobs), fixed mistrain
        pts = grid_points(classes=("SPECTRE_V1",), strides=(64, 512),
                          flushes=(True, False), mistrains=(30,))
    records = build(pts)
    print(json.dumps(signal_report(records), indent=2))


if __name__ == "__main__":
    main()
