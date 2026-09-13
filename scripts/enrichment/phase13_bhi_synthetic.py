#!/usr/bin/env python3
"""
Phase 13: Synthetic BHI (Branch History Injection) data generation.

Root cause of BHI F1=0.64:
  Training data is 233 compiler_variant + 99 compiled_c_source but only
  6 poc_repo_v2 samples. Compiler output of normal C rarely contains the
  BHI-specific pattern: an indirect branch (blr/jmp *) in a gadget function
  where the BTB has been primed with attacker-controlled history.

This script generates C templates that compile to assembly containing:
  1. An indirect call/jump instruction (the BTB-poisonable target)
  2. An indexed load immediately after — the speculatively executed secret access
  3. A cache transmitter (array2[val * STRIDE]) for the side channel
  4. Various forms of history manipulation (loop of calls, vtable dispatch, etc.)

Each template = one function = one JSONL record.
Compiled with: clang -O0/O1/O2/Os -target x86_64-apple-macos12

Output: data/enrichment/phase13_bhi.jsonl
"""

import subprocess
import tempfile
import os
import re
import sys
import json
import random
import itertools
from pathlib import Path
from typing import List, Optional, Tuple

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import write_jsonl, seq_hash

OUT = ROOT / "data" / "enrichment" / "phase13_bhi.jsonl"
WORK_DIR = ROOT / "_phase13_work"

LABEL = "BRANCH_HISTORY_INJECTION"
OPT_LEVELS = ["-O0", "-O1", "-O2", "-Os"]

# =============================================================================
# C TEMPLATES
# Template variants cover different indirect branch manifestations:
#  1. Function pointer call
#  2. Virtual dispatch (vtable via struct of function pointers)
#  3. Indirect jump via computed address (jmp *)
#  4. Switch via jump table (compiler may emit indirect jump)
#  5. Computed goto
#  6. Call through register (after BTB priming loop)
# =============================================================================

# Common preamble for all templates
PREAMBLE = """
#include <stdint.h>
#include <string.h>

#define STRIDE 512
#define ARRAY_SIZE 256

extern uint8_t secret_array[ARRAY_SIZE];
extern uint8_t probe_array[ARRAY_SIZE * STRIDE];

/* Prevent compiler from optimizing away the transmitter */
volatile uint8_t _sink;
"""

# Template 1: Direct function pointer indirect call (simplest BHI pattern)
TEMPLATE_FP_CALL = PREAMBLE + """
typedef uint8_t (*gadget_fn_t)(uint8_t *, size_t);

static uint8_t bhi_gadget_impl(uint8_t *arr, size_t idx) {{
    /* Speculative access: BTB poisoned to redirect here */
    uint8_t val = arr[idx & (ARRAY_SIZE - 1)];
    _sink = probe_array[val * STRIDE];
    return val;
}}

/* History manipulation: call a sequence of different functions to set BTB */
static void prime_btb_{tag}(gadget_fn_t fn, uint8_t *arr) {{
    {prime_calls}
    /* After priming, the BTB history points to our gadget */
    fn(arr, {idx_val});
}}

void bhi_fp_call_{tag}(void) {{
    gadget_fn_t fp = bhi_gadget_impl;
    prime_btb_{tag}(fp, secret_array);
}}
"""

# Template 2: Vtable (struct of function pointers) — mimics C++ virtual dispatch
TEMPLATE_VTABLE = PREAMBLE + """
typedef struct {{
    void (*op_a)(uint8_t *, size_t);
    void (*op_b)(uint8_t *, size_t);
    void (*op_c)(uint8_t *, size_t);
}} vtable_t;

static void bhi_vtable_gadget_{tag}(uint8_t *arr, size_t idx) {{
    uint8_t val = arr[idx & (ARRAY_SIZE - 1)];
    _sink = probe_array[(uint64_t)val * STRIDE];
}}

static void nop_fn_{tag}(uint8_t *arr, size_t idx) {{
    (void)arr; (void)idx;
    _sink = 0;
}}

static vtable_t vtbl_{tag} = {{
    .op_a = nop_fn_{tag},
    .op_b = bhi_vtable_gadget_{tag},
    .op_c = nop_fn_{tag},
}};

void bhi_vtable_{tag}(size_t selector) {{
    vtable_t *v = &vtbl_{tag};
    /* Indirect call through vtable — BTB can be poisoned to redirect dispatch */
    if (selector == 0)      v->op_a(secret_array, {idx_val});
    else if (selector == 1) v->op_b(secret_array, {idx_val});
    else                    v->op_c(secret_array, {idx_val});
}}
"""

