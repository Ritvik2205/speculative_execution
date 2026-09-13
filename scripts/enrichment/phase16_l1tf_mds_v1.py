#!/usr/bin/env python3
"""
Phase 16: Additional synthetic gadgets for L1TF, MDS, SPECTRE_V1, RETBLEED.
x86_64 only. All asm uses x86_64-compatible constraints.
"""
import sys
import re
import json
import random
import subprocess
import tempfile
from pathlib import Path
from collections import Counter

random.seed(42)
ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from extract_functions import parse_functions

OUT_PATH = ROOT / "data" / "enrichment" / "phase16_extra_gadgets.jsonl"
HEADER = "#include <stdint.h>\n#include <stddef.h>\n#include <string.h>\n#include <stdio.h>\n"

# Must cross-compile to x86_64 on Apple Silicon host
_X86_FLAGS = ["-target", "x86_64-apple-macos"]

COMPILE_CONFIGS = [
    ("clang", _X86_FLAGS + ["-O0"]),
    ("clang", _X86_FLAGS + ["-O1"]),
    ("clang", _X86_FLAGS + ["-O2"]),
    ("clang", _X86_FLAGS + ["-O3"]),
    ("clang", _X86_FLAGS + ["-Os"]),
    ("clang", _X86_FLAGS + ["-O1", "-fno-inline"]),
    ("clang", _X86_FLAGS + ["-O2", "-fno-inline"]),
    ("clang", _X86_FLAGS + ["-O2", "-funroll-loops"]),
    ("clang", _X86_FLAGS + ["-O1", "-fno-vectorize"]),
]

# x86_64 rdtsc: use "=a"/"=d" constraints, not "=A"
_RDTSC = """
static inline uint64_t rdtsc64(void) {
    uint32_t lo, hi;
    __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));
    return ((uint64_t)hi << 32) | lo;
}
"""
_CLFLUSH = """
static inline void clflush_ptr(const void *p) {
    __asm__ volatile("clflush (%0)" :: "r"(p) : "memory");
}
"""

L1TF_TEMPLATES = [
_RDTSC + _CLFLUSH + """
static volatile uint8_t probe_arr[256*512];

void l1tf_flush_probe(void) {
    for (int i = 0; i < 256; i++)
        clflush_ptr(&probe_arr[i * 512]);
    __asm__ volatile("mfence" ::: "memory");
}

uint64_t l1tf_time_access(volatile uint8_t *p) {
    uint64_t t1, t2;
    t1 = rdtsc64();
    (void)*p;
    t2 = rdtsc64();
    return t2 - t1;
}

int l1tf_read_byte(int slot) {
    uint64_t min_t = ~0ULL;
    int best = 0;
    l1tf_flush_probe();
    for (int i = 0; i < 256; i++) {
        uint64_t t = l1tf_time_access(&probe_arr[i * 512]);
        if (t < min_t) { min_t = t; best = i; }
    }
    return best;
}
""",
_RDTSC + _CLFLUSH + """
#define CACHE_MISS_THRESH 200ULL

static volatile uint8_t side_chan[256*64];

void l1tf_evict_cache_line(uint8_t *arr, size_t n) {
    for (size_t i = 0; i < n; i++)
        clflush_ptr(&arr[i]);
    __asm__ volatile("mfence" ::: "memory");
}

int l1tf_probe_hit(int slot) {
    volatile uint8_t *p = &side_chan[slot * 64];
    clflush_ptr(p);
    uint64_t t1 = rdtsc64();
    (void)*p;
    uint64_t t2 = rdtsc64();
    return (t2 - t1) < CACHE_MISS_THRESH;
}

void l1tf_full_scan(int *results, int n) {
    for (int i = 0; i < n; i++)
        results[i] = l1tf_probe_hit(i);
}
""",
_RDTSC + """
static volatile uint8_t _fr_buf[4096*16];

static inline void flush(volatile void *p) {
    __asm__ volatile("clflush (%0)" :: "r"(p) : "memory");
}

uint64_t probe_timing(volatile uint8_t *p) {
    uint64_t t = rdtsc64();
    (void)*p;
    return rdtsc64() - t;
}

int check_cached(int slot) {
    volatile uint8_t *p = &_fr_buf[slot * 512];
    flush(p);
    __asm__ volatile("mfence" ::: "memory");
    return probe_timing(p) < 200;
}

void train_classifier(uint8_t *arr, uint64_t *times, int n) {
    for (int i = 0; i < n; i++) {
        flush(&arr[i]);
    }
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < n; i++) {
        times[i] = rdtsc64();
        (void)arr[i];
        times[i] = rdtsc64() - times[i];
    }
}
""",
_RDTSC + """
static uint64_t l1tf_probes[256];

void l1tf_setup_probes(void) {
    for (int i = 0; i < 256; i++)
        l1tf_probes[i] = 0;
}

int l1tf_detect_hit(int slot, uint64_t threshold) {
    volatile uint64_t *p = &l1tf_probes[slot];
    __asm__ volatile("clflush (%0)" :: "r"(p) : "memory");
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t = rdtsc64();
    (void)*p;
    return (rdtsc64() - t) < threshold;
}

uint64_t l1tf_measure_latency(volatile uint8_t *target) {
    __asm__ volatile("lfence" ::: "memory");
    uint64_t start = rdtsc64();
    (void)*target;
    __asm__ volatile("lfence" ::: "memory");
    return rdtsc64() - start;
}
""",
]

