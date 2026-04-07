#!/usr/bin/env python3
import argparse
import json
import re
from pathlib import Path
from collections import Counter

# Regex constants
ARM64_BRANCH_RE = re.compile(r"\b(b\.(?P<cond>eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD_RE = re.compile(r"\bldr(b|h|sh|sw)?\b", re.IGNORECASE)
ARM64_STORE_RE = re.compile(r"\bstr(b|h|w)?\b", re.IGNORECASE)
ARM64_BARRIER_RES = [
    re.compile(r"\bdsb\b", re.IGNORECASE),
    re.compile(r"\bdmb\b", re.IGNORECASE),
    re.compile(r"\bisb\b", re.IGNORECASE),
    re.compile(r"\bcsdb\b", re.IGNORECASE),
    re.compile(r"hint\s*#0x14", re.IGNORECASE),
]

def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            yield json.loads(line)

def is_barrier(line: str) -> bool:
    return any(p.search(line) for p in ARM64_BARRIER_RES)

def opcode_of(line: str) -> str:
    return (line.split()[0].lower() if line else "").strip(",")

def ngrams(tokens, n):
    return ["::".join(tokens[i:i+n]) for i in range(len(tokens) - n + 1)]

def get_simplified_type(op: str) -> str:
    op = op.lower()
    if op == 'nop':
        return None
    # Common / x86 / ARM overlaps
    if op.startswith('ret'):
        return 'RET'
    if op.startswith('call'):
        return 'BRANCH_UNCOND'
        
    # ARM64
    if op.startswith('b.') or op.startswith('cb') or op.startswith('tb'):
        return 'BRANCH_COND'
    if op in ['b', 'bl', 'br', 'blr']:
        return 'BRANCH_UNCOND'
    if op.startswith('ldr') or op.startswith('ldp') or op.startswith('ldu'):
        return 'LOAD'
    if op.startswith('str') or op.startswith('stp') or op.startswith('stur'):
        return 'STORE'
    if op.startswith('dsb') or op.startswith('dmb') or op.startswith('isb'):
        return 'BARRIER'
        
    # x86
    if op == 'jmp':
        return 'BRANCH_UNCOND'
    if op.startswith('j'):
        return 'BRANCH_COND'
    if op.startswith('mov'):
        return 'MOVE'
    if op in ['lfence', 'mfence', 'sfence']:
        return 'BARRIER'
    if op == 'clflush':
        return 'FLUSH'
    if op == 'rdtsc':
        return 'TIME'

    return 'COMPUTE'

def canonical_id_from_source(path: str) -> str:
    name = Path(path).name
    for marker in ("_clang_", "_gcc_"):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit(".", 1)[0]

def extract_features_filtered(rec: dict) -> dict:
    # PRIMARY CHANGE: Filter out NOPs from the raw sequence immediately
    raw_seq = rec.get("sequence", [])
    seq = [l for l in raw_seq if opcode_of(l) != 'nop']
    
    tokens = [opcode_of(l) for l in seq if l]

    # Structural Traces (now tokens are already NOP-free, but keeping consistent logic)
    non_nop_tokens = [t for t in tokens if t.lower() != 'nop']
    
    # 1. Opcode Trace
    feats = {}
    feats["op_trace"] = " ".join(non_nop_tokens)

    # 2. Simplified Structural Trace
    struc_tokens = []
    for t in non_nop_tokens:
        st = get_simplified_type(t)
        if st:
            struc_tokens.append(st)
    feats["struc_trace"] = " ".join(struc_tokens)

    # N-gram counts (1-3)
    for n in (1, 2, 3):
        counts = Counter(ngrams(tokens, n))
        for k, v in counts.items():
            feats[f"ng_{n}:{k}"] = int(v)

    # Operand categories
    num_mem_ops = sum(1 for l in seq if "[" in l and "]" in l)
    num_store_ops = sum(1 for l in seq if ARM64_STORE_RE.search(l))
    num_load_ops = sum(1 for l in seq if ARM64_LOAD_RE.search(l))
    num_reg_tokens = sum(len(re.findall(r"\b[wx][0-9]+\b", l)) for l in seq)

    feats.update({
        "num_mem_ops": int(num_mem_ops),
        "num_store_ops": int(num_store_ops),
        "num_load_ops": int(num_load_ops),
        "num_reg_tokens": int(num_reg_tokens),
    })

    # Branch types and counts within the window
    branch_types = Counter()
    branch_idxs = []
    for i, l in enumerate(seq):
        m = ARM64_BRANCH_RE.search(l)
        if m:
            branch_types[m.group("cond").lower()] += 1
            branch_idxs.append(i)
    for cond, v in branch_types.items():
        feats[f"branch_{cond}"] = int(v)
    feats["num_branches"] = int(sum(branch_types.values()))

    # Barriers and distances
    barrier_present = any(is_barrier(l) for l in seq)
    feats["barrier_present"] = int(barrier_present)

    # Distances from first branch to first load/barrier
    first_branch = branch_idxs[0] if branch_idxs else None
    first_load = next((i for i, l in enumerate(seq) if ARM64_LOAD_RE.search(l)), None)
    first_barrier = next((i for i, l in enumerate(seq) if is_barrier(l)), None)
    if first_branch is not None and first_load is not None:
        feats["dist_branch_to_first_load"] = int(first_load - first_branch)
    else:
        feats["dist_branch_to_first_load"] = -1
    if first_branch is not None and first_barrier is not None:
        feats["dist_branch_to_first_barrier"] = int(first_barrier - first_branch)
    else:
        feats["dist_branch_to_first_barrier"] = -1

    # Pointer arithmetic heuristic
    has_ptr_arith = any(re.search(r"\badd\s+[wx][0-9]+,\s*[wx][0-9]+,\s*[wx][0-9]+(,\s*lsl\s*#\d+)?", l, re.IGNORECASE) for l in seq)
    feats["has_pointer_arith"] = int(has_ptr_arith)

    # Include existing basic features if present, filtering out any stale NOP references if needed
    basic = rec.get("features", {})
    for k, v in basic.items():
        if isinstance(v, bool):
            feats[k] = int(v)
        elif isinstance(v, (int, float)):
            feats[k] = v

    feats["window_length"] = int(len(tokens))
    return feats

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, required=True)
    ap.add_argument("--out", dest="out", type=Path, required=True)
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    count = 0
    with args.out.open("w") as fout:
        for rec in load_jsonl(args.inp):
            feats = extract_features_filtered(rec)
            label = rec.get("vuln_label")
            if not label or label == "UNKNOWN":
                 label = rec.get("label", "unknown")
            
            # Determine group for splitting
            grp = rec.get("group")
            src = rec.get("source_file", "unknown")
            
            if not grp or grp == "unknown" or grp == "github_negatives":
                if "github" in src.lower() or "repos/" in src:
                    grp = src
                else:
                    grp = Path(src).stem
            
            out = {
                "id": f"{canonical_id_from_source(src)}:{count}",
                "label": label,
                "arch": rec.get("arch", "unknown"),
                "features": feats,
                "group": grp,
                "confidence": rec.get("confidence", 0.0),
                "weight": rec.get("weight", 1.0)
            }
            fout.write(json.dumps(out) + "\n")
            count += 1
    print(f"Wrote {count} feature records to {args.out} (NO-NOP filtered)")

if __name__ == "__main__":
    main()




