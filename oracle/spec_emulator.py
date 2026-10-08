#!/usr/bin/env python3
"""spec_emulator.py — a speculative-execution leak check that runs on any ISA
Unicorn supports, for the architectures where we have no leak oracle at all.

The gap this addresses: every leak oracle in this project is x86_64. Spectector
is x86-only, InvisiSpec is an x86 gem5 fork, and Revizor needs a bare-metal x86
kernel module. The generator emits arm64 (and the code path supports riscv64),
and none of it has ever been checked for leaks -- so "the generator cannot write
leaking arm64" and "we have no arm64 oracle" were indistinguishable.

A plain emulator cannot close that gap: Unicorn, like the QEMU it derives from,
models only the architectural effect of each instruction. It has no branch
predictor and no caches. This module therefore does not *ask* Unicorn about
speculation -- it drives the speculation itself, by rolling the CPU state back
to a conditional branch and forcing the path the branch did not take.

Definition used (concrete speculative non-interference, the same property
Spectector checks symbolically and Revizor checks against hardware):

    Take two inputs that differ ONLY in a designated secret region. If their
    NON-speculative observations are identical but their SPECULATIVE
    observations differ, the program leaks the secret through speculative
    execution.

All three parts matter.
  - Differing only in the secret is what makes the comparison meaningful.
    Two fully random inputs essentially never produce identical architectural
    observations, so an earlier version of this module reported "no
    architecturally equivalent input pair" for 20 of 25 real violations and
    measured nothing. The public part of memory is therefore held byte-identical
    and only the secret region varies.
  - Requiring the architectural observations to agree separates a speculative
    leak from an ordinary architectural data flow. If they disagree, the
    program leaks the secret *without* speculation; that is reported as
    `arch_leak`, which is a finding in its own right and never counted as a
    speculative leak.
  - The speculative difference is the leak itself.

The secret region sits ABOVE the sandbox window that Revizor's generated
programs mask their addresses into (`and rdx, 0b1111111111111` confines an
architectural access to the low 8 KiB), so an architectural access cannot
reach the secret while a misspeculated, unmasked one can. That is the standard
Spectre-V1 arrangement.

Observation clause: the cache lines touched by loads and stores, plus the
sequence of executed branch outcomes -- Revizor's `loads+stores+pc`, at
cache-line granularity because that is what a Flush+Reload attacker resolves.
Configurable via `observe`.

Speculation barriers are modelled explicitly, and this is load-bearing. Unicorn
executes `lfence` as a no-op, because it has no speculation to serialize, so a
forced speculative window would otherwise run straight through a fence and
report a mitigated gadget as leaking (observed, and the reason this is handled
here rather than left implicit). A speculative window therefore STOPS at the
first serializing instruction, which is the defining semantics of a fence under
a speculation contract -- Spectector translates `lfence`/`mfence`/`sfence` to
its `spbarr` barrier, which ends the speculative transaction. Per ISA:
x86 `lfence`/`mfence`/`sfence`/`cpuid`; arm64 `dsb`/`isb`/`csdb`;
riscv64 `fence`/`fence.i`. This also matches the real-silicon finding in
`docs/HW_LABEL_RESULTS_2026-10-07.md`, where a fence at the speculation
boundary removed the leak in every stable case.

How speculation is driven, per conditional branch:
  1. run from entry until the branch address is reached;
  2. snapshot the CPU and execute the branch alone, to learn the resolved
     successor;
  3. restore the snapshot, set the program counter to the OTHER successor, and
     run a bounded window of instructions, recording observations;
  4. restore and continue architecturally.

Honest limits, stated up front:
  - Only conditional-branch (PHT) misprediction is modelled. Store-to-load
    forwarding (Spectre V4), return prediction (Retbleed, Inception), indirect
    prediction (V2, BHI) and faulting loads (L1TF, MDS) are NOT. A `safe`
    verdict from this module means "no conditional-branch speculative leak",
    never "no leak".
  - Only the first execution of each branch is explored, so a leak that needs a
    later loop iteration is missed.
  - Inputs are concrete, so this under-approximates: it can miss a leak that a
    symbolic checker finds. `leak` verdicts are therefore worth more than
    `safe` verdicts, and the module reports how many input pairs it tried.
  - It is a MODEL. It shares the standard caveat of any simulator: agreement
    with real silicon has to be measured, not assumed. See
    `oracle/validate_spec_emulator.py`, which scores it against the 806
    hardware-labelled fenced variants and against Spectector verdicts.

Usage:
    from spec_emulator import SpeculativeEmulator
    se = SpeculativeEmulator("arm64")
    r = se.check(instrs)
    r["verdict"]        # "leak" | "safe" | "unrunnable"
"""
from __future__ import annotations

