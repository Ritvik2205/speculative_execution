#!/usr/bin/env python3
"""
Build v53 train/test datasets — template-level split, no test specificity bias.

Fixes three red flags identified in v52/v52_b:

  RF1  Template-level leakage: in v52/v52_b the test set contained different
       compiler/opt compilations of templates that also appeared in training.
       308 of 404 template families had variants on BOTH sides of the split,
       meaning 28.3% of test records (and 98.7% of SPECTRE_V4 test records)
       came from templates the model had already seen.
       FIX: all compiler/opt variants of a template family go entirely to
       train OR test. Templates are split before records are assigned.

  RF2  Specificity filter on test: the has_attack_signal filter was applied to
       both train and test in v52_b, removing samples without loud discriminating
       opcodes from the test set. This produced an artificially easy test
       (only "obvious" examples survive). Real-world inference sees all samples.
       FIX: specificity filter applied to TRAIN only. Test requires only
       minimum length >= 4; no opcode gating.

  RF3  nop_run >= 3 as a standalone pass criterion: for RETBLEED and SPECTRE_V4,
       the training specificity filter accepted any sequence with 3+ consecutive
       NOPs — common alignment padding, not a vulnerability signal. This added
       structurally ambiguous samples to training and conflated the nop_run
       feature with class identity.
       FIX: RETBLEED requires rdtsc/rdtscp. SPECTRE_V4 requires lfence or
       rdtsc/rdtscp. nop_run_3+ no longer acts as a standalone pass.

What is UNCHANGED:
  - SHA-256 dedup: no identical sequence in both train and test.
  - Call-target neutralization: all call/branch targets replaced with <fn>.
  - BENIGN cap at 4000 in training pool.
  - Group-aware validation split (StratifiedGroupKFold via train_gine_v38.py).
  - Same ML stack (GINE v38, 9 edge types, 41 node features, 56 inline features).

Run from SpecExec/v53/:
  python3 build_dataset.py
"""
import sys
import re
import json
import random
import hashlib
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v51"))

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


# ── Instruction cleaning ─────────────────────────────────────────────────────
_NON_INSTR = re.compile(r'^\s*(?:\.|#|;|//)')


def is_instruction_line(line: str) -> bool:
    s = line.strip()
    if not s:
        return False
    if s.endswith(':'):
        return False
    if _NON_INSTR.match(s):
        return False
    return True


def clean_seq(seq: list[str]) -> list[str]:
    return [l for l in seq if is_instruction_line(l)]


# ── Template key extraction ───────────────────────────────────────────────────
# A "template key" identifies the source code template behind a group.  All
# compiler/opt variants of the same source compile to the same template key.
#
# Examples:
#   base_spectre_v4_x86_64_gen_0_clang_O0    → base_spectre_v4_x86_64_gen_0
#   base_spectre_v4_x86_64_gen_0_gcc_O2      → base_spectre_v4_x86_64_gen_0
#   phase7_retbleed_x86_64_gen_11_gcc_Os_f   → phase7_retbleed_x86_64_gen_11
#   p16_l1tf_t2_clang_O2                     → p16_l1tf_t2
#   p17_l1tf_x86_64_t4_O1                   → p17_l1tf_x86_64_t4
#   p11_security-research_retbleed_x86_64_O0 → p11_security-research_retbleed_x86_64
#   p15_tasn_new_x86_64_clang_Os             → p15_tasn_new_x86_64
#   github_westes_flex                       → github_westes_flex  (unchanged)
#   phase8_kernel_mds_verw_*                 → phase8_kernel_mds_verw_* (unchanged)
#   phase13_0_0                              → phase13_0_0  (unchanged)

_GEN_RE = re.compile(r'((?:base|phase\d+|p\d+)_.*?gen_\d+)', re.I)
_COMPILER_RE = re.compile(
    r'[_-](?:gcc(?:-\d+)?|clang(?:-\d+)?|x86_64-linux-gnu-gcc|aarch64-linux-gnu-gcc).*$',
    re.I,
)
_OPT_RE = re.compile(
    r'_(?:O[0-9sz](?:target[\w=]+)?|Og)(?:[_-].*)?$',
    re.I,
)
# Groups that should never be stripped (their "variants" are semantically distinct)
_NO_STRIP_PREFIXES = ('github_', 'phase8_', 'phase13_')


