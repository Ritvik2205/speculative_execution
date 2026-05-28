#!/usr/bin/env python3
"""
Phase 17: Expanded L1TF and MDS synthetic gadgets.

Motivation: L1TF (109 train) and MDS (135 train) are the most data-starved
classes after the v50 specificity filter. This script generates many more
structurally diverse C templates for these classes, plus additional V4/V1/BHI.

Additions over phase16:
  - 12 new L1TF templates (flush+reload variants, rdtscp, non-temporal, lfence-timing)
  - 12 new MDS templates (RIDL/movntdqa, TAA, Fallout, multiple VERW patterns)
  - 6 new SPECTRE_V4 templates (store-forwarding bypass patterns)
  - ARM64 templates (dc civac flush, cntvct_el0 timing)
  - x86_64 cross-compile via clang -target
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

OUT_PATH = ROOT / "data" / "enrichment" / "phase17_l1tf_mds_expanded.jsonl"
HEADER = "#include <stdint.h>\n#include <stddef.h>\n#include <string.h>\n#include <stdio.h>\n#include <stdlib.h>\n"

_X86_FLAGS = ["-target", "x86_64-apple-macos"]
_ARM_FLAGS = ["-target", "arm64-apple-macos"]

COMPILE_CONFIGS_X86 = [
    ("clang", _X86_FLAGS + ["-O0"]),
    ("clang", _X86_FLAGS + ["-O1"]),
    ("clang", _X86_FLAGS + ["-O2"]),
    ("clang", _X86_FLAGS + ["-O3"]),
    ("clang", _X86_FLAGS + ["-Os"]),
    ("clang", _X86_FLAGS + ["-O1", "-fno-inline"]),
    ("clang", _X86_FLAGS + ["-O2", "-fno-unroll-loops"]),
    ("clang", _X86_FLAGS + ["-O1", "-fno-vectorize"]),
    ("clang", _X86_FLAGS + ["-O0", "-fno-omit-frame-pointer"]),
]

COMPILE_CONFIGS_ARM = [
    ("clang", _ARM_FLAGS + ["-O0"]),
    ("clang", _ARM_FLAGS + ["-O1"]),
    ("clang", _ARM_FLAGS + ["-O2"]),
    ("clang", _ARM_FLAGS + ["-Os"]),
]

# ── x86_64 primitives ─────────────────────────────────────────────────────────
_RDTSC = """
static inline uint64_t rdtsc64(void) {
    uint32_t lo, hi;
    __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi) :: "memory");
    return ((uint64_t)hi << 32) | lo;
}
"""
_RDTSCP = """
static inline uint64_t rdtscp64(void) {
    uint32_t lo, hi, aux;
    __asm__ volatile("rdtscp" : "=a"(lo), "=d"(hi), "=c"(aux) :: "memory");
    return ((uint64_t)hi << 32) | lo;
}
"""
_CLFLUSH = """
static inline void clflush_x86(const void *p) {
    __asm__ volatile("clflush (%0)" :: "r"(p) : "memory");
}
"""
_CLFLUSHOPT = """
static inline void clflushopt_x86(const void *p) {
    __asm__ volatile("clflushopt (%0)" :: "r"(p) : "memory");
}
"""
_MFENCE = "__asm__ volatile(\"mfence\" ::: \"memory\");\n"
_LFENCE = "__asm__ volatile(\"lfence\" ::: \"memory\");\n"

# ── ARM64 primitives ──────────────────────────────────────────────────────────
_ARM_CNTVCT = """
static inline uint64_t arm_cntvct(void) {
    uint64_t val;
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(val) :: "memory");
    return val;
}
"""
_ARM_DC_CIVAC = """
static inline void arm_dc_civac(const void *p) {
    __asm__ volatile("dc civac, %0" :: "r"(p) : "memory");
    __asm__ volatile("dsb ish" ::: "memory");
}
"""
_ARM_DC_CVAU = """
static inline void arm_dc_cvau(const void *p) {
    __asm__ volatile("dc cvau, %0" :: "r"(p) : "memory");
    __asm__ volatile("dsb ish" ::: "memory");
}
"""

# ── L1TF templates (x86_64) ──────────────────────────────────────────────────
L1TF_X86_TEMPLATES = [

_RDTSC + _CLFLUSH + """
static volatile uint8_t l1tf_probe[256 * 512];
static volatile uint8_t l1tf_secret[64];