MDS_TEMPLATES = [
"""
static const uint16_t _ds_sel = 0;

void mds_verw_clear(void) {
    __asm__ volatile("verw %0" :: "m"(_ds_sel) : "cc", "memory");
}

void mds_safe_ctx_switch(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(_ds_sel) : "cc", "memory");
}

void mds_sequence(uint16_t *gdt_ds) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw (%0)" :: "r"(gdt_ds) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}
""",
"""
static volatile uint16_t _mds_ds = 0;

void tap_store_buffer_mds(void) {
    __asm__ volatile("sfence" ::: "memory");
    __asm__ volatile("verw %[sel]" :: [sel] "m"(_mds_ds) : "cc", "memory");
}

void mds_clear_sequence(void) {
    __asm__ volatile("mfence");
    __asm__ volatile("verw %[ds]" :: [ds] "m"(_mds_ds) : "cc", "memory");
    __asm__ volatile("lfence");
}

void mds_mitigation_irq(uint16_t ds) {
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
}

void mds_kernel_clear(void) {
    static uint16_t sel = 0;
    __asm__ volatile(
        "mfence\n\t"
        "verw %0\n\t"
        :: "m"(sel) : "cc", "memory"
    );
}
""",
"""
#include <immintrin.h>

void mds_movntdqa_tap(volatile void *nt_src, void *dst) {
    __m128i v = _mm_stream_load_si128((__m128i *)nt_src);
    _mm_storeu_si128((__m128i *)dst, v);
    __asm__ volatile("mfence" ::: "memory");
}

void mds_store_buffer_flush_verw(uint16_t ds) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
}

void mds_tap_and_clear(volatile uint8_t *secret, uint8_t *receiver, uint16_t ds) {
    volatile uint8_t v = *secret;
    (void)receiver[v * 64];
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
}
""",
"""
static uint16_t _cpu_ds = 0;

void mds_clear_cpu_bufs(void) {
    __asm__ volatile("verw %0" :: "m"(_cpu_ds) : "cc", "memory");
}

void safe_spectre_mds_return(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %[ds]" :: [ds] "m"(_cpu_ds) : "cc", "memory");
}
""",
]

