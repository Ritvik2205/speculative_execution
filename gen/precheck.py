#!/usr/bin/env python3
"""precheck.py — the cheap, non-learned gate in front of the leak oracle.

Why: most of what the generator emits is not a safe-or-leaking gadget at all,
it is a gadget the oracle *cannot run*. Over the committed RL sample sidecars,
Spectector returned `unrunnable` for 456/1987 SPECTRE_V1 samples and
511/600 SPECTRE_V2 samples. Every one of those cost a full oracle call (up to
300 s of symbolic execution) to learn nothing about speculation. This module
decides, without any learned model and without running the oracle, whether a
candidate is worth an oracle call.

Three stages, cheapest first. A candidate must pass every stage that applies to
its architecture.

  A. `assembles` — the whole sequence is assembled as one unit by `llvm-mc`
     (via `spec/external_oracle.py`, which shares no code with our regexes).
     Available for x86_64, arm64 and riscv64.

  B. `oracle_supported` — x86_64 only, and only meaningful for the symbolic
     oracle: can Spectector's x86 front end *parse* every instruction it
     actually reaches? This
     reimplements Spectector's own acceptance rule from its own source
     (`oracle/data/spectector_x86_table.json`, extracted by
     `oracle/extract_spectector_table.py`): a mnemonic is a stem plus up to two
     size-suffix characters from {b,d,l,q,s,t,w}, and the resolved stem must
     have a fact whose arity matches the operand count
     (`gas_parser.pl:92-107`, `parser_aux.pl:91-105`, `x86_table.pl`).
     REACHABILITY MATTERS, and getting this wrong is what made the first
     version of this stage useless. Spectector reports `unsupported_ins` per
     analysed path, and `oracle/spectector_oracle.py` treats a nonzero count
     as unrunnable. Generated sequences are full of mid-sequence `ret`s, so an
     instruction Spectector cannot parse is very often in dead code and never
     counted. Measured over the 4,379 committed RL samples: an unparseable
     instruction appears ANYWHERE in 176/2355 leaks (7.5%), but on the
     straight-line reachable prefix in only 15/2355 (0.6%), while still
     appearing on that prefix in 303/1746 unrunnables (17.4%). So this stage
     only inspects `live_prefix()`.
     NECESSARY, NOT SUFFICIENT: Spectector can still fail later in translation
     (`x86_to_muasm.pl` throws `could_not_translate`) or time out, so this
     stage never promises a verdict, it only rules out candidates that
     certainly have none.

  C. `emulated` — the reachable prefix (`live_prefix`, same notion as stage B)
     is executed in the Unicorn CPU emulator (x86_64, arm64, riscv64) with
     every general-purpose register and the stack pointer seeded into a mapped
     scratch region, and it must reach the end without an unhandled fault.
     TWO DELIBERATE CONCESSIONS, both because the alternative measures the
     wrong thing:
       - Only the reachable prefix runs. Generated sequences are full of
         mid-sequence `ret`s, which pop an uninitialised stack and jump to a
         garbage address. That is not a defect of the generated code, and the
         oracle does not analyse past the exit either.
       - Pages are mapped on demand, up to `_EMU_MAX_DEMAND_PAGES`. The
         generator routinely clobbers a register with data and then
         dereferences it, so a fixed map would fail almost everything on an
         address that a real harness would have made valid. Revizor solves the
         same problem by masking every address into its sandbox; demand paging
         is the non-intrusive equivalent, and `pages_mapped` is reported so
         the concession is visible. An address that cannot be mapped at all
         still faults.
     So `ok` means "decodes and executes as machine code", not "would run
     usefully in a harness".
     WHAT THIS IS NOT: Unicorn (like QEMU, which it is built from) emulates
     only the architectural effect of each instruction. It has no branch
     predictor, no store buffer, no caches and no speculative execution, so it
     can NEVER say whether a sequence leaks. Stage C is a *runnability* signal
     only. Its value is that it is the one stage available on arm64 and
     riscv64, where we have no leak oracle at all.

Usage:
    from precheck import PreCheck
    pc = PreCheck()
    r = pc.check(instrs, "x86_64")
    r["verdict"]        # "pass" | "reject"
    r["reject_stage"]   # None | "assembles" | "oracle_supported" | "emulated"

CLI (reports the stage breakdown over a samples sidecar):
    python3 gen/precheck.py --samples 'gen/rl_mc/SPECTRE_V4_s*/samples.jsonl'
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import os
import re
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Iterable, Optional

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from external_oracle import ExternalOracle, find_llvm_mc  # noqa: E402

TABLE_JSON = ROOT / "oracle" / "data" / "spectector_x86_table.json"

# Architectures the symbolic oracle (Spectector) covers at all.
SYMBOLIC_ORACLE_ARCHS = ("x86_64",)

# llvm-mc triples that produce ELF objects (the host default on macOS is
# Mach-O, whose section layout llvm-objcopy -O binary does not extract).
_ELF_TRIPLE = {
    "x86_64": ("x86_64-linux-gnu", ["--x86-asm-syntax=att"]),
    "arm64": ("aarch64-linux-gnu", []),
    "riscv64": ("riscv64-linux-gnu", ["-mattr=+m,+a,+c,+zicbom"]),
}

# Emulator memory map. One large scratch region, with every register pointing
# at its middle, so that a load or store through any register lands inside it
# whatever the (positive or negative) displacement. This mirrors how Revizor
# sandboxes its generated programs with an r14-relative base.
_CODE_BASE = 0x0100_0000
_CODE_SIZE = 0x0010_0000
_DATA_BASE = 0x2000_0000
_DATA_SIZE = 0x0040_0000          # 4 MiB
_SEED_PTR = _DATA_BASE + _DATA_SIZE // 2
_STACK_PTR = _DATA_BASE + _DATA_SIZE - 0x1000
# Candidate sequences in this project are at most 62 instructions, so a budget
# of 5,000 is ~80x the longest one: it cannot truncate a terminating program,
# and it detects a loop cheaply. The wall-clock timeout is a second guard.
_EMU_TIMEOUT_US = 50_000
_EMU_MAX_INSNS = 5_000
_EMU_PAGE = 0x1000
_EMU_MAX_DEMAND_PAGES = 64        # cap on pages mapped on demand
# Pre-mapped low region. The generator routinely clobbers a register with data
# (a loaded byte, a small immediate) and then dereferences it, so most stray
# pointers are small integers. Mapping that range up front is far cheaper than
# demand-mapping it one page at a time, because every mem_map flushes
# Unicorn's translation cache.
_LOW_BASE = 0x0
_LOW_SIZE = 0x0010_0000           # 1 MiB


def elf_text_section(obj: bytes) -> Optional[bytes]:
    """Contents of `.text` in a little-endian ELF64 object.

    Parsed here rather than shelled out to `llvm-objcopy` because process spawn
    dominates this gate's cost: measured on macOS, a three-spawn check spent
    108 s of system time against 1.4 s of user time over 150 candidates. One
    spawn per candidate instead of three is a ~3x speedup for exactly the same
    bytes.
    """
    import struct
    if len(obj) < 64 or obj[:4] != b"\x7fELF" or obj[4] != 2 or obj[5] != 1:
        return None
    e_shoff, = struct.unpack_from("<Q", obj, 0x28)
    e_shentsize, e_shnum, e_shstrndx = struct.unpack_from("<HHH", obj, 0x3A)
    if not e_shoff or not e_shnum:
        return None

    def sh(i):
        off = e_shoff + i * e_shentsize
        if off + 40 > len(obj):
            return None
        name, _typ = struct.unpack_from("<II", obj, off)
        sh_offset, sh_size = struct.unpack_from("<QQ", obj, off + 24)
        return name, sh_offset, sh_size

    strtab = sh(e_shstrndx)
    if strtab is None:
        return None
    _n, str_off, str_size = strtab
    names = obj[str_off:str_off + str_size]
    for i in range(e_shnum):
        ent = sh(i)
        if ent is None:
            continue
        name_off, off, size = ent
        end = names.find(b"\x00", name_off)
        if names[name_off:end if end >= 0 else None] == b".text":
            return obj[off:off + size]
    return None


def _strip_comment(instr: str) -> str:
    """Drop a trailing assembler comment. `#` only: `;` and `//` are not
    comment markers in the AT&T text our pipeline produces, and `/` can appear
    inside operands."""
    return instr.split("#", 1)[0].strip()


def split_operands(operand_text: str) -> list[str]:
    """Split an operand list on top-level commas, ignoring commas inside
    `(...)` or `[...]` (AT&T `(%base,%idx,8)` is ONE operand, as Spectector's
    `oplist`/`operand` grammar also treats it)."""
    out, depth, cur = [], 0, []
    for ch in operand_text:
        if ch in "([":
            depth += 1
        elif ch in ")]":
            depth = max(0, depth - 1)
        if ch == "," and depth == 0:
            out.append("".join(cur).strip())
            cur = []
        else:
            cur.append(ch)

    tail = "".join(cur).strip()
    if tail:
        out.append(tail)
    return [o for o in out if o]


# Mnemonics that unconditionally leave the spliced victim body. Everything
# after the first of these is dead code on the straight-line path, so a
# parse failure there does not stop Spectector adjudicating the gadget.
_EXIT_MNEMONICS = ("ret", "retq", "jmp", "jmpq", "hlt", "ud2", "leave")

# The same notion at the machine-code level, per ISA, so stage C can find the
# exit in the disassembly of ONE assembled object instead of assembling the
# text prefix separately. Process spawn costs ~220 ms in this environment, so
# the second assembler call was the single largest cost in the gate.
_EXIT_MNEMONICS_MC = {
    "x86_64": {"ret", "retq", "jmp", "hlt", "ud2", "leave", "iret", "iretq"},
    "arm64": {"ret", "b", "brk", "eret"},
    "riscv64": {"ret", "j", "jr", "ebreak", "unimp"},
}


def live_prefix(instrs: Iterable[str]) -> list[str]:
    """The instructions reachable on the straight-line path: everything up to
    (and excluding) the first unconditional exit.

    This deliberately OVER-approximates what Spectector counts, because a
    forward conditional branch can also skip instructions; it is the
    conservative direction (we keep more instructions than Spectector may
    reach, so we reject fewer candidates than a strict reading would).
    """
    out = []
    for ins in instrs:
        code = _strip_comment(ins)
        if not code or code.startswith(".") or code.endswith(":"):
            out.append(ins)
            continue
        mnemonic = code.split(None, 1)[0].lower()
        if mnemonic in _EXIT_MNEMONICS:
            break
        out.append(ins)
    return out


class SpectectorFrontEnd:
    """Spectector's x86 parse-acceptance rule, from its own instruction table."""

    def __init__(self, table_path: Path = TABLE_JSON):
        doc = json.loads(Path(table_path).read_text())
        self.provenance = doc["provenance"]
        self.suffix_chars = set(doc["suffix_chars"])
        self.max_suffixes = int(doc["max_suffixes"])
        # name -> set of arities; None in the set means "any arity"
        self.arities: dict[str, set] = collections.defaultdict(set)
        for i in doc["instructions"]:
            self.arities[i["name"]].add(i["arity"])

    def accepts(self, instr: str) -> bool:
        """True if Spectector's front end would parse this line.

        Labels (`foo:`) and directives (`.text`) are not instructions; the
        parser handles them separately, so they are accepted here.
        """
        code = _strip_comment(instr)
        if not code or code.startswith(".") or code.endswith(":"):
            return True
        parts = code.split(None, 1)
        mnemonic = parts[0].lower()
        n_ops = len(split_operands(parts[1])) if len(parts) > 1 else 0
        # `insname` consumes the stem then up to `max_suffixes` suffix
        # characters, and the parser backtracks over those splits.
        for k in range(0, self.max_suffixes + 1):
            if k > len(mnemonic) - 1:
                break
            stem = mnemonic[: len(mnemonic) - k] if k else mnemonic
            dropped = mnemonic[len(mnemonic) - k:] if k else ""
            if any(c not in self.suffix_chars for c in dropped):
                continue
            allowed = self.arities.get(stem)
            if allowed and (n_ops in allowed or None in allowed):
                return True
        return False

    def unsupported(self, instrs: Iterable[str]) -> list[str]:
        return [i for i in instrs if not self.accepts(i)]


