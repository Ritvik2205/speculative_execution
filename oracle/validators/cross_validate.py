"""Run multiple validators over the same gadgets and cross-check agreement.

The payoff of the framework: a gadget that an independent symbolic proof
(Spectector) AND a real speculative-execution run (InvisiSpec) both call a
leak is double-confirmed. Disagreements are surfaced, not hidden.
"""
from __future__ import annotations
from oracle.validators.base import LEAK, SAFE


def cross_validate(gadgets, validators):
    """Run each validator on each gadget. Returns {results, agreement}.

    results: list of per-(gadget,validator) ValidationResult dicts.
    agreement: per-gadget cross-check with the per-validator verdicts and a
    `both_confirm_leak` flag when >=2 validators independently return LEAK.
    """
    results = []
    per_gadget = {}
    for g in gadgets:
        gid = g["gadget_id"]
        per_gadget.setdefault(gid, {"gadget_id": gid, "vuln_class": g.get("vuln_class"),
                                    "verdicts": {}})
        for v in validators:
            res = v.validate(g)
            results.append(res.to_dict())
            per_gadget[gid]["verdicts"][v.name] = res.verdict

    agreement = []
    for gid, row in per_gadget.items():
        verdicts = row["verdicts"]
        n_leak = sum(1 for x in verdicts.values() if x == LEAK)
        leak_vals = set(verdicts.values())
        agreement.append({
            "gadget_id": gid,
            "vuln_class": row["vuln_class"],
            "verdicts": verdicts,
            "both_confirm_leak": n_leak >= 2,
            "any_leak": n_leak >= 1,
            # conflict = one says leak, another says safe (both adjudicated)
            "conflict": LEAK in leak_vals and SAFE in leak_vals,
        })
    return {"results": results, "agreement": agreement}


def summarize(cross):
    """Compact rollup for a report."""
    agg = cross["agreement"]
    return {
        "n_gadgets": len(agg),
        "double_confirmed_leaks": sorted(a["gadget_id"] for a in agg if a["both_confirm_leak"]),
        "any_leak": sorted(a["gadget_id"] for a in agg if a["any_leak"]),
        "conflicts": sorted(a["gadget_id"] for a in agg if a["conflict"]),
    }
