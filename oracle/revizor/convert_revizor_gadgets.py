#!/usr/bin/env python3
"""oracle/revizor/convert_revizor_gadgets.py — generalize `convert_v4_gadgets`'s
Revizor Intel program.asm -> pipeline AT&T `sequence` conversion to MDS,
L1TF, and SPECTRE_V1 (docs/NEXT_STEPS_2026-09-11.md, Step 2b), on top of the
already-supported SPECTRE_V4.

Background: `oracle/revizor/convert_v4_gadgets.py` converts real,
hardware-confirmed Revizor SPECTRE_V4/SSB `program.asm` files into the
pipeline's AT&T `sequence` format. The same Revizor campaign machinery
(`rvzr_runs/{baseline,smt_off}/{MDS,L1TF,SPECTRE_V1}/violation-*/program.asm`)
also produced real hardware violations for MDS, L1TF, and SPECTRE_V1 --
same file format (`.intel_syntax noprefix`, `.bb_*` basic blocks, `#
instrumentation` comments, r14 sandbox base register), just multi-basic-
-block (unlike V4's single straight-line block) with internal jumps between
`.bb_N.M:` labels. `convert_v4_gadgets.convert_program_asm`'s assemble
(clang, Intel syntax) + disassemble (objdump, AT&T) round trip handles this
transparently -- direct jumps to internal labels come back as e.g.
`js 0x47 <.bb_0.1>`, which is real control flow and is kept, not dropped.

This module does NOT reimplement conversion; it reuses
`convert_v4_gadgets.convert_program_asm` (and its store/load classifier and
dedup helper) verbatim, and adds:
  - `infer_class_from_path`: recover the vulnerability class from a
    program.asm's path (its directory names), so one generalized crawl can
    fan out into per-class output files instead of one script per class.
  - `find_program_asm_files`: glob one or more root directories (or glob
    patterns) for `program.asm` files, recursively.
  - `convert_for_classes`: convert + dedup (by converted-sequence content,
    same as `convert_v4_gadgets.dedup_sequences`) per class, returning
    per-class record lists and (matched, converted, deduped) counts.

Output: one `eval/data/revizor_<class>_real.jsonl` per requested class
(class name lowercased: `mds`, `l1tf`, `spectre_v1`, `spectre_v4`), each
record `{label, arch, sequence, group, source, campaign, src_path}` --
`group` is `revizor_<class>_<violation-dir-name>` (there is no Revizor
*generator seed* metadata for this campaign the way there was for the V4/SSB
campaign, so the individual violation directory name -- itself a unique
timestamp -- is the natural split-unit token; see
`oracle/revizor/build_hw_transfer.py`, which splits by this `group` field
directly).
"""
from __future__ import annotations

import argparse
import glob
import json
import sys
from pathlib import Path
from typing import Dict, List, Optional, Tuple

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(Path(__file__).resolve().parent))

import convert_v4_gadgets as cvg  # noqa: E402

DEFAULT_CLASSES = ["MDS", "L1TF", "SPECTRE_V1", "SPECTRE_V4"]
DEFAULT_ROOTS = ["rvzr_runs"]

# Directory-name markers (case-insensitive, whole path-component match)
# that identify a program.asm's vulnerability class. SPECTRE_V4's real
# campaign directories don't say "spectre_v4" -- they're named `v4_<seed>`
# or `v4_smtoff_<seed>` (this repo's newer rvzr_runs/ campaign) or
# `v4_ssb_<date>` (the older oracle/revizor/results/ campaign already
# handled by convert_v4_gadgets.py) -- so SPECTRE_V4 is recognized by a
# `v4` / `v4_*` component instead of an exact "spectre_v4" match.
_EXACT_MARKERS = {
    "mds": "MDS",
    "l1tf": "L1TF",
    "spectre_v1": "SPECTRE_V1",
    "spectre_v4": "SPECTRE_V4",
}


def infer_class_from_path(path) -> Optional[str]:
    """Infer the vulnerability class from a program.asm path's directory
    components. Returns one of DEFAULT_CLASSES, or None if no component
    matches any known marker."""
    for part in Path(path).parts:
        lower = part.lower()
        if lower in _EXACT_MARKERS:
            return _EXACT_MARKERS[lower]
        if lower == "v4" or lower.startswith("v4_"):
            return "SPECTRE_V4"
    return None


