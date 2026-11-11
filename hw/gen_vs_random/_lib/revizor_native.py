#!/usr/bin/env python3
"""Revizor-native test programs as token sequences, and back.

A Revizor test case is Intel-syntax text with invariants the fuzzer relies on:
the sandbox base is r14, every memory access is preceded by a mask of its
index register, basic blocks only jump forward. Generation works on UNITS --
one instruction together with the `# instrumentation` lines in front of it --
so an emitted program keeps those invariants by construction, whatever order
the units come in. Registers stay literal (instrumentation and implicit
operands are tied to specific registers); immediates of the instruction line
are lifted to `<imm>` and re-drawn from the corpus on emit.

Token stream of a program: unit tokens, with `<JCC cc>` closing a basic block
that ends in a conditional branch and `<BB>` closing one that does not.
"""
from __future__ import annotations

import random
import re
from dataclasses import dataclass, field
from typing import Dict, List, Optional

HEADER = [".intel_syntax noprefix", ".section .data.main", ".function_0:"]
START = ".macro.measurement_start: nop qword ptr [rax + 0xff]"
END = ".macro.measurement_end: nop qword ptr [rax + 0xff]"
FOOTER = ["jmp .test_case_exit", ".section .data.main", ".test_case_exit:nop"]
SEP = " | "
_INSTR = "# instrumentation"
_IMM = re.compile(r"(?<![\w.])-?(?:0x[0-9a-fA-F]+|0b[01]+|\d+)\b")
_MEM = re.compile(r"\[([^\]]*)\]")
_JCC = re.compile(r"^(j[a-z]+|loop[a-z]*)\s+\.(\S+)")
_MASK = re.compile(r"^and (\w+), 0b1{10,13}0{0,3} " + re.escape(_INSTR) + "$")


@dataclass
class Block:
    units: List[List[str]] = field(default_factory=list)
    jcc: Optional[str] = None          # conditional mnemonic ending the block


def parse_program(text: str) -> List[Block]:
    """Basic blocks of the measured region, each a list of units."""
    blocks, cur, pending, inside = [Block()], None, [], False
    for raw in text.splitlines():
        line = " ".join(raw.split())
        if not line:
            continue
        if line.startswith(".macro.measurement_start"):
            inside = True
            continue
        if line.startswith(".macro.measurement_end"):
            break
        if not inside:
            continue
        if re.match(r"^\.bb_[\w.]+:$", line):
            if blocks[-1].units or blocks[-1].jcc:
                blocks.append(Block())
            continue
        if line.startswith(".exit_"):
            continue
        m = _JCC.match(line)
        if m:
            if m.group(1) != "jmp":
                blocks[-1].jcc = m.group(1)
            continue
        if line.endswith(_INSTR):
            pending.append(line)
            continue
        blocks[-1].units.append(pending + [line])
        pending = []
    return [b for b in blocks if b.units or b.jcc]


def _lift(unit: List[str]) -> str:
    *pre, ins = unit
    ins = _IMM.sub("<imm>", ins)
    return SEP.join(pre + [ins])


def tokenize(blocks: List[Block]) -> List[str]:
    toks = []
    for i, b in enumerate(blocks):
        toks += [_lift(u) for u in b.units]
        if b.jcc:
            toks.append(f"<JCC {b.jcc}>")
        elif i < len(blocks) - 1:
            toks.append("<BB>")
    return toks


def imm_pool(texts: List[str]) -> Dict[str, List[str]]:
    """Immediates seen per lifted unit, in corpus order (re-drawn on emit)."""
    pool: Dict[str, List[str]] = {}
    for t in texts:
        for b in parse_program(t):
            for u in b.units:
                vals = _IMM.findall(u[-1])
                if vals:
                    pool.setdefault(_lift(u), []).append(vals)
    return pool


def emit(tokens: List[str], rng: random.Random, imm_pool: Dict[str, List] = None) -> str:
    """Program text for a token stream. Any order of unit tokens is valid:
    block k ends in `jcc .bb_0.{k+1}` + `jmp` past it (or to the exit), so
    every branch goes forward."""
    blocks: List[Block] = [Block()]
    for t in tokens:
        if t.startswith("<JCC "):
            blocks[-1].jcc = t[5:-1]
            blocks.append(Block())
        elif t == "<BB>":
            blocks.append(Block())
        elif not t.startswith("<"):
            lines = t.split(SEP)
            if "<imm>" in lines[-1]:
                choices = (imm_pool or {}).get(t)
                vals = list(rng.choice(choices)) if choices else []
                lines[-1] = re.sub(
                    "<imm>", lambda m: vals.pop(0) if vals else str(rng.randint(1, 100)),
                    lines[-1])
            blocks[-1].units.append(lines)
    while len(blocks) > 1 and not blocks[-1].units and not blocks[-1].jcc:
        blocks.pop()
    out = HEADER + [".bb_0.0:", START]
    n = len(blocks)
    for k, b in enumerate(blocks):
        if k:
            out.append(f".bb_0.{k}:")
        for u in b.units:
            out += u
        nxt = f".bb_0.{k + 1}" if k + 1 < n else ".exit_0"
        if b.jcc:
            skip = f".bb_0.{k + 2}" if k + 2 < n else ".exit_0"
            if nxt == ".exit_0":
                out += [f"{b.jcc} .exit_0"]
            else:
                out += [f"{b.jcc} {nxt}", f"jmp {skip}"]
        elif k + 1 < n:
            out.append(f"jmp {nxt}")
    out += [".exit_0:", END] + FOOTER
    return "\n".join(out) + "\n"


