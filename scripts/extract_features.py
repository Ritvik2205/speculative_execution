#!/usr/bin/env python3
import argparse
import json
import re
from pathlib import Path
from collections import Counter


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


def extract_additional_features(rec: dict) -> dict:
    seq = rec.get("sequence", [])
    tokens = [opcode_of(l) for l in seq if l]

    # N-gram counts (1-3)
    feats = {}
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

    # Pointer arithmetic heuristic: add with optional lsl
    has_ptr_arith = any(re.search(r"\badd\s+[wx][0-9]+,\s*[wx][0-9]+,\s*[wx][0-9]+(,\s*lsl\s*#\d+)?", l, re.IGNORECASE) for l in seq)
    feats["has_pointer_arith"] = int(has_ptr_arith)

    # Include existing basic features if present
    basic = rec.get("features", {})
    for k, v in basic.items():
        if isinstance(v, bool):
            feats[k] = int(v)
        elif isinstance(v, (int, float)):
            feats[k] = v
        # skip lists

    feats["window_length"] = int(len(tokens))
    return feats


def canonical_id_from_source(path: str) -> str:
    name = Path(path).name
    # Expect pattern like: base_compiler_OX_arch.s -> return base
    for marker in ("_clang_", "_gcc_"):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit(".", 1)[0]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/arm64_windows.jsonl"))
    ap.add_argument("--out", dest="out", type=Path, default=Path("data/dataset/arm64_features.jsonl"))
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    count = 0
    with args.out.open("w") as fout:
        for rec in load_jsonl(args.inp):
            feats = extract_additional_features(rec)
            out = {
                "id": f"{canonical_id_from_source(rec.get('source_file','unknown'))}:{count}",
                "label": rec.get("label", "unknown"),
                "arch": rec.get("arch", "unknown"),
                "features": feats,
                "group": rec.get("group", "unknown"),
                "confidence": rec.get("confidence", 0.0),
                "weight": rec.get("weight", 1.0)
            }
            fout.write(json.dumps(out) + "\n")
            count += 1
    print(f"Wrote {count} feature records to {args.out}")


if __name__ == "__main__":
    main()


