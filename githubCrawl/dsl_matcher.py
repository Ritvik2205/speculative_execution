#!/usr/bin/env python3
"""
DSL Matcher for Speculative Execution Gadgets
Compiles JSON DSL constraints into checks over instruction windows.

Instruction format expected (compatible with existing code):
{
  'line_num': int,
  'raw_line': str,
  'opcode': str,
  'operands': List[str],
  'semantics': {
     'is_branch': bool,
     'is_conditional': bool,
     'is_indirect': bool,
     'is_call': bool,
     'is_return': bool,
     'is_load': bool,
     'is_store': bool,
     'accesses_memory': bool,
     'is_arithmetic': bool,
     'is_comparison': bool,
     'is_speculation_barrier': bool,
     'is_cache_operation': bool,
     'is_timing_sensitive': bool,
     'is_privileged': bool
  }
}
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Dict, List, Optional, Tuple, Any


class DSLMatcher:
    def __init__(self, dsl_path: str = "dsl/vuln_patterns.json") -> None:
        self.dsl_path = Path(dsl_path)
        with open(self.dsl_path, 'r') as f:
            self.dsl = json.load(f)

    def list_vulnerability_types(self) -> List[str]:
        return list(self.dsl.get('vulnerabilities', {}).keys())

    def validate_window(self, instructions: List[Dict[str, Any]], vuln_type: str, arch: str, ignore_anti_patterns: bool = False) -> Tuple[bool, Dict[str, Any]]:
        """
        Check if a window of instructions satisfies the DSL for vuln_type.
        Returns (is_match, evidence_dict)
        """
        spec = self.dsl['vulnerabilities'].get(vuln_type)
        if not spec:
            return False, {'reason': 'unknown_vuln_type'}

        constraints = spec.get('constraints', {})
        anti_patterns = spec.get('anti_patterns', [])

        # Anti-patterns first (unless ignored)
        if not ignore_anti_patterns and self._has_anti_patterns(instructions, anti_patterns, arch):
            return False, {'reason': 'anti_pattern_triggered'}

        evidence = {}

        # Sequence constraints
        sequence_ok, seq_evidence = self._check_sequence_constraints(instructions, constraints)
        evidence.update(seq_evidence)
        if not sequence_ok:
            return False, {'reason': 'sequence_constraints_failed', **evidence}

        # Property constraints
        property_ok, prop_evidence = self._check_property_constraints(instructions, constraints)
        evidence.update(prop_evidence)
        if not property_ok:
            return False, {'reason': 'property_constraints_failed', **evidence}

        return True, evidence

    def minimal_window(self, instructions: List[Dict[str, Any]], vuln_type: str, arch: str) -> Tuple[List[Dict[str, Any]], Dict[str, Any]]:
        """
        Shrink window to minimal size while constraints hold (greedy from both ends).
        Returns (minimal_instructions, evidence)
        """
        left, right = 0, len(instructions)
        best_ev = {}

        # Try shrinking from left
        while left < right:
            match, ev = self.validate_window(instructions[left:right], vuln_type, arch)
            if match:
                best_ev = ev
                left += 1
            else:
                left -= 1 if left > 0 else 0
                break

        # Ensure still valid; if not, move left back by one if we overshot
        if left >= right or not self.validate_window(instructions[left:right], vuln_type, arch)[0]:
            # Find the smallest left that still matches
            l = 0
            r = right
            while l < left:
                m = l + 1
                if self.validate_window(instructions[m:r], vuln_type, arch)[0]:
                    l = m
                else:
                    break
            left = l

        # Shrink from right
        while right > left:
            match, ev = self.validate_window(instructions[left:right-1], vuln_type, arch)
            if match:
                best_ev = ev
                right -= 1
            else:
                break

        return instructions[left:right], best_ev

    # --- Internals ---

    def _has_anti_patterns(self, instructions: List[Dict[str, Any]], anti_patterns: List[Dict[str, str]], arch: str) -> bool:
        if not anti_patterns:
            return False
        raw_concat = ' '.join(instr.get('raw_line', '').lower() for instr in instructions)
        for ap in anti_patterns:
            ap_arch = ap.get('arch')
            if ap_arch and ap_arch != arch:
                continue
            if 'opcode' in ap:
                if any(instr.get('opcode', '').lower() == ap['opcode'] for instr in instructions):
                    return True
            if 'token' in ap:
                if ap['token'].lower() in raw_concat:
                    return True
        return False

    def _check_sequence_constraints(self, instructions: List[Dict[str, Any]], constraints: Dict[str, Any]) -> Tuple[bool, Dict[str, Any]]:
        seq = constraints.get('sequence')
        if not seq:
            return True, {}

        # Convert semantics to tags per instruction
        tags = []
        for instr in instructions:
            sem = instr.get('semantics', {})
            tag_set = set()
            if sem.get('is_comparison'):
                tag_set.add('COMPARISON')
            if sem.get('is_branch') and sem.get('is_conditional'):
                tag_set.add('BRANCH_CONDITIONAL')
            if sem.get('is_load') or (sem.get('accesses_memory') and not sem.get('is_store')):
                tag_set.add('MEMORY_LOAD')
            if sem.get('is_indirect') and sem.get('is_branch'):
                tag_set.add('INDIRECT_BRANCH')
            if sem.get('is_return'):
                tag_set.add('RETURN')
            tags.append(tag_set)

        # Greedily check order with distance limits
        pos = -1
        evidence = {}
        for i, req in enumerate(seq):
            required = req.get('semantic')
            within = req.get('within', None)
            found = False
            start = pos + 1
            end = len(instructions) if within is None else min(len(instructions), start + within + 1)
            for j in range(start, end):
                if required in tags[j]:
                    pos = j
                    evidence[f'seq_{i}_{required}'] = j
                    found = True
                    break
            if not found:
                return False, evidence

        # Check max_distance if provided
        max_distance = constraints.get('max_distance')
        if max_distance is not None and len(instructions) > max_distance:
            return False, {**evidence, 'reason': 'max_distance_exceeded'}
        return True, evidence

    def _check_property_constraints(self, instructions: List[Dict[str, Any]], constraints: Dict[str, Any]) -> Tuple[bool, Dict[str, Any]]:
        sems = [instr.get('semantics', {}) for instr in instructions]
        evidence = {}

        def any_sem(key: str) -> bool:
            return any(s.get(key, False) for s in sems)

        def count_sem(key: str) -> int:
            return sum(1 for s in sems if s.get(key, False))

        # Requires dependent load: look for two loads within 5 steps
        if constraints.get('requires_dependent_load'):
            load_idxs = [i for i, s in enumerate(sems) if s.get('is_load') or (s.get('accesses_memory') and not s.get('is_store'))]
            has_dep = any(load_idxs[i+1] - load_idxs[i] <= 5 for i in range(len(load_idxs)-1))
            if not has_dep:
                return False, {'missing': 'dependent_load'}
            evidence['dependent_load'] = True

        if constraints.get('requires_branch_then_memory'):
            ok = False
            for i in range(len(sems)-1):
                if sems[i].get('is_branch') and sems[i].get('is_conditional'):
                    # memory access within next 6
                    for j in range(i+1, min(i+7, len(sems))):
                        if sems[j].get('accesses_memory', False):
                            ok = True
                            break
                if ok:
                    break
            if not ok:
                return False, {'missing': 'branch_then_memory'}
            evidence['branch_then_memory'] = True

        if constraints.get('requires_indirect_branch') and not any_sem('is_indirect'):
            return False, {'missing': 'indirect_branch'}
        if constraints.get('requires_branch_target_computed'):
            # approximated by is_indirect on branch
            if not any(s.get('is_indirect', False) and s.get('is_branch', False) for s in sems):
                return False, {'missing': 'branch_target_computed'}
            evidence['branch_target_computed'] = True

        if constraints.get('requires_privileged_access') and not any_sem('is_privileged'):
            return False, {'missing': 'privileged_access'}
        if constraints.get('requires_memory_access') and not any_sem('accesses_memory'):
            return False, {'missing': 'memory_access'}

        if 'min_branch_count' in constraints and count_sem('is_branch') < constraints['min_branch_count']:
            return False, {'missing': 'min_branch_count'}

        if constraints.get('requires_return_instruction') and not any_sem('is_return'):
            return False, {'missing': 'return_instruction'}
        if constraints.get('requires_call_or_indirect_call') and not any(s.get('is_call', False) or (s.get('is_indirect', False) and s.get('is_call', False)) for s in sems):
            return False, {'missing': 'call_or_indirect_call'}

        if 'min_memory_ops' in constraints:
            mem_ops = sum(1 for s in sems if s.get('accesses_memory', False))
            if mem_ops < constraints['min_memory_ops']:
                return False, {'missing': 'min_memory_ops'}

        if constraints.get('requires_store_then_load'):
            ok = False
            for i in range(len(sems)-1):
                if sems[i].get('is_store', False):
                    for j in range(i+1, min(i+6, len(sems))):
                        if sems[j].get('is_load', False) or (sems[j].get('accesses_memory') and not sems[j].get('is_store')):
                            ok = True
                            break
                if ok:
                    break
            if not ok:
                return False, {'missing': 'store_then_load'}
            evidence['store_then_load'] = True

        if constraints.get('requires_exception_or_fault_context'):
            # crude proxy using raw lines for exception/fault tokens
            raw = ' '.join(instr.get('raw_line', '').lower() for instr in instructions)
            if not any(tok in raw for tok in ['brk', 'hvc', 'svc', 'ud2', 'int']):
                return False, {'missing': 'exception_or_fault'}
            evidence['exception_or_fault'] = True

        return True, evidence


def _demo():
    # Simple demo usage
    matcher = DSLMatcher()
    # Fake minimal spectre v1-like window
    window = [
        {'line_num': 1, 'raw_line': 'cmp x0, x1', 'opcode': 'cmp', 'operands': ['x0', 'x1'], 'semantics': {'is_comparison': True}},
        {'line_num': 2, 'raw_line': 'b.lt L1', 'opcode': 'b.lt', 'operands': ['L1'], 'semantics': {'is_branch': True, 'is_conditional': True}},
        {'line_num': 3, 'raw_line': 'ldr w2, [x2, x0, lsl #2]', 'opcode': 'ldr', 'operands': ['[x2, x0, lsl #2]'], 'semantics': {'accesses_memory': True, 'is_load': True}},
    ]
    ok, ev = matcher.validate_window(window, 'SPECTRE_V1', 'arm64')
    print('match:', ok, ev)


if __name__ == '__main__':
    _demo()