def check_invariants(text: str) -> List[str]:
    """Violations of the structural invariants ([] = fine)."""
    errs, masked = [], set()
    labels, seen = [], set()
    for raw in text.splitlines():
        line = " ".join(raw.split())
        if not line or line.startswith(".macro"):
            continue
        m = re.match(r"^\.(bb_[\w.]+|exit_\d+):$", line)
        if m:
            seen.add(m.group(1))
            masked = set()
            continue
        j = _JCC.match(line)
        if j:
            if j.group(2) in seen:
                errs.append(f"backward branch: {line}")
            masked = set()
            continue
        mk = _MASK.match(line)
        if mk:
            masked.add(mk.group(1))
            continue
        if line.startswith(".") or line.endswith(_INSTR) and not _MEM.search(line):
            continue
        for mem in _MEM.findall(line):
            if line.startswith("lea "):
                continue
            parts = [p.strip() for p in mem.split("+")]
            if parts[0] != "r14":
                errs.append(f"memory operand not based on r14: {line}")
            elif len(parts) < 2 or parts[1] not in masked:
                errs.append(f"index without a mask: {line}")
        if not line.endswith(_INSTR):
            masked = set()
    return errs


# --- factored stream ---------------------------------------------------------
FAMILIES = {
    "a": {64: "rax", 32: "eax", 16: "ax", 8: "al"},
    "b": {64: "rbx", 32: "ebx", 16: "bx", 8: "bl"},
    "c": {64: "rcx", 32: "ecx", 16: "cx", 8: "cl"},
    "d": {64: "rdx", 32: "edx", 16: "dx", 8: "dl"},
    "S": {64: "rsi", 32: "esi", 16: "si", 8: "sil"},
    "D": {64: "rdi", 32: "edi", 16: "di", 8: "dil"},
}
_REG = {name: (fam, w) for fam, ws in FAMILIES.items() for w, name in ws.items()}
_REG_RE = re.compile(r"\b(" + "|".join(sorted(_REG, key=len, reverse=True)) + r")\b")
# instructions whose behaviour depends on registers they do not name; their
# instrumentation is written for those registers, so the unit stays literal
_IMPLICIT = re.compile(
    r"^(lock |rep[a-z]* )?(div|idiv|mul|cbw|cwde|cdqe|cwd|cdq|cqo|cmpxchg\w*|xadd|lahf|sahf|"
    r"movs[bwdq]?|stos[bwdq]?|lods[bwdq]?|scas[bwdq]?|cmps[bwdq]?|xlat\w*|loop\w*|jr?cxz)\b")
_SHIFT_CL = re.compile(r"^(sh[lr]d?|sa[lr]|ro[lr]|rc[lr])\b.*,\s*cl$")
_IMUL1 = re.compile(r"^imul [^,]+$")
_SLOT = re.compile(r"<(\d+):(\d+)>")


def _factor(unit_token: str):
    lines = unit_token.split(SEP)
    ins = lines[-1]
    if _IMPLICIT.match(ins) or _SHIFT_CL.match(ins) or _IMUL1.match(ins):
        return unit_token, []
    fams = []
    for m in _REG_RE.finditer(ins):
        f = _REG[m.group(1)][0]
        if f not in fams:
            fams.append(f)

    def slot(m):
        f, w = _REG[m.group(1)]
        return f"<{fams.index(f)}:{w}>" if f in fams else m.group(1)
    shape = SEP.join(_REG_RE.sub(slot, l) for l in lines)
    return shape, fams


def tokenize_factored(blocks: List[Block]) -> List[str]:
    out = []
    for t in tokenize(blocks):
        if t.startswith("<"):
            out.append(t)
            continue
        shape, fams = _factor(t)
        out += [shape] + [f"<R {f}>" for f in fams]
    return out


def defactor(tokens: List[str], rng: random.Random) -> List[str]:
    """Unit tokens for a factored stream. A shape takes the register tokens
    that follow it; missing ones are drawn at random, surplus ones dropped, and
    two slots never share a family (a shape was observed with distinct ones)."""
    out, i = [], 0
    while i < len(tokens):
        t = tokens[i]
        i += 1
        if t.startswith("<R "):
            continue
        n = 1 + max((int(m.group(1)) for m in _SLOT.finditer(t)), default=-1)
        fams = []
        while len(fams) < n and i < len(tokens) and tokens[i].startswith("<R "):
            f = tokens[i][3:-1]
            i += 1
            if f in FAMILIES and f not in fams:
                fams.append(f)
        free = [f for f in FAMILIES if f not in fams]
        rng.shuffle(free)
        fams += free[: n - len(fams)]
        out.append(_SLOT.sub(lambda m: FAMILIES[fams[int(m.group(1))]][int(m.group(2))], t))
    return out