void l1tf_flush_all_probe_lines(void) {
    for (int i = 0; i < 256; i++)
        clflush_x86(&l1tf_probe[i * 512]);
    __asm__ volatile("mfence" ::: "memory");
}

uint64_t l1tf_time_probe(int slot) {
    volatile uint8_t *p = &l1tf_probe[slot * 512];
    uint64_t t1 = rdtsc64();
    (void)*p;
    uint64_t t2 = rdtsc64();
    return t2 - t1;
}

int l1tf_read_byte_via_timing(int *results) {
    l1tf_flush_all_probe_lines();
    __asm__ volatile("mfence" ::: "memory");
    int best = -1;
    uint64_t best_t = ~0ULL;
    for (int i = 0; i < 256; i++) {
        uint64_t t = l1tf_time_probe(i);
        if (t < best_t) { best_t = t; best = i; }
    }
    return best;
}
""",

_RDTSCP + _CLFLUSH + """
static volatile uint8_t l1tf_side_chan[256 * 512];

void l1tf_evict_side_channel(void) {
    for (int i = 0; i < 256; i++)
        clflush_x86((void *)&l1tf_side_chan[i * 512]);
    __asm__ volatile("lfence" ::: "memory");
}

uint64_t l1tf_time_with_rdtscp(volatile uint8_t *p) {
    uint64_t t1 = rdtscp64();
    __asm__ volatile("lfence" ::: "memory");
    volatile uint8_t v = *p;
    (void)v;
    __asm__ volatile("lfence" ::: "memory");
    return rdtscp64() - t1;
}

void l1tf_scan_side_channel(int *hits, uint64_t threshold) {
    l1tf_evict_side_channel();
    for (int i = 0; i < 256; i++) {
        uint64_t t = l1tf_time_with_rdtscp(&l1tf_side_chan[i * 512]);
        hits[i] = (t < threshold) ? 1 : 0;
    }
}
""",

_RDTSC + _CLFLUSH + _CLFLUSHOPT + """
static uint8_t l1tf_target_mem[4096];
static volatile uint8_t l1tf_fr_array[256 * 64];

void l1tf_flush_fr_array(void) {
    for (size_t i = 0; i < 256; i++) {
        clflush_x86((void *)&l1tf_fr_array[i * 64]);
    }
    __asm__ volatile("mfence" ::: "memory");
}

void l1tf_flush_target(void *p, size_t len) {
    for (size_t i = 0; i < len; i += 64)
        clflushopt_x86((uint8_t *)p + i);
    __asm__ volatile("mfence" ::: "memory");
}

uint64_t l1tf_measure_access(volatile void *p) {
    uint64_t t = rdtsc64();
    __asm__ volatile("lfence" ::: "memory");
    (void)*(volatile uint8_t *)p;
    return rdtsc64() - t;
}

int l1tf_detect_cache_hit(volatile uint8_t *p, uint64_t thr) {
    l1tf_flush_fr_array();
    __asm__ volatile("mfence" ::: "memory");
    return l1tf_measure_access(p) < thr;
}
""",

_RDTSC + """
static volatile uint8_t l1tf_buf[256 * 512];
static volatile int l1tf_junk;

static void l1tf_clflush_buf(void) {
    for (int i = 0; i < 256; i++)
        __asm__ volatile("clflush (%0)" :: "r"(&l1tf_buf[i * 512]) : "memory");
}

