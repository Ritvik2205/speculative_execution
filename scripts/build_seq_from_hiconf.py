#!/usr/bin/env python3
import argparse
import json
import re
from pathlib import Path

ARM64_BRANCH_COND = re.compile(r"\b(b\.(eq|ne|hs|lo|mi|pl|vs|vc|hi|ls|ge|lt|gt|le))\b", re.IGNORECASE)
X86_BRANCH_COND = re.compile(r"\bj([a-z]{1,3})\b", re.IGNORECASE)


def load_jsonl(p: Path):
    with p.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def normalize_line(line: str) -> str:
    s = line.strip()
    if not s or s.startswith('.') or s.endswith(':'):
        return ''
    s = s.split(';', 1)[0].strip()
    return s


def extract_windows(asm_path: Path, window_before=8, window_after=12):
    raw = asm_path.read_text(errors='ignore').splitlines()
    norm = [normalize_line(l) for l in raw]
    is_x86 = any('%' in l for l in raw)
    branch_re = X86_BRANCH_COND if is_x86 else ARM64_BRANCH_COND
    idxs = [i for i, l in enumerate(norm) if l and branch_re.search(l)]
    for i in idxs:
        start = max(0, i - window_before)
        end = min(len(norm), i + window_after + 1)
        seq = [l for l in norm[start:end] if l]
        if len(seq) >= 5:
            yield seq


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--hiconf', type=Path, default=Path('data/dataset/gadgets_features_hiconf_relaxed.jsonl'))
    ap.add_argument('--asm-dir', type=Path, default=Path('c_vulns/asm_code'))
    ap.add_argument('--out', type=Path, default=Path('data/dataset/hiconf_windows.jsonl'))
    ap.add_argument('--per-file-cap', type=int, default=96)
    ap.add_argument('--windows-per-group', type=int, default=10)
    ap.add_argument('--test-groups-per-class', type=int, default=3)
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)

    # Map groups to label and confidence (max per group)
    group_info = {}
    for rec in load_jsonl(args.hiconf):
        group = rec.get('group')
        if not group:
            continue
        c = float(rec.get('confidence', 1.0))
        if group not in group_info or c > group_info[group]['confidence']:
            group_info[group] = {'label': rec.get('label', 'UNKNOWN'), 'confidence': c}

    # Build class -> groups mapping
    from collections import defaultdict
    class_to_groups = defaultdict(list)
    for g, info in group_info.items():
        if info['label'] != 'UNKNOWN':
            class_to_groups[info['label']].append(g)

    # Choose test groups per class
    import random
    random.seed(42)
    test_groups = set()
    train_groups = set()
    for cls, groups in class_to_groups.items():
        random.shuffle(groups)
        k = min(args.test_groups_per_class, len(groups))
        test_groups.update(groups[:k])
        train_groups.update(groups[k:])

    written = 0
    with args.out.open('w') as fout:
        for asm in args.asm_dir.glob('*.s'):
            group = asm.stem
            info = group_info.get(group)
            if not info or info['label'] == 'UNKNOWN':
                continue
            split = 'test' if group in test_groups else 'train'
            per_group_written = 0
            for seq in extract_windows(asm):
                if per_group_written >= args.windows_per_group:
                    break
                rec = {
                    'source_file': str(asm),
                    'vuln_label': info['label'],
                    'confidence': info['confidence'],
                    'sequence': seq,
                    'split': split,
                }
                fout.write(json.dumps(rec) + '\n')
                written += 1
                per_group_written += 1
    print(f"Wrote {written} windows to {args.out}")


if __name__ == '__main__':
    main()


