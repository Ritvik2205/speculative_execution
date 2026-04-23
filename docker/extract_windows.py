#!/usr/bin/env python3
"""
Extract whole functions from a compiled .s file and print as JSONL.
Called by compile_attack_sources.sh for each compiled file.

Uses Linux AT&T assembly dialect (GCC/Clang on Linux):
  .type NAME, @function ... .size NAME, .-NAME

Usage: python3 extract_windows.py <asm_file> <label> <group_prefix> <arch>
"""
import sys, json, re

MAX_FUNC_LEN = 500
MIN_FUNC_LEN = 5

_SKIP_PREFIXES = (".", "#", "//", ";", "@")
_SKIP_FUNC_RE  = re.compile(
    r'^(_?_mm_(mfence|lfence|clflush|clflushopt)|_?barrier|'
    r'_?flush_probe|_?measure|_?time_|_?rdtsc|main|'
    r'__asan_|__ubsan_)$', re.I,
)
_RET_RE = re.compile(r'\b(ret|retq|retl|retw|bx\s+lr|ldm.*pc)\b', re.I)


def is_instruction(line: str) -> bool:
    s = line.strip()
    if not s or s.endswith(':'):
        return False
    for p in _SKIP_PREFIXES:
        if s.startswith(p):
            return False
    return True


def truncate(instrs: list, max_len: int = MAX_FUNC_LEN) -> list:
    if len(instrs) <= max_len:
        return instrs
    last_ret = -1
    for i in range(min(max_len, len(instrs)) - 1, -1, -1):
        if _RET_RE.search(instrs[i]):
            last_ret = i
            break
    cut = last_ret + 1 if last_ret > max_len // 2 else max_len
    return instrs[:cut]


def parse_functions_linux_att(text: str) -> list:
    """Parse Linux AT&T assembly: .type NAME, @function ... .size NAME, .-NAME"""
    results = []
    func_starts = list(re.finditer(r'\.type\s+(\w+),\s*[@%]function', text))
    lines = text.splitlines()

    # Build line-start offsets
    offsets = []
    pos = 0
    for ln in lines:
        offsets.append(pos)
        pos += len(ln) + 1

    def char_to_line(c):
        lo, hi = 0, len(offsets) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if offsets[mid] <= c:
                lo = mid
            else:
                hi = mid - 1
        return lo

    for i, m in enumerate(func_starts):
        name = m.group(1)
        if _SKIP_FUNC_RE.match(name.lstrip('_')):
            continue
        start_ln = char_to_line(m.start())
        end_ln   = len(lines)
        if i + 1 < len(func_starts):
            end_ln = min(end_ln, char_to_line(func_starts[i + 1].start()))
        size_pat = re.compile(r'\.size\s+' + re.escape(name) + r'\s*,')
        for j in range(start_ln, end_ln):
            if size_pat.search(lines[j]):
                end_ln = j
                break
        body = lines[start_ln:end_ln]
        instrs = [l.strip() for l in body if is_instruction(l)]
        instrs = truncate(instrs)
        if len(instrs) >= MIN_FUNC_LEN:
            results.append((name, instrs))
    return results


def main():
    asm_file, label, group_prefix, arch = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
    try:
        text = open(asm_file, errors='replace').read()
    except OSError as e:
        print(f'[skip] {asm_file}: {e}', file=sys.stderr)
        return
    funcs = parse_functions_linux_att(text)
    if not funcs:
        # Fall back: emit whole file as one record
        instrs = [l.strip() for l in text.splitlines() if is_instruction(l)]
        instrs = truncate(instrs)
        if len(instrs) >= MIN_FUNC_LEN:
            funcs = [('_all', instrs)]
    for func_name, instrs in funcs:
        rec = {
            'label':       label,
            'sequence':    instrs,
            'source_file': asm_file,
            'group':       f'{group_prefix}_{func_name}',
            'func_name':   func_name,
            'arch':        arch,
            'augmentation': 'compiled_c_source',
        }
        print(json.dumps(rec))


if __name__ == '__main__':
    main()