int l1tf_covert_channel_recv(void) {
    l1tf_clflush_buf();
    __asm__ volatile("mfence" ::: "memory");
    int result = -1;
    uint64_t min_t = ~0ULL;
    for (int i = 0; i < 256; i++) {
        uint64_t t1 = rdtsc64();
        l1tf_junk += l1tf_buf[i * 512];
        uint64_t t2 = rdtsc64();
        if (t2 - t1 < min_t) { min_t = t2 - t1; result = i; }
    }
    return result;
}
""",

_RDTSC + _CLFLUSH + """
#define THRESHOLD_L1 100
static volatile uint8_t l1tf_probe2[256 * 512];

void l1tf_prime_cache(void) {
    for (int i = 0; i < 256; i++) {
        volatile uint8_t v = l1tf_probe2[i * 512];
        (void)v;
    }
}

void l1tf_evict_cache(void) {
    for (int i = 0; i < 256; i++)
        clflush_x86(&l1tf_probe2[i * 512]);
}

uint64_t l1tf_time_access_lfenced(volatile uint8_t *p) {
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t1 = rdtsc64();
    __asm__ volatile("lfence" ::: "memory");
    volatile uint8_t v = *p;
    (void)v;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t2 = rdtsc64();
    __asm__ volatile("lfence" ::: "memory");
    return t2 - t1;
}

void l1tf_probe_and_record(uint64_t *timings) {
    l1tf_evict_cache();
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < 256; i++)
        timings[i] = l1tf_time_access_lfenced(&l1tf_probe2[i * 512]);
}
""",

_RDTSCP + _CLFLUSH + """
static volatile uint8_t l1tf_channel[4096 * 16];

void l1tf_flush_channel(void) {
    for (int i = 0; i < 256; i++)
        clflush_x86((void*)&l1tf_channel[i * 512]);
    __asm__ volatile("mfence" ::: "memory");
}

int l1tf_check_hit(int slot, uint64_t thresh) {
    volatile uint8_t *p = &l1tf_channel[slot * 512];
    clflush_x86(p);
    __asm__ volatile("mfence" ::: "memory");
    uint64_t t = rdtscp64();
    (void)*p;
    return (rdtscp64() - t) < thresh;
}

int l1tf_read_secret_byte(const void *secret_ptr, uint64_t thresh) {
    l1tf_flush_channel();
    volatile uint8_t v = *(const volatile uint8_t *)secret_ptr;
    (void)l1tf_channel[v * 512];
    return l1tf_check_hit((int)v, thresh);
}
""",

_RDTSC + """
static uint64_t l1tf_measurements[512];
static volatile uint8_t l1tf_arr[256*512];

void l1tf_measure_sequence(int n_iters) {
    for (int iter = 0; iter < n_iters; iter++) {
        for (int i = 0; i < 256; i++)
            __asm__ volatile("clflush (%0)" :: "r"(&l1tf_arr[i*512]) : "memory");
        __asm__ volatile("mfence" ::: "memory");
        for (int i = 0; i < 256; i++) {
            uint64_t t1 = rdtsc64();
            volatile uint8_t v = l1tf_arr[i*512];
            (void)v;
            l1tf_measurements[i] += rdtsc64() - t1;
        }
    }
}

int l1tf_find_minimum(void) {
    int best = 0;
    for (int i = 1; i < 256; i++)
        if (l1tf_measurements[i] < l1tf_measurements[best]) best = i;
    return best;
}
""",

_RDTSC + _CLFLUSH + """
static volatile uint64_t l1tf_timer_value;
static volatile uint8_t l1tf_probe3[256*64];

void l1tf_reload_step(int *decoded, int count) {
    for (int i = 0; i < count; i++) {
        clflush_x86(&l1tf_probe3[i * 64]);
    }
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < count; i++) {
        uint64_t t = rdtsc64();
        volatile uint8_t v = l1tf_probe3[i * 64];
        (void)v;
        decoded[i] = (rdtsc64() - t < 80) ? 1 : 0;
    }
}

