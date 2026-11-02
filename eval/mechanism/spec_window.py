"""spec_window.py — the non-learned *mechanism* rule.

For every speculation trigger in a sequence, compute its speculative window:
the instructions that execute between the moment speculation can start and the
first memory read that transmits the speculatively-obtained value. A fence on
that executed path cuts the window. `mechanism_pred` calls a record BENIGN iff
the windows are cut (mode "all": every window; "any": at least one).

This is the hypothesis H1 scorer of
docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md. Unlike the
interior-fence bar (eval/mechanism/bars.py) it does not care where a fence sits
in the sequence, only whether it sits inside a window — so the two disagree on
the mid-sequence counterfactuals (cf_wrong_path, cf_nonleak, ...).

Input is the AT&T objdump text of Revizor programs
(eval/data/revizor_hwlabel_variants.jsonl): %r14 sandbox base, `andq` masks,
`lock` on its own line, labels stripped, V1 taken block right after `jcc; jmp`.

Definitions
-----------
def-use       Registers are mapped to their 64-bit parent. The last register
              operand is the destination (none for cmp/test/bt). mov*/lea/set*/
              3-operand imul are pure definitions; a pure 32/64-bit write kills
              earlier dependence, an 8/16-bit write merges. Memory-operand
              registers are address reads. Flags are a resource like a register.
chain(i)      Backward def-use closure of instruction i's inputs inside its
              straight-line run (stops at the previous jump).
start(i)      The latest long-latency instruction in chain(i) — a memory read
              or an (i)div — the input the trigger waits on; else the earliest
              chain instruction; else i-1.
transmitter   A memory read (loads and read-modify-write; not pure stores:
              stores do not touch the cache before retirement).
SPECTRE_V1    trigger = jcc at i followed by jmp (Revizor layout); its inputs
              are the flags. The mispredicted taken block starts at i+2.
              end = first memory read in that block.
              path = (start, i) ∪ [b, end), b = after the jmp (fences between jcc
              and jmp are on the fall-through: not on the path).
SPECTRE_V4    trigger = each memory write S at i; its inputs are S's address
              registers (a fence once the address is computable lets the store
              resolve before younger loads can bypass it).
              end = first later read whose address depends on a value read
              after S. path = (start, end).
MDS / L1TF    trigger = each memory read L at i.
              end = first later read whose address depends on L's value.
              path = (i, end).

Calibration log (dev = the pinned 806 hardware-labelled variants only;
mode chosen on dev, then frozen — see FROZEN_MODE):
  r0  as first written: 0.9305, 49 abstains, 0 non-abstain errors beyond
      the 7 entry/tail variants that mitigate on hardware.
  r1  generic parser fixes, none label-driven: follow Revizor's
      `jmp <.bb_N>` into the next laid-out block (lost L1TF/MDS transmitters);
      split mnemonics on any whitespace (`lock btsw\t...`); `loop*`/`j*cxz`
      are conditional branches (read rcx). -> 0.9913 (799/806), 0 abstains.
  r2  V1 trigger skips fences between jcc and its fall-through jmp
      (cf_wrong_path shape; without it the rule abstained there). Dev unchanged.
  r3  (review I3) (i)div counts as long-latency for start(i). Dev unchanged.
  "all" and "any" tie on dev (0.9913); FROZEN_MODE = "all" because a leak
  survives while any window is uncut. Residual 7 errors = entry/tail fences
  that hardware says mitigate — no fence-on-path account explains them; the
  interior-fence bar misses the same 7.
"""
from __future__ import annotations

import re
from typing import NamedTuple, Optional

FENCES = {"lfence", "mfence"}
FROZEN_MODE = "all"

_REG64 = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp"] + [f"r{i}" for i in range(8, 16)]
_ALIAS: dict[str, tuple[str, int]] = {}
for _r in ("a", "b", "c", "d"):
    _ALIAS.update({f"r{_r}x": (f"r{_r}x", 64), f"e{_r}x": (f"r{_r}x", 32),
                   f"{_r}x": (f"r{_r}x", 16), f"{_r}l": (f"r{_r}x", 8), f"{_r}h": (f"r{_r}x", 8)})
for _r in ("si", "di", "bp", "sp"):
    _ALIAS.update({f"r{_r}": (f"r{_r}", 64), f"e{_r}": (f"r{_r}", 32),
                   _r: (f"r{_r}", 16), f"{_r}l": (f"r{_r}", 8)})
for _i in range(8, 16):
    _ALIAS.update({f"r{_i}": (f"r{_i}", 64), f"r{_i}d": (f"r{_i}", 32),
                   f"r{_i}w": (f"r{_i}", 16), f"r{_i}b": (f"r{_i}", 8)})

