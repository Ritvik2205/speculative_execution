#!/usr/bin/env python3
"""
Phase 19: Whole-file sequence extraction for v52.

Instead of per-function records, extract ONE sequence per (source_file, compiler, opt)
by concatenating all non-boilerplate functions from each compiled assembly file.

Key differences from phase15:
  - ONE record per file × compiler × opt (not per function)
  - All call/branch targets neutralized: callq _spectre_v1_victim → callq <fn>
  - `is_instruction_line` applied (via parse_functions)
  - `strip_boilerplate` applied to concatenated sequence
  - Specificity filter still applied to verify whole-file has attack content

Sources: phase11_repos + phase15_repos C files with inferred labels.
Output: data/enrichment/phase19_whole_file.jsonl
"""
import sys
import re
import json
import random
import subprocess
import tempfile
import logging
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
sys.path.insert(0, str(ROOT / "v51"))

from extract_functions import parse_functions, _SKIP_FUNC_PATTERNS
from strip_boilerplate import strip_boilerplate

logging.basicConfig(level=logging.INFO, format="%(levelname)s %(message)s")
log = logging.getLogger("phase19")

OUT_PATH = ROOT / "data" / "enrichment" / "phase19_whole_file.jsonl"

# Repos with explicit label overrides
_REPO_LABELS = {
    "meltdown":              "L1TF",
    "meltdown-exploit":      "L1TF",
    "Am-I-affected-by-Meltdown": "L1TF",
    "exploit-CVE-2017-5754": "L1TF",
    "zombieload":            "MDS",
    "ridl":                  "MDS",
    "retbleed":              "RETBLEED",
    "inception":             "INCEPTION",
    "bhi-spectre-bhb":       "BRANCH_HISTORY_INJECTION",
    "SMoTherSpectre":        "BRANCH_HISTORY_INJECTION",
    "spectre":               "SPECTRE_V1",
    "spectre-attack":        "SPECTRE_V1",
    "spectre-attack-sgx":    "SPECTRE_V1",
    "spectre-PoC":           "SPECTRE_V1",
    "meltdown-spectre-poc":  None,   # mixed — infer per-file
    "spectre-meltdown":      None,
    "spectre-meltdown-checker": None,
    "safeside":              None,
    "security-research":     None,
    "transient-execution-attacks": None,
    "exploits":              None,
    "downfall":              None,   # DOWNFALL not a v52 class — skip
}

# Label inference from path keywords (longest match first)
_LABEL_PATTERNS = [
    (re.compile(r'spectre.?v4|spectre.?4|ssb', re.I),     "SPECTRE_V4"),
    (re.compile(r'spectre.?rsb|rsb', re.I),                "SPECTRE_RSB"),
    (re.compile(r'spectre.?v2|spectre.?2|retpoline|ibpb|spectre2', re.I), "SPECTRE_V2"),
    (re.compile(r'spectre.?v1|spectre.?1|spectre1', re.I), "SPECTRE_V1"),
    (re.compile(r'spectre', re.I),                          "SPECTRE_V1"),
    (re.compile(r'inception|phantom|srso', re.I),           "INCEPTION"),
    (re.compile(r'retbleed', re.I),                         "RETBLEED"),
    (re.compile(r'l1tf|meltdown|foreshadow', re.I),         "L1TF"),
    (re.compile(r'\bbhi\b|bhi.spectre|spectre.bhb|clearbhb|smother', re.I), "BRANCH_HISTORY_INJECTION"),
    (re.compile(r'\bmds\b|ridl|zombieload|fallout|taa', re.I), "MDS"),
]

# Valid classes for v52 (DOWNFALL not included — too few samples)
_VALID_LABELS = {
    "SPECTRE_V1", "SPECTRE_V2", "SPECTRE_V4", "SPECTRE_RSB",
    "L1TF", "MDS", "RETBLEED", "INCEPTION", "BRANCH_HISTORY_INJECTION",
}

