#!/usr/bin/env python3
"""
Phase 14: Full-gadget synthetic training data.

For each class, generate C functions containing the COMPLETE attack sequence.
Compiled for x86_64 and arm64 at multiple optimization levels.

Classes targeted (full-gadget rates from audit):
  MDS        13.4% — verw/mfence/movntdqa/dc+dsb patterns
  L1TF       10.7% — clflush+rdtsc+speculative-load chains
  SPECTRE_V1 40.5% — bounds-check+indexed-load full chain
  BHI        20.5% — indirect-branch+indexed-load in same function
  INCEPTION  28.4% — NOP-sled+call/ret RSB stuffing
  SPECTRE_V4 23.8% — store-then-speculative-load bypass
  SPECTRE_RSB 34.1% — deep call chains exhausting RSB
  SPECTRE_V2 21.2% — indirect-branch+speculative-load dispatch

No label leakage: function names use generic identifiers (gadget_X, probe_X).
"""

import os, re, json, tempfile, subprocess, textwrap
from pathlib import Path
from typing import List, Dict, Tuple, Optional

ROOT     = Path(__file__).resolve().parent.parent.parent
OUT_JSONL = ROOT / "data" / "phase14_full_gadgets.jsonl"

HEADER = "#include <stdint.h>\n#include <stddef.h>\n#include <string.h>\n"

TARGETS = [
    ("x86_64", "x86_64-apple-macos12", ["-O0", "-O1", "-O2", "-O3", "-Os"]),
    ("arm64",  "arm64-apple-macos12",  ["-O0", "-O1", "-O2", "-O3", "-Os"]),
]

TEMPLATES: List[Tuple[str, str, str]] = []  # (label, arch_hint, c_source)

def T(label: str, arch: str, src: str):
    TEMPLATES.append((label, arch, HEADER + textwrap.dedent(src).strip()))


# ─── MDS ─────────────────────────────────────────────────────────────────────

T("MDS", "x86", """
#include <x86intrin.h>
void gadget_a(volatile char *buf, volatile uint64_t *out) {
    __asm__ volatile("mfence" ::: "memory");
    __asm__ volatile("verw %0" :: "m"(*(short*)buf));
    __asm__ volatile("lfence" ::: "memory");
    *out = __rdtsc();
}
""")

T("MDS", "x86", """
#include <x86intrin.h>
void gadget_b(volatile char *leak, volatile char *probe) {
    _mm_clflush((void*)leak);
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    char v = *leak;
    uint64_t t2 = __rdtsc();
    probe[(uint8_t)v * 512] = 1;
    (void)t1; (void)t2;
}
""")

T("MDS", "x86", """
#include <x86intrin.h>
#include <emmintrin.h>
void gadget_c(void *uncacheable, volatile char *probe) {
    __m128i reg = _mm_stream_load_si128((__m128i*)uncacheable);
    uint8_t bval = (uint8_t)_mm_extract_epi8(reg, 0);
    probe[bval * 512] = 1;
    __asm__ volatile("mfence" ::: "memory");
}
""")

T("MDS", "x86", """
#include <x86intrin.h>
void gadget_d(volatile char *buf, volatile char *probe, int n) {
    for (int i = 0; i < n; i++) {
        __asm__ volatile("mfence" ::: "memory");
        __asm__ volatile("verw %0" :: "m"(*(short*)buf));
        _mm_clflush((void*)&probe[i * 512]);
        __asm__ volatile("lfence" ::: "memory");
    }
}
""")

T("MDS", "x86", """
#include <x86intrin.h>
uint64_t measure_a(volatile char *addr) {
    _mm_clflush((void*)addr);
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    __asm__ volatile("movq (%0), %%rax" :: "r"(addr) : "rax", "memory");
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t2 = __rdtsc();
    return t2 - t1;
}
""")

T("MDS", "x86", """
#include <x86intrin.h>
void drain_store_buf(volatile short *ds, volatile char *probe, size_t key) {
    __asm__ volatile("verw %0" :: "m"(*ds) : "memory");
    __asm__ volatile("mfence; lfence" ::: "memory");
    probe[key * 512] = (char)__rdtsc();
}
""")

