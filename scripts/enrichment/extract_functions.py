#!/usr/bin/env python3
"""
Parse assembly files (.s) into whole-function instruction sequences.

Supports:
  - macOS Clang syntax: '; -- Begin function NAME' / '; -- End function'
  - Linux GCC/Clang AT&T syntax: '.type NAME, @function' + '.size NAME, .-NAME'
  - ARM64 cross-compiler: '.type NAME, %function'

Returns list of (function_name, instructions) where instructions is a list of
stripped assembly instruction strings with labels, directives, and comments removed.

Usage:
    from extract_functions import parse_functions, is_instruction_line
    funcs = parse_functions(asm_text)
    # funcs: list[tuple[str, list[str]]]
"""
import re
from typing import Optional

_SKIP_PREFIXES = (".", "#", "//", ";", "@")

_SKIP_FUNC_PATTERNS = re.compile(
    r'^(_?_mm_(mfence|lfence|clflush|clflushopt)|'
    r'_?barrier|'
    r'_?flush_probe_array|'
    r'_?measure_|'
    r'_?time_|'
    r'_?rdtsc|'
    r'main|'
    r'__asan_|'
    r'__ubsan_)$',
    re.I,
)


def is_instruction_line(line: str) -> bool:
    """Return True if line is an assembly instruction (not a directive, label, or comment)."""
    s = line.strip()
    if not s:
        return False
    # Strip trailing comment (;  ##  #  //)  before checking for label suffix
    for comment_marker in (';', '##', '//', ' #'):
        idx = s.find(comment_marker)
        if idx != -1:
            s = s[:idx].rstrip()
            break
    if not s:
        return False
    if s.endswith(":"):
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True


def _should_skip_function(name: str) -> bool:
    return bool(_SKIP_FUNC_PATTERNS.match(name.lstrip("_")))


def _extract_instructions(body: str) -> list[str]:
    return [line.strip() for line in body.splitlines() if is_instruction_line(line)]


def _parse_macos(text: str) -> list[tuple[str, list[str]]]:
    results = []
    # Handle both arm64 macOS ('; -- Begin function') and x86_64 macOS ('## -- Begin function')
    parts = re.split(r'(?:;|##)\s*--\s*Begin function\s+', text)
    for part in parts[1:]:
        nl = part.find('\n')
        name = part[:nl].strip()
        # Start body AFTER the name line — the name itself is not an instruction
        body_start = nl + 1 if nl != -1 else len(part)
        end_match = re.search(r'(?:;|##)\s*--\s*End function', part)
        body = part[body_start:end_match.start()] if end_match else part[body_start:]
        instrs = _extract_instructions(body)
        if len(instrs) >= 3 and not _should_skip_function(name):
            results.append((name, instrs))
    return results


def _parse_linux_att(text: str) -> list[tuple[str, list[str]]]:
    results = []
    func_starts = list(re.finditer(
        r'\.type\s+(\w+),\s*[@%]function',
        text,
    ))
    lines = text.splitlines()
    line_starts = []
    pos = 0
    for line in lines:
        line_starts.append(pos)
        pos += len(line) + 1

    def char_to_line(char_pos: int) -> int:
        lo, hi = 0, len(line_starts) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if line_starts[mid] <= char_pos:
                lo = mid
            else:
                hi = mid - 1
        return lo

    for i, match in enumerate(func_starts):
        name = match.group(1)
        start_line = char_to_line(match.start())
        end_line = len(lines)
        if i + 1 < len(func_starts):
            end_line = min(end_line, char_to_line(func_starts[i + 1].start()))
        size_pat = re.compile(r'\.size\s+' + re.escape(name) + r'\s*,')
        for j in range(start_line, end_line):
            if size_pat.search(lines[j]):
                end_line = j
                break
        body = '\n'.join(lines[start_line:end_line])
        instrs = _extract_instructions(body)
        if len(instrs) >= 3 and not _should_skip_function(name):
            results.append((name, instrs))
    return results


def parse_functions(asm_text: str) -> list[tuple[str, list[str]]]:
    """
    Parse assembly text into (function_name, instructions) pairs.
    Automatically detects dialect (macOS vs Linux AT&T).
    """
    if '-- Begin function' in asm_text:
        return _parse_macos(asm_text)
    if '.type' in asm_text and ('@function' in asm_text or '%function' in asm_text):
        return _parse_linux_att(asm_text)
    instrs = _extract_instructions(asm_text)
    if len(instrs) >= 3:
        return [('_unknown', instrs)]
    return []


def truncate_function(instructions: list[str], max_len: int = 500) -> list[str]:
    """
    Truncate a function that exceeds max_len instructions.
    Cuts at the last RET/return instruction before max_len.
    """
    if len(instructions) <= max_len:
        return instructions
    ret_pat = re.compile(r'\b(ret|retq|retl|retw|ret\.n|bx\s+lr|ldm.*pc)\b', re.I)
    last_ret = -1
    for i in range(min(max_len, len(instructions)) - 1, -1, -1):
        if ret_pat.search(instructions[i]):
            last_ret = i
            break
    cut = last_ret + 1 if last_ret > max_len // 2 else max_len
    return instructions[:cut]