# Compile configs: (compiler, extra_flags, arch_tag)
_X86 = ["-target", "x86_64-apple-macos"]
_ARM = ["-target", "arm64-apple-macos"]

COMPILE_CONFIGS = [
    ("clang", _X86 + ["-O0"], "x86_64"),
    ("clang", _X86 + ["-O1"], "x86_64"),
    ("clang", _X86 + ["-O2"], "x86_64"),
    ("clang", _X86 + ["-O3"], "x86_64"),
    ("clang", _X86 + ["-Os"], "x86_64"),
    ("clang", _ARM + ["-O0"], "arm64"),
    ("clang", _ARM + ["-O1"], "arm64"),
    ("clang", _ARM + ["-O2"], "arm64"),
    ("clang", _ARM + ["-O3"], "arm64"),
    ("clang", _ARM + ["-Os"], "arm64"),
]

# Regex to neutralize call/branch targets in instruction strings
# Matches: callq _foo, call _foo, bl _foo, blr x0 (register — leave as-is)
# Only neutralize symbol targets (start with _ or letter)
_CALL_TARGET_RE = re.compile(
    r'^(\s*(?:callq?|bl)\s+)([A-Za-z_][A-Za-z0-9_.@$]*)(.*)$'
)
_INDIRECT_RE = re.compile(
    r'\b(jmpq?\s*\*|callq?\s*\*|jmp\s*\*|call\s*\*)',
    re.I
)


def _infer_label(path_str: str, repo_override: str | None) -> str | None:
    if repo_override:
        return repo_override
    for pat, lbl in _LABEL_PATTERNS:
        if pat.search(path_str):
            return lbl
    return None


def _neutralize_targets(instrs: list[str]) -> list[str]:
    """Replace named call/branch targets with <fn> placeholder."""
    result = []
    for line in instrs:
        m = _CALL_TARGET_RE.match(line)
        if m:
            result.append(f"{m.group(1)}<fn>{m.group(3)}")
        else:
            result.append(line)
    return result


def _compile(src: Path, compiler: str, flags: list, arch: str = '') -> str | None:
    with tempfile.NamedTemporaryFile(suffix='.s', delete=False) as tf:
        out = tf.name
    try:
        cmd = [compiler] + flags + [
            "-S", "-fno-asynchronous-unwind-tables",
            "-fno-exceptions", "-fno-rtti",
            "-w", str(src), "-o", out
        ]
        r = subprocess.run(cmd, capture_output=True, timeout=30)
        if r.returncode != 0:
            return None
        return Path(out).read_text(errors='replace')
    except Exception:
        return None
    finally:
        try:
            Path(out).unlink()
        except Exception:
            pass


# ── Specificity filter ───────────────────────────────────────────────────────
_INDIRECT_PAT = re.compile(r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)', re.I)
# After neutralization, call targets are <fn> — use structural patterns only
_LOAD_PAT = re.compile(r'\b(ldr|ldp|movq|movl|movzx)\b.*\[', re.I)


def _has_attack_signal(label: str, lines: list[str]) -> bool:
    ops = []
    for line in lines:
        s = line.strip()
        if not s:
            continue
        parts = s.split()
        if parts:
            ops.append(parts[0].lower())
    opset = set(ops)
    has_indirect = any(_INDIRECT_PAT.search(l) for l in lines)
    # After target neutralization, calls to attack fns show as callq <fn> — no keyword match.
    # Rely on structural features instead.

    if label == 'BENIGN':
        return True
    if label in ('BRANCH_HISTORY_INJECTION', 'SPECTRE_V2'):
        return has_indirect
    if label == 'SPECTRE_V1':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1
                max_nop = max(max_nop, nop_run)
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
                nop_run += 1
                max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        ret_c = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or ret_c > call_c
    if label == 'RETBLEED':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1
                max_nop = max(max_nop, nop_run)
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
                nop_run += 1
                max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        ret_c = ops.count('ret') + ops.count('retq')
        call_c = sum(ops.count(o) for o in ('call', 'callq', 'bl'))
        return max_nop >= 3 or (ret_c > 0 and call_c > 0)
    if label == 'SPECTRE_V4':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1
                max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        return 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset or max_nop >= 3
    return True


