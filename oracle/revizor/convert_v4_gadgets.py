#!/usr/bin/env python3
"""oracle/revizor/convert_v4_gadgets.py — P2 step 1: convert real,
hardware-confirmed Revizor SPECTRE_V4/SSB `program.asm` files (Intel syntax)
into the pipeline's AT&T `sequence` format, and emit a held-out real-V4
JSONL test set.

Background (docs/NEXT_STEPS_2026-09-09.md, P2): the Revizor campaign
(`oracle/revizor/results/v4_ssb_260907/`) found 31 real SPECTRE_V4/store-
bypass violations on an i5-8300H (15 with SSBP off, 16 with SMT off), each
a single-basic-block, branch-free `program.asm` with a genuine store->load
pair through the sandbox base register `r14`. These never went through the
pipeline's normal C -> asm compilation path, so they need converting.

Conversion strategy (preferred): the file already declares
`.intel_syntax noprefix`, so clang's integrated assembler reads it natively.
Assemble to an object file, then disassemble with objdump in AT&T mode and
extract the instruction text. This is a real round-trip through an x86
assembler/disassembler, not a hand-rolled syntax mapper -- it is correct by
construction for whatever instructions clang accepts.

What gets dropped from the harness (never from real instructions):
  - directive lines: `.intel_syntax`, `.section`, `.function_*`, `.bb_*`,
    label lines (`foo:`)
  - the `.macro.measurement_start`/`.macro.measurement_end` markers, which
    are literally `nop qword ptr [rax + 0xff]` -- Revizor's timing probes,
    not part of the gadget
  - the trailing `jmp .test_case_exit` and the final bare `nop` at
    `.test_case_exit:` -- harness-only control flow back to Revizor's runner
  - trailing `# ...` comments (both the source's own `# instrumentation`
    annotations and objdump's `# imm = 0x...` annotations)
Everything else -- including the sandbox-masking `and reg, 0b1111...`
"instrumentation" lines -- is KEPT: those instructions executed for real on
the hardware that produced the violation, they are part of what got taken
to build the leaking store->load pair, not scaffolding.

Fallback: if clang/objdump are unavailable in the running environment, a
best-effort per-instruction Intel->AT&T translator
(`translate_intel_line_fallback`) covers the limited grammar these 31 files
actually use. It is NOT a general Intel->AT&T translator and should not be
trusted outside this corpus. Prefer the assemble+objdump path always; the
fallback exists only so the converter (and its tests) can still run
somewhere without clang/objdump installed.
"""
from __future__ import annotations

import argparse
import glob
import hashlib
import json
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import List, Optional

REPO_ROOT = Path(__file__).resolve().parents[2]

DEFAULT_GLOBS = [
    "oracle/revizor/results/v4_ssb_260907/ssbp_off/*/program.asm",
    "oracle/revizor/results/v4_ssb_260907/smt_off/*/program.asm",
]
DEFAULT_OUT = REPO_ROOT / "eval" / "data" / "revizor_v4_real.jsonl"

# ---------------------------------------------------------------------------
# Path A: assemble (clang, Intel syntax) + disassemble (objdump, AT&T)
# ---------------------------------------------------------------------------

# BUG (found 2026-09-11): the original `_INSTR_RE = re.compile(r"^\s*[0-9a-fA-F]+:\s+(?:[0-9a-fA-F]{2}\s*)+\t(.*)$")`'s greedy `(?:[0-9a-fA-F]{2}\s*)+` can
# swallow the mnemonic itself when the mnemonic text happens to tokenize
# evenly into hex-looking byte pairs with no separating whitespace -- e.g.
# "addb" is literally the four hex digits a/d/d/b, so the greedy group
# matches "ad"+"db" as two more "hex bytes" straight through the mnemonic,
# then the required literal `\t` after it matches the tab that actually
# separates the mnemonic from its operand, capturing only the operand
# ("$0x40, %al" with no mnemonic at all -- confirmed on real objdump output
# for `addb $0x40, %al`, `decb`/`adcb` are equally vulnerable). Since a
# `\s*` gap of zero characters is legal, this isn't a rare edge case: ANY
# mnemonic composed entirely of hex-digit letters (a-f) whose length is a
# multiple of 2 can trigger it.
#
# Fix: don't try to greedily delimit the hex-byte column with a regex that
# can misfire on adjacent mnemonic text. objdump always separates the
# "addr: bytes" column from the mnemonic/operand text with exactly one
# literal tab (never emitted *within* the hex-byte column, which uses only
# spaces) -- so split each line on its FIRST tab, and validate the prefix
# against _ADDR_BYTES_RE (anchored to end-of-string, i.e. exactly an
# address + hex-byte-pairs and nothing else). This can't be confused with
# mnemonic text because the split point comes from the literal tab
# character's position, not from a greedy character-class match.
_ADDR_BYTES_RE = re.compile(r"^\s*[0-9a-fA-F]+:\s+(?:[0-9a-fA-F]{2}\s*)*$")
_LABEL_RE = re.compile(r"^[0-9a-fA-F]+ <.*>:\s*$")
_SECTION_HDR_RE = re.compile(r"^Disassembly of section (\S+):\s*$")

