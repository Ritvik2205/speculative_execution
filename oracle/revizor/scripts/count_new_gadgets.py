#!/usr/bin/env python3
"""oracle/revizor/scripts/count_new_gadgets.py — end-of-campaign "did this
actually grow the corpus?" summary for `run_multiclass_campaign.sh`.

Violation counts alone don't answer the question that matters: Revizor can
find the same store-bypass/timing-channel shape over and over from
different seeds, and a seed that's merely close to an already-used one can
still regenerate a program whose *converted* AT&T instruction sequence is
identical to one already in the corpus. This module reuses
`convert_revizor_gadgets.convert_for_classes` (the same converter an
operator would run by hand to ingest a campaign's results) to convert this
run's `program.asm` files, then compares each converted sequence's content
hash against the sequences already sitting in
`eval/data/revizor_<class>_real.jsonl`. The number that matters is
`new_vs_corpus`: gadgets this run produced that are not content-duplicates
of anything already banked.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path
from typing import Callable, Dict, List, Optional, Tuple

REPO_ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))  # oracle/revizor/


def sequence_hash(seq: List[str]) -> str:
    """Content hash of a converted AT&T instruction sequence -- the same
    "dedup key" convention `convert_revizor_gadgets.py` and
    `convert_v4_gadgets.py` use internally (tuple/join of the instruction
    strings), just hashed so it's cheap to keep in a set alongside the
    on-disk corpus."""
    return hashlib.sha1("|".join(seq).encode()).hexdigest()


def existing_hashes(cls: str, data_dir: Path) -> set:
    """Sequence hashes already present in eval/data/revizor_<class>_real.jsonl.
    A missing file (never-yet-seeded class) yields an empty set, not an
    error."""
    path = Path(data_dir) / f"revizor_{cls.lower()}_real.jsonl"
    hashes: set = set()
    if not path.exists():
        return hashes
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            rec = json.loads(line)
            seq = rec.get("sequence")
            if seq:
                hashes.add(sequence_hash(seq))
    return hashes


ConvertFn = Callable[[List[str], List[str], Path], Tuple[Dict[str, list], Dict[str, dict]]]


def _default_convert_for_classes(classes, roots, repo_root):
    import convert_revizor_gadgets as crg  # noqa: E402 (path set up above)
    return crg.convert_for_classes(classes, roots, repo_root=repo_root)


def summarize(
    classes: List[str],
    run_root,
    data_dir: Optional[Path] = None,
    repo_root: Path = REPO_ROOT,
    convert_fn: ConvertFn = _default_convert_for_classes,
) -> Dict[str, dict]:
    """Convert every program.asm under `run_root` for `classes` and report,
    per class: how many program.asm files matched, how many converted,
    how many are unique within this run, and -- the number that matters --
    how many are NEW relative to the existing eval/data/revizor_<class>_real.jsonl
    corpus vs. how many are content-duplicates of it.

    `convert_fn` defaults to `convert_revizor_gadgets.convert_for_classes`;
    tests inject a stub so this module's own logic (hashing + dedup
    accounting) is testable without a real Revizor campaign or toolchain.
    """
    data_dir = Path(data_dir) if data_dir else (Path(repo_root) / "eval" / "data")
    records, stats = convert_fn(classes, [str(run_root)], repo_root)

    summary: Dict[str, dict] = {}
    for cls in classes:
        existing = existing_hashes(cls, data_dir)
        new = 0
        dup = 0
        for r in records.get(cls, []):
            h = sequence_hash(r["sequence"])
            if h in existing:
                dup += 1
            else:
                new += 1
                existing.add(h)  # a within-run repeat of a new gadget counts once
        s = stats.get(cls, {"matched": 0, "converted": 0, "deduped": 0})
        summary[cls] = {
            "matched": s.get("matched", 0),
            "converted": s.get("converted", 0),
            "unique_this_run": s.get("deduped", 0),
            "new_vs_corpus": new,
            "duplicate_vs_corpus": dup,
        }
    return summary


def format_summary(summary: Dict[str, dict]) -> str:
    lines = [f"{'CLASS':<14} {'matched':>8} {'converted':>10} {'unique':>8} {'NEW':>6} {'dup':>6}"]
    for cls, s in summary.items():
        lines.append(
            f"{cls:<14} {s['matched']:>8} {s['converted']:>10} {s['unique_this_run']:>8} "
            f"{s['new_vs_corpus']:>6} {s['duplicate_vs_corpus']:>6}"
        )
    total_new = sum(s["new_vs_corpus"] for s in summary.values())
    lines.append("")
    lines.append(f"TOTAL NEW gadgets vs existing corpus: {total_new}")
    return "\n".join(lines)


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--classes", nargs="+", required=True)
    ap.add_argument("--run-root", required=True,
                     help="campaign run directory to scan for program.asm")
    ap.add_argument("--data-dir", default=None,
                     help="existing corpus dir (default: eval/data under the repo root)")
    args = ap.parse_args(argv)

    classes = [c.upper() for c in args.classes]
    summary = summarize(classes, args.run_root, args.data_dir)
    print(format_summary(summary))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
