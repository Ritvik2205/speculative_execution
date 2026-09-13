#!/usr/bin/env python3
"""
external_oracle.py — an INDEPENDENT ground-truth oracle for instruction
categorization, used to break the circularity in Phase-0 validation.

`validate_spec.py` / `validate_graph.py` compare `SpecEngine` against the very
`PDGBuilder` the spec was exported from — a refactor-fidelity round-trip, not a
correctness check. This module provides a *different* source of truth:

    text asm  --(llvm-mc)-->  machine bytes  --(capstone)-->  instruction groups

llvm-mc (the LLVM assembler) and capstone (a disassembler) share no code with
our hand-written regexes, so agreement here is real evidence the categorization
is *right*, and disagreements are genuine Phase-0 findings (heuristic gaps /
bugs the self-comparison structurally cannot surface).

Scope + honest limitation: capstone reliably group-tags the *control-flow*
instructions (call / ret / jump/branch) — precisely the speculation sources that
matter — but does NOT group-tag loads/stores/arith on x86. So the oracle
adjudicates a coarse control-flow taxonomy {CALL, RET, JUMP, OTHER} and abstains
(OTHER) elsewhere; coverage is reported alongside agreement.

Requires: capstone (pip), and llvm-mc on PATH or at the Homebrew location.
"""

from __future__ import annotations

import re
import shutil
import subprocess
from pathlib import Path
from typing import Optional

try:
    import capstone as cs
except ImportError:  # pragma: no cover
    cs = None


# ---- llvm-mc discovery --------------------------------------------------
_LLVM_MC_CANDIDATES = [
    "llvm-mc",
    "/opt/homebrew/opt/llvm/bin/llvm-mc",
    "/usr/local/opt/llvm/bin/llvm-mc",
]


def find_llvm_mc() -> Optional[str]:
    for c in _LLVM_MC_CANDIDATES:
        p = shutil.which(c) if not c.startswith("/") else (c if Path(c).exists() else None)
        if p:
            return p
    return None


# arch name (our dataset) -> (llvm-mc --arch, extra flags, capstone (arch, mode))
_ARCH = {
    "x86_64": ("x86-64", ["--x86-asm-syntax=att"], ("x86", "64")),
    "arm64":  ("aarch64", [], ("arm64", None)),
    "arm32":  ("arm", [], ("arm", None)),
    "riscv64": ("riscv64", [], ("riscv64", None)),
}

_ENC_RE = re.compile(r"encoding:\s*\[([^\]]*)\]")


def _parse_byte(tok: str) -> int:
    """Parse one llvm-mc encoding token to a concrete byte.

    Relocation placeholders ('A', binary literals with 'A' bits, or hex bytes
    carrying a fixup suffix like ``0x90'A'``) are filled with 0 in the fixup
    bits — we only need the opcode bits for group detection, not the resolved
    target address."""
    tok = tok.strip().strip("'").strip()
    if not tok or tok == "A":
        return 0
    m = re.match(r"0x([0-9a-fA-F]+)", tok)
    if m:
        return int(m.group(1), 16) & 0xFF
    m = re.match(r"0b([01A]+)", tok)
    if m:
        return int(m.group(1).replace("A", "0"), 2) & 0xFF
    try:
        return int(tok) & 0xFF
    except ValueError:
        return 0