import argparse
import json
import random
import sys
from pathlib import Path
from typing import Iterable, Optional

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from precheck import PreCheck, live_prefix  # noqa: E402

LEAK, SAFE, UNRUNNABLE, ARCH_LEAK = "leak", "safe", "unrunnable", "arch_leak"

_CODE_BASE = 0x0100_0000
_CODE_SIZE = 0x0010_0000
_SANDBOX_BASE = 0x2000_0000
# The sandbox only has to cover what a program can address: Revizor masks
# architectural accesses into the low 8 KiB, and the secret sits just above the
# public region. It is written once per emulator run, so an oversized sandbox
# is paid for on every run -- 4 MiB here cost ~137 ms per candidate.
_SANDBOX_SIZE = 0x0004_0000           # 256 KiB of input-controlled data
_SEED_PTR = _SANDBOX_BASE + _SANDBOX_SIZE // 2
_STACK_PTR = _SANDBOX_BASE + _SANDBOX_SIZE - 0x1000
_PAGE = 0x1000
# Revizor masks architectural addresses into the low 8 KiB of its sandbox
# (`and reg, 0b1111111111111`). The public region must cover at least that, so
# everything an architectural access can reach is identical between the two
# inputs; the secret lives above it.
_PUBLIC_BYTES = 0x4000                # 16 KiB, twice Revizor's mask window
_MAX_DEMAND_PAGES = 64
_DEFAULT_WINDOW = 40                  # instructions of speculative execution
# See gen/precheck.py: sequences here are at most 62 instructions, so 5,000 is
# ~80x the longest and cannot truncate a terminating program.
_MAX_INSNS = 5_000
_TIMEOUT_US = 50_000
# Pre-mapped low region, zeroed and therefore identical between the two inputs,
# so it can never manufacture an observable difference. It exists so a stray
# small-integer pointer does not demand-map a page and flush the translation
# cache on every access.
_LOW_BASE = 0x0
_LOW_SIZE = 0x0010_0000
_LINE_BITS = 6                        # 64-byte cache line

# Mnemonics that serialize speculation, per ISA. A forced speculative window
# stops when it reaches one. x86: Spectector's x86_table.pl maps lfence, mfence
# and sfence to `spbarr`. arm64: Revizor's own FenceInsertionPass emits
# `dsb sy; isb` as its barrier. riscv64: `fence`.
_BARRIERS = {
    "x86_64": {"lfence", "mfence", "sfence", "cpuid"},
    "arm64": {"dsb", "isb", "csdb", "dmb"},
    "riscv64": {"fence", "fence.i", "fence.tso"},
}


class _Arch:
    """Per-ISA Unicorn/capstone wiring."""

    def __init__(self, name: str):
        import capstone as cs
        import unicorn as uc
        self.name = name
        if name == "x86_64":
            from unicorn import x86_const as k
            self.uc_arch, self.uc_mode = uc.UC_ARCH_X86, uc.UC_MODE_64
            self.cs_arch, self.cs_mode = cs.CS_ARCH_X86, cs.CS_MODE_64
            self.pc = k.UC_X86_REG_RIP
            self.sp = k.UC_X86_REG_RSP
            self.gp = [getattr(k, f"UC_X86_REG_{r}") for r in
                       ("RAX", "RBX", "RCX", "RDX", "RSI", "RDI", "RBP",
                        "R8", "R9", "R10", "R11", "R12", "R13", "R14", "R15")]
        elif name == "arm64":
            from unicorn import arm64_const as k
            self.uc_arch, self.uc_mode = uc.UC_ARCH_ARM64, uc.UC_MODE_ARM
            self.cs_arch, self.cs_mode = cs.CS_ARCH_ARM64, cs.CS_MODE_ARM
            self.pc = k.UC_ARM64_REG_PC
            self.sp = k.UC_ARM64_REG_SP
            self.gp = [getattr(k, f"UC_ARM64_REG_X{i}") for i in range(31)]
        elif name == "riscv64":
            from unicorn import riscv_const as k
            self.uc_arch, self.uc_mode = uc.UC_ARCH_RISCV, uc.UC_MODE_RISCV64
            self.cs_arch, self.cs_mode = cs.CS_ARCH_RISCV, cs.CS_MODE_RISCV64
            self.pc = k.UC_RISCV_REG_PC
            self.sp = k.UC_RISCV_REG_SP
            self.gp = [getattr(k, f"UC_RISCV_REG_X{i}") for i in range(1, 32)]
        else:
            raise ValueError(f"unsupported arch {name!r}")


