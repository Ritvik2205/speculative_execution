#!/usr/bin/env python3
import argparse
import json
import random
import re
from pathlib import Path
from typing import List, Dict


ARM64_BRANCH_COND = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD = re.compile(r"\b(ldr(b|h|sh|sw)?|ldr)\b", re.IGNORECASE)
ARM64_REG = re.compile(r"\b([wx])([0-9]{1,2})\b")

# x86 patterns
X86_BRANCH_COND = re.compile(r"\bj([a-z]{1,3})\b", re.IGNORECASE)  # jcc opcodes
X86_LOAD = re.compile(r"\bmov\b|\blea\b", re.IGNORECASE)
X86_REG = re.compile(r"\b(r(1[0-5]|[0-9])d?|e[abcd]x|[abcd]x|[sd]i|[sb]p)\b", re.IGNORECASE)


def read_text_lines(p: Path) -> List[str]:
    return p.read_text(errors="ignore").splitlines()


def normalize_line(line: str) -> str:
    s = line.strip()
    if not s or s.startswith('.') or s.endswith(':'):
        return ""
    s = s.split(';', 1)[0].strip()
    return s


def extract_windows_from_file(p: Path, window_before=8, window_after=12):
    raw = read_text_lines(p)
    norm = [normalize_line(l) for l in raw]
    is_x86 = any(tok in p.name for tok in ("x86", "x64")) or any(
        re.search(r"\b\.(text|globl)\b", ln) and re.search(r"%", ln) for ln in raw
    )
    branch_re = X86_BRANCH_COND if is_x86 else ARM64_BRANCH_COND
    idxs = [i for i, l in enumerate(norm) if l and branch_re.search(l)]
    for i in idxs:
        start = max(0, i - window_before)
        end = min(len(norm), i + window_after + 1)
        seq = [l for l in norm[start:end] if l]
        if len(seq) >= 5:
            yield seq, i - start


def collect_regs(line: str) -> Dict[str, set]:
    # very rough def/use heuristic: first operand often def, others use
    regs = [m.group(0) for m in ARM64_REG.finditer(line)] or [m.group(0) for m in X86_REG.finditer(line)]
    parts = line.split(None, 1)
    dest = set()
    use = set()
    if regs:
        if len(parts) > 1 and ',' in parts[1]:
            dest.add(regs[0])
            use.update(regs[1:])
        else:
            use.update(regs)
    return {"def": dest, "use": use}


def can_swap(a: str, b: str) -> bool:
    ra = collect_regs(a)
    rb = collect_regs(b)
    # no def-use overlap and not barriers/branches
    if ARM64_BRANCH_COND.search(a) or ARM64_BRANCH_COND.search(b):
        return False
    if any(tok in a.lower() for tok in ("dsb", "dmb", "isb", "csdb")):
        return False
    if any(tok in b.lower() for tok in ("dsb", "dmb", "isb", "csdb")):
        return False
    return not (ra["def"] & (rb["def"] | rb["use"]) or rb["def"] & (ra["def"] | ra["use"]))


def rename_registers(seq: List[str]) -> List[str]:
    # Build a random bijection for x0..x31 and w0..w31 used in window
    used = sorted({m.group(0) for line in seq for m in (list(ARM64_REG.finditer(line)) + list(X86_REG.finditer(line)))})
    mapping: Dict[str, str] = {}
    pool_x = [f"x{i}" for i in range(32)]
    pool_w = [f"w{i}" for i in range(32)]
    pool_rx = [f"r{i}" for i in range(16)] + ["rax","rbx","rcx","rdx","rsi","rdi","rbp","rsp"]
    pool_ex = ["eax","ebx","ecx","edx","esi","edi","ebp","esp"]
    random.shuffle(pool_x)
    random.shuffle(pool_w)
    ix = 0
    iw = 0
    for reg in used:
        if reg.startswith('x'):
            mapping[reg] = pool_x[ix]; ix += 1
        elif reg.startswith('w'):
            mapping[reg] = pool_w[iw]; iw += 1
        else:
            # x86
            if reg.startswith('r') and reg not in ("rax","rbx","rcx","rdx","rsi","rdi","rbp","rsp"):
                mapping[reg] = pool_rx[ix % len(pool_rx)]; ix += 1
            else:
                mapping[reg] = (pool_ex[iw % len(pool_ex)]) if pool_ex else reg; iw += 1
    def sub(line: str) -> str:
        return ARM64_REG.sub(lambda m: mapping.get(m.group(0), m.group(0)), line)
    return [sub(l) for l in seq]