class ExternalOracle:
    """Assembles a single instruction with llvm-mc and reads capstone's
    instruction groups to assign a coarse, independent control-flow category."""

    COARSE = ("CALL", "RET", "JUMP", "OTHER")

    def __init__(self, llvm_mc: Optional[str] = None):
        if cs is None:
            raise RuntimeError("capstone not installed (pip install capstone)")
        self.mc = llvm_mc or find_llvm_mc()
        if not self.mc:
            raise RuntimeError("llvm-mc not found on PATH or Homebrew location")
        self._md = {}  # cached capstone disassemblers per arch

    # -- capstone handle per arch ----------------------------------------
    def _disasm(self, arch: str):
        if arch in self._md:
            return self._md[arch]
        _, _, (ca, mode) = _ARCH[arch]
        if ca == "x86":
            md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_64)
        elif ca == "arm64":
            md = cs.Cs(cs.CS_ARCH_ARM64, cs.CS_MODE_ARM)
        elif ca == "arm":
            md = cs.Cs(cs.CS_ARCH_ARM, cs.CS_MODE_ARM)
        elif ca == "riscv64":
            md = cs.Cs(cs.CS_ARCH_RISCV, cs.CS_MODE_RISCV64)
        else:
            raise ValueError(ca)
        md.detail = True
        self._md[arch] = md
        return md

    # -- text -> bytes ----------------------------------------------------
    def assemble(self, instr: str, arch: str) -> Optional[bytes]:
        if arch not in _ARCH:
            return None
        mc_arch, flags, _ = _ARCH[arch]
        cmd = [self.mc, f"--arch={mc_arch}", "--show-encoding", "--assemble", *flags]
        try:
            out = subprocess.run(
                cmd, input=instr + "\n", capture_output=True, text=True, timeout=10
            )
        except (subprocess.TimeoutExpired, OSError):
            return None
        if out.returncode != 0:
            return None
        m = _ENC_RE.search(out.stdout)
        if not m:
            return None
        toks = [t for t in m.group(1).split(",") if t.strip()]
        if not toks:
            return None
        return bytes(_parse_byte(t) for t in toks)

    def assemble_error(self, instr: str, arch: str) -> Optional[str]:
        """Like assemble(), but returns llvm-mc's stderr diagnostic (str) when it
        rejects `instr`, or None when it assembles cleanly. For failure triage:
        assemble() collapses every rejection to None, discarding the reason."""
        if arch not in _ARCH:
            return "unsupported arch"
        mc_arch, flags, _ = _ARCH[arch]
        cmd = [self.mc, f"--arch={mc_arch}", "--show-encoding", "--assemble", *flags]
        try:
            out = subprocess.run(
                cmd, input=instr + "\n", capture_output=True, text=True, timeout=10
            )
        except (subprocess.TimeoutExpired, OSError) as e:
            return f"llvm-mc did not run: {e}"
        if out.returncode == 0 and _ENC_RE.search(out.stdout):
            return None
        return out.stderr.strip() or f"rc={out.returncode}, no encoding emitted"

    def _find_nm(self):
        import os
        cand = os.path.join(os.path.dirname(self.mc), "llvm-nm") if self.mc else None
        if cand and os.path.exists(cand):
            return cand
        return "nm"

    def link_ready(self, instrs, arch, allow=("fn_target",)):
        """Stricter than assemble_sequence: assemble the whole gadget to an OBJECT
        and require it to have no UNDEFINED symbols beyond `allow`. This is the
        cheap proxy for the harness link step (L3) -- it catches exactly the
        placeholder bug (undefined .L0 / <sym> / <fn>) that per-instruction and
        whole-sequence assembly both tolerate (llvm-mc emits relocations for
        undefined refs rather than erroring). Returns (ok, undefined_symbols)."""
        import subprocess, tempfile, os
        if arch not in _ARCH:
            return False, ["<unsupported arch>"]
        mc_arch, flags, _ = _ARCH[arch]
        obj = tempfile.mktemp(suffix=".o")
        try:
            r = subprocess.run(
                [self.mc, f"--arch={mc_arch}", "--filetype=obj", *flags, "-o", obj],
                input="\n".join(instrs) + "\n", capture_output=True, text=True, timeout=30)
            if r.returncode != 0:
                return False, ["<assemble failed>"]
            nm = subprocess.run([self._find_nm(), "-u", obj],
                                capture_output=True, text=True)
            if nm.returncode != 0:
                return False, ["<nm failed>"]
            undef = [l.split()[-1] for l in nm.stdout.splitlines() if l.strip()]
            bad = [s for s in undef if s not in allow]
            return (len(bad) == 0), bad
        except (subprocess.TimeoutExpired, OSError) as e:
            return False, [f"<{e}>"]
        finally:
            if os.path.exists(obj):
                os.unlink(obj)

    def assemble_sequence(self, instrs, arch):
        """Assemble a WHOLE gadget as one unit and return (ok, error). Unlike
        assemble()/assemble_error(), which run one instruction at a time and so
        tolerate undefined labels and branch targets, this joins the sequence and
        makes a single llvm-mc call -- the stricter test the gadget-compile step
        (gen/decode.py) actually needs. `instrs` is a list of instruction lines."""
        if arch not in _ARCH:
            return False, "unsupported arch"
        mc_arch, flags, _ = _ARCH[arch]
        cmd = [self.mc, f"--arch={mc_arch}", "--assemble", *flags]
        src = "\n".join(instrs) + "\n"
        try:
            out = subprocess.run(cmd, input=src, capture_output=True,
                                 text=True, timeout=30)
        except (subprocess.TimeoutExpired, OSError) as e:
            return False, f"llvm-mc did not run: {e}"
        if out.returncode == 0:
            return True, None
        return False, out.stderr.strip()[:200]

    # -- bytes -> coarse category ----------------------------------------
    def category(self, instr: str, arch: str) -> Optional[str]:
        """Return coarse control-flow category, or None if the oracle cannot
        assemble/decode the instruction (distinct from OTHER)."""
        code = self.assemble(instr, arch)
        if code is None:
            return None
        md = self._disasm(arch)
        try:
            insn = next(md.disasm(code, 0x1000), None)
        except cs.CsError:
            return None
        if insn is None:
            return None
        groups = {insn.group_name(g) for g in insn.groups}
        if "ret" in groups:
            return "RET"
        if "call" in groups:
            return "CALL"
        if groups & {"jump", "branch_relative"}:
            return "JUMP"
        return "OTHER"


# map SpecEngine fine categories -> the oracle's coarse control-flow taxonomy
_SPEC_TO_COARSE = {
    "CALL": "CALL", "CALL_INDIRECT": "CALL",
    "RET": "RET",
    "BRANCH_COND": "JUMP", "BRANCH_UNCOND": "JUMP", "JUMP_INDIRECT": "JUMP",
}


def spec_coarse(cat_name: str) -> str:
    return _SPEC_TO_COARSE.get(cat_name, "OTHER")
