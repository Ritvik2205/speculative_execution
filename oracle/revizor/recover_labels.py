#!/usr/bin/env python3
"""recover_labels.py — put branch-target labels back into stored Revizor
sequences (step 5 of docs/NEXT_STEPS_2026-11-10.md).

The stored AT&T `sequence` of every hardware record comes from an
assemble/objdump round trip that drops label lines; a direct branch keeps its
target only as an objdump annotation (`js 0x30 <.bb_0.1>`), i.e. a BYTE
OFFSET into the original encoding. So no branch target resolves in the graph.

The right source is the original `program.asm`
(`convert_v4_gadgets.convert_program_asm(path, keep_labels=True)`, or
`hw_label_variants.py emit --keep-labels` on the machine that holds the
variant programs). When that file is not on this machine the labels are
recovered from the offsets:

  1. assemble the stored instructions to get each one's encoded length;
  2. choose the short/near size of every branch so that all annotated target
     offsets fall on instruction boundaries (the program starts with the
     8-byte `.macro.measurement_start` nop the stored sequence dropped);
  3. VERIFY: re-assemble the sequence with the labels inserted and require
     objdump to print the same offset and label for every branch and the same
     instruction count. Anything that does not verify is refused, never guessed.

Output format (same as the program.asm route): the stored instruction text,
with `name:` marker lines inserted and branch operands rewritten to the bare
label name (`js .bb_0.1`). Label lines are not instructions: PDG builders,
`clean_seq(keep_labels=True)` and the inline features all skip them.

Not recoverable, by construction: the text-level synthetic twins
(`revizor_*_benign.jsonl`, `*_misfenced_heldout.jsonl`,
`*_misfenced_shift_heldout.jsonl`). Their fences were inserted into the stored
text AFTER disassembly, so the offsets describe a different encoding and the
position of a label relative to an inserted fence is undefined. Those need
regenerating at program level (`hw_label_variants.py plan` + `emit
--keep-labels`). `build` does not write an output for a file where fewer than
--min-recovered of the records with a direct branch could be labelled.

CLI:
  python3 oracle/revizor/recover_labels.py build eval/data/revizor_hwlabel_variants.jsonl ...
      -> writes eval/data/<stem>_labels.jsonl next to each input (never the input)
"""
from __future__ import annotations

import argparse
import collections
import itertools
import json
import re
import subprocess
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, List, Optional, Tuple

HERE = Path(__file__).resolve().parent
REPO_ROOT = HERE.parents[1]
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE / "scripts"))

import convert_v4_gadgets as cvg  # noqa: E402

_ANNOT_RE = re.compile(r"^(\S+)\s+0x([0-9a-fA-F]+)\s+<([^>+]+)>$")
_PREFIX_ONLY = {"lock", "rep", "repe", "repz", "repne", "repnz", "data16", "notrack"}
_SHORT_ONLY = re.compile(r"^(loop\w*|j[er]?cxz)$")
_START_NOP = "nopq 0xff(%rax)"          # .macro.measurement_start / _end marker
_START_LEN = 8
_INSTR_LINE_RE = re.compile(r"^\s*([0-9a-fA-F]+):\s+((?:[0-9a-fA-F]{2} ?)+)\s*\t(.*)$")
MAX_BRANCHES = 12
# Records made by inserting fences into the STORED TEXT of a real violation
# (oracle/revizor synth_* scripts). Their branch offsets describe the unfenced
# encoding, and where a text-inserted fence sits relative to a label is
# undefined, so they are never labelled here — even when the offsets happen to
# verify (a fence appended after the last instruction leaves every offset
# intact, yet the exit label would land before it).
SYNTHETIC_TEXT_SOURCES = ("synth_mitigated_twin", "synth_misplaced_fence_control")


@dataclass
class Recovery:
    sequence: List[str]
    status: str        # "recovered" | "no_direct_branch" | "unrecoverable: <why>"


def is_label_line(line: str) -> bool:
    return line.rstrip().endswith(":")


def strip_labels(seq: List[str]) -> List[str]:
    return [l for l in seq if not is_label_line(l)]


def _units(seq: List[str]) -> List[Tuple[int, str]]:
    """Group stored lines into assemblable instructions: a bare prefix line
    (`lock`) belongs to the line after it. -> [(first stored index, text)]."""
    out, i = [], 0
    while i < len(seq):
        j, parts = i, [seq[i].strip()]
        while parts[-1] in _PREFIX_ONLY and j + 1 < len(seq):
            j += 1
            parts.append(seq[j].strip())
        out.append((i, " ".join(parts)))
        i = j + 1
    return out