_REG_RE = re.compile(r"%([a-z0-9]+)")
_FLAG_SETTERS = ("add", "sub", "and", "or", "xor", "adc", "sbb", "cmp", "test", "inc", "dec",
                 "neg", "shl", "shr", "sar", "sal", "rol", "ror", "bt", "imul", "mul", "div",
                 "idiv", "bsf", "bsr", "lzcnt", "tzcnt", "popcnt")
FLAGS = "flags"


class Window(NamedTuple):
    start: int
    trigger: int
    end: int
    path: tuple[int, ...]


class _Ins(NamedTuple):
    mn: str
    reads: frozenset      # registers (and FLAGS) read, incl. address registers
    addr: frozenset       # registers inside the memory operand
    defs: frozenset       # registers (and FLAGS) written
    kills: frozenset      # defs that fully overwrite (pure 32/64-bit writes, FLAGS)
    reads_mem: bool
    writes_mem: bool
    tgt: str = ""         # jump target label (labels survive in `<...>`)


def _split_ops(s: str) -> list[str]:
    out, depth, cur = [], 0, ""
    for ch in s:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip())
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def _reg(op: str) -> Optional[tuple[str, int]]:
    return _ALIAS.get(op[1:]) if op.startswith("%") else None


def _regs_in(op: str) -> set[str]:
    return {_ALIAS[r][0] for r in _REG_RE.findall(op) if r in _ALIAS}


def _is_jump(mn: str) -> bool:
    return mn.startswith(("j", "loop"))


def _is_cond(mn: str) -> bool:
    return _is_jump(mn) and not mn.startswith("jmp")


def _is_boundary(q: "_Ins") -> bool:
    """A jump ends a straight-line run unless it is Revizor's `jmp <.bb_N>` to
    the block laid out right after it (labels are stripped from the text)."""
    return _is_jump(q.mn) and not (q.mn.startswith("jmp") and q.tgt.startswith(".bb_"))


def _parse(line: str) -> Optional[_Ins]:
    parts = line.split(None, 1)
    if parts and parts[0] == "lock":
        parts = parts[1].split(None, 1) if len(parts) > 1 else []
    if not parts:
        return None
    mn, rest = parts[0], (parts[1] if len(parts) > 1 else "")
    if _is_jump(mn):
        reads, defs = ({FLAGS} if _is_cond(mn) else set()), set()
        if mn.startswith("loop") or mn in ("jrcxz", "jecxz"):
            reads.add("rcx")
            defs.add("rcx") if mn.startswith("loop") else None
        tgt = rest.rsplit("<", 1)[-1].rstrip(">") if "<" in rest else ""
        return _Ins(mn, frozenset(reads), frozenset(), frozenset(defs), frozenset(defs), False, False, tgt)
    ops = _split_ops(rest) if rest else []
    mem = [o for o in ops if "(" in o]
    addr = set().union(*(_regs_in(o) for o in mem)) if mem else set()
    last = ops[-1] if ops else ""
    last_mem = "(" in last
    is_lea = mn.startswith("lea")
    no_dest = (mn.startswith("cmp") or mn.startswith("test") or re.fullmatch(r"bt[wlq]?", mn) is not None
               or mn.startswith("prefetch") or mn.startswith("nop"))
    one_op_muldiv = len(ops) == 1 and re.match(r"i?(mul|div)", mn) is not None
    pure_store = last_mem and (mn.startswith("mov") or mn.startswith("set") or mn.startswith("stos"))
    reads_mem = bool(mem) and not is_lea and not pure_store and not mn.startswith("nop")
    writes_mem = last_mem and not no_dest and not one_op_muldiv and not is_lea

    reads: set[str] = set(addr)
    defs: set[str] = set()
    kills: set[str] = set()
    for o in ops[:-1] if ops else []:
        if (r := _reg(o)):
            reads.add(r[0])
    if one_op_muldiv:
        if (r := _reg(last)):
            reads.add(r[0])
        reads |= {"rax", "rdx"} if "div" in mn else {"rax"}
        defs |= {"rax", "rdx"}
    elif mn.startswith("xchg"):
        for o in ops:
            if (r := _reg(o)):
                reads.add(r[0])
                defs.add(r[0])
    elif mn in ("cltq", "cwtl"):
        reads.add("rax"); defs.add("rax")
    elif mn in ("cqto", "cltd", "cwtd"):
        reads.add("rax"); defs.add("rdx")
    elif (r := _reg(last)):
        if no_dest:
            reads.add(r[0])
        else:
            defs.add(r[0])
            pure = (mn.startswith("mov") or is_lea or mn.startswith("set")
                    or (mn.startswith("imul") and len(ops) == 3))
            if pure and r[1] >= 32:
                kills.add(r[0])
            elif not pure or r[1] < 32:
                reads.add(r[0])
            if mn.startswith("cmov"):
                reads.add(r[0])
    if mn.startswith(("cmov", "set", "adc", "sbb", "rcl", "rcr")):
        reads.add(FLAGS)
    if mn.startswith(_FLAG_SETTERS) and not mn.startswith("cmov"):
        defs.add(FLAGS)
        if not mn.startswith(("adc", "sbb")):
            kills.add(FLAGS)
    return _Ins(mn, frozenset(reads), frozenset(addr), frozenset(defs), frozenset(kills),
                reads_mem, writes_mem)