T("MDS", "arm", """
void gadget_e(volatile char *buf, volatile char *probe) {
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("isb" ::: "memory");
    uint8_t v = (uint8_t)*buf;
    __asm__ volatile("dsb sy" ::: "memory");
    probe[v * 512] = 1;
}
""")

T("MDS", "arm", """
void gadget_f(volatile char *addr, volatile char *probe, int n) {
    for (int i = 0; i < n; i++) {
        __asm__ volatile("dc civac, %0" :: "r"((uint64_t)(uintptr_t)addr) : "memory");
        __asm__ volatile("dsb sy; isb" ::: "memory");
        uint8_t v = (uint8_t)addr[i];
        probe[v * 512] = 1;
    }
}
""")

T("MDS", "arm", """
uint64_t measure_b(volatile char *addr) {
    uint64_t t1, t2;
    __asm__ volatile("dc civac, %0" :: "r"((uint64_t)(uintptr_t)addr) : "memory");
    __asm__ volatile("dsb sy; isb" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t1));
    uint8_t v = (uint8_t)*addr;
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t2));
    (void)v;
    return t2 - t1;
}
""")

T("MDS", "arm", """
void gadget_g(volatile char *leak, volatile char *probe) {
    uint64_t t1, t2;
    __asm__ volatile("dc civac, %0" :: "r"((uint64_t)(uintptr_t)leak) : "memory");
    __asm__ volatile("dsb ish; isb" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t1));
    volatile uint8_t v = (uint8_t)*leak;
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t2));
    probe[v * 512] = (char)(t2 - t1);
}
""")


# ─── L1TF ────────────────────────────────────────────────────────────────────

T("L1TF", "x86", """
#include <x86intrin.h>
uint64_t probe_a(volatile char *probe_buf, volatile char *target) {
    _mm_clflush((void*)probe_buf);
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    volatile char x = *target;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t2 = __rdtsc();
    (void)x;
    return t2 - t1;
}
""")

T("L1TF", "x86", """
#include <x86intrin.h>
void probe_b(char *probe, volatile char *target, uint64_t *results) {
    for (int i = 0; i < 256; i++) {
        _mm_clflush(&probe[i * 512]);
    }
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint8_t v = (uint8_t)*target;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    volatile char dummy = probe[v * 512];
    uint64_t t2 = __rdtsc();
    results[0] = t2 - t1;
    (void)dummy;
}
""")

T("L1TF", "x86", """
#include <x86intrin.h>
int check_a(volatile char *probe, volatile char *secret, int threshold) {
    _mm_clflush((void*)probe);
    __asm__ volatile("mfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    volatile char v = *secret;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t2 = __rdtsc();
    (void)v;
    return (int)(t2 - t1) < threshold;
}
""")

T("L1TF", "x86", """
#include <x86intrin.h>
void flush_reload_a(char *probe_arr, volatile char *target) {
    for (int i = 0; i < 256; i++) {
        _mm_clflush(&probe_arr[i * 512]);
    }
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint8_t leaked = (uint8_t)(*target);
    __asm__ volatile("lfence" ::: "memory");
    volatile char x = probe_arr[leaked * 512];
    (void)x;
}
""")

T("L1TF", "x86", """
#include <x86intrin.h>
void probe_c(volatile char *secret, char *probe, uint64_t *delta) {
    _mm_clflush(probe);
    __asm__ volatile("mfence; lfence" ::: "memory");
    uint64_t t1 = __rdtsc();
    uint8_t v = (uint8_t)*secret;
    __asm__ volatile("lfence" ::: "memory");
    uint64_t t2 = __rdtsc();
    *delta = t2 - t1;
    volatile char d = probe[v * 64];
    (void)d;
}
""")

T("L1TF", "arm", """
uint64_t probe_d(volatile char *probe, volatile char *target) {
    uint64_t t1, t2;
    __asm__ volatile("dc civac, %0" :: "r"((uint64_t)(uintptr_t)probe) : "memory");
    __asm__ volatile("dsb sy; isb" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t1));
    volatile char v = *target;
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("mrs %0, cntvct_el0" : "=r"(t2));
    (void)v;
    return t2 - t1;
}
""")

