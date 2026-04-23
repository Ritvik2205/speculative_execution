#!/usr/bin/env python3
"""
Phase 8: Compile synthetic kernel-pattern C files to get assembly diversity
from Linux kernel security code patterns (Spectre mitigations, MDS, RETBLEED).

Instead of compiling actual kernel source (which needs full kernel headers),
this script compiles standalone C files that reproduce the key assembly patterns
from Linux kernel CVE mitigation commits. These patterns are documented in the
kernel source and CVE fix descriptions.

Key patterns:
- SPECTRE_V1: barrier_nospec, array_index_nospec, bounds-check patterns
- SPECTRE_V2: retpoline, IBPB, indirect branch patterns
- MDS: VERW-based microarchitectural buffer flushing
- RETBLEED: RSB stuffing, IBPB on RET
- BHI: eIBRS history clearing

Outputs: data/enrichment/phase8_kernel.jsonl
"""
import subprocess, sys, tempfile, json, shutil
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

OUT_PATH     = ROOT / "data" / "enrichment" / "phase8_kernel.jsonl"
DOCKER_IMAGE = "specexec-compile:latest"

# Self-contained C snippets reproducing Linux kernel CVE mitigation patterns
# Each entry: (label, group_prefix, c_code)
KERNEL_PATTERN_SOURCES = [

    ("SPECTRE_V1", "phase8_kernel_specv1_bounds", """
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux array_index_nospec pattern (CVE-2017-5753 mitigation) */
typedef unsigned long ulong;
extern uint8_t array2[256 * 512];
extern uint8_t array1[160];
extern size_t array1_size;

/* array_index_mask_nospec: creates a mask that's 0 if i >= sz (speculation safe) */
static __attribute__((noinline)) unsigned long array_index_mask_nospec(unsigned long i, unsigned long sz) {
    /* Signed underflow forces compiler to emit CMOV/conditional to break spec */
    long mask = (long)(i - sz);
    /* Shift arithmetic right by 63 to sign-extend: 0xFFFF... if i<sz, else 0 */
    return ~(unsigned long)(mask >> 63);
}

__attribute__((noinline))
void spectre_v1_load_with_mask(size_t x) {
    if (x < array1_size) {
        unsigned long mask = array_index_mask_nospec(x, array1_size);
        unsigned long idx  = (x & mask) | (0 & ~mask);
        volatile uint8_t y = array2[array1[idx] * 512];
        (void)y;
    }
}

/* Kernel-style bounds check with nospec */
__attribute__((noinline))
uint8_t kernel_nospec_access(unsigned long index, unsigned long size,
                              uint8_t *table, size_t table_size) {
    if (index >= size) return 0;
    index &= array_index_mask_nospec(index, size);
    if (index < table_size)
        return table[index];
    return 0;
}

/* eBPF verifier-style speculative sanitization */
__attribute__((noinline))
int bpf_speculate_safe_check(long val, long max_val) {
    if (val < 0 || val >= max_val) return -1;
    /* Barrier breaks speculation: forces CPU to commit branch before proceeding */
    __asm__ __volatile__("" ::: "memory");
    return (int)val;
}
"""),

    ("SPECTRE_V2", "phase8_kernel_retpoline", r"""
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux retpoline indirect call pattern (CVE-2017-5715 mitigation) */
typedef void (*fn_ptr_t)(void);
extern fn_ptr_t global_fn;
extern uint8_t array2[256 * 512];

/* Retpoline: CALL/pause/JMP trampoline to prevent BTB speculation */
__attribute__((noinline))
static void retpoline_trampoline(fn_ptr_t fn) {
    __asm__ __volatile__(
        "call 1f\n\t"
        "jmp 3f\n\t"
        "1:\n\t"
        "call 2f\n\t"
        "pause\n\t"
        "jmp 1b\n\t"
        "2:\n\t"
        "mov %[fn], (%%rsp)\n\t"
        "ret\n\t"
        "3:\n\t"
        : : [fn] "r"((uint64_t)fn) : "memory"
    );
}

/* Indirect call via register — vulnerable without retpoline */
__attribute__((noinline))
void vulnerable_indirect_call(fn_ptr_t fn, uint64_t *arr, size_t n) {
    for (size_t i = 0; i < n; i++) {
        fn();
        arr[i] ^= i;
    }
}

/* Spectre V2: train BTB via function pointer, then jump to a gadget */
__attribute__((noinline))
void spectre_v2_btb_train_and_leak(fn_ptr_t victim_fn, fn_ptr_t attacker_fn,
                                    uint8_t *secret, size_t idx) {
    for (int i = 0; i < 100; i++) {
        attacker_fn();
    }
    if (secret[idx] < 128) {
        victim_fn();
    }
}

/* Conditional indirect call — architectural BTB training target */
__attribute__((noinline))
void spectre_v2_indirect_branch_gadget(fn_ptr_t *dispatch_table,
                                        int selector, uint8_t *buf) {
    for (int i = 0; i < 8; i++) {
        if ((selector >> i) & 1) {
            dispatch_table[i & 7]();
        }
    }
    volatile uint8_t x = buf[selector & 255];
    (void)x;
}
"""),

    ("MDS", "phase8_kernel_mds_verw", r"""
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux MDS mitigation via VERW instruction (CVE-2018-12126/7/30)
 * From arch/x86/kernel/cpu/bugs.c, added in v5.1 */
extern uint8_t array2[256 * 512];

/* mds_clear_cpu_buffers: use VERW to clear microarchitectural buffers */
__attribute__((noinline))
void mds_clear_cpu_buffers(void) {
    static const uint16_t ds = 0x20;
    __asm__ __volatile__(
        "verw %0\n"
        : : "m"(ds) : "cc"
    );
}

/* TSX Async Abort: same VERW clearing technique */
__attribute__((noinline))
void taa_clear_cpu_buffers(uint64_t *dst, size_t n) {
    static const uint16_t ds = 0x20;
    for (size_t i = 0; i < n; i++) {
        __asm__ __volatile__("verw %0\n" : : "m"(ds) : "cc", "memory");
        dst[i] = i ^ 0xDEADBEEFULL;
    }
}

/* MSBDS/Fallout: store buffer data sampling — speculative load from stale stores */
__attribute__((noinline))
uint64_t mds_fallout_probe(volatile uint64_t *store_buf, size_t idx) {
    uint64_t leaked = 0;
    if (idx < 64) {
        __asm__ __volatile__("mfence" ::: "memory");
        leaked = store_buf[idx];
        volatile uint8_t x = array2[(leaked & 0xFF) * 512];
        (void)x;
    }
    return leaked;
}

/* ZombieLoad: LFB (Line Fill Buffer) data sampling */
__attribute__((noinline))
void mds_zombieload_pattern(uint64_t *lfb_addr, size_t stride) {
    for (size_t i = 0; i < 64; i++) {
        uint64_t val = lfb_addr[i * stride];
        __asm__ __volatile__("" : : "r"(val) : "memory");
        volatile uint8_t x = array2[(val & 0xFF) * 512];
        (void)x;
    }
}
"""),

    ("RETBLEED", "phase8_kernel_retbleed_rsb", r"""
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux RETBLEED mitigation patterns (CVE-2022-29900/29901)
 * RETBLEED: RET instructions predict via BTB (not RSB) on AMD Zen 1/2 */
extern uint8_t array2[256 * 512];
extern uint8_t secret_array[64];

/* RSB stuffing via CALL/JMP: overfill RSB to prevent BTB-based RET speculation */
__attribute__((noinline))
void retbleed_rsb_stuff_16(void) {
    __asm__ __volatile__(
        "call 1f\n\t" "call 1f\n\t" "call 1f\n\t" "call 1f\n\t"
        "call 1f\n\t" "call 1f\n\t" "call 1f\n\t" "call 1f\n\t"
        "call 1f\n\t" "call 1f\n\t" "call 1f\n\t" "call 1f\n\t"
        "call 1f\n\t" "call 1f\n\t" "call 1f\n\t" "call 1f\n\t"
        "jmp 2f\n\t"
        "1:\n\t" "add $8, %%rsp\n\t" "ret\n\t"
        "2:\n\t"
        ::: "memory"
    );
}

/* Kernel return thunk with LFENCE serialization (AMD RETBLEED fix) */
__attribute__((noinline))
static void x86_return_thunk(void) {
    __asm__ __volatile__("lfence" ::: "memory");
}

/* Vulnerable: RET predicted via BTB on unprotected AMD Zen cores */
__attribute__((noinline))
void retbleed_vulnerable_return(uint8_t *secret, size_t idx) {
    if (idx < 64) {
        volatile uint8_t x = array2[secret[idx] * 512];
        (void)x;
    }
}

/* RETBLEED training: poison BTB for RET instruction */
__attribute__((noinline))
void retbleed_btb_train_ret(uint8_t *secret, size_t n) {
    for (size_t i = 0; i < n; i++) {
        retbleed_vulnerable_return(secret, i & 63);
    }
}
"""),

    ("BRANCH_HISTORY_INJECTION", "phase8_kernel_bhi_clearbhb", """
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux BHI/eIBRS mitigation (CVE-2022-0001/0002)
 * Branch History Injection: cross-privilege history poisoning via BHB */
extern uint8_t array2[256 * 512];

/* clear_bhb_loop: 32 conditional branches to flush BHB (Intel recommendation) */
__attribute__((noinline))
void clear_bhb_loop(void) {
    volatile int sink = 0;
    for (int i = 0; i < 32; i++) {
        if (i & 1)  sink ^= 0xA;
        if (i & 2)  sink ^= 0xB;
        if (i & 4)  sink ^= 0xC;
        if (i & 8)  sink ^= 0xD;
        if (i & 16) sink ^= 0xE;
        __asm__ __volatile__("" : "+m"(sink));
    }
}

/* BHI gadget: attacker pollutes branch history to redirect eIBRS indirect call */
__attribute__((noinline))
void bhi_indirect_call_gadget(void (*fn)(void), uint64_t *arr, size_t n) {
    for (size_t i = 0; i < n; i++) {
        if (arr[i] & 1) fn();
    }
}

/* Privileged function reachable via poisoned indirect branch */
__attribute__((noinline))
void bhi_disclosure_gadget(uint8_t *secret, size_t idx, uint8_t *side_ch) {
    volatile uint8_t x = side_ch[secret[idx & 63] * 512];
    (void)x;
}

/* BHI training loop: fill BHB with attacker-controlled branch history */
__attribute__((noinline))
void bhi_train_branch_history(uint64_t *control_flow_targets, size_t n) {
    for (size_t i = 0; i < n; i++) {
        if (control_flow_targets[i] & 7) {
            volatile uint8_t x = array2[i & 0xFF];
            (void)x;
        } else {
            volatile uint64_t y = control_flow_targets[(i+1) % n];
            (void)y;
        }
    }
}
"""),

    ("INCEPTION", "phase8_kernel_srso", r"""
#include <stdint.h>
#include <stddef.h>
/* Reproduce Linux INCEPTION/SRSO mitigation (CVE-2023-20569 — AMD)
 * Speculative Return Stack Overflow on AMD Zen 3/4 */
extern uint8_t array2[256 * 512];

/* SRSO untrain_ret: stuff RSB before returning across privilege boundary */
__attribute__((noinline))
void srso_untrain_ret(size_t count) {
    while (count--) {
        __asm__ __volatile__(
            "call 1f\n\t"
            "jmp 2f\n\t"
            "1:\n\t"
            "addq $8, %%rsp\n\t"
            "2:\n\t"
            ::: "memory"
        );
    }
}

/* SRSO alias return thunk: LFENCE before RET to serialize */
__attribute__((noinline))
static void srso_safe_ret_thunk(void) {
    __asm__ __volatile__("lfence" ::: "memory");
}

/* SRSO-vulnerable: deep recursion underflows RSB */
__attribute__((noinline))
void srso_rso_vulnerable(uint8_t *secret, size_t depth) {
    if (depth == 0) {
        volatile uint8_t x = array2[secret[0] * 512];
        (void)x;
        return;
    }
    srso_rso_vulnerable(secret, depth - 1);
}

/* SRSO cross-privilege: kernel RET mispredicts into user-controlled address */
__attribute__((noinline))
void srso_kernel_return_pattern(uint8_t *secret_ptr, size_t secret_len,
                                 size_t recursion_depth) {
    srso_untrain_ret(8);
    srso_rso_vulnerable(secret_ptr, recursion_depth % 32);
    volatile uint8_t x = array2[secret_ptr[secret_len & 63] * 512];
    (void)x;
}
"""),
]


