#!/usr/bin/env python3
"""branch_resolution_report.py — how many direct branches in a dataset have a
target the graph builder can resolve (docs/NEXT_STEPS_2026-11-10.md §0.3/§5).

A direct branch is an instruction the record's ISA spec classifies as
BRANCH_COND or BRANCH_UNCOND. It is *resolvable* when
`SpecBackedPDGBuilder._resolve_branch_target` finds its operand among the
label lines of the same sequence — the exact lookup the opt-in
`cfg_spec_edges` / `cfg_control_edges` graph edges use. A target label placed
after the last instruction resolves to the sequence exit (counted, and
reported separately as `to_exit`).

A direct jump whose operand is a *function symbol* (`jmp _victim_ret`, a tail
call) has no target inside the sequence by construction. Those are counted as
`external` and the `local rate` column excludes them; `rate` does not.

  python3 eval/branch_resolution_report.py v54/data/v54_train.jsonl eval/data/*_labels.jsonl
  python3 eval/branch_resolution_report.py --min-rate 0.95 eval/data/revizor_hwlabel_variants_labels.jsonl
"""
from __future__ import annotations

import argparse
import collections
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder, _is_instruction_line  # noqa: E402

_SPECS = {"x86_64": "x86_64.json", "arm64": "arm64.json", "arm32": "arm64.json",
          "riscv64": "riscv.json", "unknown": "base.json"}
_ENGINES: dict = {}
# assembler-local label operands: ELF `.L4`, Revizor `.bb_0.1`, Mach-O `LBB0_3`
# / `Ltmp1`, numeric `1f`; also objdump's `0x30 <.bb_0.1>` annotation.
_LOCAL_OPERAND = re.compile(r"^(\.|L(BB|tmp)\d|\d+[fb]$|<\.)")


def _engine(arch: str):
    f = _SPECS.get(arch, _SPECS["unknown"])
    if f not in _ENGINES:
        _ENGINES[f] = load_engine(f)
    return _ENGINES[f]


def count_sequence(sequence, arch: str = "x86_64") -> dict:
    """-> {'direct': n, 'resolved': n, 'to_exit': n, 'labels': n} for one sequence."""
    eng = _engine(arch)
    direct_cats = {eng.opcode_categories["BRANCH_COND"], eng.opcode_categories["BRANCH_UNCOND"]}
    targets = SpecBackedPDGBuilder._build_label_targets(sequence)
    n = sum(1 for l in sequence if _is_instruction_line(l))
    out = {"direct": 0, "resolved": 0, "to_exit": 0, "external": 0, "labels": len(targets)}
    for line in sequence:
        if not _is_instruction_line(line):
            continue
        if eng.classify_opcode(line.strip()) not in direct_cats:
            continue
        out["direct"] += 1
        tgt = SpecBackedPDGBuilder._resolve_branch_target(line.strip(), targets)
        if tgt is not None:
            out["resolved"] += 1
            out["to_exit"] += tgt >= n
        elif not _LOCAL_OPERAND.match(line.split()[-1].lstrip("*")):
            out["external"] += 1
    return out


def count_file(path) -> dict:
    """-> {arch: Counter(records, with_branch, direct, resolved, to_exit)}"""
    per = collections.defaultdict(collections.Counter)
    with open(path) as f:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            seq = rec.get("sequence")
            if not seq:
                continue
            arch = rec.get("arch", "unknown")
            c = count_sequence(seq, arch)
            per[arch]["records"] += 1
            per[arch]["with_branch"] += c["direct"] > 0
            for k in ("direct", "resolved", "to_exit", "external"):
                per[arch][k] += c[k]
    return per


def rate(c) -> float:
    return c["resolved"] / c["direct"] if c["direct"] else float("nan")


def local_rate(c) -> float:
    """Resolution rate over branches that target a local label (tail calls to
    another function excluded)."""
    d = c["direct"] - c["external"]
    return c["resolved"] / d if d else float("nan")


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("paths", nargs="+")
    ap.add_argument("--arch", default=None, help="only this arch (e.g. x86_64)")
    ap.add_argument("--min-rate", type=float, default=None,
                    help="exit 1 if any listed dataset/arch with direct branches resolves below this")
    ap.add_argument("--local", action="store_true",
                    help="apply --min-rate to the local rate (tail calls to other functions excluded)")
    a = ap.parse_args(argv)
    print("| dataset | arch | records | with direct branch | direct branches | resolvable "
          "| of which to exit | external (tail call) | rate | local rate |")
    print("|---|---|---|---|---|---|---|---|---|---|")
    fmt = lambda x: "n/a" if x != x else f"{x:.3f}"
    bad = []
    for p in a.paths:
        for arch, c in sorted(count_file(p).items()):
            if a.arch and arch != a.arch:
                continue
            r = local_rate(c) if a.local else rate(c)
            print(f"| {Path(p).name} | {arch} | {c['records']} | {c['with_branch']} | {c['direct']} "
                  f"| {c['resolved']} | {c['to_exit']} | {c['external']} | {fmt(rate(c))} | {fmt(local_rate(c))} |")
            if a.min_rate is not None and r == r and r < a.min_rate:
                bad.append((p, arch, r))
    for p, arch, r in bad:
        print(f"FAIL {p} [{arch}]: {r:.3f} < {a.min_rate}", file=sys.stderr)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