T("L1TF", "arm", """
void probe_e(char *probe, volatile char *secret, int n) {
    for (int i = 0; i < n; i++) {
        __asm__ volatile("dc civac, %0" :: "r"((uint64_t)(uintptr_t)&probe[i*512]) : "memory");
    }
    __asm__ volatile("dsb sy; isb" ::: "memory");
    uint8_t v = (uint8_t)(*secret);
    __asm__ volatile("dsb sy" ::: "memory");
    volatile char dummy = probe[v * 512];
    (void)dummy;
}
""")


# ─── SPECTRE_V1 ───────────────────────────────────────────────────────────────

T("SPECTRE_V1", "both", """
uint8_t gadget_a(size_t x, uint8_t *arr1, size_t sz, uint8_t *arr2) {
    if (x < sz) {
        return arr2[arr1[x] * 512];
    }
    return 0;
}
""")

T("SPECTRE_V1", "x86", """
#include <x86intrin.h>
uint8_t gadget_b(size_t x, uint8_t *arr1, size_t sz, uint8_t *arr2) {
    if (x < sz) {
        __asm__ volatile("lfence" ::: "memory");
        uint8_t v = arr1[x];
        return arr2[(size_t)v * 512];
    }
    return 0;
}
""")

T("SPECTRE_V1", "both", """
int gadget_c(unsigned idx, uint8_t *arr, unsigned len, uint8_t *probe) {
    unsigned mask = -(idx < len);
    uint8_t v = arr[idx & mask];
    return probe[(size_t)v * 64];
}
""")

T("SPECTRE_V1", "both", """
uint8_t gadget_d(size_t x, uint8_t *a, size_t asz, uint8_t *b, size_t bsz, uint8_t *probe) {
    if (x < asz) {
        uint8_t v = a[x];
        if ((size_t)v < bsz) {
            return probe[(size_t)b[v] * 512];
        }
    }
    return 0;
}
""")

T("SPECTRE_V1", "x86", """
#include <x86intrin.h>
void measure_a(size_t x, uint8_t *arr1, size_t sz, uint8_t *arr2,
               uint8_t *probe, uint64_t *timing) {
    if (x < sz) {
        _mm_clflush(&arr1[x]);
        __asm__ volatile("mfence; lfence" ::: "memory");
        uint8_t v = arr1[x];
        volatile uint8_t t = arr2[(size_t)v * 512];
        __asm__ volatile("lfence" ::: "memory");
        *timing = __rdtsc();
        (void)t;
    }
}
""")

T("SPECTRE_V1", "arm", """
uint8_t gadget_e(size_t x, uint8_t *arr1, size_t sz, uint8_t *arr2) {
    if (x < sz) {
        uint8_t v = arr1[x];
        __asm__ volatile("dsb sy" ::: "memory");
        return arr2[(size_t)v * 512];
    }
    return 0;
}
""")

T("SPECTRE_V1", "arm", """
uint8_t gadget_f(unsigned x, uint8_t *a, unsigned n, uint8_t *probe) {
    if (x < n) {
        uint8_t s = a[x];
        return probe[(size_t)s * 64];
    }
    return 255;
}
""")

T("SPECTRE_V1", "both", """
uint8_t gadget_g(size_t x, uint8_t *arr1, size_t sz, uint8_t *arr2, uint8_t *probe) {
    uint8_t v1, v2;
    if (x < sz) {
        v1 = arr1[x];
        v2 = arr2[(size_t)v1 * 512];
        return probe[(size_t)v2 * 64];
    }
    return 0;
}
""")


# ─── BRANCH_HISTORY_INJECTION ─────────────────────────────────────────────────

