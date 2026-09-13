#!/usr/bin/env python3
"""
Phase 12: Synthetic DOWNFALL (CVE-2022-40982 / GDS) data generation.

Root cause of poor DOWNFALL classification:
  - 698 train samples but only 22/698 contain gather instructions (vpgatherdd etc.)
  - 676 samples are helper/setup functions (ptedit, malloc wrappers, test harness)
    that don't use gather — these look identical to other attack types' helpers
  - Model learns DOWNFALL from non-distinctive support code → precision=0.70

This script generates C source files where EACH FILE contains exactly ONE
gather-gadget function. Every compiled assembly will contain vpgatherdd/vgatherdpd.

DOWNFALL (Gather Data Sampling, GDS):
  The exploit uses Intel AVX2 VGATHER instructions which, during transient execution,
  leak stale data from fill buffers / vector register files. The attacker:
    1. Uses vgatherd* to read from multiple memory locations simultaneously
    2. The CPU speculatively provides stale values from fill buffers
    3. A covert channel (cache timing) exfiltrates the leaked data

Key assembly signature: vpgatherdd / vgatherdpd / vgatherdps / vpgatherdq
  combined with rdtsc timing and cache-indexed access.

Usage:
  python3 scripts/enrichment/phase12_downfall_synthetic.py
"""

import sys, os, subprocess, tempfile, json, hashlib
from pathlib import Path
from itertools import product

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import seq_hash, load_jsonl, write_jsonl

OUT_PATH   = ROOT / "data" / "enrichment" / "phase12_downfall.jsonl"
DOCKER_IMG  = "specexec-compile:latest"
LABEL       = "DOWNFALL"
# macOS Docker Desktop cannot bind-mount /tmp files; use project work dir instead
WORK_DIR    = ROOT / "_docker_work"

# All AVX2 gather intrinsic variants (different data widths + index widths)
# Each represents a distinct microarchitectural access pattern
GATHER_VARIANTS = [
    # (intrinsic, index_type, return_type, scale, description)
    ("_mm256_i32gather_epi32", "__m256i", "__m256i", 4,  "gather_epi32_i32"),
    ("_mm256_i32gather_epi64", "__m128i", "__m256i", 4,  "gather_epi64_i32"),
    ("_mm256_i64gather_epi32", "__m256i", "__m128i", 4,  "gather_epi32_i64"),
    ("_mm256_i64gather_epi64", "__m256i", "__m256i", 8,  "gather_epi64_i64"),
    ("_mm256_i32gather_ps",    "__m256i", "__m256",  4,  "gather_ps_i32"),
    ("_mm256_i32gather_pd",    "__m128i", "__m256d", 8,  "gather_pd_i32"),
    ("_mm256_i64gather_ps",    "__m256i", "__m128",  4,  "gather_ps_i64"),
    ("_mm256_i64gather_pd",    "__m256i", "__m256d", 8,  "gather_pd_i64"),
]

# Index patterns — different ways to set up the gather indices
# Diversity in index computation = diverse assembly patterns
INDEX_PATTERNS = [
    # (name, code_fragment generating vindex in __m256i)
    ("seq8",   "_mm256_set_epi32(7*64, 6*64, 5*64, 4*64, 3*64, 2*64, 1*64, 0)"),
    ("seq16",  "_mm256_set_epi32(7*128, 6*128, 5*128, 4*128, 3*128, 2*128, 128, 0)"),
    ("stride", "_mm256_set_epi32(448, 384, 320, 256, 192, 128, 64, 0)"),
    ("pow2",   "_mm256_set_epi32(256, 128, 64, 32, 16, 8, 4, 0)"),
    ("page",   "_mm256_set_epi32(7*4096, 6*4096, 5*4096, 4*4096, 3*4096, 2*4096, 4096, 0)"),
]

# Context patterns — what surrounds the gather instruction
CONTEXT_PATTERNS = [
    "bare",        # gather only, no timing
    "timed",       # rdtsc before + after
    "transmit",    # gather result used to access timing array
    "loop",        # gather inside measurement loop
    "flush_probe", # clflush + gather + rdtsc (canonical Flush+Reload variant)
]


