#!/usr/bin/env python3
import argparse
import json
import re
from pathlib import Path
from collections import Counter


ARM64_BRANCH_RE = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
ARM64_LOAD_RE = re.compile(r"\bldr(b|h|sh|sw)?\b", re.IGNORECASE)
ARM64_STORE_RE = re.compile(r"\bstr(b|h|w)?\b", re.IGNORECASE)
ARM64_BARRIER_RE = re.compile(r"\b(dsb|dmb|isb|csdb)\b", re.IGNORECASE)


def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def map_vuln_from_source(src: str) -> str:
    n = Path(src).name.lower()
    if 'spectre_1' in n or 'spectre_v1' in n:
        return 'SPECTRE_V1'
    if 'spectre_2' in n:
        return 'SPECTRE_V2'
    if 'meltdown' in n:
        return 'MELTDOWN'
    if 'retbleed' in n:
        return 'RETBLEED'
    if 'bhi' in n:
        return 'BRANCH_HISTORY_INJECTION'
    if 'inception' in n:
        return 'INCEPTION'
    if 'l1tf' in n:
        return 'L1TF'
    if 'mds' in n:
        return 'MDS'
    return 'UNKNOWN'


def canonical_group(src: str) -> str:
    return Path(src).stem


def opcode_of(line: str) -> str:
    return (line.split()[0].lower() if line else '').strip(',')


def ngrams(tokens, n):
    return ["::".join(tokens[i:i+n]) for i in range(len(tokens) - n + 1)]


def featurize_sequence(seq):
    tokens = [opcode_of(l) for l in seq if l]
    feats = {}
    for n in (1, 2, 3):
        counts = Counter(ngrams(tokens, n))
        for k, v in counts.items():
            feats[f"ng_{n}:{k}"] = int(v)
    num_mem_ops = sum(1 for l in seq if '[' in l and ']' in l)
    num_store_ops = sum(1 for l in seq if ARM64_STORE_RE.search(l))
    num_load_ops = sum(1 for l in seq if ARM64_LOAD_RE.search(l))
    feats.update({
        'num_mem_ops': int(num_mem_ops),
        'num_store_ops': int(num_store_ops),
        'num_load_ops': int(num_load_ops),
        'barrier_present': int(any(ARM64_BARRIER_RE.search(l) for l in seq)),
        'window_length': int(len(tokens)),
    })
    # Distances branch->load
    branch_idx = next((i for i, l in enumerate(seq) if ARM64_BRANCH_RE.search(l)), None)
    load_idx = next((i for i, l in enumerate(seq) if ARM64_LOAD_RE.search(l)), None)
    feats['dist_branch_to_first_load'] = int(load_idx - branch_idx) if (branch_idx is not None and load_idx is not None) else -1
    return feats


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--in', dest='inp', type=Path, default=Path('data/dataset/augmented_windows.jsonl'))
    ap.add_argument('--out', type=Path, default=Path('data/dataset/augmented_features.jsonl'))
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    kept = 0
    with args.out.open('w') as f:
        for rec in load_jsonl(args.inp):
            if rec.get('label') == 'benign':
                continue
            src = rec.get('source_file', '')
            label = rec.get('vuln_label') or map_vuln_from_source(src)
            if label == 'UNKNOWN':
                continue
            feats = featurize_sequence(rec.get('sequence', []))
            out = {
                'label': label,
                'features': feats,
                'group': canonical_group(src),
            }
            f.write(json.dumps(out) + '\n')
            kept += 1
    print(f"Wrote {kept} augmented feature records to {args.out}")


if __name__ == '__main__':
    main()