def _disassemble(att_text: str) -> Optional[List[Tuple[int, int, str]]]:
    """Assemble AT&T text (clang, x86_64 ELF) -> [(address, length, text)] of
    section .data.main, or None if it does not assemble."""
    objdump = cvg.find_llvm_objdump()
    with tempfile.TemporaryDirectory() as td:
        src, obj = Path(td) / "g.s", Path(td) / "g.o"
        src.write_text(att_text)
        a = subprocess.run(["clang", "-target", "x86_64-linux-gnu", "-c", str(src), "-o", str(obj)],
                           capture_output=True, text=True)
        if a.returncode != 0:
            return None
        d = subprocess.run([objdump, "-D", "--x86-asm-syntax=att", str(obj)],
                           capture_output=True, text=True)
        if d.returncode != 0:
            return None
    out = []
    for line in cvg._extract_section(d.stdout):
        m = _INSTR_LINE_RE.match(line)
        if m:
            text = " ".join(m.group(3).split("#", 1)[0].split())
            out.append((int(m.group(1), 16), len(m.group(2).split()), text))
    # objdump prints a prefix either inline (`lock btsw ...`) or as its own
    # line with its own address; fold the latter into the instruction it prefixes.
    merged: List[Tuple[int, int, str]] = []
    pending = None
    for addr, ln, text in out:
        if pending is not None:
            addr, ln, text = pending[0], pending[1] + ln, pending[2] + " " + text
            pending = None
        if text.split()[-1] in _PREFIX_ONLY:
            pending = (addr, ln, text)
            continue
        merged.append((addr, ln, text))
    if pending is not None:
        merged.append(pending)
    return merged


def _program(body: List[str]) -> str:
    return "\n".join([".section .data.main", ".macro.measurement_start:", _START_NOP,
                      *body, ".Lrecover_end_marker:", _START_NOP, "nop", ""])


def recover_labels(sequence: List[str]) -> Recovery:
    def fail(why):
        return Recovery(list(sequence), f"unrecoverable: {why}")

    if any(is_label_line(l) for l in sequence):
        return fail("sequence already has label lines")
    units = _units(sequence)
    branches: Dict[int, Tuple[str, int, str]] = {}      # unit idx -> (mnemonic, target addr, label)
    for u, (_, text) in enumerate(units):
        m = _ANNOT_RE.match(text)
        if m:
            branches[u] = (m.group(1), int(m.group(2), 16), m.group(3))
    if not branches:
        return Recovery(list(sequence), "no_direct_branch")
    if len(branches) > MAX_BRANCHES:
        return fail(f"{len(branches)} branches")
    if not cvg.toolchain_available():
        return fail("no clang/llvm-objdump")

    # 1. lengths, with every branch as a 2-byte short jump to the next instruction
    body = []
    for u, (_, text) in enumerate(units):
        body += [f"{branches[u][0]} 9f", "9:"] if u in branches else [text]
    dis = _disassemble(_program(body))
    if dis is None:
        return fail("stored instructions do not assemble")
    dis = dis[1:-2]                                       # start nop ... end nop, nop
    if len(dis) != len(units):
        return fail(f"assembled to {len(dis)} instructions, expected {len(units)}")
    lengths = [ln for _, ln, _ in dis]

    # 2. branch sizes such that every target is an instruction boundary
    order = sorted(branches)
    choices = []
    for u in order:
        mn = branches[u][0]
        near = 5 if mn == "jmp" else 6
        choices.append((2,) if _SHORT_ONLY.match(mn) else (2, near))
    placement = None
    for sizes in itertools.product(*choices):
        ln = list(lengths)
        for u, sz in zip(order, sizes):
            ln[u] = sz
        addr, a = [], _START_LEN
        for x in ln:
            addr.append(a)
            a += x
        addr.append(a)                                    # end of body
        index = {x: i for i, x in enumerate(addr)}
        if not all(branches[u][1] in index for u in order):
            continue
        ok = True
        for u, sz in zip(order, sizes):                   # the assembler picks short when it fits
            fits = -128 <= branches[u][1] - (addr[u] + 2) <= 127
            if (sz == 2) != fits:
                ok = False
        if ok:
            placement = {u: index[branches[u][1]] for u in order}
            break
    if placement is None:
        return fail("target offsets do not fall on instruction boundaries")

    # labels: one name per target position (aliases at one address share the first name)
    name_at: Dict[int, str] = {}
    for u in order:
        name_at.setdefault(placement[u], branches[u][2])

    def render(per_unit: bool) -> List[str]:
        out = []
        for u, (first, text) in enumerate(units):
            if u in name_at:
                out.append(name_at[u] + ":")
            if u in branches:
                out.append(f"{branches[u][0]} {name_at[placement[u]]}")
            elif per_unit:
                out.append(text)
            else:
                nxt = units[u + 1][0] if u + 1 < len(units) else len(sequence)
                out += sequence[first:nxt]
        if len(units) in name_at:
            out.append(name_at[len(units)] + ":")
        return out

    # 3. verify by round trip: same offsets, same count
    dis2 = _disassemble(_program(render(per_unit=True)))
    if dis2 is None:
        return fail("labelled sequence does not assemble")
    dis2 = dis2[1:-2]
    if len(dis2) != len(units):
        return fail("round trip changed the instruction count")
    for u in order:
        m = _ANNOT_RE.match(dis2[u][2])
        if not m or int(m.group(2), 16) != branches[u][1] or m.group(1) != branches[u][0]:
            return fail(f"round trip disagrees at branch {u}: {dis2[u][2]!r}")
    return Recovery(render(per_unit=False), "recovered")


