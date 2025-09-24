#!/usr/bin/env python3
"""
Build labeled window dataset for speculative execution vulnerability detection.

Outputs JSONL samples with minimal windows for positives and hard negatives.
Relies on:
 - vuln_assembly_processed/vuln_features.pkl (from preprocess_vuln_assembly.py)
 - parsed_assembly/assembly_features.pkl (from parse_assembly.py)

Each sample JSON contains:
{
  "label": "SPECTRE_V1" | "SAFE",
  "arch": "arm64" | "x86_64",
  "file_path": str,
  "start_line": int,
  "end_line": int,
  "instructions": [ ... normalized with semantics ... ],
  "dsl_evidence": { ... },
  "meta": {"source": "vuln" | "github", "window_size": int}
}
"""

from __future__ import annotations

import os
import sys
import json
import pickle
from typing import List, Dict, Any, Tuple
from pathlib import Path
from random import shuffle, seed
from collections import defaultdict

from dsl_matcher import DSLMatcher
from minimal_subsequence import reduce_to_minimal_window


VULN_DIR = Path("vuln_assembly_processed")
PARSED_DIR = Path("parsed_assembly")
OUTPUT_DIR = Path("dataset")
POS_JSONL = OUTPUT_DIR / "positives.jsonl"
NEG_JSONL = OUTPUT_DIR / "negatives.jsonl"
COMBINED_JSONL = OUTPUT_DIR / "dataset.jsonl"
FAIL_LOG = OUTPUT_DIR / "positive_failures.log"
FAIL_SUMMARY = OUTPUT_DIR / "positive_failures_summary.json"

WINDOW_SIZES = [5, 8, 10, 15, 20]
MAX_NEGATIVE_SAMPLES = 20000  # cap to keep dataset manageable


def _ensure_semantics(instr: Dict[str, Any], arch: str) -> Dict[str, Any]:
    """Attach semantics if missing (ported from github_vulnerability_scanner logic)."""
    if 'semantics' in instr and isinstance(instr['semantics'], dict):
        return instr
    opcode = instr.get('opcode', '').lower()
    operands = instr.get('operands', [])
    sem = {
        'is_branch': False,
        'is_conditional': False,
        'is_indirect': False,
        'is_call': False,
        'is_return': False,
        'is_load': False,
        'is_store': False,
        'accesses_memory': False,
        'is_arithmetic': False,
        'is_comparison': False,
        'is_speculation_barrier': False,
        'is_cache_operation': False,
        'is_timing_sensitive': False,
        'is_privileged': False
    }
    if arch == 'x86_64':
        if opcode.startswith('j'):
            sem['is_branch'] = True
            if opcode != 'jmp':
                sem['is_conditional'] = True
            if any('[' in op for op in operands):
                sem['is_indirect'] = True
        elif opcode in ['call', 'ret']:
            sem['is_call'] = opcode == 'call'
            sem['is_return'] = opcode == 'ret'
            if opcode == 'call' and any('[' in op or '%' in op for op in operands):
                sem['is_indirect'] = True
        elif opcode in ['mov', 'movzx', 'movsx', 'movzbl', 'movzwl', 'lea']:
            if any('[' in op for op in operands):
                sem['accesses_memory'] = True
                sem['is_load'] = True
        elif opcode in ['add', 'sub', 'mul', 'div', 'xor', 'and', 'or', 'shl', 'shr']:
            sem['is_arithmetic'] = True
        elif opcode in ['cmp', 'test']:
            sem['is_comparison'] = True
        elif opcode in ['lfence', 'mfence', 'sfence']:
            sem['is_speculation_barrier'] = True
        elif opcode in ['clflush', 'clwb', 'clflushopt']:
            sem['is_cache_operation'] = True
        elif opcode in ['rdtsc', 'rdtscp']:
            sem['is_timing_sensitive'] = True
    else:  # arm64 default
        if opcode.startswith('b'):
            sem['is_branch'] = True
            if '.' in opcode:
                sem['is_conditional'] = True
            if opcode in ['br', 'blr']:
                sem['is_indirect'] = True
        elif opcode in ['bl', 'blr', 'ret']:
            sem['is_call'] = opcode in ['bl', 'blr']
            sem['is_return'] = opcode == 'ret'
            if opcode == 'blr':
                sem['is_indirect'] = True
        elif opcode in ['ldr', 'ldrb', 'ldrh', 'ldp']:
            sem['is_load'] = True
            sem['accesses_memory'] = True
        elif opcode in ['str', 'strb', 'strh', 'stp']:
            sem['is_store'] = True
            sem['accesses_memory'] = True
        elif opcode in ['add', 'sub', 'mul', 'div', 'and', 'orr', 'eor', 'lsl', 'lsr']:
            sem['is_arithmetic'] = True
        elif opcode in ['cmp', 'subs']:
            sem['is_comparison'] = True
        elif opcode in ['dsb', 'isb', 'dmb']:
            sem['is_speculation_barrier'] = True
        elif opcode in ['dc', 'ic']:
            sem['is_cache_operation'] = True
        elif opcode == 'mrs':
            sem['is_timing_sensitive'] = True
            sem['is_privileged'] = True

    instr['semantics'] = sem
    # Normalize keys for DSL
    if 'raw' in instr and 'raw_line' not in instr:
        instr['raw_line'] = instr['raw']
    if 'line' in instr and 'line_num' not in instr:
        instr['line_num'] = instr['line']
    return instr


