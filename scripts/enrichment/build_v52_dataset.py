#!/usr/bin/env python3
"""
Build v52 train/test datasets — whole-file sequences.

Changes from v51:
  1. Training data from phase19_whole_file.jsonl (whole-file sequences — one record
     per source file × compiler × opt, NOT per function).
  2. Phase17 synthetic templates re-processed: functions concatenated per template ×
     compiler × opt into one whole-file record (done inline here).
  3. Call targets neutralized: all call/branch targets replaced with <fn>.
     `calls_attack_fn` inline feature is always 0 (name-based signal removed).
  4. Locked test set from v50_test.jsonl (same as v51).
  5. Post-clean dedup (hashes computed after is_instruction_line cleaning).
  6. MAX_BENIGN_TRAIN kept at 4000.

Run from SpecExec/:
  python3 scripts/enrichment/build_v52_dataset.py
"""
import sys
import re
import json
import random
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
sys.path.insert(0, str(ROOT / "v51"))

from extract_functions import is_instruction_line, parse_functions, _SKIP_FUNC_PATTERNS
from strip_boilerplate import strip_boilerplate

# ── Call-target neutralization ───────────────────────────────────────────────
_CALL_TARGET_RE = re.compile(
    r'^(\s*(?:callq?|bl)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)


def _neutralize(instrs: list[str]) -> list[str]:
    result = []
    for line in instrs:
        m = _CALL_TARGET_RE.match(line)
        if m:
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
        else:
            result.append(line)
    return result


# ── Specificity filter (structural only — call targets neutralized) ──────────
_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_LOAD_PAT = re.compile(r'\b(ldr|ldp|movq|movl|movzx)\b.*\[', re.I)


def has_attack_signal(label: str, lines: list[str]) -> bool:
    ops = []
    for line in lines:
        s = line.strip()
        parts = s.split()
        if parts:
            ops.append(parts[0].lower())
    opset = set(ops)
    has_indirect = any(_INDIRECT_PAT.search(l) for l in lines)

    if label == 'BENIGN':
        return True
    if label in ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'):
        return has_indirect
    if label == 'SPECTRE_V1':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        cmp_pos = {i for i, op in enumerate(ops) if op in ('cmp', 'cmn', 'test', 'tst')}
        br_pos = {i for i, op in enumerate(ops) if op in (
            'je', 'jne', 'jl', 'jg', 'jz', 'jnz', 'cbz', 'cbnz', 'b.eq', 'b.ne', 'b.lt', 'b.gt')}
        bac = any(any((cp + 1) <= bp <= (cp + 3) for bp in br_pos) for cp in cmp_pos)
        idx_load = any(_LOAD_PAT.search(l) for l in lines)
        return 'lfence' in opset or max_nop >= 3 or (bac and idx_load)
    if label == 'INCEPTION':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        ret_c = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or ret_c > call_c
    if label == 'RETBLEED':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        return max_nop >= 3 or 'rdtsc' in opset or 'rdtscp' in opset
    if label == 'MDS':
        return 'verw' in opset or 'movntdqa' in opset or 'clflush' in opset or 'clflushopt' in opset
    if label == 'L1TF':
        return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset
    if label == 'SPECTRE_RSB':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        ret_c = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or (ret_c > 0 and call_c > 0)
    if label == 'SPECTRE_V4':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        return 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset or max_nop >= 3
    return True


def load_jsonl(path):
    recs = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                recs.append(json.loads(line))
    return recs


def write_jsonl(path, recs):
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    with open(path, 'w') as f:
        for r in recs:
            f.write(json.dumps(r) + '\n')


def get_seq(r):
    seq = r.get('sequence', r.get('instructions', []))
    if seq and isinstance(seq[0], dict):
        return [s.get('text', '') for s in seq]
    return seq


def clean_seq(seq):
    """Strip non-instruction lines."""
    return [l for l in seq if is_instruction_line(l)]


def seq_hash(seq):
    return hash(tuple(seq))


def _convert_v51_to_wholefile(recs: list[dict]) -> list[dict]:
    """
    Convert per-function v51 records to whole-file equivalents.

    Groups records by group prefix (removes function name suffix from group key)
    and concatenates their sequences into one whole-file record. This approximates
    the whole-file approach for data that was already processed per-function.

    The group key in v51 is: p15_{stem}_{arch}_{compiler}_{opt}
    We group by that key (all functions from same file share it, since group was
    set at the file level in phase15 — one group per file × compiler × opt).
    """
    by_group: dict[str, list] = {}
    for r in recs:
        g = r.get('group', '')
        by_group.setdefault(g, []).append(r)

    converted = []
    for group, group_recs in by_group.items():
        label = group_recs[0]['label']
        arch = group_recs[0].get('arch', 'x86_64')
        combined = []
        for r in group_recs:
            combined.extend(get_seq(r))
        combined = clean_seq(combined)
        combined = _neutralize(combined)
        combined = strip_boilerplate(combined, min_length=4)
        if len(combined) < 8:
            continue
        if not has_attack_signal(label, combined):
            continue
        converted.append({
            "label": label,
            "sequence": combined,
            "arch": arch,
            "group": group,
        })
    return converted


def main():
    DATA = ROOT / "data"
    V52 = ROOT / "v52" / "data"
    V52.mkdir(parents=True, exist_ok=True)

    # ── 1. Locked test set from v50 ───────────────────────────────────────────
    test_path = ROOT / "v50" / "data" / "v50_test.jsonl"
    test_recs = load_jsonl(test_path)
    test_groups = set(r.get('group', '') for r in test_recs)
    print(f"Locked test groups: {len(test_groups)}")

    # Clean test sequences and neutralize targets
    for r in test_recs:
        key = 'sequence' if 'sequence' in r else 'instructions'
        seq = clean_seq(get_seq(r))
        seq = _neutralize(seq)
        r[key] = seq

    # ── 2. Build training pool ─────────────────────────────────────────────────
    # Base: v51 training pool (per-function, preserves all classes including BENIGN/V2/RSB)
    # Addition: phase19 whole-file records (inter-function context)
    # Call-target neutralization applied to ALL records.
    train_pool = []

    # 2a. v51 per-function training pool (the BENIGN/V2/RSB/etc. records come from here)
    v51_train = ROOT / "v51" / "data" / "v51_train.jsonl"
    if v51_train.exists():
        v51_recs = load_jsonl(v51_train)
        for r in v51_recs:
            key = 'sequence' if 'sequence' in r else 'instructions'
            seq = clean_seq(get_seq(r))
            seq = _neutralize(seq)
            r[key] = seq
        train_pool.extend(v51_recs)
        print(f"Loaded v51 train (per-function, neutralized): {len(v51_recs)} records")
    else:
        print(f"WARNING: {v51_train} not found")

    # 2b. Phase19 whole-file records (primary new source)
    p19_path = DATA / "enrichment" / "phase19_whole_file.jsonl"
    if p19_path.exists():
        p19_recs = load_jsonl(p19_path)
        train_pool.extend(p19_recs)
        print(f"Loaded phase19: {len(p19_recs)} whole-file records")
    else:
        print(f"WARNING: {p19_path} not found — run phase19_whole_file_extraction.py first")

    # 2c. Phase17 synthetic templates — convert per-function to whole-file
    p17_path = DATA / "enrichment" / "phase17_l1tf_mds_expanded.jsonl"
    if p17_path.exists():
        p17_recs = load_jsonl(p17_path)
        p17_wf = _convert_v51_to_wholefile(p17_recs)
        train_pool.extend(p17_wf)
        print(f"Phase17 converted to whole-file: {len(p17_wf)} records (from {len(p17_recs)} functions)")
    else:
        print(f"WARNING: {p17_path} not found")

    print(f"Train pool raw: {len(train_pool)}")

    # ── 3. Remove train records whose group is in test ────────────────────────
    before = len(train_pool)
    train_pool = [r for r in train_pool if r.get('group', '') not in test_groups]
    print(f"After group exclusion: {before} → {len(train_pool)}")

    # ── 4. Remove too-short sequences ────────────────────────────────────────
    train_pool = [r for r in train_pool if len(get_seq(r)) >= 8]
    test_recs = [r for r in test_recs if len(get_seq(r)) >= 4]
    print(f"After length filter: {len(train_pool)} train, {len(test_recs)} test")

    # ── 5. Specificity filter ────────────────────────────────────────────────
    def filter_records(recs, tag):
        kept, dropped = [], 0
        for r in recs:
            lines = get_seq(r)
            if has_attack_signal(r['label'], lines):
                kept.append(r)
            else:
                dropped += 1
        print(f"  {tag}: {len(recs)} → {len(kept)} kept, {dropped} dropped")
        return kept

    print("\nApplying specificity filter:")
    train_pool = filter_records(train_pool, "train_pool")
    test_recs = filter_records(test_recs, "test (locked)")

    # ── 6. Deduplicate (hashes AFTER cleaning) ───────────────────────────────
    test_hashes = set(seq_hash(get_seq(r)) for r in test_recs)

    def dedup(recs, tag, block_hashes=None):
        seen = set(block_hashes or [])
        kept = []
        for r in recs:
            h = seq_hash(get_seq(r))
            if h not in seen:
                seen.add(h)
                kept.append(r)
        print(f"  {tag}: {len(recs)} → {len(kept)} after dedup")
        return kept, seen

    print("\nDeduplication:")
    train_pool, _ = dedup(train_pool, "train_pool", test_hashes)

    # Verify no overlap
    train_hashes = set(seq_hash(get_seq(r)) for r in train_pool)
    overlap = train_hashes & test_hashes
    print(f"  Train/test hash overlap: {len(overlap)} (must be 0)")
    assert len(overlap) == 0, "Hash overlap after dedup!"

    # ── 7. Cap BENIGN ────────────────────────────────────────────────────────
    MAX_BENIGN_TRAIN = 4000
    benign_train = [r for r in train_pool if r['label'] == 'BENIGN']
    attack_train = [r for r in train_pool if r['label'] != 'BENIGN']
    random.shuffle(benign_train)
    train_pool = attack_train + benign_train[:MAX_BENIGN_TRAIN]
    random.shuffle(train_pool)

    # ── 8. Report ─────────────────────────────────────────────────────────────
    train_counts = Counter(r['label'] for r in train_pool)
    test_counts = Counter(r['label'] for r in test_recs)
    all_labels = sorted(set(list(train_counts) + list(test_counts)))

    # Sequence length stats
    train_lens = [len(get_seq(r)) for r in train_pool]
    if train_lens:
        import statistics
        print(f"\nTrain sequence length: median={statistics.median(train_lens):.0f}, "
              f"p90={sorted(train_lens)[int(0.9*len(train_lens))]}, "
              f"max={max(train_lens)}")

    print("\n=== Final v52 dataset ===")
    print(f"{'class':<32} {'train':>7} {'test':>7}")
    for lbl in all_labels:
        tc, ec = train_counts.get(lbl, 0), test_counts.get(lbl, 0)
        warn = " ← LOW" if ec < 20 and lbl != 'BENIGN' else ""
        print(f"  {lbl:<30} {tc:7d} {ec:7d}{warn}")
    print(f"  {'TOTAL':<30} {len(train_pool):7d} {len(test_recs):7d}")

    # ── 9. Write ──────────────────────────────────────────────────────────────
    write_jsonl(V52 / "v52_train.jsonl", train_pool)
    write_jsonl(V52 / "v52_test.jsonl", test_recs)
    print(f"\nWrote v52_train.jsonl ({len(train_pool)}) and v52_test.jsonl ({len(test_recs)})")


if __name__ == '__main__':
    main()