_DROP_MNEMONIC_PREFIXES = ("nop",)  # measurement markers + harness exit nop


class ToolchainUnavailable(RuntimeError):
    """Raised when neither clang nor objdump is on PATH."""


def toolchain_available() -> bool:
    return shutil.which("clang") is not None and shutil.which("objdump") is not None


def _assemble_and_disassemble(path: str) -> str:
    """Assemble `path` (Intel syntax) with clang, disassemble with objdump
    in AT&T mode. Returns the raw objdump -D text output."""
    if not toolchain_available():
        raise ToolchainUnavailable("clang and/or objdump not found on PATH")

    with tempfile.TemporaryDirectory() as td:
        obj_path = str(Path(td) / "gadget.o")
        asm_proc = subprocess.run(
            ["clang", "-target", "x86_64-linux-gnu", "-c", path, "-o", obj_path],
            capture_output=True, text=True,
        )
        if asm_proc.returncode != 0:
            raise RuntimeError(
                f"clang failed to assemble {path}:\n{asm_proc.stderr}"
            )
        dis_proc = subprocess.run(
            ["objdump", "-D", "--x86-asm-syntax=att", obj_path],
            capture_output=True, text=True,
        )
        if dis_proc.returncode != 0:
            raise RuntimeError(
                f"objdump failed to disassemble {obj_path} (from {path}):\n"
                f"{dis_proc.stderr}"
            )
        return dis_proc.stdout


def _extract_section(objdump_text: str, section_name: str = ".data.main") -> List[str]:
    """Return the raw disassembly lines belonging to one section (the
    Revizor gadgets always declare `.section .data.main` and put all real
    code there)."""
    lines = objdump_text.splitlines()
    block: List[str] = []
    in_section = False
    for line in lines:
        m = _SECTION_HDR_RE.match(line)
        if m:
            in_section = m.group(1) == section_name
            continue
        if in_section:
            block.append(line)
    if not block:
        raise RuntimeError(
            f"section {section_name!r} not found in objdump output "
            f"(sections present: {sorted(set(_SECTION_HDR_RE.findall(objdump_text)))})"
        )
    return block


def _parse_instructions(section_lines: List[str]) -> List[str]:
    """Turn one section's raw objdump lines into a list of clean AT&T
    instruction strings, dropping labels/harness markers/comments."""
    out: List[str] = []
    for line in section_lines:
        if not line.strip():
            continue
        if _LABEL_RE.match(line):
            continue  # symbol/label header, not an instruction
        if "\t" not in line:
            continue  # "..." elision lines, stray text -- no mnemonic column
        addr_bytes, rest = line.split("\t", 1)
        if not _ADDR_BYTES_RE.match(addr_bytes):
            continue  # not a well-formed "addr: bytes" prefix
        if "\t" in rest:
            mnemonic, operand = rest.split("\t", 1)
        else:
            mnemonic, operand = rest, ""
        mnemonic = mnemonic.strip()
        operand = operand.split("#", 1)[0].strip()

        if not mnemonic or mnemonic in ("(bad)", "<unknown>"):
            continue
        if mnemonic.startswith(_DROP_MNEMONIC_PREFIXES):
            continue  # measurement_start/measurement_end/test_case_exit nop
        if mnemonic == "jmp" and ".test_case_exit" in operand:
            continue  # harness exit jump, not part of the gadget

        # Disassembly targets keep the raw hex + symbol (e.g. "0x19d
        # <.test_case_exit>") for real jumps too, but none survive in this
        # corpus (single-BB, branch-free gadgets) other than the harness
        # exit jump already dropped above.
        instr = f"{mnemonic} {operand}".strip()
        out.append(instr)
    return out