def _sliding_windows(instructions: List[Dict[str, Any]], sizes: List[int]) -> List[Tuple[int, int, List[Dict[str, Any]]]]:
    windows = []
    n = len(instructions)
    for w in sizes:
        if n < w:
            continue
        for i in range(0, n - w + 1):
            windows.append((i, i + w, instructions[i:i + w]))
    return windows


def build_positives(matcher: DSLMatcher) -> int:
    feats_path = VULN_DIR / 'vuln_features.pkl'
    if not feats_path.exists():
        print(f"❌ Missing {feats_path}. Run preprocess_vuln_assembly.py first.")
        return 0
    with open(feats_path, 'rb') as f:
        vuln_data = pickle.load(f)

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    out = open(POS_JSONL, 'w')
    # Reset failure log
    with open(FAIL_LOG, 'w') as flog:
        flog.write("")
    fail_counts = defaultdict(int)
    count = 0
    for file_data in vuln_data:
        raw_instrs = file_data.get('raw_instructions', [])
        arch = file_data.get('architecture', file_data.get('arch', 'arm64'))
        vtype = file_data.get('vulnerability_type', 'UNKNOWN')
        file_path = file_data.get('file_path', file_data.get('filename', 'unknown'))
        if not raw_instrs:
            continue
        # Ensure semantics and normalized keys
        instrs = [_ensure_semantics(dict(instr), arch) for instr in raw_instrs if isinstance(instr, dict)]
        # Also try function-scoped sequences (contiguous labels absent; we use full sequence first)
        for start, end, window in _sliding_windows(instrs, WINDOW_SIZES):
            ok, ev = matcher.validate_window(window, vtype, arch)
            if not ok:
                # Log failure for tuning
                reason = ev.get('reason', 'unknown')
                missing = ev.get('missing', None)
                fail_counts[(vtype, reason, missing)] += 1
                try:
                    with open(FAIL_LOG, 'a') as flog:
                        flog.write(json.dumps({
                            'file': file_path,
                            'arch': arch,
                            'vuln_type': vtype,
                            'window_size': end - start,
                            'start_idx': start,
                            'end_idx': end,
                            'reason': reason,
                            'missing': missing,
                            'evidence_keys': list(ev.keys())
                        }) + "\n")
                except Exception:
                    pass
                continue
            minimized, dsl_ev = reduce_to_minimal_window(window, vtype, arch)
            if not minimized:
                continue
            sample = {
                'label': vtype,
                'arch': arch,
                'file_path': file_path,
                'start_line': minimized[0].get('line_num', 0),
                'end_line': minimized[-1].get('line_num', 0),
                'instructions': minimized,
                'dsl_evidence': dsl_ev,
                'meta': {'source': 'vuln', 'window_size': end - start}
            }
            out.write(json.dumps(sample) + '\n')
            count += 1
        # If still zero for this file, try full sequence as one window
        if count == 0 and len(instrs) >= 3:
            ok, ev = matcher.validate_window(instrs, vtype, arch)
            if ok:
                minimized, dsl_ev = reduce_to_minimal_window(instrs, vtype, arch)
                if minimized:
                    sample = {
                        'label': vtype,
                        'arch': arch,
                        'file_path': file_path,
                        'start_line': minimized[0].get('line_num', 0),
                        'end_line': minimized[-1].get('line_num', 0),
                        'instructions': minimized,
                        'dsl_evidence': dsl_ev,
                        'meta': {'source': 'vuln', 'window_size': len(instrs)}
                    }
                    out.write(json.dumps(sample) + '\n')
                    count += 1
            else:
                reason = ev.get('reason', 'unknown')
                missing = ev.get('missing', None)
                fail_counts[(vtype, reason, missing)] += 1
                try:
                    with open(FAIL_LOG, 'a') as flog:
                        flog.write(json.dumps({
                            'file': file_path,
                            'arch': arch,
                            'vuln_type': vtype,
                            'window_size': len(instrs),
                            'reason': reason,
                            'missing': missing,
                            'evidence_keys': list(ev.keys())
                        }) + "\n")
                except Exception:
                    pass
    out.close()
    # Write failure summary
    try:
        summary_dict = {}
        for (vt, reason, missing), n in fail_counts.items():
            key = vt + '::' + (reason or 'unknown') + ('::' + missing if missing else '')
            summary_dict[key] = n
        with open(FAIL_SUMMARY, 'w') as fs:
            json.dump(summary_dict, fs, indent=2)
        if summary_dict:
            print(f"📄 Wrote DSL failure summary: {FAIL_SUMMARY}")
            print(f"📄 Detailed failures: {FAIL_LOG}")
    except Exception:
        pass
    print(f"✅ Positives written: {count} -> {POS_JSONL}")
    return count