def find_program_asm_files(roots: List[str], repo_root: Path = REPO_ROOT) -> List[Path]:
    """Glob every `program.asm` under each root. A root containing "*" is
    treated as a glob pattern (resolved recursively against repo_root);
    otherwise it's a directory searched recursively for `program.asm`.
    Relative roots are resolved against repo_root; absolute roots are used
    as-is. Returns a sorted, deduplicated (by resolved path) list."""
    found: List[Path] = []
    for root in roots:
        root = root.strip()
        if not root:
            continue
        if "*" in root:
            pattern = root if Path(root).is_absolute() else str(repo_root / root)
            found.extend(Path(p) for p in glob.glob(pattern, recursive=True))
        else:
            base = Path(root) if Path(root).is_absolute() else repo_root / root
            if base.is_dir():
                found.extend(base.rglob("program.asm"))

    seen = set()
    out: List[Path] = []
    for p in sorted(found):
        rp = p.resolve()
        if rp in seen:
            continue
        seen.add(rp)
        out.append(p)
    return out


def convert_for_classes(
    classes: List[str],
    roots: List[str],
    repo_root: Path = REPO_ROOT,
) -> Tuple[Dict[str, List[dict]], Dict[str, Dict[str, int]]]:
    """Convert every program.asm under `roots` whose inferred class is in
    `classes`. Returns (records_by_class, stats_by_class) where stats has
    {"matched", "converted", "deduped"} per class -- "matched" is how many
    program.asm files were found for that class, "converted" is how many
    of those the assemble+objdump (or fallback) path converted to a
    non-empty AT&T sequence, "deduped" is the final unique-record count.
    """
    wanted = set(classes)
    paths = find_program_asm_files(roots, repo_root)

    records: Dict[str, List[dict]] = {c: [] for c in classes}
    stats: Dict[str, Dict[str, int]] = {
        c: {"matched": 0, "converted": 0, "deduped": 0} for c in classes
    }
    seen_keys: Dict[str, set] = {c: set() for c in classes}

    for p in paths:
        cls = infer_class_from_path(p)
        if cls is None or cls not in wanted:
            continue
        stats[cls]["matched"] += 1
        try:
            seq = cvg.convert_program_asm(str(p))
        except Exception as exc:  # noqa: BLE001 - report and skip, don't fabricate
            print(f"  SKIP {p}: {exc}", file=sys.stderr)
            continue
        if not seq:
            print(f"  SKIP {p}: empty converted sequence", file=sys.stderr)
            continue
        stats[cls]["converted"] += 1

        key = tuple(seq)
        if key in seen_keys[cls]:
            continue
        seen_keys[cls].add(key)

        dir_name = p.parent.name
        campaign = p.parent.parent.name if p.parent.parent != p.parent else ""
        group = f"revizor_{cls.lower()}_{dir_name}"
        try:
            src_path = str(p.resolve().relative_to(repo_root))
        except ValueError:
            src_path = str(p)
        records[cls].append({
            "label": cls,
            "arch": "x86_64",
            "sequence": seq,
            "group": group,
            "source": "revizor_hw_i5_8300h",
            "campaign": campaign,
            "src_path": src_path,
        })
        stats[cls]["deduped"] += 1

    return records, stats


def write_jsonl(path: Path, records: List[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def default_out_path(cls: str, repo_root: Path = REPO_ROOT) -> Path:
    return repo_root / "eval" / "data" / f"revizor_{cls.lower()}_real.jsonl"


def main(argv: Optional[List[str]] = None) -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES,
                     help=f"vulnerability classes to convert (default: {DEFAULT_CLASSES})")
    ap.add_argument("--roots", nargs="+", default=DEFAULT_ROOTS,
                     help=f"root directories or glob patterns to search for "
                          f"program.asm files (default: {DEFAULT_ROOTS})")
    ap.add_argument("--out-dir", default=None,
                     help="output directory for revizor_<class>_real.jsonl files "
                          "(default: eval/data under the repo root)")
    args = ap.parse_args(argv)

    classes = [c.upper() for c in args.classes]
    records, stats = convert_for_classes(classes, args.roots)

    out_dir = Path(args.out_dir) if args.out_dir else (REPO_ROOT / "eval" / "data")
    print(f"Toolchain: {'assemble+objdump' if cvg.toolchain_available() else 'fallback translator'}")
    for cls in classes:
        recs = records[cls]
        s = stats[cls]
        out_path = out_dir / f"revizor_{cls.lower()}_real.jsonl"
        write_jsonl(out_path, recs)
        print(f"{cls}: matched={s['matched']} converted={s['converted']} "
              f"deduped={s['deduped']} -> {out_path}")


if __name__ == "__main__":
    main(sys.argv[1:])