class Emulator:
    """Architectural execution of a sequence, via Unicorn. No speculation."""

    def __init__(self):
        try:
            import unicorn  # noqa: F401
        except ImportError as e:  # pragma: no cover - environment dependent
            raise RuntimeError("unicorn is not installed (pip install unicorn)") from e

    @staticmethod
    def available() -> bool:
        try:
            import unicorn  # noqa: F401
            return True
        except ImportError:
            return False

    def _setup(self, arch: str):
        import unicorn as uc
        if arch == "x86_64":
            from unicorn import x86_const as c
            mu = uc.Uc(uc.UC_ARCH_X86, uc.UC_MODE_64)
            regs = [getattr(c, f"UC_X86_REG_{r}") for r in
                    ("RAX", "RBX", "RCX", "RDX", "RSI", "RDI", "RBP",
                     "R8", "R9", "R10", "R11", "R12", "R13", "R14", "R15")]
            sp = c.UC_X86_REG_RSP
        elif arch == "arm64":
            from unicorn import arm64_const as c
            mu = uc.Uc(uc.UC_ARCH_ARM64, uc.UC_MODE_ARM)
            regs = [getattr(c, f"UC_ARM64_REG_X{i}") for i in range(0, 31)]
            sp = c.UC_ARM64_REG_SP
        elif arch == "riscv64":
            from unicorn import riscv_const as c
            mu = uc.Uc(uc.UC_ARCH_RISCV, uc.UC_MODE_RISCV64)
            # x0 is hardwired to zero; seeding it is meaningless.
            regs = [getattr(c, f"UC_RISCV_REG_X{i}") for i in range(1, 32)]
            sp = c.UC_RISCV_REG_SP
        else:
            raise ValueError(f"no emulator mapping for arch {arch!r}")

        mu.mem_map(_CODE_BASE, _CODE_SIZE)
        # no explicit zero-fill: Unicorn maps zeroed pages, and writing the
        # whole region on every run dominated this stage's cost (4 MiB per
        # candidate, measured at ~137 ms of the 145 ms per check)
        mu.mem_map(_DATA_BASE, _DATA_SIZE)
        mu.mem_map(_LOW_BASE, _LOW_SIZE)
        for r in regs:
            try:
                mu.reg_write(r, _SEED_PTR)
            except uc.UcError:
                pass
        mu.reg_write(sp, _STACK_PTR)
        return mu

    def run(self, code: bytes, arch: str) -> tuple[str, Optional[str], int]:
        """Execute `code`. Returns (outcome, detail, pages_mapped); outcome is
        one of `ok`, `fault_mem`, `fault_insn`, `timeout`, `error`,
        `no_code`."""
        import unicorn as uc
        if not code:
            return "no_code", None, 0
        mu = self._setup(arch)
        mu.mem_write(_CODE_BASE, code)
        n = [0]
        mapped = [0]

        def _count(_mu, _addr, _size, _user):
            n[0] += 1
            if n[0] > _EMU_MAX_INSNS:
                _mu.emu_stop()

        def _on_unmapped(_mu, _type, address, _size, _value, _user):
            """Map the faulting page and retry (see the concession note in the
            module docstring). Returning False lets the fault stand."""
            if mapped[0] >= _EMU_MAX_DEMAND_PAGES:
                return False
            base = address & ~(_EMU_PAGE - 1)
            try:
                _mu.mem_map(base, _EMU_PAGE)
                _mu.mem_write(base, b"\x00" * _EMU_PAGE)
            except uc.UcError:
                return False
            mapped[0] += 1
            return True

        mu.hook_add(uc.UC_HOOK_CODE, _count)
        mu.hook_add(uc.UC_HOOK_MEM_READ_UNMAPPED | uc.UC_HOOK_MEM_WRITE_UNMAPPED,
                    _on_unmapped)
        try:
            mu.emu_start(_CODE_BASE, _CODE_BASE + len(code),
                         timeout=_EMU_TIMEOUT_US, count=_EMU_MAX_INSNS)
        except uc.UcError as e:
            err = e.errno
            if err in (uc.UC_ERR_READ_UNMAPPED, uc.UC_ERR_WRITE_UNMAPPED,
                       uc.UC_ERR_FETCH_UNMAPPED, uc.UC_ERR_READ_UNALIGNED,
                       uc.UC_ERR_WRITE_UNALIGNED, uc.UC_ERR_FETCH_UNALIGNED,
                       uc.UC_ERR_READ_PROT, uc.UC_ERR_WRITE_PROT,
                       uc.UC_ERR_FETCH_PROT):
                return "fault_mem", str(e), mapped[0]
            if err in (uc.UC_ERR_INSN_INVALID, uc.UC_ERR_EXCEPTION):
                return "fault_insn", str(e), mapped[0]
            return "error", str(e), mapped[0]
        if n[0] > _EMU_MAX_INSNS:
            return "timeout", f"exceeded {_EMU_MAX_INSNS} instructions", mapped[0]
        return "ok", None, mapped[0]