# Template 3: BTB priming loop + indirect call — explicit history manipulation
TEMPLATE_PRIME_LOOP = PREAMBLE + """
typedef void (*fn_t)(uint8_t *, size_t);

static void bhi_loop_gadget_{tag}(uint8_t *arr, size_t idx) {{
    /* The speculatively executed secret load + transmitter */
    uint8_t val = arr[idx & (ARRAY_SIZE - 1)];
    _sink = probe_array[(uint64_t)val * STRIDE];
}}

static void dummy_target_{tag}(uint8_t *arr, size_t idx) {{
    (void)arr; (void)idx;
}}

void bhi_primed_loop_{tag}(fn_t *table, int n) {{
    /* Prime BTB: call different targets {prime_n} times to build history */
    for (int i = 0; i < n && i < {prime_n}; i++) {{
        table[i % 2](secret_array, (size_t)i);
    }}
    /* Now the BTB history is set — indirect call will speculate to gadget */
    bhi_loop_gadget_{tag}(secret_array, {idx_val});
}}
"""

# Template 4: Indirect jump via register (assembly-level; forces jmp *%reg)
TEMPLATE_INDIRECT_JUMP = PREAMBLE + """
extern void *bhi_dispatch_table_{tag}[4];

static void bhi_jump_gadget_{tag}(uint8_t *arr, size_t idx) {{
    uint8_t v = arr[idx & (ARRAY_SIZE - 1)];
    _sink = probe_array[(uint64_t)v * STRIDE];
}}

static void bhi_dispatch_{tag}(unsigned selector) {{
    /* Jump through dispatch table — generates indirect jmp */
    typedef void (*jmp_fn)(uint8_t *, size_t);
    jmp_fn fn = (jmp_fn)bhi_dispatch_table_{tag}[selector & 3];
    fn(secret_array, {idx_val});
}}

void bhi_indirect_jump_{tag}(void) {{
    bhi_dispatch_{tag}(1);
}}
"""

# Template 5: Callback pattern (common in kernel: module init calls)
TEMPLATE_CALLBACK = PREAMBLE + """
typedef int (*handler_t)(const uint8_t *, size_t, uint8_t *);

static int bhi_handler_gadget_{tag}(const uint8_t *src, size_t idx, uint8_t *out) {{
    /* Secret source via attacker-controlled idx */
    uint8_t val = src[idx & (ARRAY_SIZE - 1)];
    /* Cache-based transmitter */
    _sink = probe_array[(uint64_t)val * STRIDE];
    *out = val;
    return 0;
}}

static int bhi_nop_handler_{tag}(const uint8_t *src, size_t idx, uint8_t *out) {{
    (void)src; (void)idx;
    *out = 0;
    return 0;
}}

int bhi_callback_{tag}(handler_t cb, size_t req_idx) {{
    uint8_t result = 0;
    {prime_calls_cb}
    /* Indirect call via callback — BTB target is primed by prior calls */
    return cb(secret_array, req_idx & (ARRAY_SIZE - 1), &result);
}}

void bhi_callback_entry_{tag}(void) {{
    bhi_callback_{tag}(bhi_handler_gadget_{tag}, {idx_val});
}}
"""

# Template 6: Spectre-v2-style with explicit ret gadget after indirect call
TEMPLATE_RET_GADGET = PREAMBLE + """
typedef void (*victim_fn_t)(void);

/* Speculatively executed after indirect branch redirect */
static void __attribute__((noinline)) bhi_spec_gadget_{tag}(void) {{
    uint8_t val = secret_array[{idx_val} & (ARRAY_SIZE - 1)];
    _sink = probe_array[(uint64_t)val * STRIDE];
}}

static void __attribute__((noinline)) dummy_victim_{tag}(void) {{
    _sink = 0;
}}

/* Dispatch: normally calls dummy but BTB can be poisoned to call gadget */
void bhi_ret_gadget_entry_{tag}(victim_fn_t fn) {{
    fn();
    /* Speculative execution window: probe access happens transiently */
    uint8_t probe = probe_array[secret_array[0] * STRIDE];
    _sink = probe;
}}

void bhi_ret_gadget_run_{tag}(void) {{
    bhi_ret_gadget_entry_{tag}(dummy_victim_{tag});
}}
"""