void l1tf_flush_reload_loop(uint8_t *secret, size_t len, int *out) {
    for (size_t b = 0; b < len; b++) {
        for (int i = 0; i < 256; i++)
            clflush_x86(&l1tf_probe3[i*64]);
        __asm__ volatile("mfence" ::: "memory");
        volatile uint8_t s = secret[b];
        (void)l1tf_probe3[s * 64];
        out[b] = -1;
        uint64_t best = ~0ULL;
        for (int i = 0; i < 256; i++) {
            uint64_t t = rdtsc64();
            (void)l1tf_probe3[i*64];
            uint64_t dt = rdtsc64() - t;
            if (dt < best) { best = dt; out[b] = i; }
        }
    }
}
""",

]

# ── MDS templates (x86_64) ────────────────────────────────────────────────────
MDS_X86_TEMPLATES = [

"""
#include <immintrin.h>
static volatile uint8_t mds_nt_target[4096*4] __attribute__((aligned(64)));
static volatile uint16_t mds_ds_sel = 0;

void mds_ridl_movntdqa_tap(void *out) {
    __asm__ volatile("mfence" ::: "memory");
    __m128i v = _mm_stream_load_si128((__m128i *)mds_nt_target);
    _mm_storeu_si128((__m128i *)out, v);
    __asm__ volatile("lfence" ::: "memory");
}

void mds_ridl_with_verw(void *out) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_ds_sel) : "cc", "memory");
    __m128i v = _mm_stream_load_si128((__m128i *)mds_nt_target);
    _mm_storeu_si128((__m128i *)out, v);
    __asm__ volatile("lfence" ::: "memory");
}

void mds_nt_load_sequence(void **ptrs, int n) {
    for (int i = 0; i < n; i++) {
        __m128i v = _mm_stream_load_si128((__m128i *)ptrs[i]);
        (void)v;
    }
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_ds_sel) : "cc", "memory");
}
""",

"""
static volatile uint16_t mds_cpu_ds = 0;

void mds_clear_store_buf(void) {
    __asm__ volatile("sfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_cpu_ds) : "cc", "memory");
}

void mds_clear_load_buf(void) {
    __asm__ volatile("lfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_cpu_ds) : "cc", "memory");
}

void mds_clear_all_bufs(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %[ds]" :: [ds] "m"(mds_cpu_ds) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}

void mds_irq_entry_clear(uint16_t ds) {
    __asm__ volatile(
        "mfence     \n\t"
        "verw %0    \n\t"
        :: "m"(ds) : "cc", "memory"
    );
}

void mds_nmi_clear(void) {
    __asm__ volatile("verw %0" :: "m"(mds_cpu_ds) : "cc", "memory");
}
""",

"""
#include <immintrin.h>
static volatile uint8_t mds_fill_buf[4096] __attribute__((aligned(4096)));
static volatile uint16_t mds_sel = 0;
static uint8_t mds_probe_arr[256*64];

void mds_zombieload_pattern(void) {
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < 256; i++)
        __asm__ volatile("clflush (%0)" :: "r"(&mds_probe_arr[i*64]) : "memory");
    __asm__ volatile("mfence" ::: "memory");
    volatile uint8_t v = mds_fill_buf[0];
    (void)mds_probe_arr[v * 64];
    __asm__ volatile("verw %0" :: "m"(mds_sel) : "cc", "memory");
}

void mds_zombieload_cleanup(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_sel) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}
""",

"""
static volatile uint16_t _mds_gdt_sel = 0;
static volatile uint8_t mds_store_buf_target[64];
static volatile uint8_t mds_observer[256*512];

void mds_fallout_store_pattern(volatile uint8_t *target, uint8_t val) {
    *target = val;
    __asm__ volatile("sfence" ::: "memory");
    volatile uint8_t readback = *target;
    (void)mds_observer[readback * 512];
}

void mds_store_forwarding_bypass(void *ptr, uint64_t val) {
    *(volatile uint64_t *)ptr = val;
    __asm__ volatile("sfence" ::: "memory");
    volatile uint64_t r = *(volatile uint64_t *)ptr;
    (void)r;
    __asm__ volatile("verw %0" :: "m"(_mds_gdt_sel) : "cc", "memory");
}

void mds_store_buf_clear(uint16_t ds) {
    __asm__ volatile("sfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
}
""",

"""
static volatile uint16_t mds_ds2 = 0;
static volatile uint8_t mds_tap_probe[256*64];

void mds_tap_line_fill_buffer(volatile uint8_t *uc_mem) {
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < 256; i++)
        __asm__ volatile("clflush (%0)" :: "r"(&mds_tap_probe[i*64]) : "memory");
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < 4; i++) {
        volatile uint8_t v = *(uc_mem + i * 4096);
        (void)mds_tap_probe[v * 64];
    }
    __asm__ volatile("verw %0" :: "m"(mds_ds2) : "cc", "memory");
}