def _process_file(src: Path, label: str) -> list[dict]:
    """Compile src and return one whole-file record per (compiler, opt)."""
    records = []
    seen = set()

    for compiler, flags, arch in COMPILE_CONFIGS:
        asm = _compile(src, compiler, flags, arch)
        if not asm:
            continue
        funcs = parse_functions(asm)
        if not funcs:
            continue

        # Concatenate all non-skip functions (parse_functions already skips them)
        combined = []
        for _fn_name, instrs in funcs:
            combined.extend(instrs)

        if len(combined) < 8:
            continue

        # Neutralize call targets to remove name-based signal
        combined = _neutralize_targets(combined)

        # Strip measurement boilerplate from tail
        combined = strip_boilerplate(combined, min_length=4)

        if len(combined) < 8:
            continue

        # Specificity filter on whole-file sequence
        if not _has_attack_signal(label, combined):
            continue

        h = hash(tuple(combined))
        if h in seen:
            continue
        seen.add(h)

        opt = next((f for f in flags if f.startswith('-O')), '-O0')
        group = f"p19_{src.stem}_{arch}_{compiler}_{opt.lstrip('-')}"
        records.append({
            "label": label,
            "sequence": combined,
            "arch": arch,
            "group": group,
            "source": str(src.relative_to(ROOT) if src.is_relative_to(ROOT) else src),
        })

    return records


def _collect_sources(repos_dir: Path, repo_label_override: str | None) -> list[tuple[Path, str]]:
    """Return list of (c_file, label) pairs from a single repo directory."""
    pairs = []
    for src in repos_dir.rglob("*.c"):
        label = _infer_label(str(src), repo_label_override)
        if label and label in _VALID_LABELS:
            pairs.append((src, label))
    return pairs


def main():
    phase11_base = ROOT / "data" / "enrichment" / "phase11_repos"
    phase15_base = ROOT / "data" / "enrichment" / "phase15_repos"

    all_sources: list[tuple[Path, str]] = []

    for base in [phase11_base, phase15_base]:
        if not base.exists():
            log.warning(f"Missing: {base}")
            continue
        for repo_dir in sorted(base.iterdir()):
            if not repo_dir.is_dir():
                continue
            override = _REPO_LABELS.get(repo_dir.name)
            if override is None and repo_dir.name in _REPO_LABELS:
                # Explicitly set to None = mixed, infer per-file
                pairs = _collect_sources(repo_dir, None)
            elif override:
                pairs = _collect_sources(repo_dir, override)
            else:
                # Repo not in REPO_LABELS dict — try path inference
                pairs = _collect_sources(repo_dir, None)
            all_sources.extend(pairs)

    log.info(f"Total source files with inferred labels: {len(all_sources)}")
    label_dist = Counter(lbl for _, lbl in all_sources)
    for lbl, n in sorted(label_dist.items()):
        log.info(f"  {lbl}: {n} source files")

    all_records = []
    seen_global = set()
    processed = 0

    for src, label in all_sources:
        recs = _process_file(src, label)
        for r in recs:
            h = hash(tuple(r['sequence']))
            if h not in seen_global:
                seen_global.add(h)
                all_records.append(r)
        processed += 1
        if processed % 50 == 0:
            log.info(f"  Processed {processed}/{len(all_sources)} files, {len(all_records)} records so far")

    counts = Counter(r['label'] for r in all_records)
    log.info(f"\nPhase19 total: {len(all_records)} records")
    for lbl, n in sorted(counts.items()):
        log.info(f"  {lbl}: {n}")

    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in all_records:
            f.write(json.dumps(r) + '\n')
    log.info(f"Wrote {len(all_records)} records → {OUT_PATH}")


if __name__ == '__main__':
    main()
