#!/usr/bin/env python3
"""
Build v54 dataset.

Strategy:
  - Test set: LOCKED — identical to v53 test set (1942 records, same templates).
    No retraining or re-splitting of the test set.
  - Training set: v53 train (5178) + NEW external samples from:
      * Google SafeSide (hardware-confirmed PoCs, BSD/GPL licensed)
        Compiled to x86_64 and arm64 at O0/O1/O2/O3 with Apple Clang.
      * Spectector benchmarks (formally verified Spectre-V1 samples,
        compiled by Intel icc/gcc/Clang at O0/O2).

External sample preprocessing:
  - Same _neutralize() (call/branch target → <fn>)
  - Same clean_seq() (strip directives/labels)
  - Same has_train_attack_signal() specificity filter
  - SHA-256 dedup against ALL existing v53 hashes (train + test)
  - External test: NONE — all external data goes to training only
    (avoids polluting the locked test set with different distribution)

Why external data helps:
  - Spectector provides 166 formally-verified Spectre-V1 assembly files
    from 3 real compilers (Intel icc, gcc, Clang) across 15 Kocher variants
    — diversifies compiler fingerprints vs our internal clang-only corpus.
  - SafeSide provides hardware-confirmed PoCs for SPECTRE_V2, SPECTRE_V4,
    SPECTRE_RSB, and (partially) L1TF from a completely different code base
    — prevents the model from overfitting to our internal code style.

Run from SpecExec/v54/:
  python3 build_dataset.py
"""

import hashlib
import json
import re
import subprocess
import sys
from collections import Counter
from pathlib import Path
from typing import Dict, List, Optional, Tuple

ROOT   = Path(__file__).resolve().parent.parent
V53DIR = ROOT / "v53"
OUTDIR = Path(__file__).resolve().parent / "data"
EXT    = Path("/tmp/specexec_external")

OUTDIR.mkdir(parents=True, exist_ok=True)

# ---------------------------------------------------------------------------
# Shared preprocessing (identical to v53/build_dataset.py)
# ---------------------------------------------------------------------------

_CALL_TARGET_RE = re.compile(
    r'^(\s*(?:callq?|bl)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)
# ARM64: adrp xN, SYMBOL and add xN, xN, :lo12:SYMBOL — function-address loads
# that expose function names as plaintext. Must neutralize same as direct calls.
_ADRP_SYM_RE = re.compile(
    r'^(\s*adrp\s+\w+,\s*)([A-Za-z_][A-Za-z0-9_$@.]*)(.*)$', re.I
)
_LO12_SYM_RE = re.compile(
    r'^(\s*add\s+\w+,\s*\w+,\s*:lo12:)([A-Za-z_][A-Za-z0-9_$@.]*)(.*)$', re.I
)
_LEAQ_RIP_RE = re.compile(
    r'^(\s*leaq?\s+)([A-Za-z_][A-Za-z0-9_$@.]*)(\(%rip\).*)$', re.I
)
# RISC-V: symbols reach the operand as %hi(SYMBOL) / %lo(SYMBOL) — the ISA has no
# adrp/lo12 or rip-relative form, so neither rule above sees them. Without this the
# corpus keeps names like `mds_secret`, `leak_gadget_bhi`, `secret_retbleed_data`,
# which name their own class. Inert today (AsmTokenizer.normalize maps every symbol
# to <sym> and canonical_op reads only the mnemonic), so this changes no reported
# number — it closes the gap before a raw-text consumer makes it live.
_RISCV_HILO_SYM_RE = re.compile(
    r'^(.*%(?:hi|lo)\()([A-Za-z_][A-Za-z0-9_$@.]*)(\).*)$'
)
_BB_LABEL_RE = re.compile(r'^L(BB|tmp)\d', re.I)
_NON_INSTR = re.compile(r'^\s*(?:\.|#|;|//)')
_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)