TEMPLATES = [
    TEMPLATE_FP_CALL,
    TEMPLATE_VTABLE,
    TEMPLATE_PRIME_LOOP,
    TEMPLATE_INDIRECT_JUMP,
    TEMPLATE_CALLBACK,
    TEMPLATE_RET_GADGET,
]

# Variation axes
IDX_VALS = [0, 42, 127, 63, 31]
PRIME_NS = [4, 8, 16, 32, 64]
PRIME_CALL_PATTERNS = [
    "fn(arr, 0); fn(arr, 1);",
    "fn(arr, 0); fn(arr, 1); fn(arr, 2);",
    "for (int _p=0; _p<4; _p++) fn(arr, _p);",
    "fn(arr, 0); fn(arr, 1); fn(arr, 0); fn(arr, 1);",
    "fn(arr, 31); fn(arr, 63); fn(arr, 31);",
]
PRIME_CALL_CB_PATTERNS = [
    "bhi_nop_handler_{tag}(secret_array, 0, &result);",
    "bhi_nop_handler_{tag}(secret_array, 1, &result); bhi_nop_handler_{tag}(secret_array, 2, &result);",
    "for (int _p=0; _p<4; _p++) bhi_nop_handler_{tag}(secret_array, _p, &result);",
    "bhi_nop_handler_{tag}(secret_array, 10, &result); bhi_nop_handler_{tag}(secret_array, 20, &result);",
    "",
]


def compile_c_to_asm(c_code: str, opt: str, tag: str, work_dir: Path) -> Optional[str]:
    """Compile C code to assembly, return assembly text or None on failure."""
    c_file = work_dir / f"bhi_{tag}.c"
    asm_file = work_dir / f"bhi_{tag}.s"

    c_file.write_text(c_code)
    try:
        result = subprocess.run(
            ["clang", opt, "-S", "-target", "x86_64-apple-macos12",
             "-fno-exceptions", "-fno-asynchronous-unwind-tables",
             str(c_file), "-o", str(asm_file)],
            capture_output=True, text=True, timeout=30,
        )
        if result.returncode != 0:
            # Try without target (native compilation)
            result = subprocess.run(
                ["clang", opt, "-S", "-fno-exceptions",
                 "-fno-asynchronous-unwind-tables",
                 str(c_file), "-o", str(asm_file)],
                capture_output=True, text=True, timeout=30,
            )
        if result.returncode != 0:
            return None
        return asm_file.read_text()
    except (subprocess.TimeoutExpired, FileNotFoundError):
        return None
    finally:
        for f in [c_file, asm_file]:
            f.unlink(missing_ok=True)


def parse_asm_functions(asm_text: str) -> List[Tuple[str, List[str]]]:
    """Extract function bodies from assembly text.

    Returns list of (func_name, [instruction_lines]).
    Handles both macOS (## -- Begin/End function) and Linux (.type @function) formats.
    """
    functions = []
    lines = asm_text.splitlines()

    # macOS format: ## -- Begin function <name>
    macos_begin = re.compile(r'##\s*--\s*Begin function\s+(\S+)')
    macos_end   = re.compile(r'##\s*--\s*End function')
    # Linux format: .type name, @function ... .size name
    linux_type  = re.compile(r'\.type\s+(\S+),\s*@function')

    # Try macOS format first
    in_fn = False
    fn_name = None
    fn_lines = []
    found_macos = False

    for line in lines:
        m = macos_begin.search(line)
        if m:
            found_macos = True
            if in_fn and fn_lines:
                functions.append((fn_name, fn_lines))
            fn_name = m.group(1).lstrip('_')
            fn_lines = []
            in_fn = True
            continue
        if found_macos and macos_end.search(line):
            if in_fn and fn_lines:
                functions.append((fn_name, fn_lines))
            in_fn = False
            fn_lines = []
            continue
        if in_fn:
            s = line.strip()
            if s and not s.startswith(';'):
                fn_lines.append(s)

    if in_fn and fn_lines:
        functions.append((fn_name, fn_lines))

    if functions:
        return functions

    # Linux format fallback
    current_fn = None
    in_fn = False
    fn_lines = []

    for line in lines:
        m = linux_type.search(line)
        if m:
            if in_fn and fn_lines:
                functions.append((current_fn, fn_lines))
            current_fn = m.group(1).lstrip('_')
            fn_lines = []
            in_fn = True
            continue
        if in_fn:
            if re.match(r'\.size\s+', line):
                functions.append((current_fn, fn_lines))
                in_fn = False
                fn_lines = []
                continue
            s = line.strip()
            if s and not s.startswith('#') and not s.startswith(';'):
                fn_lines.append(s)

    if in_fn and fn_lines:
        functions.append((current_fn, fn_lines))

    return functions


