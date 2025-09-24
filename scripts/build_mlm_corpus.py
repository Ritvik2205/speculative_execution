#!/usr/bin/env python3
import argparse
import json
from pathlib import Path


def load_jsonl(p: Path):
    with p.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def tokens_from_sequence(seq):
    toks = []
    for l in seq:
        l = l.split(';', 1)[0].strip()
        if not l:
            continue
        parts = l.split()
        if parts:
            toks.append(parts[0].lower())
    return toks


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--gadgets", type=Path, default=Path("c_vulns/extracted_gadgets/gadgets.jsonl"))
    ap.add_argument("--augmented", type=Path, default=Path("data/dataset/augmented_windows.jsonl"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/mlm_corpus.txt"))
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)
    n = 0
    with args.out.open('w') as fout:
        # From gadgets.jsonl
        for rec in load_jsonl(args.gadgets):
            feats = rec.get('features', {})
            # try to recover tokens if present (not in current gadgets.jsonl), else skip
            # we can still synthesize pseudo-sentences from feature keys
            if 'tokens' in feats and isinstance(feats['tokens'], list):
                toks = [t for t in feats['tokens'] if isinstance(t, str)]
                if toks:
                    fout.write(' '.join(toks) + '\n'); n += 1
        # From augmented windows
        for rec in load_jsonl(args.augmented):
            seq = rec.get('sequence', [])
            toks = tokens_from_sequence(seq)
            if toks:
                fout.write(' '.join(toks) + '\n'); n += 1
    print(f"Wrote {n} sentences to {args.out}")


if __name__ == '__main__':
    main()