# ---------------------------------------------------------------------------
# dataset build
# ---------------------------------------------------------------------------

def _norm(seq: List[str]) -> List[str]:
    """Comparison form: prefix lines joined, whitespace collapsed."""
    return [" ".join(t.split()) for _, t in _units(strip_labels(seq))]


def _unlabel(seq: List[str]) -> List[str]:
    """Label-keeping sequence -> instruction mnemonics/operands with branch
    operands blanked, for comparing against a stored (annotated) sequence."""
    out = []
    for t in _norm(seq):
        m = _ANNOT_RE.match(t)
        out.append(m.group(1) + " <target>" if m else t)
    return out


def from_program_asm(rec: dict) -> Optional[List[str]]:
    """Label-keeping sequence built from the record's program.asm, or None if
    the file is not on this machine or does not reproduce the stored sequence."""
    import hw_label_variants as hlv
    src = rec.get("src_path")
    d = hlv.resolve_src(src) if src else None
    if d is None:
        return None
    text = (d / "program.asm").read_text()
    variant = rec.get("variant")
    try:
        if variant and rec.get("source") == "revizor_hw_reproduce":
            vs = hlv.make_variants(text, rec["vuln_class"], only={variant})
            if variant not in vs:
                return None
            text = vs[variant][0]
        with tempfile.TemporaryDirectory() as td:
            p = Path(td) / "program.asm"
            p.write_text(text)
            seq = cvg.convert_program_asm(str(p), keep_labels=True)
    except Exception:
        return None
    stored = rec.get("sequence") or []
    names = {l[:-1] for l in seq if is_label_line(l)}
    got = [(t.split()[0] + " <target>") if (len(t.split()) == 2 and t.split()[1] in names) else t
           for t in _norm(seq)]
    return seq if got == _unlabel(stored) else None


def build_file(path: Path, out_path: Path, cache: dict) -> collections.Counter:
    stats = collections.Counter()
    with open(path) as f, open(out_path, "w") as g:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            seq = rec.get("sequence")
            if seq is None:
                stats["no_sequence"] += 1
                g.write(json.dumps(rec) + "\n")
                continue
            if rec.get("source") in SYNTHETIC_TEXT_SOURCES:
                has_branch = any(_ANNOT_RE.match(t) for _, t in _units(seq))
                how = ("unrecoverable: text-level synthetic twin, regenerate at program level"
                       if has_branch else "no_direct_branch")
                stats[how.split(":")[0]] += 1
                g.write(json.dumps({**rec, "labels_from": how}) + "\n")
                continue
            key = "\n".join(seq)
            if key not in cache:
                r = recover_labels(seq)
                how = {"recovered": "objdump_offsets", "no_direct_branch": "no_direct_branch"}.get(r.status)
                new = r.sequence
                if how is None:
                    alt = from_program_asm(rec)
                    how, new = ("program_asm", alt) if alt is not None else (r.status, list(seq))
                cache[key] = (new, how)
            new, how = cache[key]
            stats[how.split(":")[0]] += 1
            g.write(json.dumps({**rec, "sequence": new, "labels_from": how}) + "\n")
    return stats


def labels_path(path: Path) -> Path:
    return path.with_name(path.stem + "_labels.jsonl")


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    b = sub.add_parser("build", help="write <stem>_labels.jsonl next to each input jsonl")
    b.add_argument("inputs", nargs="+")
    b.add_argument("--out-dir", default=None, help="write there instead of next to the input")
    b.add_argument("--min-recovered", type=float, default=0.95,
                   help="minimum fraction of records with a direct branch that must be labelled "
                        "for the output to be kept (default 0.95)")
    a = ap.parse_args(argv)
    cache: dict = {}
    for p in a.inputs:
        p = Path(p)
        if p.stem.endswith("_labels"):
            continue
        out = labels_path(p)
        if a.out_dir:
            out = Path(a.out_dir) / out.name
            out.parent.mkdir(parents=True, exist_ok=True)
        stats = build_file(p, out, cache)
        got = stats["objdump_offsets"] + stats["program_asm"]
        branchy = got + stats["unrecoverable"]
        if branchy and got / branchy < a.min_recovered:
            out.unlink()
            print(f"{p.name}: NOT WRITTEN, {got}/{branchy} branch records labelled "
                  f"(< {a.min_recovered}): {dict(stats)}")
            continue
        print(f"{p.name} -> {out}: {dict(stats)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