# Indexed array load — the Spectre-V1 transmitter: array[untrusted_index].
# Must catch BOTH forms of AT&T indexed memory access:
#
#   Form A (2-register):  movzbl (%rax,%rdi,1), %eax
#                                  ^^^^^^^^^^^^^
#   Form B (sym+1-reg):   movzbl array1(%rdi), %eax     ← Kocher / Spectector form
#                                        ^^^^
#     Symbol + non-stack register — array base is a global symbol, index in reg.
#     Exclude %rip (PC-relative, no taint) and %rsp/%rbp (stack, not array).
#
# v53 had \[ only — missed all AT&T x86 forms.
# v54a added 2-reg form only — still missed symbol+reg (Spectector/Kocher).
_LOAD_PAT = re.compile(
    r'\b(ldr[bhsdq]?|ldp|movq|movl|movb|movw|movzx|movzb[lq]?|movzw[lq]?|movsb[lq]?)\b'
    r'.*(?:'
    r'\([^)]*%[a-z][a-z0-9]*[^)]*,[^)]*%[a-z]'               # AT&T 2-reg: (%base,%index,...)
    r'|[A-Za-z_][A-Za-z0-9_$@.]*\(%(?!rip|rsp|rbp|esp|ebp|sp)[a-z][a-z0-9]*\)'  # sym(%non-stack-reg)
    r'|\[[^\]]*\+[^\]]*\*'                                     # Intel: [base+reg*scale]
    r'|\[x[0-9]+,\s*x[0-9]+'                                  # ARM: [xN, xM]
    r')', re.I
)


def _neutralize(instrs: List[str]) -> List[str]:
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
        m = _RISCV_HILO_SYM_RE.match(line)
        if m and not _BB_LABEL_RE.match(m.group(2)):
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
            continue
        result.append(line)
    return result


def is_instruction_line(line: str) -> bool:
    s = line.strip()
    if not s:
        return False
    if s.endswith(':'):
        return False
    if _NON_INSTR.match(s):
        return False
    return True


def clean_seq(seq: List[str]) -> List[str]:
    return [l for l in seq if is_instruction_line(l)]


def seq_hash(seq: List[str]) -> str:
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


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


def has_train_attack_signal(label: str, lines: List[str], *, split: str) -> bool:
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
    ops = []
    for line in lines:
        parts = line.strip().split()
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
        has_timing = 'rdtsc' in opset or 'rdtscp' in opset
        # RSB spray has more bl/call than rets — condition was ret_c>call_c (wrong).
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


# ---------------------------------------------------------------------------
# Assembly parser — extract function sequences from .s files
# ---------------------------------------------------------------------------

_CFI_END  = re.compile(r'\.cfi_endproc')
_FUNC_LBL = re.compile(r'^([A-Za-z_][A-Za-z0-9_.@$]*):')


def extract_functions(asm_path: Path) -> List[List[str]]:
    """Parse a .s file into per-function instruction lists."""
    functions = []
    current: List[str] = []
    in_func = False

    try:
        text = asm_path.read_text(errors='replace')
    except Exception:
        return []

    for line in text.splitlines():
        s = line.strip()

        if _CFI_END.search(s):
            if current:
                functions.append(current)
            current = []
            in_func = False
            continue

        if _FUNC_LBL.match(s) and not s.startswith('.'):
            if current:
                functions.append(current)
            current = []
            in_func = True
            continue

        if in_func and s and not s.startswith('.') and not s.startswith('#'):
            instr = re.sub(r'\s*(##|//)[^\n]*$', '', s).strip()
            if instr and not instr.endswith(':'):
                current.append(instr)

    if current:
        functions.append(current)

    return functions


# ---------------------------------------------------------------------------
# SafeSide compilation + ingestion
# ---------------------------------------------------------------------------

SAFESIDE_DIR = EXT / "safeside/demos"

SAFESIDE_CLASS = {
    "spectre_v1_pht_sa":         "SPECTRE_V1",
    "spectre_v1_btb_sa":         "SPECTRE_V2",
    "spectre_v1_btb_ca":         "SPECTRE_V2",
    "spectre_v4":                "SPECTRE_V4",
    "ret2spec_sa":               "SPECTRE_RSB",
    "ret2spec_ca":               "SPECTRE_RSB",
    "ret2spec_callret_disparity":"SPECTRE_RSB",
    "ret2spec_common":           "SPECTRE_RSB",
    "meltdown_de":               "L1TF",   # only meltdown_de compiles on macOS
}


def compile_safeside_file(src: Path, out: Path, triple: str, opt: str) -> bool:
    out.parent.mkdir(parents=True, exist_ok=True)
    if out.exists():
        return True
    cmd = [
        "clang++", f"-target", triple, f"-O{opt}", "-S",
        "-fno-exceptions", "-DSAFESIDE_LINUX=1",
        f"-I{SAFESIDE_DIR}", f"-I{SAFESIDE_DIR.parent}",
        "-o", str(out), str(src),
    ]
    r = subprocess.run(cmd, capture_output=True, timeout=60)
    return r.returncode == 0