# ---------------------------------------------------------------------------
# RISC-V functional backend: QEMU user-mode (see gen/RISCV_FUNCTIONAL_ORACLE_SPEC.md)
#
# Unicorn's RISC-V runs roughly RV64I and raises UC_ERR_INSN_INVALID on the
# M/A/C/Zicbom forms the generator freely emits (and that llvm-mc assembles at
# 1.00), so riscv emulates=0.02 with 176/180 fault_insn and 0 fault_mem -- an
# executor limit, not a generator one. qemu-riscv64 implements RV64GC fully.
#
# Interface-compatible with Emulator.run(body: bytes, arch) -> (outcome, detail,
# pages): we wrap the already-assembled body `.text` bytes (the same bytes
# stage C hands Unicorn, truncated at the first exit) in a tiny static ELF via
# `.incbin` -- an entry stub seeds every GPR to a large RW buffer and the stack
# pointer to its top (mirroring Emulator._setup's seeding + the 256 MiB buffer
# standing in for Unicorn's demand paging), then the body runs and falls into
# exit(0). Outcome is read from the process's terminating signal, mapped to the
# SAME vocabulary as Unicorn so this is a drop-in. pages has no analogue -> 0.
# ---------------------------------------------------------------------------

_QEMU_TIMEOUT_S = 1.0            # wall-clock cap; Unicorn uses an insn count
_RISCV_BUF_BYTES = 0x1000_0000   # 256 MiB RW buffer, seeded into every GPR