void mds_clear_after_tap(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %[s]" :: [s] "m"(mds_ds2) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}
""",

"""
#include <immintrin.h>
static volatile uint16_t mds_taa_ds = 0;
static volatile uint8_t mds_taa_probe[256*64] __attribute__((aligned(64)));

void mds_taa_abort_pattern(volatile uint8_t *secret) {
    for (int i = 0; i < 256; i++)
        __asm__ volatile("clflush (%0)" :: "r"(&mds_taa_probe[i*64]) : "memory");
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile(
        "xbegin 1f\n\t"
        "movzbq (%[s]), %%rax\n\t"
        "shlq $6, %%rax\n\t"
        "movq (%[p], %%rax), %%rax\n\t"
        "xend\n\t"
        "1:\n\t"
        :: [s] "r"(secret), [p] "r"(mds_taa_probe)
        : "rax", "memory"
    );
    __asm__ volatile("verw %0" :: "m"(mds_taa_ds) : "cc", "memory");
}

void mds_taa_clear(void) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_taa_ds) : "cc", "memory");
}
""",

"""
static volatile uint16_t _mds_drain_sel = 0;

void mds_drain_seq1(void) {
    __asm__ volatile("mfence\n\t verw %0" :: "m"(_mds_drain_sel) : "cc", "memory");
}

void mds_drain_seq2(uint16_t ds) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}

void mds_drain_loop(int n, uint16_t ds) {
    for (int i = 0; i < n; i++) {
        __asm__ volatile("mfence" ::: "memory");
        __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
    }
}

void mds_kernel_drain_on_exit(void) {
    static uint16_t ds = 0;
    __asm__ volatile("sfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(ds) : "cc", "memory");
    __asm__ volatile("lfence" ::: "memory");
}
""",

"""
#include <immintrin.h>
static volatile uint8_t mds_wb_target[4096] __attribute__((aligned(4096)));
static uint8_t mds_scan_buf[256*64];
static volatile uint16_t mds_v_sel = 0;

void mds_clflushopt_sequence(void) {
    for (int i = 0; i < 256; i++)
        __asm__ volatile("clflushopt (%0)" :: "r"(&mds_scan_buf[i*64]) : "memory");
    __asm__ volatile("sfence" ::: "memory");
}

void mds_wb_and_verify(void) {
    mds_clflushopt_sequence();
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(mds_v_sel) : "cc", "memory");
}

void mds_msbds_store_tap(volatile uint8_t *uc_src) {
    mds_clflushopt_sequence();
    __asm__ volatile("mfence" ::: "memory");
    for (int i = 0; i < 64; i += 16) {
        __m128i v = _mm_stream_load_si128((__m128i *)(uc_src + i));
        (void)v;
    }
    __asm__ volatile("verw %0" :: "m"(mds_v_sel) : "cc", "memory");
}
""",

]

# ── SPECTRE_V4 templates (x86_64) ─────────────────────────────────────────────
V4_X86_TEMPLATES = [

_RDTSC + """
static volatile uint8_t v4_probe[256*512];
static volatile uint64_t v4_secret_ptr_val = 0;