def get_template_key(group: str) -> str:
    if any(group.startswith(p) for p in _NO_STRIP_PREFIXES):
        return group
    m = _GEN_RE.match(group)
    if m:
        return m.group(1)
    key = _COMPILER_RE.sub('', group)
    key = _OPT_RE.sub('', key)
    return key.rstrip('_-') or group


# ── Training specificity filter (RF3: strengthened, not applied to test) ─────
# Filters training samples that lack genuine vulnerability structure.
# Test set receives NO opcode-specific filtering — hard test cases stay.
#
# Changes vs v52:
#   RETBLEED: removed nop_run >= 3 standalone. Requires rdtsc/rdtscp.
#   SPECTRE_V4: removed nop_run >= 3 standalone. Requires lfence or rdtsc.

_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_LOAD_PAT = re.compile(r'\b(ldr|ldp|movq|movl|movzx)\b.*\[', re.I)


def has_train_attack_signal(label: str, lines: list[str]) -> bool:
    """
    Return True if the sequence has structural evidence of the claimed vulnerability.
    Applied to TRAINING pool only.
    """
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
        # RF3 fix: nop_run alone removed. Require rdtsc or (nop_run AND ret>call).
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1; max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        ret_c = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        has_timing = 'rdtsc' in opset or 'rdtscp' in opset
        has_rsb_signal = max_nop >= 3 and ret_c > call_c
        return has_timing or has_rsb_signal
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
        # RF3 fix: nop_run alone removed. Require lfence or rdtsc.
        return 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset
    return True


# ── I/O helpers ──────────────────────────────────────────────────────────────

def load_jsonl(path) -> list[dict]:
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


def get_seq(r: dict) -> list[str]:
    seq = r.get('sequence', r.get('instructions', []))
    if seq and isinstance(seq[0], dict):
        return [s.get('text', '') for s in seq]
    return seq


def seq_hash(seq: list[str]) -> str:
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


# ── Template-level train/test split ─────────────────────────────────────────
# For each class, we assign template keys to train or test.
# Rules:
#   - At least 1 template key in test per class (if the class has >= 2 keys).
#   - ~20-25% of template keys in test (by count, not records).
#   - Split is deterministic with seed=42.
#   - For classes with many templates (BHI: 132), cap test template count to
#     keep test set manageable (max 30 templates in test per class).
#
# After assigning template keys, all records whose template key is in the test
# set go to the test pool, regardless of which original split they came from.

TEST_FRAC = 0.22          # fraction of template keys held for test
MAX_TEST_TEMPLATES = 30   # per-class cap to prevent over-representation
MIN_TEST_TEMPLATES = 1    # minimum test templates per class


