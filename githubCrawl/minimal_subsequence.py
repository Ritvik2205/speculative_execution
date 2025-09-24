#!/usr/bin/env python3
"""
Minimal subsequence reducer using the DSL matcher.
Given a window and a target vuln type + architecture, return smallest contiguous
span that still satisfies the DSL constraints.
"""

from __future__ import annotations

from typing import List, Dict, Any, Tuple

from dsl_matcher import DSLMatcher


def reduce_to_minimal_window(instructions: List[Dict[str, Any]], vuln_type: str, arch: str) -> Tuple[List[Dict[str, Any]], Dict[str, Any]]:
    matcher = DSLMatcher()
    # Quick rejection
    ok, ev = matcher.validate_window(instructions, vuln_type, arch)
    if not ok:
        return [], {'reason': 'not_matching_initial'}
    # Greedy shrink
    minimal, evidence = matcher.minimal_window(instructions, vuln_type, arch)
    return minimal, evidence


if __name__ == '__main__':
    # Simple smoke test
    sample = [
        {'line_num': 1, 'raw_line': 'cmp x0, x1', 'opcode': 'cmp', 'operands': ['x0', 'x1'], 'semantics': {'is_comparison': True}},
        {'line_num': 2, 'raw_line': 'b.lt L1', 'opcode': 'b.lt', 'operands': ['L1'], 'semantics': {'is_branch': True, 'is_conditional': True}},
        {'line_num': 3, 'raw_line': 'nop', 'opcode': 'nop', 'operands': [], 'semantics': {}},
        {'line_num': 4, 'raw_line': 'ldr w2, [x2, x0, lsl #2]', 'opcode': 'ldr', 'operands': ['[x2, x0, lsl #2]'], 'semantics': {'accesses_memory': True, 'is_load': True}},
        {'line_num': 5, 'raw_line': 'ret', 'opcode': 'ret', 'operands': [], 'semantics': {'is_return': True}},
    ]
    minimized, ev = reduce_to_minimal_window(sample, 'SPECTRE_V1', 'arm64')
    print('minimized_len:', len(minimized), 'evidence:', ev)

