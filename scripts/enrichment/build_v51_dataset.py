#!/usr/bin/env python3
"""
Build v51 train/test datasets.

Changes from v50:
  1. SPECTRE_V4 gets a real specificity filter (lfence/rdtsc/nop-sled ≥ 3).
     In v50 V4 always passed — any function from a V4 file was included.
  2. Phase17 L1TF+MDS expansion data (target: 400+ per class).
  3. Post-clean dedup: hashes computed AFTER is_instruction_line cleaning,
     fixing the 11 hash duplicates that appeared in v50 after label-line scrub.
  4. Locked test set: use v50_test.jsonl as-is (already cleaned).

Run from SpecExec/:
  python3 scripts/enrichment/build_v51_dataset.py
"""
import sys
import re
import json
import random
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from extract_functions import is_instruction_line

_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_CALL_ATK_RE  = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|'
    r'flush_reload|clearbhb|branch_history|victim_function|'
    r'gadget_[a-z]|cache_set|_rdtsc|_clflush',
    re.I
)
_LOAD_PAT = re.compile(r'\b(ldr|ldp|movq|movl|movzx)\b.*\[', re.I)


def _ops_calls(lines):
    ops, calls = [], []
    for line in lines:
        s = line.strip()
        if not s or s.endswith(':') or s.startswith('.') or s.startswith('#'):
            continue
        parts = s.split()
        if not parts:
            continue
        op = parts[0].lower()
        ops.append(op)
        if op in ('bl', 'call', 'callq', 'blr') and len(parts) > 1:
            calls.append(parts[1])
    return ops, calls


def has_attack_signal(label: str, lines: list) -> bool:
    ops, calls = _ops_calls(lines)
    opset = set(ops)
    has_indirect = any(_INDIRECT_PAT.search(l) for l in lines)
    has_atk_call = any(_CALL_ATK_RE.search(c) for c in calls)

    if label == 'BENIGN':
        return True
    if label in ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'):
        return has_indirect or has_atk_call
    if label == 'SPECTRE_V1':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        cmp_pos = {i for i, op in enumerate(ops) if op in ('cmp','cmn','test','tst')}
        br_pos  = {i for i, op in enumerate(ops) if op in (
            'je','jne','jl','jg','jz','jnz','cbz','cbnz','b.eq','b.ne','b.lt','b.gt')}
        bac = any(any((cp+1) <= bp <= (cp+3) for bp in br_pos) for cp in cmp_pos)
        idx_load = any(_LOAD_PAT.search(l) for l in lines)
        return 'lfence' in opset or max_nop >= 3 or (bac and idx_load) or has_atk_call
    if label == 'INCEPTION':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        ret_c  = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call','callq','bl'))
        return max_nop >= 3 or ret_c > call_c or has_atk_call
    if label == 'RETBLEED':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        return max_nop >= 3 or 'rdtsc' in opset or 'rdtscp' in opset or has_atk_call
    if label == 'MDS':
        return 'verw' in opset or 'movntdqa' in opset or 'clflush' in opset or 'clflushopt' in opset or has_atk_call
    if label == 'L1TF':
        return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset or has_atk_call
    if label == 'SPECTRE_RSB':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        ret_c  = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call','callq','bl'))
        return max_nop >= 3 or (ret_c > 0 and call_c > 0) or has_atk_call
    if label == 'SPECTRE_V4':
        # V4 = Speculative Store Bypass. Signal: store-forwarding speculation.
        # Requires either: lfence, nop-sled (>=3), rdtsc timing, or named attack calls.
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        return 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset or max_nop >= 3 or has_atk_call
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
    """Strip label-with-comment lines (the parser bug fixed in v50)."""
    return [l for l in seq if is_instruction_line(l)]


def seq_hash(seq):
    return hash(tuple(seq))