def check_docker() -> bool:
    r = subprocess.run(["docker", "image", "inspect", DOCKER_IMAGE], capture_output=True)
    return r.returncode == 0


def compile_via_docker(c_code: str, label: str, group: str) -> list:
    """Compile C snippet via Docker and extract whole functions."""
    # Use two separate temp dirs so Docker mounts don't nest
    src_dir = tempfile.mkdtemp(prefix="p8src_", dir=str(ROOT / "data" / "enrichment"))
    out_dir = tempfile.mkdtemp(prefix="p8out_", dir=str(ROOT / "data" / "enrichment"))
    try:
        c_file = Path(src_dir) / "gadget.c"
        c_file.write_text(c_code)

        extract_script = ROOT / "docker" / "extract_windows.py"
        results = []

        for compiler, flags, arch in [
            ("x86_64-linux-gnu-gcc", "-O2", "x86_64"),
            ("x86_64-linux-gnu-gcc", "-O1", "x86_64"),
            ("x86_64-linux-gnu-gcc", "-O0", "x86_64"),
            ("clang-14", "-O2 --target=x86_64-linux-gnu", "x86_64"),
        ]:
            flag_tag = flags.replace(" ", "_").replace("-", "_")[:20]
            asm_name = f"g_{flag_tag}.s"
            compile_cmd = (
                f"{compiler} -S {flags} "
                f"-I/usr/include -fno-stack-protector -D_GNU_SOURCE -w "
                f"/work/src/gadget.c -o /work/out/{asm_name} 2>/dev/null"
            )
            extract_cmd = (
                f"python3 /work/extract_windows.py /work/out/{asm_name} "
                f"{label} {group} {arch}"
            )
            cmd = [
                "docker", "run", "--rm", "--entrypoint", "bash",
                "-v", f"{src_dir}:/work/src:ro",
                "-v", f"{out_dir}:/work/out",
                "-v", f"{extract_script}:/work/extract_windows.py:ro",
                DOCKER_IMAGE, "-c",
                f"{compile_cmd} && {extract_cmd}",
            ]
            try:
                r = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
                for line in r.stdout.splitlines():
                    if not line.strip():
                        continue
                    try:
                        rec = json.loads(line)
                        results.append(rec)
                    except json.JSONDecodeError:
                        pass
            except Exception as e:
                print(f"    [warn] Docker compile failed: {e}")
        return results
    finally:
        shutil.rmtree(src_dir, ignore_errors=True)
        shutil.rmtree(out_dir, ignore_errors=True)