def _c_index_for_variant(intrinsic: str, index_code: str) -> str:
    """Convert 256-bit index to correct width for the intrinsic."""
    if "_i64" in intrinsic:
        # i64-indexed gathers want __m256i 256-bit index
        return f"__m256i vindex = {index_code};"
    else:
        # i32-indexed gathers with 64-bit result want __m128i (4 indices)
        if "_epi64" in intrinsic or "_pd" in intrinsic:
            return f"__m128i vindex = _mm256_extracti128_si256({index_code}, 0);"
        else:
            return f"__m256i vindex = {index_code};"


def _extract_result(intrinsic: str, return_type: str) -> str:
    """Extract first element from gather result for use in transmitter."""
    if return_type == "__m256i":
        return "_mm256_extract_epi32(result, 0)"
    elif return_type == "__m128i":
        return "_mm_extract_epi32(result, 0)"
    elif return_type == "__m256":
        return "(int)_mm256_cvtss_f32(result)"
    elif return_type == "__m256d":
        return "(int)_mm256_cvtsd_f64(result)"
    elif return_type == "__m128":
        return "(int)_mm_cvtss_f32(result)"
    return "0"


def generate_c_function(
    fname: str,
    intrinsic: str,
    index_type: str,
    return_type: str,
    scale: int,
    index_code: str,
    context: str,
) -> str:
    """Generate a self-contained C function with gather instruction."""

    index_setup = _c_index_for_variant(intrinsic, index_code)
    result_elem = _extract_result(intrinsic, return_type)

    # Determine base pointer type from intrinsic
    if "_epi32" in intrinsic or "_epi64" in intrinsic:
        base_type = "int"
    elif "_ps" in intrinsic:
        base_type = "float"
    else:
        base_type = "double"

    if context == "bare":
        body = f"""
    {index_setup}
    {return_type} result = {intrinsic}((const {base_type}*)base, vindex, {scale});
    (void)result;
"""
    elif context == "timed":
        body = f"""
    unsigned long long t1 = __rdtsc();
    {index_setup}
    {return_type} result = {intrinsic}((const {base_type}*)base, vindex, {scale});
    unsigned long long t2 = __rdtsc();
    *out = (int)(t2 - t1);
    (void)result;
"""
    elif context == "transmit":
        body = f"""
    {index_setup}
    {return_type} result = {intrinsic}((const {base_type}*)base, vindex, {scale});
    int leaked = {result_elem};
    /* Transmit via cache timing — canonical Flush+Reload covert channel */
    timing_array[(leaked & 0xFF) * 512] += 1;
"""
    elif context == "loop":
        body = f"""
    int total = 0;
    for (int trial = 0; trial < 100; trial++) {{
        {index_setup}
        {return_type} result = {intrinsic}((const {base_type}*)base, vindex, {scale});
        unsigned long long t1 = __rdtsc();
        int leaked = {result_elem};
        unsigned long long t2 = __rdtsc();
        total += (int)(t2 - t1) + leaked;
    }}
    *out = total;
"""
    elif context == "flush_probe":
        body = f"""
    /* Phase 1: flush cache lines to set up Flush+Reload */
    for (int i = 0; i < 8; i++)
        _mm_clflush((char*)base + i * 64);
    _mm_mfence();

    /* Phase 2: perform gather — leaks stale fill-buffer data (GDS/Downfall) */
    {index_setup}
    {return_type} result = {intrinsic}((const {base_type}*)base, vindex, {scale});
    _mm_lfence();  /* serialise before timing */

    /* Phase 3: probe — measure which cache lines were accessed */
    unsigned long long t1 = __rdtsc();
    int leaked = {result_elem};
    unsigned long long t2 = __rdtsc();
    timing_array[(leaked & 0xFF) * 512] += (int)(t2 - t1);
"""
    else:
        body = ""

    # Build full function
    has_timing = context in ("timed", "flush_probe")
    has_transmit = context in ("transmit", "loop", "flush_probe")
    args = ["void *base"]
    if has_timing or "out" in body:
        args.append("int *out")
    if has_transmit:
        args.append("volatile char *timing_array")

    return f"""#include <immintrin.h>
#include <x86intrin.h>
#include <stdint.h>

/* DOWNFALL (CVE-2022-40982 / Gather Data Sampling) gadget
 * Intrinsic: {intrinsic}
 * Context:   {context}
 * The gather instruction leaks stale data from CPU fill buffers
 * during transient execution, enabling cross-privilege data theft.
 */
void __attribute__((noinline)) {fname}({", ".join(args)}) {{
{body}}}
"""