_MNEMONIC_START_RE = re.compile(r"^[a-z][a-z0-9.]*")


def assert_well_formed_sequence(seq: List[str], path: str = "<unknown>") -> None:
    """Raise ValueError if any converted instruction string doesn't start
    with a real mnemonic (`^[a-z][a-z0-9.]*`). Guards against the
    hex-byte/mnemonic-swallowing regex bug found 2026-09-11 (see
    `_ADDR_BYTES_RE`'s comment) ever silently shipping malformed AT&T
    lines like `$0x40, %al` again -- every emitted line must start with an
    opcode, not a bare operand."""
    bad = [line for line in seq if not _MNEMONIC_START_RE.match(line)]
    if bad:
        raise ValueError(
            f"{path}: {len(bad)} converted instruction(s) missing a leading "
            f"mnemonic (malformed AT&T): {bad!r}"
        )


def convert_program_asm(path: str) -> List[str]:
    """Convert one Revizor Intel `program.asm` into a list of AT&T
    instruction strings (the pipeline's `sequence` format).

    Tries the assemble+objdump round-trip first; falls back to
    `translate_intel_line_fallback` per-line if the toolchain is
    unavailable. Every returned line is guaranteed to start with a real
    mnemonic (see `assert_well_formed_sequence`).
    """
    if toolchain_available():
        objdump_text = _assemble_and_disassemble(path)
        section = _extract_section(objdump_text)
        seq = _parse_instructions(section)
    else:
        seq = _convert_via_fallback(path)
    assert_well_formed_sequence(seq, path)
    return seq


# ---------------------------------------------------------------------------
# Path B: fallback per-line Intel -> AT&T translator (limited grammar)
# ---------------------------------------------------------------------------

_SIZE_PTR_RE = re.compile(
    r"\b(byte|word|dword|qword)\s+ptr\s*\[([^\]]+)\]", re.IGNORECASE
)
_BARE_MEM_RE = re.compile(r"\[([^\]]+)\]")
_SIZE_SUFFIX = {"byte": "b", "word": "w", "dword": "l", "qword": "q"}

_DROP_LINE_PREFIXES = (
    ".intel_syntax", ".section", ".function", ".bb", ".macro",
)


def _intel_mem_to_att(mem_expr: str) -> str:
    """`r14 + rdi` -> `(%r14,%rdi)`, `rax + 0xff` -> `0xff(%rax)`,
    `r14 + rax*2` -> `(%r14,%rax,2)`."""
    mem_expr = mem_expr.strip()
    parts = [p.strip() for p in mem_expr.split("+")]
    base = None
    index = None
    scale = None
    disp = None
    for p in parts:
        if "*" in p:
            reg, sc = p.split("*")
            index, scale = reg.strip(), sc.strip()
        elif re.match(r"^0x[0-9a-fA-F]+$", p) or re.match(r"^-?\d+$", p):
            disp = p
        else:
            reg = p.lstrip("%")
            if base is None:
                base = reg
            else:
                index = reg
    disp_s = disp if disp else ""
    if base and index and scale:
        return f"{disp_s}(%{base},%{index},{scale})"
    if base and index:
        return f"{disp_s}(%{base},%{index})"
    if base:
        return f"{disp_s}(%{base})"
    return f"({mem_expr})"


def _intel_operand_to_att(op: str) -> str:
    op = op.strip()
    m = _SIZE_PTR_RE.search(op)
    if m:
        return _intel_mem_to_att(m.group(2))
    m = _BARE_MEM_RE.search(op)
    if m:
        return _intel_mem_to_att(m.group(1))
    if re.match(r"^-?(0x[0-9a-fA-F]+|\d+)$", op):
        return f"${op}"
    if re.match(r"^0b[01]+$", op):
        return f"${int(op, 2)}"
    if re.match(r"^[a-zA-Z][a-zA-Z0-9]*$", op):
        return f"%{op}"
    return op


