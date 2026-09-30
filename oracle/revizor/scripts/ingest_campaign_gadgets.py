#!/usr/bin/env python3
"""oracle/revizor/scripts/ingest_campaign_gadgets.py — append a campaign's
NEW gadgets into eval/data/revizor_<class>_real.jsonl.

`run_multiclass_campaign.sh` ends by *reporting* how many new gadgets a run
produced (`count_new_gadgets.py`) but never writes them anywhere, and the
obvious way to ingest them is a trap: `convert_revizor_gadgets.py`'s
`write_jsonl` opens the output with mode "w", so running it against a single
campaign root REPLACES the banked corpus with just that run's records
instead of growing it. (The campaign root is also outside the repo --
/home/ritvik/rvzr_runs -- while that converter's default root is the
repo-local rvzr_runs/, so the two sets never meet by default.)

This module does the append the campaign summary implies: it reuses
`convert_revizor_gadgets.convert_for_classes` for conversion and
`count_new_gadgets.sequence_hash` for the dedup key -- the SAME key the
end-of-campaign "NEW" column is computed with, so what gets written is
exactly what the summary promised -- then appends only the records whose
converted sequence is absent from the existing file. Existing lines are
never rewritten or reordered, so the commit diff is pure addition.
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, List, Optional

SCRIPTS_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPTS_DIR.parents[2]
sys.path.insert(0, str(SCRIPTS_DIR))
sys.path.insert(0, str(SCRIPTS_DIR.parent))  # oracle/revizor/

import count_new_gadgets as cng  # noqa: E402
import convert_revizor_gadgets as crg  # noqa: E402


def ingest(
    classes: List[str],
    run_root: str,
    data_dir: Optional[Path] = None,
    repo_root: Path = REPO_ROOT,
    dry_run: bool = False,
) -> Dict[str, dict]:
    """Convert every program.asm under `run_root` and append the records
    that aren't content-duplicates of what's already banked. Returns, per
    class, {"existing", "converted", "appended", "duplicate", "total",
    "path"}."""
    data_dir = Path(data_dir) if data_dir else (Path(repo_root) / "eval" / "data")
    records, _stats = crg.convert_for_classes(classes, [str(run_root)], repo_root)

    report: Dict[str, dict] = {}
    for cls in classes:
        path = data_dir / f"revizor_{cls.lower()}_real.jsonl"
        existing = cng.existing_hashes(cls, data_dir)
        n_existing = len(existing)

        new_recs = []
        dup = 0
        for r in records.get(cls, []):
            h = cng.sequence_hash(r["sequence"])
            if h in existing:
                dup += 1
                continue
            existing.add(h)
            new_recs.append(r)

        if new_recs and not dry_run:
            path.parent.mkdir(parents=True, exist_ok=True)
            # A corpus file that doesn't end in a newline would otherwise
            # get its last record glued to our first one.
            if path.exists() and path.stat().st_size:
                with open(path, "rb") as f:
                    f.seek(-1, 2)
                    needs_nl = f.read(1) != b"\n"
            else:
                needs_nl = False
            with open(path, "a") as f:
                if needs_nl:
                    f.write("\n")
                for r in new_recs:
                    f.write(json.dumps(r) + "\n")

        report[cls] = {
            "existing": n_existing,
            "converted": len(records.get(cls, [])),
            "appended": len(new_recs),
            "duplicate": dup,
            "total": n_existing + len(new_recs),
            "path": str(path),
        }
    return report


def format_report(report: Dict[str, dict], dry_run: bool = False) -> str:
    verb = "would append" if dry_run else "appended"
    lines = [
        f"{'CLASS':<14} {'existing':>9} {'converted':>10} {verb:>14} {'dup':>5} {'total':>7}"
    ]
    for cls, s in report.items():
        lines.append(
            f"{cls:<14} {s['existing']:>9} {s['converted']:>10} {s['appended']:>14} "
            f"{s['duplicate']:>5} {s['total']:>7}"
        )
    lines.append("")
    lines.append(f"TOTAL {verb}: {sum(s['appended'] for s in report.values())}")
    return "\n".join(lines)


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--classes", nargs="+", required=True)
    ap.add_argument("--run-root", required=True,
                    help="campaign run directory to ingest (e.g. "
                         "/home/ritvik/rvzr_runs/mc_260925_100840)")
    ap.add_argument("--data-dir", default=None,
                    help="corpus dir (default: eval/data under the repo root)")
    ap.add_argument("--dry-run", action="store_true",
                    help="report what would be appended, write nothing")
    args = ap.parse_args(argv)

    classes = [c.upper() for c in args.classes]
    report = ingest(classes, args.run_root, args.data_dir, dry_run=args.dry_run)
    print(format_report(report, args.dry_run))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