def main():
    DATA = ROOT / "data"
    V51  = ROOT / "v51" / "data"
    V51.mkdir(parents=True, exist_ok=True)

    # ── 1. Locked test set from v50 (already cleaned) ─────────────────────────
    test_path = ROOT / "v50" / "data" / "v50_test.jsonl"
    test_recs = load_jsonl(test_path)
    test_groups = set(r.get('group', '') for r in test_recs)
    print(f"Locked test groups: {len(test_groups)}")

    # ── 2. Load training pool ──────────────────────────────────────────────────
    sources = [
        ROOT / "v50" / "data" / "v50_train.jsonl",
    ]
    for phase_file, name in [
        (DATA / "enrichment" / "phase15_functions.jsonl",    "phase15"),
        (DATA / "enrichment" / "phase16_extra_gadgets.jsonl","phase16"),
        (DATA / "enrichment" / "phase17_l1tf_mds_expanded.jsonl", "phase17"),
    ]:
        if phase_file.exists():
            sources.append(phase_file)
            print(f"Including {name}: {phase_file}")
        else:
            print(f"WARNING: {phase_file.name} not found")

    train_pool = []
    for src in sources:
        if not src.exists():
            print(f"  Missing: {src}")
            continue
        recs = load_jsonl(src)
        train_pool.extend(recs)
        print(f"  Loaded {len(recs)} from {src.name}")
    print(f"Train pool raw: {len(train_pool)}")

    # ── 3. Clean sequences (strip label-with-comment lines) ───────────────────
    for r in train_pool:
        key = 'sequence' if 'sequence' in r else 'instructions'
        r[key] = clean_seq(get_seq(r))
    for r in test_recs:
        key = 'sequence' if 'sequence' in r else 'instructions'
        r[key] = clean_seq(get_seq(r))

    # ── 4. Remove too-short sequences ─────────────────────────────────────────
    train_pool = [r for r in train_pool if len(get_seq(r)) >= 4]
    test_recs  = [r for r in test_recs  if len(get_seq(r)) >= 4]

    # ── 5. Apply specificity filter (incl. V4 now) ────────────────────────────
    def filter_records(recs, tag):
        kept, dropped = [], 0
        for r in recs:
            lines = get_seq(r)
            if not lines:
                dropped += 1
                continue
            if has_attack_signal(r['label'], lines):
                kept.append(r)
            else:
                dropped += 1
        print(f"  {tag}: {len(recs)} → {len(kept)} kept, {dropped} dropped")
        return kept

    print("\nApplying specificity filter:")
    train_pool = filter_records(train_pool, "train_pool")
    test_recs  = filter_records(test_recs,  "test (locked)")

    # ── 6. Deduplicate — hashes computed AFTER cleaning ───────────────────────
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

    # Verify
    train_hashes = set(seq_hash(get_seq(r)) for r in train_pool)
    overlap = train_hashes & test_hashes
    print(f"  Train/test hash overlap: {len(overlap)} (must be 0)")
    assert len(overlap) == 0, "Hash overlap after dedup!"

    # ── 7. Remove train records whose group is in test ─────────────────────────
    before = len(train_pool)
    train_pool = [r for r in train_pool if r.get('group', '') not in test_groups]
    print(f"After group exclusion: {before} → {len(train_pool)}")

    # ── 8. Cap BENIGN ─────────────────────────────────────────────────────────
    MAX_BENIGN_TRAIN = 4000
    benign_train = [r for r in train_pool if r['label'] == 'BENIGN']
    attack_train = [r for r in train_pool if r['label'] != 'BENIGN']
    random.shuffle(benign_train)
    train_pool = attack_train + benign_train[:MAX_BENIGN_TRAIN]
    random.shuffle(train_pool)

    # ── 9. Report ──────────────────────────────────────────────────────────────
    train_counts = Counter(r['label'] for r in train_pool)
    test_counts  = Counter(r['label'] for r in test_recs)
    all_labels   = sorted(set(list(train_counts) + list(test_counts)))

    print("\n=== Final v51 dataset ===")
    print(f"{'class':<32} {'train':>7} {'test':>7}")
    for lbl in all_labels:
        tc, ec = train_counts.get(lbl, 0), test_counts.get(lbl, 0)
        warn = " ← LOW" if ec < 30 and lbl != 'BENIGN' else ""
        print(f"  {lbl:<30} {tc:7d} {ec:7d}{warn}")
    print(f"  {'TOTAL':<30} {len(train_pool):7d} {len(test_recs):7d}")

    # ── 10. Write ──────────────────────────────────────────────────────────────
    write_jsonl(V51 / "v51_train.jsonl", train_pool)
    write_jsonl(V51 / "v51_test.jsonl",  test_recs)
    print(f"\nWrote v51_train.jsonl ({len(train_pool)}) and v51_test.jsonl ({len(test_recs)})")


if __name__ == '__main__':
    main()