def insert_nops(seq: List[str], prob=0.1) -> List[str]:
    out = []
    for l in seq:
        out.append(l)
        if random.random() < prob:
            out.append("nop")
    return out


def swap_locally(seq: List[str], trials=2) -> List[str]:
    s = seq[:]
    for _ in range(trials):
        i = random.randrange(0, max(1, len(s) - 1))
        if can_swap(s[i], s[i + 1]):
            s[i], s[i + 1] = s[i + 1], s[i]
    return s


def insert_barrier_counterfactual(seq: List[str]) -> List[str]:
    # After the first load following the first conditional branch, insert dsb sy
    out = seq[:]
    branch_idx = next((i for i, l in enumerate(out) if ARM64_BRANCH_COND.search(l)), None)
    if branch_idx is None:
        return out
    load_idx = next((i for i in range(branch_idx + 1, len(out)) if ARM64_LOAD.search(out[i])), None)
    if load_idx is None:
        return out
    out.insert(load_idx, "dsb sy")
    return out


def recompose_from_slices(seq: List[str], min_len=5) -> List[str]:
    # Slice the window into up to 3 chunks and recombine in a safe order if swappable
    if len(seq) < min_len + 2:
        return seq
    a = seq[: len(seq)//3]
    b = seq[len(seq)//3 : 2*len(seq)//3]
    c = seq[2*len(seq)//3 :]
    # try b+a+c if boundary swap is safe
    if a and b and can_swap(a[-1], b[0]):
        return b + a + c
    # else a+c+b if safe
    if b and c and can_swap(b[-1], c[0]):
        return a + c + b
    return seq


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--asm-dir", type=Path, default=Path("c_vulns/asm_code"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/augmented_windows.jsonl"))
    ap.add_argument("--seed", type=int, default=123)
    ap.add_argument("--per-file-cap", type=int, default=64)
    ap.add_argument("--boost-classes", type=str, default="BRANCH_HISTORY_INJECTION,INCEPTION,RETBLEED,L1TF,MDS,SPECTRE_V1,SPECTRE_V2,MELTDOWN")
    ap.add_argument("--boost-factor", type=int, default=3)
    args = ap.parse_args()
    random.seed(args.seed)
    args.out.parent.mkdir(parents=True, exist_ok=True)

    written = 0
    with args.out.open("w") as fout:
        boost_set = {c.strip().upper() for c in args.boost_classes.split(',') if c.strip()}
        for asm in Path(args.asm_dir).glob("*.s"):
            count = 0
            for seq, _ in extract_windows_from_file(asm):
                if count >= args.per_file_cap:
                    break
                # original (assume vulnerable)
                vuln_label = 'UNKNOWN'
                low = asm.name.lower()
                if 'spectre_1' in low or 'spectre_v1' in low:
                    vuln_label = 'SPECTRE_V1'
                elif 'spectre_2' in low:
                    vuln_label = 'SPECTRE_V2'
                elif 'meltdown' in low:
                    vuln_label = 'MELTDOWN'
                elif 'retbleed' in low:
                    vuln_label = 'RETBLEED'
                elif 'bhi' in low:
                    vuln_label = 'BRANCH_HISTORY_INJECTION'
                elif 'inception' in low:
                    vuln_label = 'INCEPTION'
                elif 'l1tf' in low:
                    vuln_label = 'L1TF'
                elif 'mds' in low:
                    vuln_label = 'MDS'
                rec = {"source_file": str(asm), "arch": "arm64" if "arm64" in asm.name else "unknown", "label": "vuln", "vuln_label": vuln_label, "sequence": seq}
                fout.write(json.dumps(rec) + "\n"); written += 1
                # register renaming
                fout.write(json.dumps({**rec, "sequence": rename_registers(seq)}) + "\n"); written += 1
                # local swaps
                fout.write(json.dumps({**rec, "sequence": swap_locally(seq)}) + "\n"); written += 1
                # nop insertion
                fout.write(json.dumps({**rec, "sequence": insert_nops(seq)}) + "\n"); written += 1
                # recomposed variant
                fout.write(json.dumps({**rec, "sequence": recompose_from_slices(seq)}) + "\n"); written += 1
                # counterfactual with barrier (benign)
                fout.write(json.dumps({**rec, "label": "benign", "sequence": insert_barrier_counterfactual(seq)}) + "\n"); written += 1
                # if boosted class, emit extra variants
                if vuln_label in boost_set:
                    for _ in range(max(0, args.boost_factor - 1)):
                        fout.write(json.dumps({**rec, "sequence": rename_registers(swap_locally(seq))}) + "\n"); written += 1
                count += 1
    print(f"Wrote {written} augmented windows to {args.out}")


if __name__ == "__main__":
    main()


