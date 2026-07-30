"""Cross-validate the attacks we have with BOTH oracles and report agreement.

Builds gadget descriptors that carry a `spectector_source` (minimal analyzable
victim, x86) and/or an `execution_source` (runnable Flush+Reload PoC), then runs
the SpectectorValidator (symbolic) and InvisiSpecValidator (real execution) over
them and cross-checks.

Two attack sets (the user's "both"):
  - synthesized  : gen/synth/spec_out victims (Spectector) + gen/synth/out PoCs (InvisiSpec)
  - canonical    : c_vulns/c_code/*.c reference PoCs (InvisiSpec)

Run: PYTHONPATH=<repo> python oracle/run_cross_validation.py [--demo]
The InvisiSpec execution runs are ~10 min each (gem5 O3), so the full set is a
long background job; --demo runs a tiny representative subset.
"""
from __future__ import annotations
import os
import sys
import json
from oracle.validators import (
    SpectectorValidator, InvisiSpecValidator, cross_validate, summarize,
)

REPO = os.environ.get("SPECEXEC_REPO") or os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def synthesized_gadgets():
    """Synthesized gadgets: Spectector victim (spec_out) + runnable PoC.

    Prefer the TUNED runnable (gen/synth/tuned_out, actually leaks in execution)
    when one exists for the class; fall back to the original under-tuned PoC
    (gen/synth/out) otherwise.
    """
    out = []
    idx = os.path.join(REPO, "gen", "synth", "spec_out", "spec_gadgets.jsonl")
    if not os.path.exists(idx):
        return out
    for line in open(idx):
        r = json.loads(line)
        if r.get("variant") != "baseline":
            continue
        cls = r["vuln_class"]
        tuned = os.path.join(REPO, "gen", "synth", "tuned_out", f"tuned_{cls}.c")
        untuned = os.path.join(REPO, "gen", "synth", "out", f"{cls}_x86_64_0.c")
        exec_src = tuned if os.path.exists(tuned) else (untuned if os.path.exists(untuned) else None)
        out.append({
            "gadget_id": f"synth_{cls}",
            "vuln_class": cls,
            "adjudicable": r.get("adjudicable", "no"),
            "spectector_source": r["path"],
            "execution_source": exec_src,
        })
    return out


_CANONICAL = {
    "spectre_1": "SPECTRE_V1", "spectre_2": "SPECTRE_V2", "mds": "MDS",
    "l1tf": "L1TF", "bhi": "BHI", "retbleed": "RETBLEED", "inception": "INCEPTION",
}


def canonical_gadgets():
    """Canonical c_vulns runnable PoCs (execution only; no minimal victim)."""
    out = []
    for stem, cls in _CANONICAL.items():
        src = os.path.join(REPO, "c_vulns", "c_code", f"{stem}.c")
        if os.path.exists(src):
            out.append({
                "gadget_id": f"canon_{stem}",
                "vuln_class": cls,
                "adjudicable": "yes" if cls == "SPECTRE_V1" else "no",
                "spectector_source": None,
                "execution_source": src,
            })
    return out


def reference_positive():
    """InvisiSpec's own tuned spectre_full — the execution positive control."""
    src = os.path.join(REPO, "oracle", "validators", "reference", "spectre_full.c")
    return [{"gadget_id": "ref_spectre_full", "vuln_class": "SPECTRE_V1",
             "adjudicable": "yes", "spectector_source": None,
             "execution_source": src}] if os.path.exists(src) else []


def main():
    demo = "--demo" in sys.argv
    # ensure tuned execution-leaking gadgets exist (V1 etc.)
    from gen.synth.tuned_gadgets import generate_tuned
    generate_tuned(os.path.join(REPO, "gen", "synth", "tuned_out"))
    gadgets = synthesized_gadgets() + canonical_gadgets() + reference_positive()
    if demo:
        # tiny representative subset: one synth V1 (both oracles) + the positive control
        keep = {"synth_SPECTRE_V1", "canon_spectre_1", "ref_spectre_full"}
        gadgets = [g for g in gadgets if g["gadget_id"] in keep]
    validators = [SpectectorValidator(REPO), InvisiSpecValidator(REPO)]
    cross = cross_validate(gadgets, validators)
    out_path = os.path.join(REPO, "oracle", "results", "cross_validation.json")
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "w") as f:
        json.dump(cross, f, indent=2)
    print(json.dumps(summarize(cross), indent=2))
    print("\nper-gadget verdicts:")
    for a in cross["agreement"]:
        print(f"  {a['gadget_id']:24s} {a['vuln_class']:12s} {a['verdicts']}")


if __name__ == "__main__":
    main()
