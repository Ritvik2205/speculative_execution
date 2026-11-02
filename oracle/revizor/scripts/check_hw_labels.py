#!/usr/bin/env python3
"""check_hw_labels.py — validate emitted hardware fence-variant labels
(plan docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md, Task 4 step 4).

Checks: every record has hw_runs and hw_hits in {0, hw_runs}; the label agrees
with the hits (BENIGN iff 0); prints counts per class x variant and the share of
cf_* variants that stay vulnerable. If every cf_* variant mitigates, or every one
leaks, H1 cannot be tested — flagged before any training.

    python3 oracle/revizor/scripts/check_hw_labels.py eval/data/revizor_hwlabel_cf_heldout.jsonl
Exit 1 on a bad record, 2 if the cf set is one-sided.
"""
from __future__ import annotations

import json
import sys
from collections import Counter


def check(recs: list[dict]) -> dict:
    bad_hits = sum(1 for r in recs if not r.get("hw_runs") or r.get("hw_hits") not in (0, r.get("hw_runs")))
    mismatch = sum(1 for r in recs if r.get("hw_hits") in (0, r.get("hw_runs"))
                   and (r["label"] == "BENIGN") != (r.get("hw_hits") == 0))
    cf = [r for r in recs if str(r.get("variant", "")).startswith("cf_")]
    share = sum(r["label"] != "BENIGN" for r in cf) / len(cf) if cf else None
    return dict(ok=bad_hits == 0 and mismatch == 0, n=len(recs), bad_hits=bad_hits,
                label_mismatch=mismatch, n_cf=len(cf), cf_vulnerable_share=share,
                h1_testable=None if not cf else 0.0 < share < 1.0,
                table=Counter((r.get("vuln_class"), r.get("variant"), r["label"] != "BENIGN") for r in recs))


def main(argv=None) -> int:
    rc = 0
    for path in (argv if argv is not None else sys.argv[1:]):
        recs = [json.loads(l) for l in open(path) if l.strip()]
        rep = check(recs)
        print(f"== {path}: n={rep['n']} bad_hits={rep['bad_hits']} label_mismatch={rep['label_mismatch']} "
              f"cf={rep['n_cf']} cf_vulnerable_share={rep['cf_vulnerable_share']}")
        for (c, v, leak), n in sorted(rep["table"].items(), key=str):
            print(f"   {c:<11} {v:<16} {'vulnerable' if leak else 'mitigated':<10} {n}")
        if not rep["ok"]:
            print("   FAIL: inconsistent hardware labels"); rc = max(rc, 1)
        if rep["h1_testable"] is False:
            print("   STOP: every cf_* variant has the same label — H1 is untestable on this set"); rc = max(rc, 2)
    return rc


if __name__ == "__main__":
    sys.exit(main())