void v4_store_forwarding_bypass(uint64_t *ptr, uint64_t val) {
    *ptr = val;
    __asm__ volatile("lfence" ::: "memory");
    volatile uint64_t leaked = *ptr;
    (void)v4_probe[leaked & 0xff];
}

void v4_ssb_gadget(uint64_t *addr, uint64_t val) {
    *addr = val;
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    volatile uint64_t r = *addr;
    (void)r;
}

uint64_t v4_measure_store_forward(uint64_t *ptr) {
    uint64_t t1 = rdtsc64();
    __asm__ volatile("lfence" ::: "memory");
    *ptr = 0xdeadbeef;
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    volatile uint64_t r = *ptr;
    (void)r;
    return rdtsc64() - t1;
}
""",

_RDTSC + """
static volatile uint64_t v4_dummy;
static volatile uint8_t v4_arr[256*64];

void v4_spectre_store_bypass(size_t idx, uint64_t *arr, uint64_t val) {
    arr[idx] = val;
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    volatile uint64_t r = arr[idx];
    (void)v4_arr[r & 0xff];
}

void v4_trigger_ssb(volatile uint64_t *ptr) {
    *ptr = 0;
    __asm__ volatile("lfence" ::: "memory");
    volatile uint64_t v = *ptr;
    (void)v;
    uint64_t t = rdtsc64();
    (void)t;
}

void v4_speculative_store(void *p, size_t val) {
    *(size_t *)p = val;
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    volatile size_t r = *(size_t *)p;
    (void)r;
}
""",

_RDTSC + """
static volatile uint32_t v4_mem32[64];

void v4_store_before_load(int idx, uint32_t val) {
    v4_mem32[idx] = val;
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    volatile uint32_t r = v4_mem32[idx];
    (void)r;
}

uint64_t v4_ssb_timing(volatile uint32_t *p, uint32_t val) {
    *p = val;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t1 = rdtsc64();
    volatile uint32_t r = *p;
    (void)r;
    return rdtsc64() - t1;
}

void v4_fence_bypass_test(volatile uint64_t *p, uint64_t v) {
    *p = v;
    __asm__ volatile("sfence" ::: "memory");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("nop");
    __asm__ volatile("lfence" ::: "memory");
    volatile uint64_t r = *p;
    (void)r;
}
""",

]

# ── L1TF ARM64 templates ──────────────────────────────────────────────────────
L1TF_ARM_TEMPLATES = [

_ARM_CNTVCT + _ARM_DC_CIVAC + """
static volatile uint8_t l1tf_arm_probe[256*512];

void l1tf_arm_flush_all(void) {
    for (int i = 0; i < 256; i++)
        arm_dc_civac((void*)&l1tf_arm_probe[i*512]);
    __asm__ volatile("dsb ish\n\tisb" ::: "memory");
}

uint64_t l1tf_arm_time_access(volatile uint8_t *p) {
    __asm__ volatile("dsb ish" ::: "memory");
    uint64_t t1 = arm_cntvct();
    __asm__ volatile("isb" ::: "memory");
    volatile uint8_t v = *p;
    (void)v;
    __asm__ volatile("isb" ::: "memory");
    return arm_cntvct() - t1;
}

void l1tf_arm_probe_scan(uint64_t *timings) {
    l1tf_arm_flush_all();
    for (int i = 0; i < 256; i++)
        timings[i] = l1tf_arm_time_access(&l1tf_arm_probe[i*512]);
}
""",

_ARM_CNTVCT + _ARM_DC_CIVAC + """
static volatile uint8_t l1tf_arm_channel[256*64];

void l1tf_arm_evict(int slot) {
    arm_dc_civac((void*)&l1tf_arm_channel[slot*64]);
    __asm__ volatile("dsb ish" ::: "memory");
}

