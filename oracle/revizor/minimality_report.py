#!/usr/bin/env python3
"""minimality_report.py — tabulate how small a real leaking gadget actually is,
from the `rvzr minimize` output that hw_label_variants.py's `minimize` step
leaves under <results>/<class>/<dir>/_min/status.json.

The project's stated goal includes discovering the SMALLEST leaking sequences.
The hardware side of that is Revizor's instruction-removal pass, which deletes
instructions one at a time and keeps a deletion only if the violation still
reproduces on hardware. Each violation's status.json therefore records, among
other things:
    n_body       non-instrumentation instructions in the measured region
    n_essential  how many of those the removal pass could NOT delete
plus whether the instruction pass and the fence pass ran (`min.ok`,
`fenced.ok`). This script turns a directory of those into a per-class table:
the median essential count, and the reduction (body -> essential), which is the
concrete "how minimal" number.

It reports ONLY dirs whose minimize actually ran (`min.ok`), and says how many
were skipped, so a half-finished i5 run is visible rather than averaged over
silently.

Run:
    python3 oracle/revizor/minimality_report.py --results <dir>   -> <dir>/minimality.md
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import statistics
import sys
from pathlib import Path


def load_statuses(results_dir: Path) -> list[dict]:
    out = []
    for p in sorted(glob.glob(str(results_dir / "*" / "*" / "_min" / "status.json"))):
        try:
            out.append(json.loads(Path(p).read_text()))
        except (OSError, ValueError) as e:  # noqa: BLE001
            print(f"  skip {p}: {e}", file=sys.stderr)
    return out


def _med(xs):
    xs = [x for x in xs if x is not None]
    return statistics.median(xs) if xs else None


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--results", required=True, type=Path,
                    help="hw_label_variants results dir (holding <class>/<dir>/_min/)")
    ap.add_argument("--out", type=Path, default=None)
    a = ap.parse_args(argv)
    out = a.out or (a.results / "minimality.md")

    rows = load_statuses(a.results)
    if not rows:
        print(f"no _min/status.json under {a.results} (run the minimize step on the i5 first)",
              file=sys.stderr)
        return 1

    by = collections.defaultdict(list)
    for r in rows:
        by[r.get("cls", "?")].append(r)

    L = ["# Minimality of real leaking gadgets (Revizor instruction-removal pass)", "",
         f"Source: `{a.results}` ({len(rows)} violation dirs with a minimize status). "
         "`body` = non-instrumentation instructions in the measured region; "
         "`essential` = those the removal pass could not delete while the "
         "violation still reproduced on hardware. `reduction` = "
         "1 - essential/body.", "",
         "| class | dirs (min ran) | fence pass ran | median body | median essential | median reduction |",
         "|---|---|---|---|---|---|"]
    tot_ran = tot = 0
    for cls in sorted(by):
        rs = by[cls]
        ran = [r for r in rs if r.get("min", {}).get("ok")]
        fenced = sum(1 for r in rs if r.get("fenced", {}).get("ok"))
        tot += len(rs); tot_ran += len(ran)
        mb = _med([r.get("n_body") for r in ran])
        me = _med([r.get("n_essential") for r in ran])
        red = _med([1 - r["n_essential"] / r["n_body"]
                    for r in ran
                    if r.get("n_body") and r.get("n_essential") is not None])
        L.append(f"| {cls} | {len(ran)}/{len(rs)} | {fenced}/{len(rs)} | "
                 f"{mb if mb is not None else 'n/a'} | "
                 f"{me if me is not None else 'n/a'} | "
                 f"{f'{red:.0%}' if red is not None else 'n/a'} |")
    L += ["", f"Total: {tot_ran}/{tot} violation dirs had the instruction pass complete. "
          "Dirs where it did not run are shown in the fraction, not averaged away.", ""]

    # smallest confirmed gadgets per class -- the headline "smallest leaking
    # sequence" number
    L += ["## Smallest essential count per class", "",
          "| class | min essential | at body | group |", "|---|---|---|---|"]
    for cls in sorted(by):
        ran = [r for r in by[cls] if r.get("min", {}).get("ok")
               and r.get("n_essential") is not None]
        if not ran:
            L.append(f"| {cls} | n/a | | |"); continue
        best = min(ran, key=lambda r: r["n_essential"])
        L.append(f"| {cls} | {best['n_essential']} | {best.get('n_body','?')} | "
                 f"{best.get('group','?')} |")

    out.write_text("\n".join(L) + "\n")
    print("\n".join(L))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
