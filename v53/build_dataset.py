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
       Initial v53 fix: specificity filter to train only. Then audit revealed
       that unfiltered test contained mislabeled harness code (cache flush loops,
       main() training loops, function epilogues) from the same C files as
       vulnerabilities.
       FINAL FIX: specificity filter applied to BOTH pools. Removes genuinely
       mislabeled samples (no vulnerability structure whatsoever) while keeping
       hard genuine cases (real gadgets without loud opcodes like lfence).

  RF3  nop_run >= 3 as a standalone pass criterion: for RETBLEED and SPECTRE_V4,
       the training specificity filter accepted any sequence with 3+ consecutive
       NOPs — common alignment padding, not a vulnerability signal. This added
       structurally ambiguous samples to training and conflated the nop_run
       feature with class identity.
       FIX: RETBLEED requires rdtsc OR (nop_sled AND ret>=1). SPECTRE_V4 requires
       lfence/rdtsc OR (nop_sled AND heap_store AND heap_load).
       ARM64 RSB spray fix: ret_c>call_c condition was wrong for RSB spray pattern
       (many bl fills RSB → ret_c < call_c). Changed to ret_c>=1.

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
# Handles: direct calls (bl/callq), and ARM64 adrp/lo12 pairs used to load
# function addresses into registers before blr. Without adrp neutralization,
# function names like "speculative_gadget_v2" survive in the sequence and leak
# class identity (49% of V2 test vs 0% of V2 train had this leak).
_CALL_TARGET_RE = re.compile(
    r'^(\s*(?:callq?|bl)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)
# adrp xN, SYMBOL  →  adrp xN, <fn>   (ARM64 page-relative symbol reference)
_ADRP_SYM_RE = re.compile(
    r'^(\s*adrp\s+\w+,\s*)([A-Za-z_][A-Za-z0-9_$@.]*)(.*)$', re.I
)
# add xN, xN, :lo12:SYMBOL  →  add xN, xN, :lo12:<fn>
_LO12_SYM_RE = re.compile(
    r'^(\s*add\s+\w+,\s*\w+,\s*:lo12:)([A-Za-z_][A-Za-z0-9_$@.]*)(.*)$', re.I
)
# leaq SYMBOL(%rip), %reg  →  leaq <fn>(%rip), %reg   (x86-64 PC-relative addr-of)
_LEAQ_RIP_RE = re.compile(
    r'^(\s*leaq?\s+)([A-Za-z_][A-Za-z0-9_$@.]*)(\(%rip\).*)$', re.I
)
# Basic-block labels (LBB0_1, Ltmp3) — not function names; skip neutralization
_BB_LABEL_RE = re.compile(r'^L(BB|tmp)\d', re.I)


def _neutralize(instrs: list[str]) -> list[str]:
    result = []
    for line in instrs:
        m = _CALL_TARGET_RE.match(line)
        if m:
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
            continue
        m = _ADRP_SYM_RE.match(line)
        if m and not _BB_LABEL_RE.match(m.group(2)):
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
            continue
        m = _LO12_SYM_RE.match(line)
        if m and not _BB_LABEL_RE.match(m.group(2)):
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
            continue
        m = _LEAQ_RIP_RE.match(line)
        if m and not _BB_LABEL_RE.match(m.group(2)):
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
            continue
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

# Indexed array load — the Spectre-V1 transmitter.
# Catches AT&T 2-reg, AT&T sym+reg (exclude stack regs), Intel scale, ARM 2-reg.
# v53 had \[ only — missed all AT&T x86 forms and matched stack-relative ldp.
_LOAD_PAT = re.compile(
    r'\b(ldr[bhsdq]?|ldp|movq|movl|movb|movw|movzx|movzb[lq]?|movzw[lq]?|movsb[lq]?)\b'
    r'.*(?:'
    r'\([^)]*%[a-z][a-z0-9]*[^)]*,[^)]*%[a-z]'               # AT&T 2-reg: (%base,%index,...)
    r'|[A-Za-z_][A-Za-z0-9_$@.]*\(%(?!rip|rsp|rbp|esp|ebp|sp)[a-z][a-z0-9]*\)'  # sym(%non-stack)
    r'|\[[^\]]*\+[^\]]*\*'                                     # Intel: [base+reg*scale]
    r'|\[x[0-9]+,\s*x[0-9]+'                                  # ARM: [xN, xM]
    r')', re.I
)

# Heap pointer dereference — for SSB gadget detection (store/load through pointer reg).
# Excludes stack-relative forms (%rbp/%rsp/...).
_HEAP_DEREF = re.compile(
    r'\(%(?!rsp|rbp|esp|ebp|sp\b)[a-z][a-z0-9]*\)'
    r'|\[x[0-9]+\]', re.I
)



# =============================================================================
# SPLIT-SAFETY: label-independent vs label-conditioned admission
# =============================================================================
# A record must never be admitted to, or excluded from, the TEST split on the
# basis of its own label. Doing so is selective data snooping (Arp et al.,
# "Dos and Don'ts of Machine Learning in Computer Security", P3): it uses
# information that is not available at deployment, because you cannot know an
# incoming gadget's class before classifying it.
#
# This repo did exactly that for three model generations. v53/build_dataset.py
# carried the comment "NOT applied to test" three lines above code that applied
# it to test, and nobody noticed. A comment is not an enforcement mechanism, so
# the split is now a required argument and the wrong value raises.
#
# Measured consequence of the original defect (SPECDISCOVER_TEST_SET_SCREENING.md):
# the locked test set contained only records satisfying the rule (45/45 MDS,
# 37/37 L1TF), reported accuracy was inflated ~5-9pp against an unscreened pool,
# and MDS/L1TF/SPECTRE_V4 recall collapses to 0-9% once the rule's trigger
# opcodes are neutralised.


class LabelConditionedFilterOnTestSplit(RuntimeError):
    """Raised when a label-conditioned filter is pointed at a non-train split."""


def passes_quality_filter(lines, min_instructions: int = 4) -> bool:
    """Label-INDEPENDENT record quality. Safe on every split.

    Nothing here may consult the label. These are properties of the code alone:
    it has to be long enough to contain a gadget and to actually be instructions
    rather than a stub the compiler emptied out.
    """
    real = [l for l in lines
            if l.strip() and not l.strip().startswith('.') and not l.strip().endswith(':')]
    return len(real) >= min_instructions


def has_train_attack_signal(label: str, lines: list[str], *, split: str) -> bool:
    """Label-CONDITIONED admission. TRAIN SPLIT ONLY.

    `split` is keyword-only and required so that no call site can apply this
    to test by omission or by positional accident. See the SPLIT-SAFETY note
    above for why this is enforced in code rather than in a comment.
    """
    if split != "train":
        raise LabelConditionedFilterOnTestSplit(
            f"has_train_attack_signal conditions on the label and must never "
            f"touch the {split!r} split — that is selective data snooping. "
            f"Use passes_quality_filter() for label-independent screening.")
    """
    Return True if the sequence has structural evidence of the claimed vulnerability.
    Applied to BOTH training and test pools.

    Fixes vs v52/v53-original:
      _LOAD_PAT: now catches AT&T 2-reg and sym+reg forms; excludes stack registers.
      SPECTRE_V1: AT&T size-suffixed cmp/test/branch opcodes; branch window cp+5.
      RETBLEED: RSB spray has more calls than rets; condition ret_c>=1 (was ret_c>call_c).
      SPECTRE_V4: SSB nop pattern (nop_sled + heap store + heap load) added.
    """
    ops = []
    for line in lines:
        s = line.strip()
        parts = s.split()
        if parts:
            ops.append(parts[0].lower())
    opset = set(ops)
    has_indirect = any(_INDIRECT_PAT.search(l) for l in lines)

    def _max_nop_run():
        run = mx = 0
        for op in ops:
            if op == 'nop': run += 1; mx = max(mx, run)
            else: run = 0
        return mx

    if label == 'BENIGN':
        return True
    if label in ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'):
        return has_indirect
    if label == 'SPECTRE_V1':
        max_nop = _max_nop_run()
        _CMP_OPS = frozenset(['cmp', 'cmpq', 'cmpl', 'cmpw', 'cmpb', 'cmn',
                               'test', 'testq', 'testl', 'tst', 'subs'])
        _BR_OPS  = frozenset([
            'je', 'jne', 'jl', 'jg', 'jz', 'jnz', 'jle', 'jge', 'jb', 'ja', 'jbe', 'jae',
            'js', 'jns', 'jo', 'jno', 'jp', 'jnp',
            'cbz', 'cbnz', 'b.eq', 'b.ne', 'b.lt', 'b.gt', 'b.le', 'b.ge', 'b.lo', 'b.hi',
        ])
        cmp_pos = {i for i, op in enumerate(ops) if op in _CMP_OPS}
        br_pos  = {i for i, op in enumerate(ops) if op in _BR_OPS}
        bac = any(any((cp + 1) <= bp <= (cp + 5) for bp in br_pos) for cp in cmp_pos)
        idx_load = any(_LOAD_PAT.search(l) for l in lines)
        return 'lfence' in opset or max_nop >= 3 or (bac and idx_load)
    if label == 'INCEPTION':
        max_nop = _max_nop_run()
        ret_c  = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or ret_c > call_c
    if label == 'RETBLEED':
        max_nop = _max_nop_run()
        ret_c = ops.count('ret') + ops.count('retq')
        has_timing     = 'rdtsc' in opset or 'rdtscp' in opset
        # RSB spray: many bl/call fill the RSB, so ret_c < call_c is expected.
        # Condition was ret_c > call_c — wrong for ARM64 RSB spray pattern.
        has_rsb_signal = max_nop >= 3 and ret_c >= 1
        return has_timing or has_rsb_signal
    if label == 'MDS':
        return 'verw' in opset or 'movntdqa' in opset or 'clflush' in opset or 'clflushopt' in opset
    if label == 'L1TF':
        return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset
    if label == 'SPECTRE_RSB':
        max_nop = _max_nop_run()
        ret_c  = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or (ret_c > 0 and call_c > 0)
    if label == 'SPECTRE_V4':
        if 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset:
            return True
        # SSB gadget: heap store + nop timing gap + heap load.
        # Nop sled alone is insufficient (RF3); requires both sides of the bypass.
        if _max_nop_run() >= 3:
            _MEM_OP = re.compile(r'\b(mov[qlb]|movzx|str[bh]?|ldr[bh]?)\b', re.I)
            heap_stores = [l for l in lines if _MEM_OP.search(l) and _HEAP_DEREF.search(l)
                           and re.search(r'%[a-z][a-z0-9]*,\s*\(|^\s*str', l, re.I)]
            heap_loads  = [l for l in lines if _MEM_OP.search(l) and _HEAP_DEREF.search(l)
                           and re.search(r'\(\S+\),\s*%|^\s*ldr', l, re.I)]
            if heap_stores and heap_loads:
                return True
        return False
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

    # Re-neutralize ALL pool records to catch adrp/lo12 references not handled
    # by the older v52 neutralization (which only neutralized direct bl/call targets).
    key_field = lambda r: 'sequence' if 'sequence' in r else 'instructions'
    for r in pool:
        k = key_field(r)
        r[k] = _neutralize(r[k])
    print(f"Re-neutralized all pool records (adrp/lo12 fix)")

    # Remove BHI samples from p15/p19 groups — these are OpenSSL library functions
    # (CAST_encrypt, CRYPTO_gcm128_decrypt, asn1_item_embed_new) labeled as BHI
    # because their source file came from a BHI research compilation. They have
    # 0% clearbhb/ibpb signal and median length 186 vs genuine BHI median of 20.
    # p15/p19 MDS and INCEPTION samples have genuine structural signals — keep those.
    n_before = len(pool)
    pool = [r for r in pool if not (
        r.get('label') == 'BRANCH_HISTORY_INJECTION' and
        (r.get('group', '').startswith('p15_') or r.get('group', '').startswith('p19_'))
    )]
    print(f"Pool after p15/p19 BHI filter: {len(pool)} (dropped {n_before - len(pool)} mislabeled BHI)")

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

    # ── 6. Training specificity filter — label-conditioned, TRAIN ONLY ──────
    def apply_specificity(recs, tag, split):
        kept, dropped = [], 0
        for r in recs:
            if has_train_attack_signal(r['label'], get_seq(r), split=split):
                kept.append(r)
            else:
                dropped += 1
        print(f"  {tag}: {len(recs)} → {len(kept)} kept, {dropped} dropped by specificity")
        return kept

    def apply_quality(recs, tag):
        kept = [r for r in recs if passes_quality_filter(get_seq(r))]
        print(f"  {tag}: {len(recs)} → {len(kept)} kept, {len(recs)-len(kept)} dropped by quality")
        return kept

    # FIXED (2026-08-30): this previously applied the LABEL-CONDITIONED filter to
    # test_pool as well, directly contradicting the section header above. That
    # screened the locked test set so that every record satisfied a hand-written
    # rule keyed on its own label — selective data snooping, and it inflated
    # reported accuracy by ~5-9pp. Test now gets only label-INDEPENDENT quality
    # screening; the label-conditioned filter is train-only and raises if pointed
    # anywhere else. See SPECDISCOVER_TEST_SET_SCREENING.md.
    print("\nApplying specificity filter to TRAIN ONLY (label-conditioned):")
    train_pool = apply_specificity(train_pool, "train_pool", split="train")
    print("Applying label-INDEPENDENT quality filter to test:")
    test_pool  = apply_quality(test_pool, "test_pool")

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
