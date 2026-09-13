#!/usr/bin/env python3
"""
Phase 15: Function-level extraction from all cloned PoC repos.

Differences from phase11 (window-based):
  - Extracts whole functions (not sliding windows)
  - Compiles with BOTH gcc AND clang at 5 optimization levels
  - For arm64: uses clang -target arm64-apple-macos (macOS host)
  - Applies per-class specificity filter — only keeps functions with ≥1 attack op
  - Targets BHI, V1, L1TF, MDS, RETBLEED, INCEPTION, SPECTRE_V2, SPECTRE_RSB

Additional repos cloned here:
  - vusec/ridl  (MDS — additional RIDL variants)
  - HexHive/SMoTherSpectre  (BHI / branch aliasing)
  - crozone/spectre-meltdown  (V1/L1TF)
  - lsds/spectre-attack  (V1)
"""
import sys
import re
import json
import random
import subprocess
import tempfile
import logging
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
sys.path.insert(0, str(ROOT / "scripts"))

from extract_functions import parse_functions

logging.basicConfig(level=logging.INFO, format="%(levelname)s %(message)s")
log = logging.getLogger("phase15")

REPOS_DIR = ROOT / "data" / "enrichment" / "phase11_repos"
EXTRA_REPOS_DIR = ROOT / "data" / "enrichment" / "phase15_repos"
OUT_PATH = ROOT / "data" / "enrichment" / "phase15_functions.jsonl"

# New repos not yet cloned
EXTRA_REPOS = [
    ("https://github.com/HexHive/SMoTherSpectre",    "BRANCH_HISTORY_INJECTION"),
    ("https://github.com/vusec/ridl",                "MDS"),
    ("https://github.com/crozone/spectre-meltdown",  None),
    ("https://github.com/lsds/spectre-attack",       "SPECTRE_V1"),
    ("https://github.com/Frichetten/meltdown-spectre-poc", None),
    ("https://github.com/jduck/meltdown-spectre",    None),
    ("https://github.com/speed47/spectre-meltdown-checker", None),
]

# Compile configs: (label, compiler, extra_flags, arch_tag)
# Apple Silicon host: must use -target for x86_64 cross-compile
_X86 = ["-target", "x86_64-apple-macos"]
_ARM = ["-target", "arm64-apple-macos"]

COMPILE_CONFIGS = [
    ("clang", _X86 + ["-O0"],  "x86_64"),
    ("clang", _X86 + ["-O1"],  "x86_64"),
    ("clang", _X86 + ["-O2"],  "x86_64"),
    ("clang", _X86 + ["-O3"],  "x86_64"),
    ("clang", _X86 + ["-Os"],  "x86_64"),
    ("clang", _ARM + ["-O0"],  "arm64"),
    ("clang", _ARM + ["-O1"],  "arm64"),
    ("clang", _ARM + ["-O2"],  "arm64"),
    ("clang", _ARM + ["-O3"],  "arm64"),
    ("clang", _ARM + ["-Os"],  "arm64"),
]

HEADER = "#include <stdint.h>\n#include <stddef.h>\n#include <string.h>\n#include <stdio.h>\n"

# Per-class specificity filter
_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
_CALL_ATK_RE  = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|'
    r'flush_reload|clearbhb|branch_history|victim_function|'
    r'gadget_[a-z]|cache_set|_rdtsc|_clflush',
    re.I
)

def _get_ops_and_calls(lines):
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
            calls.append(parts[1].lower())
    return ops, calls

def has_attack_signal(label: str, lines: list) -> bool:
    ops, calls = _get_ops_and_calls(lines)
    opset = set(ops)
    has_indirect = any(_INDIRECT_PAT.search(l) for l in lines)
    has_atk_call = any(_CALL_ATK_RE.search(c) for c in calls)

    if label in ('BENIGN', 'SPECTRE_V4'):
        return True
    if label in ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'):
        return has_indirect or has_atk_call
    if label == 'SPECTRE_V1':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        cmp_pos = {i for i,op in enumerate(ops) if op in ('cmp','cmn','test','tst')}
        br_pos  = {i for i,op in enumerate(ops) if op in ('je','jne','jl','jg','jz','jnz','cbz','cbnz','b.eq','b.ne','b.lt','b.gt')}
        load_pat = re.compile(r'\b(ldr|ldp|movq|movl|movzx)\b.*\[', re.I)
        bac = any(any((cp+1) <= bp <= (cp+3) for bp in br_pos) for cp in cmp_pos)
        idx_load = any(load_pat.search(l) for l in lines)
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
    return True