def load_safeside_samples() -> List[dict]:
    asm_root = EXT / "safeside_asm"
    samples = []
    triples = [("x86_64-apple-macos", "x86_64"), ("arm64-apple-macos", "arm64")]
    opts = ["0", "1", "2", "3"]

    for stem, label in SAFESIDE_CLASS.items():
        src = SAFESIDE_DIR / f"{stem}.cc"
        if not src.exists():
            continue
        for triple, arch in triples:
            for opt in opts:
                out = asm_root / arch / f"{stem}_O{opt}.s"
                if not compile_safeside_file(src, out, triple, opt):
                    continue
                funcs = extract_functions(out)
                for func in funcs:
                    cleaned = clean_seq(_neutralize(func))
                    if len(cleaned) < 4:
                        continue
                    samples.append({
                        "label":           label,
                        "sequence":        cleaned,
                        "source_file":     str(out),
                        "group":           f"ext_safeside_{stem}_{arch}_O{opt}",
                        "arch":            arch,
                        "augmentation":    "none",
                        "external_source": "safeside",
                    })
    print(f"SafeSide: {len(samples)} raw function sequences")
    return samples


# ---------------------------------------------------------------------------
# Spectector ingestion
# ---------------------------------------------------------------------------

def load_spectector_samples() -> List[dict]:
    spec_dir = EXT / "spectector-benchmarks"
    bad  = re.compile(r'(lfence|slh|fence|retpoline)', re.I)
    good = re.compile(r'(any\.|vanilla\.)', re.I)
    samples = []

    for path in spec_dir.rglob("*.s"):
        if not good.search(path.name):
            continue
        if bad.search(path.name):
            continue
        funcs = extract_functions(path)
        group = f"ext_spectector_{path.parent.name}_{path.stem}"
        for func in funcs:
            cleaned = clean_seq(_neutralize(func))
            if len(cleaned) < 4:
                continue
            samples.append({
                "label":           "SPECTRE_V1",
                "sequence":        cleaned,
                "source_file":     str(path),
                "group":           group,
                "arch":            "x86_64",
                "augmentation":    "none",
                "external_source": "spectector-benchmarks",
            })
    print(f"Spectector: {len(samples)} raw function sequences from unpatched files")
    return samples


# ---------------------------------------------------------------------------
# FastSpec ingestion — 956K synthetic Spectre-V1 gadgets
# ---------------------------------------------------------------------------

FASTSPEC_DIR = EXT / "FastSpec/dataset/spectre_train"
FASTSPEC_CAP = 300    # keep V1/V2 ratio ≤ 1.5x; more FastSpec hurts V2 via class imbalance
FASTSPEC_SEED = 42


def load_fastspec_samples() -> List[dict]:
    """Sample FASTSPEC_CAP verified Spectre-V1 sequences from FastSpec spectre_train/.

    Files are named <compiler>_<variant>_<id>_<pid>_<timestamp>.s.
    Group key = compiler+variant prefix (first two underscore-fields) so
    different random IDs of the same compiler×variant map to the same group,
    giving the template split a meaningful unit.
    """
    import random
    rng = random.Random(FASTSPEC_SEED)

    if not FASTSPEC_DIR.exists():
        print("FastSpec: directory not found, skipping")
        return []

    all_files = list(FASTSPEC_DIR.iterdir())
    print(f"FastSpec: {len(all_files)} files in spectre_train/")

    # Shuffle and process up to 4× the cap so we hit the cap even with filter losses
    rng.shuffle(all_files)
    scan_limit = min(len(all_files), FASTSPEC_CAP * 6)
    scan_files = all_files[:scan_limit]

    samples = []
    for path in scan_files:
        if not path.suffix == '.s':
            continue
        funcs = extract_functions(path)
        # Each FastSpec file has exactly one victim_function — take first
        for func in funcs[:1]:
            cleaned = clean_seq(_neutralize(func))
            if len(cleaned) < 6:
                continue
            # Group = compiler+variant (first 2 underscore-separated fields)
            parts = path.stem.split('_')
            group = f"ext_fastspec_{'_'.join(parts[:2])}" if len(parts) >= 2 else f"ext_fastspec_{path.stem}"
            samples.append({
                "label":           "SPECTRE_V1",
                "sequence":        cleaned,
                "source_file":     str(path),
                "group":           group,
                "arch":            "x86_64",
                "augmentation":    "none",
                "external_source": "fastspec",
            })
        if len(samples) >= FASTSPEC_CAP * 4:
            break

    print(f"FastSpec: {len(samples)} raw sequences parsed (from {scan_limit} files scanned)")
    return samples