def translate_intel_line_fallback(line: str) -> Optional[str]:
    """Best-effort Intel -> AT&T translation for ONE instruction line, for
    the limited grammar of the Revizor V4/SSB `program.asm` corpus:
    mov/add/sub/and/or/xor/cmov*/lock/movsx/movzx/test/inc/dec/bts/btr,
    memory of the form `[reg + reg]`/`[reg + reg*scale]`/`[reg + disp]`,
    `byte/word/dword/qword ptr` size prefixes, hex/decimal/binary
    immediates. Returns None for lines that are not real instructions
    (directives, labels, blank lines, measurement markers, the harness
    exit jump).

    This is NOT a general Intel->AT&T translator; it exists only as a
    fallback for environments without clang/objdump.
    """
    raw = line.split("#", 1)[0].strip()
    if not raw:
        return None
    if raw.startswith(_DROP_LINE_PREFIXES):
        return None
    if re.match(r"^[.\w]+:", raw):
        return None  # a label line, possibly with trailing instruction text
    if raw.startswith("nop"):
        return None  # measurement_start/measurement_end/test_case_exit
    if raw.startswith("jmp") and ".test_case_exit" in raw:
        return None

    prefix = ""
    if raw.startswith("lock "):
        prefix = "lock "
        raw = raw[len("lock "):].strip()

    mnem_m = re.match(r"^(\S+)\s*(.*)$", raw)
    if not mnem_m:
        return None
    mnemonic, rest = mnem_m.group(1), mnem_m.group(2).strip()

    size_m = _SIZE_PTR_RE.search(rest)
    suffix = ""
    if size_m and mnemonic.lower() not in ("movsx", "movzx"):
        suffix = _SIZE_SUFFIX.get(size_m.group(1).lower(), "")

    if not rest:
        return f"{prefix}{mnemonic}"

    operands = [o.strip() for o in rest.split(",")]
    att_operands = [_intel_operand_to_att(o) for o in operands]
    att_operands.reverse()  # Intel dst,src -> AT&T src,dst
    return f"{prefix}{mnemonic}{suffix} {', '.join(att_operands)}"


def _convert_via_fallback(path: str) -> List[str]:
    out = []
    with open(path) as f:
        for line in f:
            att = translate_intel_line_fallback(line)
            if att:
                out.append(att)
    return out


# ---------------------------------------------------------------------------
# Store/load classification (structural V4 signature check)
# ---------------------------------------------------------------------------

_MEM_OPERAND_RE = re.compile(r"\(%r14[^)]*\)")


def classify_r14_access(att_instr: str) -> str:
    """Classify a converted AT&T instruction's access to the sandbox base
    (%r14): "store" if the (%r14,...) memory operand is the destination
    (last operand, AT&T src,dst order), "load" if it's a source, "none" if
    there's no %r14 memory operand at all."""
    if "%r14" not in att_instr or "(" not in att_instr:
        return "none"
    parts = att_instr.split(None, 1)
    if len(parts) < 2:
        return "none"
    operand_str = parts[1]
    operands = [o.strip() for o in operand_str.split(",") if o.strip()]
    # Memory operands can themselves contain commas (e.g. "(%r14,%rax,2)"),
    # so re-merge by matching parens.
    merged: List[str] = []
    buf = ""
    depth = 0
    for tok in operand_str.split(","):
        depth += tok.count("(") - tok.count(")")
        buf = f"{buf},{tok}" if buf else tok
        if depth == 0:
            merged.append(buf.strip())
            buf = ""
    operands = merged if merged else operands
    if not operands:
        return "none"
    last = operands[-1]
    if _MEM_OPERAND_RE.search(last):
        return "store"
    if any(_MEM_OPERAND_RE.search(o) for o in operands[:-1]):
        return "load"
    # Single-operand instructions (e.g. "inc (%r14,%rcx)") mutate memory:
    # treat as a store (matches how these appear in the corpus: RMW ops).
    if len(operands) == 1 and _MEM_OPERAND_RE.search(last):
        return "store"
    return "none"


# ---------------------------------------------------------------------------
# Dedup + JSONL emission
# ---------------------------------------------------------------------------

