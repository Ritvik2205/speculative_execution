#!/usr/bin/env python3
"""make_trainpool.py — training-pool records for hardware fence-variant labelling.

eval/data/revizor_<class>_real.jsonl holds EVERY real violation, including all
the held-out ones (revizor_<class>_heldout.jsonl) and the dev-806 bases
(revizor_hwlabel_variants.jsonl). Hardware-labelling the training pool from
the _real files would spend i5 time on gadgets allhw3 may not train on
(build_hw_joint.build_hw_labels_only raises on them). This writes
revizor_<class>_trainpool.jsonl = real minus every evaluation base, for
run_hw_label_variants.sh --records. Plan:
docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md Task 4.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
CLASSES = ["spectre_v1", "spectre_v4", "mds", "l1tf"]
_VIOL_RE = re.compile(r"violation-\d{6}-\d{6}")


def _viol(r: dict):
    m = _VIOL_RE.search(str(r.get("src_path") or "") + " " + str(r.get("group") or ""))
    return m.group(0) if m else None


def trainpool(real: list[dict], excluded: list[list[dict]]) -> list[dict]:
    bad = {_viol(r) for recs in excluded for r in recs} - {None}
    return [r for r in real if _viol(r) is not None and _viol(r) not in bad]


def _load(p: Path) -> list[dict]:
    return [json.loads(l) for l in open(p) if l.strip()] if p.exists() else []


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--data-dir", type=Path, default=ROOT / "eval/data")
    ap.add_argument("--classes", nargs="+", default=CLASSES)
    ap.add_argument("--exclude", nargs="*", type=Path,
                    default=[ROOT / "eval/data/revizor_hwlabel_variants.jsonl",
                             ROOT / "eval/data/revizor_hwlabel_cf_heldout.jsonl"],
                    help="extra evaluation sets whose bases must not be labelled for training")
    a = ap.parse_args(argv)
    extra = [_load(p) for p in a.exclude]
    for c in a.classes:
        real = _load(a.data_dir / f"revizor_{c}_real.jsonl")
        held = _load(a.data_dir / f"revizor_{c}_heldout.jsonl")
        pool = trainpool(real, [held] + extra)
        out = a.data_dir / f"revizor_{c}_trainpool.jsonl"
        out.write_text("".join(json.dumps(r) + "\n" for r in pool))
        print(f"{c}: real {len(real)} -> trainpool {len(pool)} -> {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