# ---------------------------------------------------------------------------
# I/O helpers
# ---------------------------------------------------------------------------

def load_jsonl(path: Path) -> List[dict]:
    recs = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                recs.append(json.loads(line))
    return recs


def write_jsonl(path: Path, recs: List[dict]):
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, 'w') as f:
        for r in recs:
            f.write(json.dumps(r) + '\n')


def get_seq(r: dict) -> List[str]:
    seq = r.get('sequence', r.get('instructions', []))
    if seq and isinstance(seq[0], dict):
        return [s.get('text', '') for s in seq]
    return seq


def print_dist(label: str, recs: List[dict]):
    c = Counter(r['label'] for r in recs)
    print(f"\n{label} ({len(recs)} records):")
    print(f"  {'class':<40s} {'n':>6s}")
    for cls, n in sorted(c.items()):
        bar = '#' * (n // 20)
        print(f"  {cls:<40s} {n:>6d}  {bar}")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    # Load v53 datasets
    print("=== Loading v53 data ===")
    v53_train_path = V53DIR / "data" / "v53_train.jsonl"
    v53_test_path  = V53DIR / "data" / "v53_test.jsonl"
    v53_train = load_jsonl(v53_train_path)
    v53_test  = load_jsonl(v53_test_path)
    print(f"v53 train: {len(v53_train)}, v53 test: {len(v53_test)}")

    # Build hash sets for dedup
    all_existing_hashes = set()
    for r in v53_train + v53_test:
        all_existing_hashes.add(seq_hash(get_seq(r)))
    print(f"Existing sequence hashes: {len(all_existing_hashes)}")

    # Load external samples
    print("\n=== Loading external samples ===")
    ext_raw = []
    ext_raw.extend(load_safeside_samples())
    ext_raw.extend(load_spectector_samples())
    ext_raw.extend(load_fastspec_samples())
    print(f"External raw total: {len(ext_raw)}")

    # Apply specificity filter + dedup (FastSpec capped at FASTSPEC_CAP)
    print("\n=== Filtering and deduplicating ===")
    seen = set(all_existing_hashes)
    ext_accepted = []
    fastspec_accepted = 0
    n_no_signal = 0
    n_dup = 0
    for rec in ext_raw:
        seq = rec['sequence']
        h = seq_hash(seq)
        if h in seen:
            n_dup += 1
            continue
        if not has_train_attack_signal(rec['label'], seq, split='train'):
            n_no_signal += 1
            continue
        # Cap FastSpec so it doesn't dominate the class
        if rec.get('external_source') == 'fastspec':
            if fastspec_accepted >= FASTSPEC_CAP:
                continue
            fastspec_accepted += 1
        seen.add(h)
        ext_accepted.append(rec)

    print(f"Filtered: {n_no_signal} no attack signal, {n_dup} duplicates")
    print(f"Accepted new external samples: {len(ext_accepted)}")

    # Merge external with v53 train
    v54_train = v53_train + ext_accepted
    v54_test  = v53_test  # LOCKED — identical to v53

    print_dist("v53 train (base)", v53_train)
    print_dist("External additions", ext_accepted)
    print_dist("v54 train (combined)", v54_train)
    print_dist("v54 test (locked from v53)", v54_test)

    # Class-balance summary
    print("\n=== Class balance summary ===")
    v53c = Counter(r['label'] for r in v53_train)
    v54c = Counter(r['label'] for r in v54_train)
    print(f"  {'class':<40s} {'v53':>6s} {'v54':>6s} {'delta':>7s}")
    for cls in sorted(v54c.keys()):
        delta = v54c[cls] - v53c.get(cls, 0)
        sign = '+' if delta >= 0 else ''
        print(f"  {cls:<40s} {v53c.get(cls,0):>6d} {v54c[cls]:>6d} {sign}{delta:>6d}")

    # Write output
    out_train = OUTDIR / "v54_train.jsonl"
    out_test  = OUTDIR / "v54_test.jsonl"
    write_jsonl(out_train, v54_train)
    write_jsonl(out_test,  v54_test)
    print(f"\nWrote {out_train}  ({len(v54_train)} records)")
    print(f"Wrote {out_test}   ({len(v54_test)} records)")
    print("\nNote: test set is identical to v53 for direct comparison.")


if __name__ == "__main__":
    main()
