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
    "riscv64": ("riscv64-linux-gnu", []),
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
_EMU_TIMEOUT_US = 200_000         # 0.2 s of emulated time
_EMU_MAX_INSNS = 20_000           # guards unbounded loops
_EMU_PAGE = 0x1000
_EMU_MAX_DEMAND_PAGES = 64        # cap on pages mapped on demand


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
        mu.mem_map(_DATA_BASE, _DATA_SIZE)
        mu.mem_write(_DATA_BASE, b"\x00" * _DATA_SIZE)
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


class PreCheck:
    """Stages A (assemble), B (oracle front end) and C (emulate)."""

    def __init__(self, llvm_mc: Optional[str] = None,
                 objcopy: Optional[str] = None,
                 table_path: Path = TABLE_JSON,
                 emulate: bool = True):
        self.mc = llvm_mc or find_llvm_mc()
        self.objcopy = objcopy or self._find_objcopy()
        self.oracle = ExternalOracle(self.mc)
        self.front_end = SpectectorFrontEnd(table_path) if Path(table_path).is_file() else None
        self.emulator = Emulator() if (emulate and Emulator.available()) else None

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

    # -- stage A ---------------------------------------------------------
    def assembles(self, instrs: list[str], arch: str) -> tuple[bool, Optional[str]]:
        return self.oracle.assemble_sequence(instrs, arch)

    # -- machine code for stage C ---------------------------------------
    def machine_code(self, instrs: list[str], arch: str,
                     intel_syntax: bool = False) -> tuple[Optional[bytes], Optional[str]]:
        """Assemble to an ELF object and return the `.text` bytes.

        `intel_syntax` is for Revizor's own program text (see
        oracle/revizor_asm.py); the pipeline's own sequences are AT&T.
        """
        if arch not in _ELF_TRIPLE:
            return None, f"no ELF triple for {arch}"
        if not self.mc or not self.objcopy:
            return None, "llvm-mc or llvm-objcopy not found"
        triple, flags = _ELF_TRIPLE[arch]
        if intel_syntax and arch == "x86_64":
            flags = ["--x86-asm-syntax=intel"]
        src = "\n".join(instrs) + "\n"
        with tempfile.TemporaryDirectory() as d:
            obj, bin_ = os.path.join(d, "a.o"), os.path.join(d, "a.bin")
            try:
                r = subprocess.run(
                    [self.mc, f"--triple={triple}", "--assemble", *flags,
                     "-filetype=obj", "-o", obj],
                    input=src, capture_output=True, text=True, timeout=30)
                if r.returncode != 0:
                    return None, r.stderr.strip()[:200]
                r = subprocess.run(
                    [self.objcopy, "-O", "binary", "--only-section=.text", obj, bin_],
                    capture_output=True, text=True, timeout=30)
                if r.returncode != 0:
                    return None, r.stderr.strip()[:200]
                return Path(bin_).read_bytes(), None
            except (subprocess.TimeoutExpired, OSError) as e:
                return None, f"toolchain did not run: {e}"

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
            "pages_mapped": 0,
            "verdict": "pass",
            "reject_stage": None,
        }
        ok, err = self.assembles(instrs, arch)
        res["assembles"] = bool(ok)
        res["assemble_error"] = err
        if not ok:
            res.update(verdict="reject", reject_stage="assembles")
            return res

        if arch in SYMBOLIC_ORACLE_ARCHS and self.front_end is not None:
            bad = self.front_end.unsupported(live_prefix(instrs))
            res["oracle_supported"] = not bad
            res["unsupported_instrs"] = bad[:8]
            if bad:
                res.update(verdict="reject", reject_stage="oracle_supported")
                return res

        if self.emulator is not None:
            # same reachability notion as stage B: do not run past the exit
            code, cerr = self.machine_code(live_prefix(instrs), arch)
            if code is None:
                res["emulated"] = "no_code"
                res["emulate_detail"] = cerr
            else:
                outcome, detail, pages = self.emulator.run(code, arch)
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