def _is_hard_negative(window: List[Dict[str, Any]], arch: str, matcher: DSLMatcher) -> bool:
    # Heuristic: has branch+memory in proximity or dependent loads,
    # but fails a stricter SPECTRE_V1-style check (to avoid being swallowed by relaxed DSLs)
    sems = [w.get('semantics', {}) for w in window]
    # branch then memory within a slightly larger window to capture near-misses
    branch_then_mem = False
    for i in range(len(sems) - 1):
        if sems[i].get('is_branch') and sems[i].get('is_conditional'):
            for j in range(i + 1, min(i + 13, len(sems))):
                if sems[j].get('accesses_memory', False):
                    branch_then_mem = True
                    break
        if branch_then_mem:
            break
    # dependent loads within 8
    load_idxs = [i for i, s in enumerate(sems) if s.get('is_load') or (s.get('accesses_memory') and not s.get('is_store'))]
    dep_loads = any(load_idxs[k + 1] - load_idxs[k] <= 8 for k in range(len(load_idxs) - 1))

    looks_interesting = branch_then_mem or dep_loads
    if not looks_interesting:
        return False
    # Must fail a stricter SPECTRE_V1 check (ignore_anti_patterns=False)
    ok, _ = matcher.validate_window(window, 'SPECTRE_V1', arch, ignore_anti_patterns=False)
    return not ok


def build_negatives(matcher: DSLMatcher) -> int:
    feats_path = PARSED_DIR / 'assembly_features.pkl'
    if not feats_path.exists():
        print(f"❌ Missing {feats_path}. Run parse_assembly.py first.")
        return 0
    with open(feats_path, 'rb') as f:
        parsed_data = pickle.load(f)

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    out = open(NEG_JSONL, 'w')
    candidates: List[Dict[str, Any]] = []

    for file_data in parsed_data:
        arch = file_data.get('arch', 'arm64')
        file_path = file_data.get('file_path', file_data.get('filename', 'unknown'))
        raw_instrs = file_data.get('raw_instructions', [])
        if not raw_instrs:
            continue
        instrs = []
        for ri in raw_instrs:
            if not isinstance(ri, dict):
                continue
            instr = {
                'opcode': ri.get('opcode', ''),
                'operands': ri.get('operands', []),
                'raw_line': ri.get('raw', ri.get('raw_line', '')),
                'line_num': ri.get('line', ri.get('line_num', 0)),
            }
            instrs.append(_ensure_semantics(instr, arch))

        for start, end, window in _sliding_windows(instrs, WINDOW_SIZES):
            if _is_hard_negative(window, arch, matcher):
                sample = {
                    'label': 'SAFE',
                    'arch': arch,
                    'file_path': file_path,
                    'start_line': window[0].get('line_num', 0),
                    'end_line': window[-1].get('line_num', 0),
                    'instructions': window,
                    'dsl_evidence': {'hard_negative': True},
                    'meta': {'source': 'github', 'window_size': end - start}
                }
                candidates.append(sample)

    # Shuffle and cap
    seed(42)
    shuffle(candidates)
    kept = candidates[:MAX_NEGATIVE_SAMPLES]
    for s in kept:
        out.write(json.dumps(s) + '\n')
    out.close()
    print(f"✅ Negatives written: {len(kept)} -> {NEG_JSONL}")
    return len(kept)


def combine_jsonl() -> int:
    if not POS_JSONL.exists() or not NEG_JSONL.exists():
        return 0
    count = 0
    with open(COMBINED_JSONL, 'w') as out:
        for path in [POS_JSONL, NEG_JSONL]:
            with open(path, 'r') as f:
                for line in f:
                    out.write(line)
                    count += 1
    print(f"📦 Combined dataset: {count} samples -> {COMBINED_JSONL}")
    return count


def main():
    matcher = DSLMatcher()
    pos = build_positives(matcher)
    neg = build_negatives(matcher)
    total = combine_jsonl()
    print(f"\nSummary: positives={pos}, negatives={neg}, total={total}")


if __name__ == '__main__':
    sys.exit(main())