# Label inference from path
_LABEL_PATTERNS = [
    (re.compile(r'spectre.?v4|spectre.?4', re.I), "SPECTRE_V4"),
    (re.compile(r'spectre.?v2|spectre.?2|spectre2', re.I), "SPECTRE_V2"),
    (re.compile(r'spectre.?v1|spectre.?1|spectre1|spectre[^_]', re.I), "SPECTRE_V1"),
    (re.compile(r'inception', re.I),    "INCEPTION"),
    (re.compile(r'retbleed',  re.I),    "RETBLEED"),
    (re.compile(r'meltdown|l1tf',re.I), "L1TF"),
    (re.compile(r'\bbhi\b|bhi.spectre|spectre.bhb|clearbhb|smother',re.I), "BRANCH_HISTORY_INJECTION"),
    (re.compile(r'\bmds\b|ridl|zombieload|fallout|taa',re.I), "MDS"),
    (re.compile(r'rsb|spectre.rsb',re.I), "SPECTRE_RSB"),
]

def infer_label(path_str: str, override: str = None) -> str:
    if override:
        return override
    for pat, lbl in _LABEL_PATTERNS:
        if pat.search(path_str):
            return lbl
    return None

def compile_to_asm(src: Path, compiler: str, flags: list, arch: str) -> str | None:
    with tempfile.NamedTemporaryFile(suffix='.s', delete=False) as tf:
        out = tf.name
    try:
        cmd = [compiler] + flags + [
            "-S", "-fno-asynchronous-unwind-tables",
            "-fno-exceptions", "-fno-rtti",
            "-w",
            str(src), "-o", out
        ]
        r = subprocess.run(cmd, capture_output=True, timeout=30)
        if r.returncode != 0:
            return None
        return Path(out).read_text(errors='replace')
    except Exception:
        return None
    finally:
        try: Path(out).unlink()
        except: pass

def clone_repo(url: str, target: Path) -> bool:
    if target.exists():
        log.info(f"  Already cloned: {target.name}")
        return True
    target.parent.mkdir(parents=True, exist_ok=True)
    r = subprocess.run(["git", "clone", "--depth=1", url, str(target)],
                       capture_output=True, timeout=120)
    if r.returncode == 0:
        log.info(f"  Cloned {url}")
        return True
    log.warning(f"  Failed to clone {url}: {r.stderr.decode()[:200]}")
    return False

def process_src_file(src: Path, label: str) -> list:
    records = []
    seen_hashes = set()

    for compiler, flags, arch in COMPILE_CONFIGS:
        asm = compile_to_asm(src, compiler, flags, arch)
        if not asm:
            continue
        funcs = parse_functions(asm)
        opt = next((f for f in flags if f.startswith('-O')), '-O0')
        group = f"p15_{src.stem}_{arch}_{compiler}_{opt.lstrip('-')}"

        for fn_name, instrs in funcs:
            if len(instrs) < 4:
                continue
            if not has_attack_signal(label, instrs):
                continue
            h = hash(tuple(instrs))
            if h in seen_hashes:
                continue
            seen_hashes.add(h)
            records.append({
                "label": label,
                "sequence": instrs,
                "arch": arch,
                "group": group,
                "fn": fn_name,
                "source": str(src.relative_to(ROOT)),
            })
    return records

def main():
    EXTRA_REPOS_DIR.mkdir(parents=True, exist_ok=True)

    # Clone extra repos
    for url, label_override in EXTRA_REPOS:
        repo_name = url.rstrip("/").split("/")[-1]
        target = EXTRA_REPOS_DIR / repo_name
        clone_repo(url, target)

    # Collect all source directories to scan
    scan_dirs = []
    for d in REPOS_DIR.iterdir():
        if d.is_dir():
            scan_dirs.append((d, None))
    for d in EXTRA_REPOS_DIR.iterdir():
        if d.is_dir():
            url_match = next((url for url, _ in EXTRA_REPOS if url.endswith(d.name)), None)
            override = next((lbl for url, lbl in EXTRA_REPOS if url.endswith(d.name)), None)
            scan_dirs.append((d, override))

    all_records = []
    label_stats = Counter()
    skipped_no_label = 0
    skipped_no_signal = 0

    for repo_dir, label_override in scan_dirs:
        src_files = list(repo_dir.rglob("*.c")) + list(repo_dir.rglob("*.cpp"))
        log.info(f"Repo {repo_dir.name}: {len(src_files)} source files")

        for src in src_files:
            path_str = str(src)
            label = infer_label(path_str, label_override)
            if not label:
                skipped_no_label += 1
                continue
            if label == "DOWNFALL":
                continue  # skip DOWNFALL (not in our 9+1 class set)

            recs = process_src_file(src, label)
            all_records.extend(recs)
            label_stats[label] += len(recs)

    log.info(f"\nSkipped (no label): {skipped_no_label}")
    log.info(f"Total records with attack signal: {len(all_records)}")
    log.info("Per-class counts:")
    for lbl, n in sorted(label_stats.items()):
        log.info(f"  {lbl}: {n}")

    random.shuffle(all_records)
    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in all_records:
            f.write(json.dumps(r) + '\n')
    log.info(f"\nWrote {len(all_records)} records → {OUT_PATH}")

if __name__ == '__main__':
    main()