T("BRANCH_HISTORY_INJECTION", "both", """
typedef uint8_t (*fn_t)(void);
uint8_t gadget_a(fn_t fp, uint8_t *probe) {
    uint8_t idx = fp();
    return probe[(size_t)idx * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
typedef void (*dispatch_t)(void*);
uint8_t gadget_b(dispatch_t fn, void *ctx, uint8_t *secret, uint8_t *probe) {
    fn(ctx);
    uint8_t s = *secret;
    return probe[(size_t)s * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
typedef struct { uint8_t (*get)(void*); } vtbl;
uint8_t gadget_c(vtbl *v, void *self, uint8_t *probe) {
    uint8_t idx = v->get(self);
    return probe[(size_t)idx * 64];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
typedef uint8_t (*cb_t)(uint8_t*, size_t);
uint8_t gadget_d(cb_t cb, uint8_t *arr, size_t i, uint8_t *probe) {
    uint8_t v = cb(arr, i);
    return probe[(size_t)v * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
uint8_t gadget_e(void (*fp)(void), uint8_t *base, size_t offset, uint8_t *probe) {
    fp();
    uint8_t key = base[offset];
    return probe[(size_t)key * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
typedef int (*cmp_fn)(const void*, const void*);
uint8_t gadget_f(cmp_fn cmp, const void *a, const void *b, uint8_t *probe) {
    int result = cmp(a, b);
    return probe[(size_t)(result & 0xff) * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "both", """
typedef size_t (*hash_fn)(const char*, size_t);
uint8_t gadget_g(hash_fn hfn, const char *key, size_t klen, uint8_t *probe) {
    size_t h = hfn(key, klen);
    return probe[(h & 0xff) * 512];
}
""")

T("BRANCH_HISTORY_INJECTION", "x86", """
#include <x86intrin.h>
typedef uint8_t (*leak_fn)(uint8_t *arr, size_t idx);
uint8_t gadget_h(leak_fn fn, uint8_t *arr, size_t idx, uint8_t *probe, uint64_t *t) {
    __asm__ volatile("lfence" ::: "memory");
    uint8_t v = fn(arr, idx);
    *t = __rdtsc();
    return probe[(size_t)v * 512];
}
""")


# ─── INCEPTION ───────────────────────────────────────────────────────────────
# NOP sleds use separate __asm__ calls (multi-line C strings cause syntax errors)

T("INCEPTION", "x86", """
__attribute__((noinline)) static void nop_pad_a(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
uint8_t stuff_a(uint8_t *probe, size_t idx) {
    nop_pad_a(); nop_pad_a(); nop_pad_a(); nop_pad_a();
    return probe[idx * 512];
}
""")

T("INCEPTION", "both", """
__attribute__((noinline)) static void inner_a(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
void stuff_b(int depth) {
    for (int i = 0; i < depth; i++) inner_a();
}
""")

T("INCEPTION", "both", """
__attribute__((noinline)) static int nop_fn_a(int x) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    return x + 1;
}
__attribute__((noinline)) static int nop_fn_b(int x) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    return nop_fn_a(x) + 1;
}
int stuff_c(int x) { return nop_fn_b(x) + nop_fn_a(x); }
""")

T("INCEPTION", "both", """
__attribute__((noinline)) static void rsb_train_a(int n) {
    if (n <= 0) return;
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    rsb_train_a(n - 1);
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
void stuff_d(int depth, uint8_t *probe, size_t key) {
    rsb_train_a(depth);
    volatile uint8_t v = probe[key * 512];
    (void)v;
}
""")

T("INCEPTION", "x86", """
#include <x86intrin.h>
__attribute__((noinline)) static void nop_pad_b(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
uint64_t stuff_e(uint8_t *probe, size_t key) {
    nop_pad_b(); nop_pad_b(); nop_pad_b(); nop_pad_b();
    nop_pad_b(); nop_pad_b(); nop_pad_b(); nop_pad_b();
    uint64_t t = __rdtsc();
    volatile uint8_t v = probe[key * 512];
    (void)v;
    return t;
}
""")


# ─── SPECTRE_V4 ───────────────────────────────────────────────────────────────

T("SPECTRE_V4", "both", """
uint8_t gadget_a(uint8_t *arr, size_t idx, uint8_t val, uint8_t *probe) {
    arr[idx] = val;
    uint8_t v = arr[idx];
    return probe[(size_t)v * 512];
}
""")

T("SPECTRE_V4", "both", """
int gadget_b(int *p, int new_val, int *probe_arr) {
    *p = new_val;
    int v = *p;
    return probe_arr[v & 0xff];
}
""")

T("SPECTRE_V4", "x86", """
#include <x86intrin.h>
uint8_t gadget_c(uint8_t *arr, size_t i, uint8_t secret, uint8_t *probe) {
    arr[i] = secret;
    __asm__ volatile("lfence" ::: "memory");
    uint8_t v = arr[i];
    __asm__ volatile("lfence" ::: "memory");
    return probe[(size_t)v * 512];
}
""")

T("SPECTRE_V4", "both", """
uint8_t gadget_d(volatile uint8_t *p, uint8_t v, uint8_t *probe) {
    *p = v;
    uint8_t r = *p;
    return probe[(size_t)r * 64];
}
""")

T("SPECTRE_V4", "both", """
uint8_t gadget_e(uint8_t *buf, size_t w_idx, size_t r_idx, uint8_t val, uint8_t *probe) {
    buf[w_idx] = val;
    uint8_t v = buf[r_idx];
    return probe[(size_t)v * 512];
}
""")

T("SPECTRE_V4", "both", """
uint16_t gadget_f(uint16_t *arr, size_t idx, uint16_t val, uint8_t *probe) {
    arr[idx] = val;
    uint16_t v = arr[idx];
    return (uint16_t)probe[(v & 0xff) * 512];
}
""")


# ─── SPECTRE_RSB ─────────────────────────────────────────────────────────────

T("SPECTRE_RSB", "both", """
__attribute__((noinline)) static void level3(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
__attribute__((noinline)) static void level2(void) {
    level3();
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory");
}
__attribute__((noinline)) static void level1(void) {
    level2();
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory");
}
void gadget_a(void) { level1(); level1(); level1(); }
""")

T("SPECTRE_RSB", "both", """
__attribute__((noinline)) static void sink_a(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
void gadget_b(int n) {
    for (int i = 0; i < n; i++) sink_a();
}
""")

T("SPECTRE_RSB", "both", """
__attribute__((noinline)) static void fill_a(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
uint8_t gadget_c(uint8_t *probe, size_t idx) {
    fill_a(); fill_a(); fill_a(); fill_a();
    fill_a(); fill_a(); fill_a(); fill_a();
    return probe[idx * 512];
}
""")

T("SPECTRE_RSB", "both", """
__attribute__((noinline)) static void rsb_overfill(int n) {
    if (n <= 0) return;
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    rsb_overfill(n - 1);
}
void gadget_d(int depth, uint8_t *probe, size_t k) {
    rsb_overfill(depth);
    volatile uint8_t v = probe[k * 512];
    (void)v;
}
""")

T("SPECTRE_RSB", "x86", """
#include <x86intrin.h>
__attribute__((noinline)) static void nop_leaf(void) {
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
    __asm__ volatile("nop" ::: "memory"); __asm__ volatile("nop" ::: "memory");
}
uint64_t gadget_e(uint8_t *probe, size_t key) {
    nop_leaf(); nop_leaf(); nop_leaf(); nop_leaf();
    nop_leaf(); nop_leaf(); nop_leaf(); nop_leaf();
    uint64_t t = __rdtsc();
    volatile uint8_t v = probe[key * 512];
    (void)v;
    return t;
}
""")


# ─── SPECTRE_V2 ───────────────────────────────────────────────────────────────

T("SPECTRE_V2", "both", """
typedef uint8_t (*target_t)(uint8_t*, size_t);
uint8_t gadget_a(target_t fn, uint8_t *arr, size_t idx) {
    return fn(arr, idx);
}
""")

T("SPECTRE_V2", "both", """
typedef void (*thunk_t)(void);
uint8_t gadget_b(thunk_t thunk, uint8_t *probe, size_t secret) {
    thunk();
    return probe[secret * 512];
}
""")

T("SPECTRE_V2", "both", """
typedef size_t (*read_fn)(void*, size_t);
uint8_t gadget_c(read_fn rfn, void *ctx, size_t off, uint8_t *probe) {
    size_t v = rfn(ctx, off);
    return probe[(v & 0xff) * 512];
}
""")

T("SPECTRE_V2", "both", """
typedef struct { uint8_t (*read)(void*, size_t); } iface_t;
uint8_t gadget_d(iface_t *iface, void *ctx, size_t off, uint8_t *probe) {
    uint8_t v = iface->read(ctx, off);
    return probe[(size_t)v * 512];
}
""")

T("SPECTRE_V2", "x86", """
#include <x86intrin.h>
typedef uint8_t (*get_t)(size_t);
uint8_t gadget_e(get_t fn, size_t key, uint8_t *probe, uint64_t *t) {
    uint8_t v = fn(key);
    *t = __rdtsc();
    return probe[(size_t)v * 512];
}
""")

T("SPECTRE_V2", "both", """
typedef uint8_t (*handler_t)(const uint8_t *, size_t);
void gadget_f(handler_t *handlers, int n, const uint8_t *buf, size_t len, uint8_t *probe) {
    for (int i = 0; i < n; i++) {
        uint8_t v = handlers[i](buf, len);
        probe[(size_t)v * 512] = 1;
    }
}
""")

# ─── RETBLEED top-up ─────────────────────────────────────────────────────────

T("RETBLEED", "x86", """
#include <x86intrin.h>
uint8_t gadget_a(uint8_t *probe, size_t secret) {
    __asm__ volatile("lfence" ::: "memory");
    return probe[secret * 512];
}
""")

T("RETBLEED", "arm", """
uint8_t gadget_b(uint8_t *arr, size_t idx, uint8_t *probe) {
    uint8_t v = arr[idx];
    __asm__ volatile("dsb sy" ::: "memory");
    return probe[(size_t)v * 512];
}
""")


# ─────────────────────────────────────────────────────────────────────────────
# COMPILATION + EXTRACTION
# ─────────────────────────────────────────────────────────────────────────────

def compile_to_asm(src: str, arch_str: str, target: str, opt: str) -> Optional[str]:
    with tempfile.NamedTemporaryFile(suffix=".c", mode="w", delete=False) as f:
        f.write(src)
        src_path = f.name
    asm_path = src_path + ".s"
    try:
        extra = ["-mavx2"] if arch_str == "x86_64" else []
        r = subprocess.run(
            ["clang", f"-target", target, opt, "-S",
             "-fno-asynchronous-unwind-tables", "-fno-exceptions",
             *extra, "-o", asm_path, src_path],
            capture_output=True, text=True, timeout=30
        )
        if r.returncode != 0:
            return None
        with open(asm_path) as f:
            return f.read()
    except Exception:
        return None
    finally:
        for p in [src_path, asm_path]:
            try: os.unlink(p)
            except: pass


_FN_LABEL = re.compile(r'^([A-Za-z_][A-Za-z0-9_.]*):(\s*(##|;|//).*)?$')


def extract_functions(asm_text: str) -> List[List[str]]:
    """
    Extract individual functions from macOS assembly.

    macOS clang emits labels with trailing inline comments:
        _gadget_a:                              ## @gadget_a
    so we cannot rely on endswith(':').  Instead we match the full pattern:
        ^[A-Za-z_][identifier_chars]: (optional ##-comment)$

    We skip labels starting with 'L' or 'l_' (local/basic-block labels),
    and ## %bb.0: style comment-labels.
    """
    functions: List[List[str]] = []
    current: List[str] = []

    for line in asm_text.splitlines():
        stripped = line.strip()
        m = _FN_LABEL.match(stripped)
        is_fn_label = (
            m is not None and
            not stripped.startswith("L") and
            not stripped.startswith("l_") and
            not stripped.startswith("#")
        )
        if is_fn_label:
            if current:
                instrs = _instruction_lines(current)
                if len(instrs) >= 4:
                    functions.append(current)
            current = [line]
        elif current:
            current.append(line)

    if current:
        instrs = _instruction_lines(current)
        if len(instrs) >= 4:
            functions.append(current)

    return functions


def _instruction_lines(seq: List[str]) -> List[str]:
    return [l for l in seq
            if l.strip() and not l.strip().endswith(":") and
            not l.strip().startswith(".") and
            not l.strip().startswith("#") and
            not l.strip().startswith(";")]


def has_attack_signal(seq: List[str], label: str) -> bool:
    """True if sequence contains at least one class-relevant opcode."""
    ops: set = set()
    full_text = " ".join(seq).lower()
    for ln in seq:
        ln = ln.strip()
        if ln and not ln.endswith(":") and not ln.startswith("."):
            p = ln.split()
            if p:
                ops.add(p[0].lower())

    if label == "MDS":
        return bool(ops & {"verw", "movntdqa", "mfence", "dc", "dsb", "rdtsc", "rdtscp", "clflush"})
    if label == "L1TF":
        return (bool(ops & {"clflush", "clflushopt", "dc"}) or
                bool(ops & {"rdtsc", "rdtscp", "mrs"}))
    if label == "BRANCH_HISTORY_INJECTION":
        return (bool(ops & {"blr", "br"}) or
                bool(re.search(r"\b(jmpq?|callq?)\s*\*", full_text)))
    if label == "INCEPTION":
        nops = sum(1 for o in ops if o == "nop")
        has_call = bool(ops & {"call", "callq", "bl"})
        has_ret  = bool(ops & {"ret", "retq"})
        return nops > 0 and (has_call or has_ret)
    if label == "SPECTRE_V1":
        has_cmp  = bool(ops & {"cmp", "cmpl", "cmpq", "testl", "test", "subs", "cbnz", "cbz"})
        has_load = bool(ops & {"movzbl", "movzx", "ldrb", "ldr", "movzbq"})
        return has_cmp and has_load
    if label == "SPECTRE_V4":
        has_store = bool(ops & {"str", "strb", "stp", "movq", "movl", "movb", "mov"})
        has_load  = bool(ops & {"ldr", "ldrb", "ldp", "movzx", "movzbl"})
        return has_store and has_load
    if label == "SPECTRE_RSB":
        return bool(ops & {"nop"}) and bool(ops & {"call", "callq", "bl"}) and bool(ops & {"ret", "retq"})
    if label == "SPECTRE_V2":
        return (bool(ops & {"blr", "br"}) or
                bool(re.search(r"\b(jmpq?|callq?)\s*\*", full_text)))
    if label == "RETBLEED":
        return bool(ops & {"ret", "retq"}) and bool(ops & {"ldr", "ldrb", "movzx", "movzbl", "movq", "movl"})
    return True


def main():
    records = []
    counts: Dict[str, int] = {}
    errors: Dict[str, int] = {}

    for t_idx, (label, arch_hint, src) in enumerate(TEMPLATES):
        arch_targets = []
        for arch_str, target, opts in TARGETS:
            if arch_hint == "x86" and arch_str != "x86_64":
                continue
            if arch_hint == "arm" and arch_str != "arm64":
                continue
            for opt in opts:
                arch_targets.append((arch_str, target, opt))

        for arch_str, target, opt in arch_targets:
            asm = compile_to_asm(src, arch_str, target, opt)
            if asm is None:
                errors[label] = errors.get(label, 0) + 1
                continue

            fns = extract_functions(asm)
            added = 0
            for fn_seq in fns:
                if not has_attack_signal(fn_seq, label):
                    continue
                rec = {
                    "label": label,
                    "sequence": fn_seq,
                    "arch": arch_str,
                    "group": f"phase14_{label.lower()}_t{t_idx}_{arch_str}_{opt.lstrip('-')}",
                    "source": "phase14_synthetic",
                    "features": {},
                }
                records.append(rec)
                counts[label] = counts.get(label, 0) + 1
                added += 1

    OUT_JSONL.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_JSONL, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")

    print(f"\nPhase 14: {len(records)} records → {OUT_JSONL}")
    print("Per-class:")
    for cls, cnt in sorted(counts.items()):
        print(f"  {cls:40s} {cnt:4d}  (compile-errors: {errors.get(cls,0)})")
    missing = set(t[0] for t in TEMPLATES) - set(counts.keys())
    if missing:
        print(f"ZERO records for: {missing}")


if __name__ == "__main__":
    main()