def compile_c_to_asm(c_code: str, flags: list[str], work_dir: Path) -> str | None:
    """Compile C source to x86-64 assembly.

    Uses native clang (fast) when available, falls back to Docker cross-compiler.
    clang on macOS can target x86_64 natively with AVX2 support.
    """
    work_dir.mkdir(parents=True, exist_ok=True)
    uid = hashlib.md5(c_code.encode() + str(flags).encode()).hexdigest()[:12]
    c_path = work_dir / f"p12_{uid}.c"
    s_path = work_dir / f"p12_{uid}.s"
    try:
        c_path.write_text(c_code)

        # Try native clang first (fast — no Docker overhead)
        clang_flags = [f for f in flags if f != "-mfma"]  # macOS may lack FMA
        r = subprocess.run(
            ["clang", "-S", "-target", "x86_64-apple-macos12",
             "-mavx2", *clang_flags, "-w", "-o", str(s_path), str(c_path)],
            capture_output=True, text=True, timeout=10
        )
        if r.returncode == 0 and s_path.exists():
            return s_path.read_text()

        # Fallback: Docker cross-compiler
        compile_cmd = (
            f"x86_64-linux-gnu-gcc -S {' '.join(flags)} "
            f"-w -o /work/p12_{uid}.s /work/p12_{uid}.c && cat /work/p12_{uid}.s"
        )
        r2 = subprocess.run(
            ["docker", "run", "--rm", "--entrypoint", "",
             "-v", f"{work_dir}:/work:rw",
             DOCKER_IMG,
             "bash", "-c", compile_cmd],
            capture_output=True, text=True, timeout=30
        )
        if r2.returncode != 0:
            return None
        return r2.stdout
    except Exception:
        return None
    finally:
        for p in [c_path, s_path]:
            if p.exists():
                p.unlink()


def parse_asm_functions(asm_text: str) -> list[list[str]]:
    """Extract instruction sequences from assembly text.

    Handles both Linux ELF format (.type NAME, @function) and
    macOS Mach-O format (## -- Begin function NAME).
    """
    functions = []
    current: list[str] = []
    in_func = False

    lines = asm_text.splitlines()
    for line in lines:
        stripped = line.strip()
        if not stripped:
            continue

        # ── Linux ELF format ──────────────────────────────────────────────
        if stripped.startswith('.type') and '@function' in stripped:
            if in_func and current:
                functions.append(current)
            in_func = True
            current = []
            continue

        if in_func and (stripped.startswith('.size') or stripped.startswith('.ident')):
            if current:
                functions.append(current)
            current = []
            in_func = False
            continue

        # ── macOS Mach-O format ───────────────────────────────────────────
        if '## -- Begin function' in stripped or '// -- Begin function' in stripped:
            if in_func and current:
                functions.append(current)
            in_func = True
            current = []
            continue

        if in_func and ('## -- End function' in stripped or '// -- End function' in stripped):
            if current:
                functions.append(current)
            current = []
            in_func = False
            continue

        # ── Common: collect instructions ──────────────────────────────────
        if in_func:
            # Skip assembler directives and labels
            if stripped.startswith('.') or stripped.startswith('#'):
                continue
            if stripped.endswith(':'):
                continue  # label
            if stripped.startswith('//') or stripped.startswith('/*'):
                continue
            # Strip inline comments (## ... at end)
            instr = stripped.split('##')[0].split('//')[0].strip()
            if instr:
                current.append(instr)

    if in_func and current:
        functions.append(current)

    return [f for f in functions if len(f) >= 3]


def check_docker() -> bool:
    try:
        r = subprocess.run(
            ["docker", "run", "--rm", "--entrypoint", "", DOCKER_IMG,
             "x86_64-linux-gnu-gcc", "--version"],
            capture_output=True, timeout=15
        )
        return r.returncode == 0
    except Exception:
        return False