def dedup_sequences(sequences: List[List[str]]) -> List[List[str]]:
    """Dedup by exact converted-sequence content, preserving first-seen
    order."""
    seen = set()
    out = []
    for seq in sequences:
        key = tuple(seq)
        if key in seen:
            continue
        seen.add(key)
        out.append(seq)
    return out


def _seed_from_dir_name(dir_name: str) -> str:
    m = re.match(r"seed(\d+)_", dir_name)
    return m.group(1) if m else hashlib.sha1(dir_name.encode()).hexdigest()[:8]


def convert_all(globs: List[str] = None, repo_root: Path = REPO_ROOT) -> List[dict]:
    """Convert every program.asm matched by `globs`, dedup by converted
    sequence content, return a list of pipeline-format records."""
    globs = globs or DEFAULT_GLOBS
    paths = []
    for pat in globs:
        paths.extend(sorted(glob.glob(str(repo_root / pat))))

    converted = 0
    records = []
    seen_keys = set()
    for path in paths:
        p = Path(path)
        try:
            seq = convert_program_asm(str(p))
        except Exception as exc:  # noqa: BLE001 - report and skip, don't fabricate
            print(f"  SKIP {path}: {exc}", file=sys.stderr)
            continue
        if not seq:
            print(f"  SKIP {path}: empty converted sequence", file=sys.stderr)
            continue
        converted += 1
        key = tuple(seq)
        if key in seen_keys:
            continue
        seen_keys.add(key)

        campaign = p.parent.parent.name  # "ssbp_off" or "smt_off"
        dir_name = p.parent.name
        seed = _seed_from_dir_name(dir_name)
        group_hash = hashlib.sha1(("|".join(seq)).encode()).hexdigest()[:10]
        records.append({
            "label": "SPECTRE_V4",
            "arch": "x86_64",
            "sequence": seq,
            "group": f"revizor_v4_{seed}_{group_hash}",
            "source": "revizor_hw_i5_8300h",
            "campaign": campaign,
            "src_path": str(p.relative_to(repo_root)) if p.is_relative_to(repo_root) else str(p),
        })

    print(f"Converted {converted}/{len(paths)} program.asm files "
          f"({'assemble+objdump' if toolchain_available() else 'fallback translator'} path)")
    print(f"Deduped to {len(records)} unique gadgets")
    return records


def build_globs(extra_dirs: Optional[List[str]] = None) -> List[str]:
    """DEFAULT_GLOBS plus one or two globs per `--extra-dirs` entry, so a
    future Revizor campaign directory (e.g.
    `oracle/revizor/results/v4_ssb_<newdate>/`) folds in without editing
    this file. Default behavior (no `--extra-dirs`) is unchanged: returns
    exactly DEFAULT_GLOBS.

    Each `extra_dirs` entry is either:
      - a full glob pattern (contains "*" or ends in ".asm") — used as-is, or
      - a campaign directory — expanded to that directory's
        `ssbp_off/*/program.asm` and `smt_off/*/program.asm` (the same
        campaign layout DEFAULT_GLOBS covers for v4_ssb_260907).
    """
    globs = list(DEFAULT_GLOBS)
    for d in extra_dirs or []:
        d = d.strip()
        if not d:
            continue
        if "*" in d or d.endswith(".asm"):
            globs.append(d)
        else:
            d = d.rstrip("/")
            globs.append(f"{d}/ssbp_off/*/program.asm")
            globs.append(f"{d}/smt_off/*/program.asm")
    return globs


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--out", default=str(DEFAULT_OUT))
    ap.add_argument("--glob", action="append", dest="globs", default=None,
                     help="override default globs entirely (repeatable)")
    ap.add_argument("--extra-dirs", action="append", dest="extra_dirs", default=None,
                     help="additional Revizor campaign result dir(s) to fold in "
                          "ON TOP OF the default v4_ssb_260907 globs (repeatable). "
                          "Each value is either a campaign dir (searched for "
                          "ssbp_off/*/program.asm and smt_off/*/program.asm) or a "
                          "full glob pattern. Ignored if --glob is also given.")
    args = ap.parse_args()

    globs = args.globs if args.globs is not None else build_globs(args.extra_dirs)
    records = convert_all(globs=globs)

    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "w") as f:
        for rec in records:
            f.write(json.dumps(rec) + "\n")
    print(f"Wrote {len(records)} records to {out_path}")


if __name__ == "__main__":
    main()