def _find_qemu_riscv() -> Optional[str]:
    import shutil
    for name in ("qemu-riscv64-static", "qemu-riscv64"):
        p = shutil.which(name)
        if p:
            return p
    return None


def _find_riscv_cc() -> Optional[list]:
    """A command prefix that assembles+links a freestanding static RV64GC ELF
    from one .s file: `<cc> ... <in.s> -o <out>`. Tries clang (integrated as +
    lld) then a GNU cross-gcc. None if neither is usable."""
    import shutil
    if shutil.which("clang") and (shutil.which("ld.lld") or shutil.which("ld")):
        return ["clang", "-target", "riscv64-linux-gnu", "-march=rv64gc",
                "-nostdlib", "-static",
                *(["-fuse-ld=lld"] if shutil.which("ld.lld") else [])]
    for gcc in ("riscv64-linux-gnu-gcc", "riscv64-unknown-linux-gnu-gcc"):
        if shutil.which(gcc):
            return [gcc, "-march=rv64gc", "-nostdlib", "-static"]
    return None


class RiscvQemuRunner:
    """Functional execution of a riscv64 body under qemu-riscv64. No speculation
    (same caveat as Emulator); it answers only 'is this real, executable RV64GC
    machine code?'."""

    def __init__(self):
        self.qemu = _find_qemu_riscv()
        self.cc = _find_riscv_cc()
        self._ok = bool(self.qemu and self.cc) and self._canary()

    @staticmethod
    def available_tools() -> bool:
        return bool(_find_qemu_riscv() and _find_riscv_cc())

    def available(self) -> bool:
        return self._ok

    # entry stub: seed x1,x3..x31 to the buffer midpoint, sp(x2) to its top,
    # then `.incbin` the body, then exit(0). x0 is hardwired zero. gp(x3)/tp(x4)
    # are seeded like any other GPR -- a freestanding exec needs no valid gp/tp.
    def _wrapper_asm(self, body_path: str) -> str:
        seeds = []
        for i in list(range(1, 32)):
            if i == 2:
                continue                      # sp handled below
            seeds.append(f"\tla x{i}, _buf_mid")
        seeds.append("\tla sp, _buf_top")
        return (
            ".section .text\n.globl _start\n_start:\n"
            + "\n".join(seeds) + "\n"
            + ".Lbody:\n"
            + f'\t.incbin "{body_path}"\n'
            + ".Lafter:\n"
            + "\tli a7, 93\n\tli a0, 0\n\tecall\n"     # exit(0)
            + ".section .bss\n.align 12\n_buf:\n"
            + f"\t.space {_RISCV_BUF_BYTES}\n"
            + "_buf_top:\n"
            # midpoint symbol via a second reservation keeps `la` to a defined
            # symbol (no arithmetic on externs in the integrated assembler)
            + ".set _buf_mid, _buf + " + str(_RISCV_BUF_BYTES // 2) + "\n"
        )

    def _build_and_run(self, body: bytes) -> tuple[str, Optional[str]]:
        with tempfile.TemporaryDirectory() as d:
            bpath = os.path.join(d, "body.bin")
            with open(bpath, "wb") as f:
                f.write(body)
            spath = os.path.join(d, "w.s")
            with open(spath, "w") as f:
                f.write(self._wrapper_asm(bpath))
            prog = os.path.join(d, "prog")
            try:
                r = subprocess.run([*self.cc, spath, "-o", prog],
                                   capture_output=True, text=True, timeout=30)
            except (OSError, subprocess.SubprocessError) as e:
                return "error", f"build did not run: {e}"
            if r.returncode != 0:
                # a link/assemble failure here is a toolchain issue, not a
                # property of the gadget -> treat as error, not a fault verdict
                return "error", (r.stderr.strip()[:200] or "build failed")
            try:
                p = subprocess.run([self.qemu, prog], capture_output=True,
                                   timeout=_QEMU_TIMEOUT_S)
            except subprocess.TimeoutExpired:
                return "timeout", f"exceeded {_QEMU_TIMEOUT_S}s"
            except (OSError, subprocess.SubprocessError) as e:
                return "error", f"qemu did not run: {e}"
            return self._rc_to_outcome(p.returncode)

    @staticmethod
    def _rc_to_outcome(rc: int) -> tuple[str, Optional[str]]:
        """Map a qemu-user process return code to stage C's outcome vocabulary.
        rc >= 0 is a normal exit (ran to completion, any code); rc < 0 is
        termination by signal -rc."""
        if rc >= 0:
            return "ok", None                 # ran to completion (any exit code)
        sig = -rc
        if sig == 4:                          # SIGILL
            return "fault_insn", "SIGILL"
        if sig in (11, 7):                    # SIGSEGV / SIGBUS
            return "fault_mem", f"signal {sig}"
        if sig in (6, 8):                     # SIGABRT / SIGFPE -> instruction-level
            return "fault_insn", f"signal {sig}"
        return "error", f"signal {sig}"

    def _canary(self) -> bool:
        """Build+run an empty body: just the stub + exit(0). Confirms the whole
        toolchain (assemble, link, qemu) works before we trust any verdict."""
        try:
            outcome, _ = self._build_and_run(b"")
        except Exception:
            return False
        return outcome == "ok"

    def run(self, code: bytes, arch: str) -> tuple[str, Optional[str], int]:
        if arch != "riscv64":
            raise ValueError(f"RiscvQemuRunner only runs riscv64, not {arch!r}")
        if not code:
            return "no_code", None, 0
        outcome, detail = self._build_and_run(code)
        return outcome, detail, 0


class PreCheck:
    """Stages A (assemble), B (oracle front end) and C (emulate)."""

    def __init__(self, llvm_mc: Optional[str] = None,
                 objcopy: Optional[str] = None,
                 table_path: Path = TABLE_JSON,
                 emulate: bool = True):
        self.mc = llvm_mc or find_llvm_mc()
        self.objcopy = objcopy or self._find_objcopy()
        self.oracle = ExternalOracle(self.mc)
        self._obj_cache: dict = {}
        self.front_end = SpectectorFrontEnd(table_path) if Path(table_path).is_file() else None
        self.emulator = Emulator() if (emulate and Emulator.available()) else None
        # Prefer QEMU-user for riscv64 (full RV64GC) over Unicorn's ~RV64I; see
        # gen/RISCV_FUNCTIONAL_ORACLE_SPEC.md. None (tools absent / canary fail)
        # -> stage C falls back to the Unicorn path for riscv64, unchanged.
        self.riscv_runner = None
        if emulate and RiscvQemuRunner.available_tools():
            r = RiscvQemuRunner()
            self.riscv_runner = r if r.available() else None

    @staticmethod
    def _find_objcopy() -> Optional[str]:
        import shutil
        for name in ("llvm-objcopy", "objcopy"):
            p = shutil.which(name)
            if p:
                return p
        for p in ("/opt/homebrew/opt/llvm/bin/llvm-objcopy",
                  "/usr/local/opt/llvm/bin/llvm-objcopy"):
            if os.path.exists(p):
                return p
        return None

    # -- one assembler invocation, shared by stages A and C --------------
    def _assemble_obj(self, instrs: list[str], arch: str,
                      intel_syntax: bool = False) -> tuple[Optional[bytes], Optional[str]]:
        """Assemble to an ELF object. Memoised on (text, arch, syntax) so that
        a single `check()` spawns the assembler once rather than once per
        stage."""
        if arch not in _ELF_TRIPLE:
            return None, f"no ELF triple for {arch}"
        if not self.mc:
            return None, "llvm-mc not found"
        src = "\n".join(instrs) + "\n"
        key = (src, arch, intel_syntax)
        hit = self._obj_cache.get(key)
        if hit is not None:
            return hit
        triple, flags = _ELF_TRIPLE[arch]
        if intel_syntax and arch == "x86_64":
            flags = ["--x86-asm-syntax=intel"]
        with tempfile.TemporaryDirectory() as d:
            obj = os.path.join(d, "a.o")
            try:
                r = subprocess.run(
                    [self.mc, f"--triple={triple}", "--assemble", *flags,
                     "-filetype=obj", "-o", obj],
                    input=src, capture_output=True, text=True, timeout=30)
            except (subprocess.TimeoutExpired, OSError) as e:
                out = (None, f"llvm-mc did not run: {e}")
            else:
                if r.returncode != 0:
                    out = (None, r.stderr.strip()[:200])
                else:
                    out = (Path(obj).read_bytes(), None)
        if len(self._obj_cache) > 64:
            self._obj_cache.clear()
        self._obj_cache[key] = out
        return out

    # -- stage A ---------------------------------------------------------
    def assembles(self, instrs: list[str], arch: str,
                  intel_syntax: bool = False) -> tuple[bool, Optional[str]]:
        """Does the whole sequence assemble as one unit?

        Uses the object-producing path so stage C can reuse the same
        invocation. `ExternalOracle.assemble_sequence` remains the reference
        implementation and is used when no ELF triple exists for the arch.
        """
        if arch not in _ELF_TRIPLE:
            return self.oracle.assemble_sequence(instrs, arch)
        obj, err = self._assemble_obj(instrs, arch, intel_syntax)
        return (obj is not None), err

    # -- machine code for stage C ---------------------------------------
    def exit_offset(self, code: bytes, arch: str) -> int:
        """Byte offset of the first instruction that unconditionally leaves the
        body, or len(code) if there is none. Derived from the disassembly of
        the already-assembled object, so it costs no extra assembler call."""
        try:
            import capstone as cs
        except ImportError:
            return len(code)
        amap = {"x86_64": (cs.CS_ARCH_X86, cs.CS_MODE_64),
                "arm64": (cs.CS_ARCH_ARM64, cs.CS_MODE_ARM),
                "riscv64": (cs.CS_ARCH_RISCV, cs.CS_MODE_RISCV64)}
        if arch not in amap:
            return len(code)
        a, m = amap[arch]
        names = _EXIT_MNEMONICS_MC[arch]
        md = cs.Cs(a, m)
        for ins in md.disasm(code, 0):
            if ins.mnemonic.lower() in names:
                return ins.address
        return len(code)

    def machine_code(self, instrs: list[str], arch: str,
                     intel_syntax: bool = False) -> tuple[Optional[bytes], Optional[str]]:
        """Assemble to an ELF object and return the `.text` bytes.

        `intel_syntax` is for Revizor's own program text (see
        oracle/revizor_asm.py); the pipeline's own sequences are AT&T.
        """
        obj, err = self._assemble_obj(instrs, arch, intel_syntax)
        if obj is None:
            return None, err
        text = elf_text_section(obj)
        if text is None:
            return None, "no .text section in the assembled object"
        return text, None

    # -- all stages ------------------------------------------------------
    def check(self, instrs: list[str], arch: str, *,
              require_emulation: bool = True) -> dict:
        """Run the stages in order and stop at the first rejection.

        `require_emulation=False` keeps stage C's outcome in the result but
        does not let it reject (useful when reporting what each stage would
        contribute independently).
        """
        res = {
            "arch": arch,
            "n_instrs": len(instrs),
            "assembles": None,
            "assemble_error": None,
            "oracle_supported": None,
            "unsupported_instrs": [],
            "emulated": "skipped",
            "emulate_detail": None,
            "emulate_backend": None,
            "pages_mapped": 0,
            "verdict": "pass",
            "reject_stage": None,
        }
        # ONE assembler invocation for the whole candidate; stages A and C
        # both read its output.
        code, err = self.machine_code(instrs, arch)
        res["assembles"] = code is not None
        res["assemble_error"] = err
        if code is None:
            res.update(verdict="reject", reject_stage="assembles")
            return res

        if arch in SYMBOLIC_ORACLE_ARCHS and self.front_end is not None:
            bad = self.front_end.unsupported(live_prefix(instrs))
            res["oracle_supported"] = not bad
            res["unsupported_instrs"] = bad[:8]
            if bad:
                res.update(verdict="reject", reject_stage="oracle_supported")
                return res

        # riscv64 prefers the QEMU-user backend (full RV64GC); every other arch,
        # and riscv64 when QEMU is unavailable, uses Unicorn.
        runner = (self.riscv_runner if (arch == "riscv64" and self.riscv_runner)
                  else self.emulator)
        if runner is not None:
            res["emulate_backend"] = ("qemu" if runner is self.riscv_runner
                                      else "unicorn")
            # same reachability notion as stage B, applied to the machine code:
            # stop at the first unconditional exit rather than running into an
            # uninitialised stack
            body = code[: self.exit_offset(code, arch)]
            if not body:
                res["emulated"] = "no_code"
                res["emulate_detail"] = "nothing before the first exit"
            else:
                outcome, detail, pages = runner.run(body, arch)
                res["emulated"] = outcome
                res["emulate_detail"] = detail
                res["pages_mapped"] = pages
            if require_emulation and res["emulated"] != "ok":
                res.update(verdict="reject", reject_stage="emulated")
        return res


# ---------------------------------------------------------------------------
# CLI: stage breakdown over RL sample sidecars
# ---------------------------------------------------------------------------

def _load_samples(pattern: str) -> list[dict]:
    rows = []
    for p in sorted(glob.glob(pattern if os.path.isabs(pattern) else str(ROOT / pattern))):
        for line in open(p):
            if not line.strip():
                continue
            r = json.loads(line)
            seq = r.get("realized_asm")
            if isinstance(seq, str):
                # sidecars store the list repr; eval is unsafe, parse it instead
                seq = re.findall(r"'((?:[^'\\]|\\.)*)'", seq)
                seq = [s.encode().decode("unicode_escape") for s in seq]
            if not seq:
                continue
            rows.append({"seq": list(seq), "verdict": str(r.get("verdict", "")).lower(),
                         "arch": r.get("arch", "x86_64"), "cls": r.get("class"),
                         "round": r.get("round"), "run": Path(p).parent.name})
    return rows


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--samples", default="gen/rl_mc/*/samples.jsonl")
    ap.add_argument("--arch", default=None, help="override the per-row arch")
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--no-emulate", action="store_true")
    a = ap.parse_args(argv)

    rows = _load_samples(a.samples)
    if a.limit:
        rows = rows[: a.limit]
    pc = PreCheck(emulate=not a.no_emulate)
    if pc.front_end is None:
        print(f"WARNING: {TABLE_JSON} missing; stage B disabled", file=sys.stderr)
    if pc.emulator is None and not a.no_emulate:
        print("WARNING: unicorn unavailable; stage C disabled", file=sys.stderr)

    tab = collections.Counter()
    for r in rows:
        res = pc.check(r["seq"], a.arch or r["arch"], require_emulation=False)
        tab[(r["verdict"], "assembles", res["assembles"])] += 1
        tab[(r["verdict"], "oracle_supported", res["oracle_supported"])] += 1
        tab[(r["verdict"], "emulated", res["emulated"])] += 1
    print(f"{len(rows)} samples from {a.samples}")
    for k in sorted(tab, key=str):
        print(f"  {k[0]:11s} {k[1]:17s} {str(k[2]):10s} {tab[k]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