def split_template_keys(
    tmpl_keys: list[str],
    label: str,
) -> tuple[list[str], list[str]]:
    """
    Split template keys into (train_keys, test_keys) for a single class.
    Deterministic: shuffles with global seed before splitting.
    """
    keys = sorted(tmpl_keys)  # sort for reproducibility before shuffle
    random.shuffle(keys)       # shuffle with seed=42 (set globally)

    n = len(keys)
    n_test = max(MIN_TEST_TEMPLATES, min(MAX_TEST_TEMPLATES, round(n * TEST_FRAC)))
    # Never take all templates from a class
    n_test = min(n_test, n - 1)
    n_test = max(n_test, 0)

    test_keys  = keys[:n_test]
    train_keys = keys[n_test:]
    return train_keys, test_keys


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    DATA = ROOT / "v53" / "data"
    DATA.mkdir(parents=True, exist_ok=True)

    # ── 1. Pool: v52_train + v52_test ────────────────────────────────────────
    # v52 data is already: call-targets neutralized, sequences cleaned, deduped.
    # v52_test contains 1050 records (after v52's specificity filter dropped 82
    # from v50_test). For RF2 we want the pre-filter test records. We supplement
    # with v50_test records that were filtered out in v52.
    v52_train_path = ROOT / "v52" / "data" / "v52_train.jsonl"
    v52_test_path  = ROOT / "v52" / "data" / "v52_test.jsonl"
    v50_test_path  = ROOT / "v50" / "data" / "v50_test.jsonl"

    pool = []
    if v52_train_path.exists():
        pool.extend(load_jsonl(v52_train_path))
        print(f"Loaded v52_train: {len(pool)} records")
    else:
        print(f"ERROR: {v52_train_path} not found"); return

    # Use v50_test as the test-side pool (pre-specificity-filter, 1132 records)
    # instead of v52_test (post-filter, 1050 records).
    # v50_test records still need call-target neutralization and cleaning.
    if v50_test_path.exists():
        v50_recs = load_jsonl(v50_test_path)
        for r in v50_recs:
            key = 'sequence' if 'sequence' in r else 'instructions'
            seq = clean_seq(get_seq(r))
            seq = _neutralize(seq)
            r[key] = seq
        pool.extend(v50_recs)
        print(f"Loaded v50_test (pre-filter): +{len(v50_recs)} → pool {len(pool)}")
    elif v52_test_path.exists():
        pool.extend(load_jsonl(v52_test_path))
        print(f"WARNING: v50_test not found; using v52_test (already specificity-filtered).")
    else:
        print("ERROR: no test source found"); return

    # Drop unknown labels
    pool = [r for r in pool if r.get('label', 'UNKNOWN') not in ('UNKNOWN', 'vuln', 'benign')]
    print(f"Pool after label filter: {len(pool)}")

    # ── 2. Assign template keys to every record ───────────────────────────────
    for r in pool:
        r['_tmpl'] = get_template_key(r.get('group', ''))

    # ── 3. Build template-key → primary label mapping ────────────────────────
    tmpl_label: dict[str, str] = {}
    for r in pool:
        t = r['_tmpl']
        if t not in tmpl_label:
            tmpl_label[t] = r['label']

    # Per-class template keys
    class_tmpls: dict[str, list[str]] = defaultdict(list)
    for t, lbl in tmpl_label.items():
        class_tmpls[lbl].append(t)

    print(f"\nTemplate keys per class:")
    for lbl, keys in sorted(class_tmpls.items()):
        print(f"  {lbl:<35} {len(keys):4d} templates")

    # ── 4. Template-level split ───────────────────────────────────────────────
    # RF1 fix: split at template-key level so no template family straddles the split.
    train_templates: set[str] = set()
    test_templates:  set[str] = set()

    print("\nTemplate-level split:")
    for lbl, keys in sorted(class_tmpls.items()):
        tr_keys, te_keys = split_template_keys(keys, lbl)
        train_templates.update(tr_keys)
        test_templates.update(te_keys)
        print(f"  {lbl:<35} train={len(tr_keys):3d}  test={len(te_keys):3d}")

    # Sanity: no template in both
    overlap = train_templates & test_templates
    assert not overlap, f"Template overlap after split: {overlap}"

    # Assign records
    train_pool = [r for r in pool if r['_tmpl'] in train_templates]
    test_pool  = [r for r in pool if r['_tmpl'] in test_templates]

    # Templates with no assignment (e.g. singletons forced all to train)
    unassigned = [r for r in pool if r['_tmpl'] not in train_templates and r['_tmpl'] not in test_templates]
    if unassigned:
        print(f"\nWARNING: {len(unassigned)} records from {len(set(r['_tmpl'] for r in unassigned))} "
              f"template keys were unassigned — adding to train.")
        train_pool.extend(unassigned)

    print(f"\nAfter template split: {len(train_pool)} train, {len(test_pool)} test")

    # ── 5. Length filter ─────────────────────────────────────────────────────
    train_pool = [r for r in train_pool if len(get_seq(r)) >= 8]
    # RF2 fix: test gets only a minimal length floor — no opcode gating.
    test_pool  = [r for r in test_pool  if len(get_seq(r)) >= 4]
    print(f"After length filter: {len(train_pool)} train, {len(test_pool)} test")

    # ── 6. Training specificity filter (RF3: strengthened, NOT applied to test) ─
    def apply_specificity(recs, tag):
        kept, dropped = [], 0
        for r in recs:
            if has_train_attack_signal(r['label'], get_seq(r)):
                kept.append(r)
            else:
                dropped += 1
        print(f"  {tag}: {len(recs)} → {len(kept)} kept, {dropped} dropped by specificity")
        return kept

    print("\nApplying specificity filter to TRAINING pool only:")
    train_pool = apply_specificity(train_pool, "train_pool")
    print(f"  (test_pool: {len(test_pool)} records — no specificity filter applied)")

    # ── 7. SHA-256 deduplication ─────────────────────────────────────────────
    # Compute test hashes first, then remove any train records that collide.
    test_hashes = {seq_hash(get_seq(r)) for r in test_pool}

    def dedup(recs, tag, block_hashes=None):
        seen = set(block_hashes or [])
        kept = []
        for r in recs:
            h = seq_hash(get_seq(r))
            if h not in seen:
                seen.add(h)
                kept.append(r)
        dropped = len(recs) - len(kept)
        print(f"  {tag}: {len(recs)} → {len(kept)} (dropped {dropped} duplicates)")
        return kept

    print("\nDeduplication:")
    test_pool  = dedup(test_pool,  "test_pool")
    train_pool = dedup(train_pool, "train_pool", block_hashes=test_hashes)

    train_hashes = {seq_hash(get_seq(r)) for r in train_pool}
    overlap_hashes = train_hashes & test_hashes
    print(f"  Train/test hash overlap: {len(overlap_hashes)} (must be 0)")
    assert len(overlap_hashes) == 0, "Hash overlap after dedup!"

    # Verify template exclusivity is preserved
    train_tmpls_final = set(r['_tmpl'] for r in train_pool)
    test_tmpls_final  = set(r['_tmpl'] for r in test_pool)
    tmpl_overlap = train_tmpls_final & test_tmpls_final
    print(f"  Template overlap after dedup: {len(tmpl_overlap)} (must be 0)")
    assert len(tmpl_overlap) == 0, f"Template overlap after dedup: {tmpl_overlap}"

    # ── 8. Cap BENIGN in training ─────────────────────────────────────────────
    MAX_BENIGN_TRAIN = 4000
    benign_train = [r for r in train_pool if r['label'] == 'BENIGN']
    attack_train = [r for r in train_pool if r['label'] != 'BENIGN']
    random.shuffle(benign_train)
    train_pool = attack_train + benign_train[:MAX_BENIGN_TRAIN]
    random.shuffle(train_pool)

    # ── 9. Report ─────────────────────────────────────────────────────────────
    train_counts = Counter(r['label'] for r in train_pool)
    test_counts  = Counter(r['label'] for r in test_pool)
    all_labels   = sorted(set(list(train_counts) + list(test_counts)))

    import statistics
    train_lens = [len(get_seq(r)) for r in train_pool]
    test_lens  = [len(get_seq(r)) for r in test_pool]

    print(f"\nTrain sequence length: median={statistics.median(train_lens):.0f}, "
          f"p90={sorted(train_lens)[int(0.9 * len(train_lens))]}, "
          f"max={max(train_lens)}")
    print(f"Test  sequence length: median={statistics.median(test_lens):.0f}, "
          f"p90={sorted(test_lens)[int(0.9 * len(test_lens))]}, "
          f"max={max(test_lens)}")

    print("\n=== Final v53 dataset ===")
    print(f"{'class':<35} {'train':>7} {'test':>7}")
    for lbl in all_labels:
        tc, ec = train_counts.get(lbl, 0), test_counts.get(lbl, 0)
        warn = " ← LOW" if ec < 15 and lbl != 'BENIGN' else ""
        print(f"  {lbl:<33} {tc:7d} {ec:7d}{warn}")
    print(f"  {'TOTAL':<33} {len(train_pool):7d} {len(test_pool):7d}")

    # Template coverage report
    print("\n=== Template coverage (test, by class) ===")
    test_tmpl_by_class = defaultdict(set)
    for r in test_pool:
        test_tmpl_by_class[r['label']].add(r['_tmpl'])
    train_tmpl_by_class = defaultdict(set)
    for r in train_pool:
        train_tmpl_by_class[r['label']].add(r['_tmpl'])
    print(f"  {'class':<35} {'train_tmpls':>12} {'test_tmpls':>11}")
    for lbl in all_labels:
        print(f"  {lbl:<35} {len(train_tmpl_by_class[lbl]):12d} {len(test_tmpl_by_class[lbl]):11d}")

    # Verify zero template overlap in final report
    all_test_tmpls  = set(r['_tmpl'] for r in test_pool)
    all_train_tmpls = set(r['_tmpl'] for r in train_pool)
    print(f"\n  Train template families: {len(all_train_tmpls)}")
    print(f"  Test  template families: {len(all_test_tmpls)}")
    print(f"  Template overlap: {len(all_train_tmpls & all_test_tmpls)} (must be 0)")

    # Clean up internal field before writing
    for r in train_pool + test_pool:
        r.pop('_tmpl', None)

    # ── 10. Write ─────────────────────────────────────────────────────────────
    write_jsonl(DATA / "v53_train.jsonl", train_pool)
    write_jsonl(DATA / "v53_test.jsonl",  test_pool)
    print(f"\nWrote v53_train.jsonl ({len(train_pool)}) and v53_test.jsonl ({len(test_pool)})")


if __name__ == '__main__':
    main()