def main():
    print("=== Phase 12: Synthetic DOWNFALL (GDS) Data Generation ===")
    print("Root cause: 698 train samples but only 22 contain gather instructions")
    print("Fix: each generated C file = one gather gadget → guaranteed gather in asm")
    print()

    if not check_docker():
        print("[ERROR] Docker image not available. Build with:")
        print("  docker build -t specexec-compile:latest dockerfiles/")
        sys.exit(1)

    # Load existing test hashes to prevent leakage
    test_hashes: set[str] = set()
    test_path = ROOT / "data" / "v44_honest_test.jsonl"
    if test_path.exists():
        for r in load_jsonl(test_path):
            test_hashes.add(seq_hash(r.get("sequence", [])))
    print(f"Loaded {len(test_hashes):,} test hashes (will reject matches)")

    records = []
    seen_hashes: set[str] = set()
    skipped_no_asm = 0
    skipped_no_gather = 0
    skipped_duplicate = 0
    skipped_test = 0

    # Optimization flags — each produces different assembly
    opt_flags_list = [
        ["-O0", "-mavx2", "-mfma"],
        ["-O1", "-mavx2", "-mfma"],
        ["-O2", "-mavx2", "-mfma"],
        ["-O3", "-mavx2", "-mfma"],
    ]

    total_combinations = (
        len(GATHER_VARIANTS) * len(INDEX_PATTERNS) * len(CONTEXT_PATTERNS) * len(opt_flags_list)
    )
    print(f"Templates: {len(GATHER_VARIANTS)} gather × {len(INDEX_PATTERNS)} index × "
          f"{len(CONTEXT_PATTERNS)} context × {len(opt_flags_list)} opt = {total_combinations} combos")
    print()

    combo_count = 0
    for (intrinsic, index_type, return_type, scale, desc), \
        (idx_name, idx_code), \
        context, \
        flags in product(GATHER_VARIANTS, INDEX_PATTERNS, CONTEXT_PATTERNS, opt_flags_list):

        combo_count += 1
        opt = flags[0]
        fname = f"downfall_{desc}_{idx_name}_{context}_{opt.lstrip('-')}"

        c_code = generate_c_function(
            fname, intrinsic, index_type, return_type, scale, idx_code, context
        )

        asm = compile_c_to_asm(c_code, flags, WORK_DIR)
        if asm is None:
            skipped_no_asm += 1
            continue

        functions = parse_asm_functions(asm)
        for func_seq in functions:
            # Only keep functions that actually contain gather instructions
            has_gather = any(
                "gather" in instr.lower() for instr in func_seq
            )
            if not has_gather:
                skipped_no_gather += 1
                continue

            h = seq_hash(func_seq)
            if h in test_hashes:
                skipped_test += 1
                continue
            if h in seen_hashes:
                skipped_duplicate += 1
                continue
            seen_hashes.add(h)

            records.append({
                "label": LABEL,
                "sequence": func_seq,
                "group": f"p12_{fname}",
                "source": "synthetic_gather",
                "intrinsic": intrinsic,
                "context": context,
                "opt": opt,
            })

        if combo_count % 20 == 0:
            print(f"  Progress: {combo_count}/{total_combinations} combos, "
                  f"{len(records)} gather records so far")

    print()
    print(f"=== Phase 12 Results ===")
    print(f"  Gather records generated: {len(records)}")
    print(f"  Skipped (no asm output):  {skipped_no_asm}")
    print(f"  Skipped (no gather instr):{skipped_no_gather}")
    print(f"  Skipped (test collision): {skipped_test}")
    print(f"  Skipped (duplicate):      {skipped_duplicate}")

    if records:
        OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
        write_jsonl(records, OUT_PATH)
        print(f"\nWrote {len(records):,} records → {OUT_PATH}")

        # Distribution by context
        from collections import Counter
        ctx_counts = Counter(r["context"] for r in records)
        print("\nBy context:")
        for k, v in sorted(ctx_counts.items()):
            print(f"  {k:<20} {v}")
    else:
        print("[WARN] No records generated — check Docker and compiler flags")


if __name__ == "__main__":
    main()