V1_TEMPLATES = [
"""
#define N 16
static uint8_t arr1[N];
static volatile uint8_t arr2[256 * 512];

void victim_v1_lfence(size_t x) {
    if (x < N) {
        __asm__ volatile("lfence" ::: "memory");
        volatile uint8_t y = arr2[arr1[x] * 512];
        (void)y;
    }
}

void victim_v1_no_fence(size_t x) {
    if (x < N) {
        volatile uint8_t y = arr2[arr1[x] * 512];
        (void)y;
    }
}
""",
"""
static uint8_t secret_buf[64];
static volatile uint8_t side_arr[256 * 64];

void spectre_v1_bounds_bypass(size_t idx, size_t limit) {
    if (idx < limit) {
        __asm__ volatile("lfence" ::: "memory");
        volatile uint8_t k = side_arr[secret_buf[idx] * 64];
        (void)k;
    }
}

void spectre_v1_leak(uint32_t x) {
    uint32_t sz = sizeof(secret_buf);
    if (x < sz) {
        volatile uint8_t val = side_arr[secret_buf[x] * 64];
        (void)val;
    }
}

void spectre_v1_with_fence(uint32_t x) {
    uint32_t sz = sizeof(secret_buf);
    if (x < sz) {
        __asm__ volatile("lfence");
        volatile uint8_t val = side_arr[secret_buf[x] * 64];
        (void)val;
    }
}
""",
"""
#define MAX 32
static uint8_t data_arr[MAX];
static volatile uint8_t probe_arr[256 * 512];

int spectre_cond_bypass(int idx, int limit) {
    if (idx >= 0 && (unsigned)idx < (unsigned)limit) {
        __asm__ volatile("lfence");
        return probe_arr[data_arr[idx] * 512];
    }
    return -1;
}

void v1_gadget_indirect_idx(size_t x, size_t bound, uint8_t *pub_arr, uint8_t *priv_arr) {
    if (x < bound) {
        __asm__ volatile("lfence" ::: "memory");
        volatile uint8_t sink = probe_arr[priv_arr[pub_arr[x]] * 512];
        (void)sink;
    }
}
""",
]

RETBLEED_TEMPLATES = [
"""
__attribute__((noinline))
static void nop_sled_32(void) {
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
}

void retbleed_rsb_stuff(int depth) {
    for (int i = 0; i < depth; i++) nop_sled_32();
}

void retbleed_mitigation(void) {
    nop_sled_32();
    __asm__ volatile("lfence" ::: "memory");
}
""",
_RDTSC + """
__attribute__((noinline))
static void rsb_inner(void) {
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
}

void retbleed_outer(int n) {
    for (int i = 0; i < n; i++) rsb_inner();
}

uint64_t retbleed_measure_ret(void) {
    uint64_t t = rdtsc64();
    rsb_inner();
    return rdtsc64() - t;
}
""",
"""
__attribute__((noinline))
void zen_rsb_refill_loop(int count) {
    for (int i = 0; i < count; i++) {
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
        __asm__ volatile("nop");
    }
}

void retbleed_safe_call(void (*fn)(void)) {
    zen_rsb_refill_loop(4);
    fn();
    __asm__ volatile("lfence" ::: "memory");
}

void retbleed_ibpb_sequence(void) {
    __asm__ volatile(
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t"
        ::: "memory"
    );
    __asm__ volatile("lfence" ::: "memory");
}
""",
]

CLASS_TEMPLATES = {
    "L1TF":       L1TF_TEMPLATES,
    "MDS":        MDS_TEMPLATES,
    "SPECTRE_V1": V1_TEMPLATES,
    "RETBLEED":   RETBLEED_TEMPLATES,
}