def has_indirect_branch(seq: List[str]) -> bool:
    """Check if sequence contains an indirect branch instruction."""
    indirect_pat = re.compile(
        r'\b(blr|br)\b|\b(jmpq?\s*\*|callq?\s*\*|jmp\s+\*|call\s+\*)',
        re.I
    )
    return any(indirect_pat.search(line) for line in seq)


def main():
    print("=== Phase 13: BHI Synthetic Data Generation ===")
    WORK_DIR.mkdir(parents=True, exist_ok=True)
    OUT.parent.mkdir(parents=True, exist_ok=True)

    records = []
    seen: set = set()
    n_total = 0
    n_has_indirect = 0
    n_no_indirect = 0

    combos = list(itertools.product(
        range(len(TEMPLATES)),
        IDX_VALS,
        range(len(PRIME_CALL_PATTERNS)),
        OPT_LEVELS,
    ))
    random.shuffle(combos)

    print(f"Total combos: {len(combos)}")

    for tmpl_idx, idx_val, prime_idx, opt in combos:
        tag = f"t{tmpl_idx}_i{idx_val}_p{prime_idx}_{opt.strip('-')}"
        prime_calls = PRIME_CALL_PATTERNS[prime_idx]
        prime_n = PRIME_NS[prime_idx % len(PRIME_NS)]
        prime_calls_cb = PRIME_CALL_CB_PATTERNS[prime_idx % len(PRIME_CALL_CB_PATTERNS)]

        tmpl = TEMPLATES[tmpl_idx]
        try:
            c_code = tmpl.format(
                tag=tag,
                idx_val=idx_val,
                prime_calls=prime_calls,
                prime_n=prime_n,
                prime_calls_cb=prime_calls_cb.format(tag=tag),
            )
        except KeyError:
            continue

        asm = compile_c_to_asm(c_code, opt, tag, WORK_DIR)
        if not asm:
            continue

        fns = parse_asm_functions(asm)
        for fn_name, fn_seq in fns:
            if len(fn_seq) < 4:
                continue
            # Skip obvious boilerplate (plt stubs, etc.)
            if fn_seq and fn_seq[0].startswith('.'):
                continue

            h = seq_hash(fn_seq)
            if h in seen:
                continue
            seen.add(h)
            n_total += 1

            has_indirect = has_indirect_branch(fn_seq)
            if has_indirect:
                n_has_indirect += 1
            else:
                n_no_indirect += 1

            records.append({
                "label": LABEL,
                "sequence": fn_seq,
                "arch": "x86_64",
                "source_file": f"phase13_bhi_{tag}",
                "group": f"phase13_{tmpl_idx}_{prime_idx}",
                "func_name": fn_name,
                "augmentation": "compiled_c_source",
                "context": f"tmpl{tmpl_idx}_{opt.strip('-')}",
                "has_indirect_branch": has_indirect,
            })

    print(f"\nGenerated: {n_total} records")
    print(f"  With indirect branch:    {n_has_indirect} ({100*n_has_indirect/max(n_total,1):.1f}%)")
    print(f"  Without indirect branch: {n_no_indirect} ({100*n_no_indirect/max(n_total,1):.1f}%)")

    write_jsonl(records, OUT)
    print(f"\nWrote {len(records)} records → {OUT}")

    # Cleanup work dir
    try:
        WORK_DIR.rmdir()
    except OSError:
        pass


if __name__ == "__main__":
    main()