class Branch:
    __slots__ = ("addr", "size", "target", "mnemonic")

    def __init__(self, addr: int, size: int, target: Optional[int], mnemonic: str):
        self.addr, self.size, self.target, self.mnemonic = addr, size, target, mnemonic

    def __repr__(self):  # pragma: no cover - debugging aid
        return f"<{self.mnemonic}@{self.addr:#x}->{self.target:#x}>"


class SpeculativeEmulator:
    def __init__(self, arch: str, window: int = _DEFAULT_WINDOW,
                 observe: str = "lines+pc", precheck: Optional[PreCheck] = None,
                 intel_syntax: bool = False):
        self.arch = _Arch(arch)
        self.intel_syntax = intel_syntax
        self.window = window
        if observe not in ("lines+pc", "lines", "exact+pc"):
            raise ValueError("observe must be lines+pc, lines or exact+pc")
        self.observe = observe
        self.pc = precheck or PreCheck(emulate=False)

    # -- static analysis -------------------------------------------------
    def conditional_branches(self, code: bytes) -> list[Branch]:
        """Conditional branches with a resolvable in-range target."""
        import capstone as cs
        md = cs.Cs(self.arch.cs_arch, self.arch.cs_mode)
        md.detail = True
        out: list[Branch] = []
        end = _CODE_BASE + len(code)
        for ins in md.disasm(code, _CODE_BASE):
            groups = {md.group_name(g) for g in ins.groups}
            # an unconditional jump has no second successor to mispredict
            if "jump" not in groups and "branch_relative" not in groups:
                continue
            target = self._imm_operand(ins)
            if target is None or not (_CODE_BASE <= target < end):
                continue
            fall = ins.address + ins.size
            if target == fall or not (_CODE_BASE <= fall < end):
                continue
            out.append(Branch(ins.address, ins.size, target, ins.mnemonic))
        return out

    def barrier_addresses(self, code: bytes) -> set:
        """Addresses of speculation-serializing instructions."""
        import capstone as cs
        md = cs.Cs(self.arch.cs_arch, self.arch.cs_mode)
        names = _BARRIERS[self.arch.name]
        return {ins.address for ins in md.disasm(code, _CODE_BASE)
                if ins.mnemonic.lower().split()[0] in names}

    @staticmethod
    def _imm_operand(ins) -> Optional[int]:
        """The branch target: a direct branch's immediate operand.

        capstone's immediate operand type differs per architecture, so this
        reads `.imm` from whichever operand exposes a usable one rather than
        comparing against a per-arch type constant. A register-indirect branch
        has no immediate and returns None, which is correct: its target is not
        statically known, so there is no second successor to force.
        """
        for op in getattr(ins, "operands", []):
            if not hasattr(op, "imm"):
                continue
            try:
                val = int(op.imm)
            except (TypeError, ValueError):
                continue
            if val:
                return val
        return None

    # -- machine state ---------------------------------------------------
    def _new_uc(self, code: bytes, sandbox: bytes):
        import unicorn as uc
        a = self.arch
        mu = uc.Uc(a.uc_arch, a.uc_mode)
        mu.mem_map(_CODE_BASE, _CODE_SIZE)
        mu.mem_map(_SANDBOX_BASE, _SANDBOX_SIZE)
        mu.mem_map(_LOW_BASE, _LOW_SIZE)
        mu.mem_write(_CODE_BASE, code)
        mu.mem_write(_SANDBOX_BASE, sandbox)
        for r in a.gp:
            try:
                mu.reg_write(r, _SEED_PTR)
            except uc.UcError:
                pass
        mu.reg_write(a.sp, _STACK_PTR)
        return mu

    def _attach_hooks(self, mu, obs: list, mapped: list, recording: list,
                      barriers: Optional[set] = None):
        """Record observations while `recording[0]` is true; demand-map pages;
        stop a speculative window at a serializing instruction."""
        import unicorn as uc
        barriers = barriers or set()

        def _mem(_mu, access, address, _size, _value, _user):
            if recording[0]:
                obs.append(("d", address >> _LINE_BITS
                            if self.observe != "exact+pc" else address))

        def _code(_mu, address, _size, _user):
            if recording[0] and address in barriers:
                # the fence ends the speculative transaction; do not execute it
                _mu.emu_stop()
                return
            if recording[0] and self.observe != "lines":
                obs.append(("p", address))

        def _unmapped(_mu, _type, address, _size, _value, _user):
            if mapped[0] >= _MAX_DEMAND_PAGES:
                return False
            base = address & ~(_PAGE - 1)
            try:
                _mu.mem_map(base, _PAGE)
                _mu.mem_write(base, b"\x00" * _PAGE)
            except uc.UcError:
                return False
            mapped[0] += 1
            return True

        mu.hook_add(uc.UC_HOOK_MEM_READ | uc.UC_HOOK_MEM_WRITE, _mem)
        mu.hook_add(uc.UC_HOOK_CODE, _code)
        mu.hook_add(uc.UC_HOOK_MEM_READ_UNMAPPED | uc.UC_HOOK_MEM_WRITE_UNMAPPED,
                    _unmapped)

    # -- the two traces --------------------------------------------------
    def _arch_trace(self, code: bytes, sandbox: bytes) -> tuple[Optional[list], str]:
        import unicorn as uc
        mu = self._new_uc(code, sandbox)
        obs, mapped, rec = [], [0], [True]
        self._attach_hooks(mu, obs, mapped, rec)
        try:
            mu.emu_start(_CODE_BASE, _CODE_BASE + len(code),
                         timeout=_TIMEOUT_US, count=_MAX_INSNS)
        except uc.UcError as e:
            return None, f"architectural run faulted: {e}"
        return obs, ""

    def _spec_trace(self, code: bytes, sandbox: bytes,
                    branches: list[Branch]) -> tuple[Optional[list], str]:
        """Architectural observations plus, for each conditional branch, the
        observations made on the path the branch did NOT take, up to the
        speculation window or the first serializing instruction."""
        import unicorn as uc
        end = _CODE_BASE + len(code)
        total: list = []
        base, err = self._arch_trace(code, sandbox)
        if base is None:
            return None, err
        total.extend(base)
        barriers = self.barrier_addresses(code)

        for br in branches:
            mu = self._new_uc(code, sandbox)
            obs, mapped, rec = [], [0], [False]
            self._attach_hooks(mu, obs, mapped, rec, barriers)
            try:
                # 1. reach the branch
                mu.emu_start(_CODE_BASE, br.addr, timeout=_TIMEOUT_US, count=_MAX_INSNS)
                if mu.reg_read(self.arch.pc) != br.addr:
                    continue          # branch not reached on this input
                ctx = mu.context_save()
                # 2. resolve the branch architecturally
                mu.emu_start(br.addr, end, timeout=_TIMEOUT_US, count=1)
                resolved = mu.reg_read(self.arch.pc)
                # 3. force the other successor
                fall = br.addr + br.size
                mispredicted = br.target if resolved == fall else fall
                if not (_CODE_BASE <= mispredicted < end):
                    continue
                mu.context_restore(ctx)
                rec[0] = True
                mu.reg_write(self.arch.pc, mispredicted)
                mu.emu_start(mispredicted, end, timeout=_TIMEOUT_US,
                             count=self.window)
            except uc.UcError:
                # a fault inside the speculative window is normal: on real
                # hardware the misspeculated path is squashed. Keep whatever
                # it observed before faulting.
                pass
            rec[0] = False
            total.extend(("s",) + o for o in obs)
        return total, ""

    def _input_pair(self, rng: random.Random) -> tuple[bytes, bytes]:
        """Two sandbox images identical in the public region and different in
        the secret region above it."""
        public = rng.randbytes(_PUBLIC_BYTES)
        tail = _SANDBOX_SIZE - _PUBLIC_BYTES
        s1 = bytes([rng.randrange(1, 128)]) * tail
        s2 = bytes([rng.randrange(128, 256)]) * tail
        return public + s1, public + s2

    # -- the check -------------------------------------------------------
    def check(self, instrs: list[str], *, n_pairs: int = 4, seed: int = 0) -> dict:
        """Verdict for one sequence.

        `n_pairs` independent input pairs are tried; the first pair whose
        architectural observations agree while its speculative observations
        differ makes the verdict `leak`.
        """
        res = {
            "arch": self.arch.name, "verdict": UNRUNNABLE, "reason": None,
            "n_branches": 0, "pairs_tried": 0, "pairs_usable": 0,
            "arch_leak_pairs": 0,
            "window": self.window, "observe": self.observe,
        }
        # Intel-syntax Revizor programs carry their own labels and exit macro,
        # so the live-prefix heuristic (which cuts at the first `ret`/`jmp`)
        # would truncate real control flow; run them whole.
        body = instrs if self.intel_syntax else live_prefix(instrs)
        if len(body) < 2:
            res["reason"] = "fewer than 2 reachable instructions"
            return res
        code, err = self.pc.machine_code(body, self.arch.name,
                                         intel_syntax=self.intel_syntax)
        if not code:
            res["reason"] = f"did not assemble: {err}"
            return res

        branches = self.conditional_branches(code)
        res["n_branches"] = len(branches)
        # With no branch to mispredict there is no conditional-branch
        # speculative leak, but the architectural comparison below still runs:
        # a secret that is observable WITHOUT speculation must be reported, not
        # silently called safe.
        rng = random.Random(seed)
        n_arch_leak = 0
        for i in range(n_pairs):
            res["pairs_tried"] = i + 1
            fills = self._input_pair(rng)
            a1, e1 = self._arch_trace(code, fills[0])
            a2, e2 = self._arch_trace(code, fills[1])
            if a1 is None or a2 is None:
                res["reason"] = e1 or e2
                continue
            if a1 != a2:
                # the secret is visible without any speculation
                n_arch_leak += 1
                continue
            res["pairs_usable"] += 1
            if not branches:
                continue
            s1, _ = self._spec_trace(code, fills[0], branches)
            s2, _ = self._spec_trace(code, fills[1], branches)
            if s1 is None or s2 is None:
                continue
            if s1 != s2:
                res.update(verdict=LEAK, reason="speculative observations differ "
                                                "for architecturally equivalent inputs")
                return res
        res["arch_leak_pairs"] = n_arch_leak
        if res["pairs_usable"] == 0:
            if n_arch_leak:
                res.update(verdict=ARCH_LEAK,
                           reason="secret observable without speculation in "
                                  f"{n_arch_leak}/{res['pairs_tried']} pairs")
            else:
                res.update(verdict=UNRUNNABLE,
                           reason=res["reason"] or "no usable input pair")
            return res
        if not branches:
            res.update(verdict=SAFE,
                       reason="no conditional branch to mispredict, and the "
                              "secret is not observable architecturally")
            return res
        res.update(verdict=SAFE, reason="no speculative difference found")
        return res


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--asm", type=Path, required=True,
                    help="file with one instruction per line")
    ap.add_argument("--arch", default="x86_64",
                    choices=["x86_64", "arm64", "riscv64"])
    ap.add_argument("--window", type=int, default=_DEFAULT_WINDOW)
    ap.add_argument("--pairs", type=int, default=4)
    a = ap.parse_args(argv)
    instrs = [l for l in a.asm.read_text().splitlines() if l.strip()]
    se = SpeculativeEmulator(a.arch, window=a.window)
    print(json.dumps(se.check(instrs, n_pairs=a.pairs), indent=1))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