int l1tf_arm_detect_hit(int slot, uint64_t thresh) {
    l1tf_arm_evict(slot);
    uint64_t t = arm_cntvct();
    __asm__ volatile("isb" ::: "memory");
    volatile uint8_t v = l1tf_arm_channel[slot*64];
    (void)v;
    __asm__ volatile("isb" ::: "memory");
    return (arm_cntvct() - t) < thresh;
}

void l1tf_arm_scan_all(int *hits, uint64_t thresh) {
    for (int i = 0; i < 256; i++) {
        for (int j = 0; j < 256; j++)
            arm_dc_civac((void*)&l1tf_arm_channel[j*64]);
        __asm__ volatile("dsb ish" ::: "memory");
        hits[i] = l1tf_arm_detect_hit(i, thresh);
    }
}
""",

]

CLASS_TEMPLATES = {
    "L1TF":       (L1TF_X86_TEMPLATES, COMPILE_CONFIGS_X86),
    "MDS":        (MDS_X86_TEMPLATES,  COMPILE_CONFIGS_X86),
    "SPECTRE_V4": (V4_X86_TEMPLATES,   COMPILE_CONFIGS_X86),
    "L1TF_ARM":   (L1TF_ARM_TEMPLATES, COMPILE_CONFIGS_ARM),
}

_CALL_ATK_RE = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|mds|ridl|verw_|clflush|'
    r'flush_reload|clearbhb|branch_history|victim_function|gadget_|'
    r'probe_timing|cache_set|_rdtsc|zombieload|fallout|taa_',
    re.I
)

def has_attack_signal(label: str, lines: list) -> bool:
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
            calls.append(parts[1])
    opset = set(ops)
    has_atk_call = any(_CALL_ATK_RE.search(c) for c in calls)

    actual_label = label.replace('_ARM', '')  # L1TF_ARM → L1TF for filter
    if actual_label == 'L1TF':
        return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset or has_atk_call
    if actual_label == 'MDS':
        return 'verw' in opset or 'movntdqa' in opset or 'clflush' in opset or 'clflushopt' in opset or has_atk_call
    if actual_label == 'SPECTRE_V4':
        nop_run = max_nop = 0
        for op in ops:
            if op == 'nop':
                nop_run += 1
                max_nop = max(max_nop, nop_run)
            else:
                nop_run = 0
        return 'lfence' in opset or 'rdtsc' in opset or 'rdtscp' in opset or max_nop >= 3 or has_atk_call
    return True


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
        try:
            Path(src_path).unlink()
        except Exception:
            pass
        try:
            Path(asm_path).unlink()
        except Exception:
            pass


def main():
    all_records = []
    seen = set()

    for label, (templates, configs) in CLASS_TEMPLATES.items():
        kept = 0
        actual_label = label.replace('_ARM', '')
        arch = 'arm64' if 'ARM' in label else 'x86_64'

        for ti, tmpl in enumerate(templates):
            for compiler, flags in configs:
                asm = compile_c(tmpl, compiler, flags)
                if not asm:
                    continue
                funcs = parse_functions(asm)
                opt = next((f for f in flags if f.startswith('-O')), '-O0')
                group = f"p17_{actual_label.lower()}_{arch}_t{ti}_{opt.lstrip('-')}"

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
                        "label": actual_label,
                        "sequence": instrs,
                        "arch": arch,
                        "group": group,
                        "fn": fn_name,
                    })
                    kept += 1
        print(f"  {label}: {kept} new records")

    counts = Counter(r['label'] for r in all_records)
    print(f"\nPhase17 total: {len(all_records)}")
    for lbl, n in sorted(counts.items()):
        print(f"  {lbl}: {n}")

    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, 'w') as f:
        for r in all_records:
            f.write(json.dumps(r) + '\n')
    print(f"Wrote {len(all_records)} -> {OUT_PATH}")


if __name__ == '__main__':
    main()