def compile_c(src: str, compiler: str, flags: list) -> str | None:
    with tempfile.NamedTemporaryFile(suffix='.c', delete=False, mode='w') as tf:
        tf.write(HEADER + src)
        src_path = tf.name
    with tempfile.NamedTemporaryFile(suffix='.s', delete=False) as tf:
        asm_path = tf.name
    try:
        cmd = [compiler] + flags + [
            "-S", "-fno-asynchronous-unwind-tables",
            "-fno-exceptions", "-w",
            src_path, "-o", asm_path
        ]
        r = subprocess.run(cmd, capture_output=True, timeout=30)
        if r.returncode != 0:
            return None
        return Path(asm_path).read_text(errors='replace')
    except Exception:
        return None
    finally:
        try: Path(src_path).unlink()
        except: pass
        try: Path(asm_path).unlink()
        except: pass

_CALL_ATK_RE = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|'
    r'flush_reload|clearbhb|branch_history|victim_function|'
    r'gadget_[a-z]|cache_set|_rdtsc|_clflush|rsb_inner|nop_sled|verw|probe',
    re.I
)

def has_attack_signal(label: str, lines: list) -> bool:
    _LOAD = re.compile(r'\b(movq|movl|movzx|ldr)\b.*\[', re.I)
    ops, calls = [], []
    for line in lines:
        s = line.strip()
        if not s or s.endswith(':') or s.startswith('.') or s.startswith('#'): continue
        parts = s.split()
        if not parts: continue
        op = parts[0].lower()
        ops.append(op)
        if op in ('bl','call','callq','blr') and len(parts)>1:
            calls.append(parts[1])
    opset = set(ops)
    has_atk_call = any(_CALL_ATK_RE.search(c) for c in calls)

    if label == 'L1TF':
        return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset or has_atk_call
    if label == 'MDS':
        return 'verw' in opset or 'movntdqa' in opset or has_atk_call
    if label == 'SPECTRE_V1':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        cmp_pos = {i for i,op in enumerate(ops) if op in ('cmp','cmn','test','tst')}
        br_pos  = {i for i,op in enumerate(ops) if op in ('je','jne','jl','jg','jz','jnz')}
        bac = any(any((cp+1)<=bp<=(cp+3) for bp in br_pos) for cp in cmp_pos)
        idx_load = any(_LOAD.search(l) for l in lines)
        return 'lfence' in opset or max_nop >= 3 or (bac and idx_load) or has_atk_call
    if label == 'RETBLEED':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop': nop_run += 1; max_nop = max(max_nop, nop_run)
            else: nop_run = 0
        return max_nop >= 3 or 'rdtsc' in opset or 'rdtscp' in opset or has_atk_call
    return True

def main():
    all_records = []
    seen = set()

    for label, templates in CLASS_TEMPLATES.items():
        kept = 0
        for ti, tmpl in enumerate(templates):
            for compiler, flags in COMPILE_CONFIGS:
                asm = compile_c(tmpl, compiler, flags)
                if not asm:
                    print(f"  compile fail: {label} t{ti} {compiler} {flags}")
                    continue
                funcs = parse_functions(asm)
                opt = next((f for f in flags if f.startswith('-O')), '-O0')
                group = f"p16_{label.lower()}_t{ti}_{compiler}_{opt.lstrip('-')}"
                for fn_name, instrs in funcs:
                    if len(instrs) < 4:
                        continue
                    if not has_attack_signal(label, instrs):
                        continue
                    h = hash(tuple(instrs))
                    if h in seen:
                        continue
                    seen.add(h)
                    all_records.append({
                        "label": label,
                        "sequence": instrs,
                        "arch": "x86_64",
                        "group": group,
                        "fn": fn_name,
                    })
                    kept += 1
        print(f"  {label}: {kept} new records")

    counts = Counter(r['label'] for r in all_records)
    print(f"\nPhase16 total: {len(all_records)}")
    for lbl, n in sorted(counts.items()):
        print(f"  {lbl}: {n}")

    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in all_records:
            f.write(json.dumps(r) + '\n')
    print(f"Wrote {len(all_records)} -> {OUT_PATH}")

if __name__ == '__main__':
    main()