def _is_fence(line: str) -> bool:
    return line.strip() in FENCES


def _parsed(seq: list[str]) -> list[Optional[_Ins]]:
    return [None if _is_fence(x) else _parse(x) for x in seq]


def _run_start(p: list[Optional[_Ins]], i: int) -> int:
    for j in range(i - 1, -1, -1):
        if p[j] is not None and _is_boundary(p[j]):
            return j + 1
    return 0


def _chain(p: list[Optional[_Ins]], i: int, needed: set[str]) -> list[int]:
    need, chain = set(needed), []
    for j in range(i - 1, _run_start(p, i) - 1, -1):
        q = p[j]
        if q is None or not (q.defs & need):
            continue
        chain.append(j)
        need -= q.kills & need
        need |= q.reads
    return chain


def _start(p: list[Optional[_Ins]], i: int, needed: set[str]) -> int:
    chain = _chain(p, i, needed)
    loads = [j for j in chain if p[j].reads_mem or re.match(r"i?div", p[j].mn)]
    if loads:
        return max(loads)
    return min(chain) if chain else i - 1


def _propagate(q: _Ins, taint: set[str]) -> None:
    if q.reads & taint:
        taint |= q.defs
    else:
        taint -= q.kills


def _forward_transmit(p: list[Optional[_Ins]], i: int, taint: set[str], every_read: bool) -> Optional[int]:
    """First memory read after i whose address registers are tainted. With
    every_read (V4), each read after i adds its value to the taint."""
    taint = set(taint)
    for k in range(i + 1, len(p)):
        q = p[k]
        if q is None:
            continue
        if q.mn.startswith("jmp") and _is_boundary(q):
            return None
        if q.reads_mem and q.addr & taint:
            return k
        _propagate(q, taint)
        if every_read and q.reads_mem:
            taint |= q.defs
    return None


def windows(seq: list[str], cls: str) -> list[Window]:
    p = _parsed(seq)
    out: list[Window] = []
    for i, q in enumerate(p):
        if q is None:
            continue
        if cls == "SPECTRE_V1":
            if not _is_cond(q.mn):
                continue
            # next code line must be the fall-through `jmp` (fences between the
            # jcc and the jmp — cf_wrong_path — sit on the fall-through path)
            nxt = next((k for k in range(i + 1, len(p)) if p[k] is not None), None)
            if nxt is None or not p[nxt].mn.startswith("jmp"):
                continue
            b = nxt + 1
            stop = next((k for k in range(b, len(p)) if p[k] is not None and _is_boundary(p[k])), len(p))
            end = next((k for k in range(b, stop) if p[k] is not None and p[k].reads_mem), None)
            if end is None:
                continue
            s = _start(p, i, {FLAGS})
            out.append(Window(s, i, end, tuple(range(s + 1, i)) + tuple(range(b, end))))
        elif cls == "SPECTRE_V4":
            if not q.writes_mem:
                continue
            end = _forward_transmit(p, i, set(), every_read=True)
            if end is None:
                continue
            s = _start(p, i, set(q.addr))
            out.append(Window(s, i, end, tuple(range(s + 1, end))))
        elif cls in ("MDS", "L1TF"):
            if not q.reads_mem:
                continue
            end = _forward_transmit(p, i, set(q.defs), every_read=False)
            if end is None:
                continue
            out.append(Window(i, i, end, tuple(range(i + 1, end))))
    return out


def window_cut(seq: list[str], w: Window) -> bool:
    return any(_is_fence(seq[k]) for k in w.path)


def mechanism_pred(rec: dict, mode: str = FROZEN_MODE) -> Optional[str]:
    cls = rec.get("vuln_class") or rec["label"]
    seq = rec["sequence"]
    ws = windows(seq, cls)
    if not ws:
        return None
    cut = [window_cut(seq, w) for w in ws]
    return "BENIGN" if (all(cut) if mode == "all" else any(cut)) else cls