def main():
    if not check_docker():
        print(f"[phase8] Docker image {DOCKER_IMAGE!r} not found — writing empty output")
        write_jsonl([], OUT_PATH)
        return

    test_hashes = load_test_hashes()
    existing = []
    for pf in [
        ROOT / "data" / "v44_honest_train.jsonl",
        ROOT / "data" / "enrichment" / "phase1_augmented.jsonl",
        ROOT / "data" / "enrichment" / "phase7_compiled.jsonl",
    ]:
        if pf.exists():
            existing.extend(load_jsonl(pf))
    existing_hashes = {(seq_hash(r.get("sequence", [])), r["label"]) for r in existing}

    all_candidates = []
    for label, group, c_code in KERNEL_PATTERN_SOURCES:
        print(f"[phase8] Compiling {group} ({label})")
        records = compile_via_docker(c_code, label, group)
        print(f"  → {len(records)} raw function records")
        all_candidates.extend(records)

    print(f"\n[phase8] Total candidates: {len(all_candidates):,}")
    clean, stats = validate_and_dedup(all_candidates, test_hashes, existing_hashes)
    print(f"[phase8] After dedup: {len(clean):,}  stats={stats}")

    write_jsonl(clean, OUT_PATH)
    counts = Counter(r["label"] for r in clean)
    print("\n[phase8] Per-class:")
    for cls in sorted(counts):
        print(f"  {cls:<35} {counts[cls]:>6,}")


if __name__ == "__main__":
    main()
