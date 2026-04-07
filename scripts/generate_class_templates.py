#!/usr/bin/env python3
import argparse
from pathlib import Path


TEMPLATES = {
    # MDS: ARM64 - Microarchitectural Data Sampling with cache flush + speculative load
    ("MDS", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb" ::: "memory"); }
static inline void flush(volatile void *p){ __asm__ __volatile__("dc civac, %0; dsb sy"::"r"(p):"memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
volatile uint8_t mds_secret = 0x42;
volatile uint8_t probe[256 * 64];
void mds_gadget(){
    barrier();
    uint64_t t0 = rd();
    flush(&mds_secret);
    barrier();
    __asm__ __volatile__(
        "eor x0, x0, x0\\n\\t"
        "ldrb w0, [%0]\\n\\t"
        "NOPPAD\\n\\t"
        "lsl x0, x0, #6\\n\\t"
        "ldr x1, [%1, x0]\\n\\t"
        ::"r"(&mds_secret),"r"(probe):"x0","x1","memory"
    );
    uint64_t t1 = rd();
    (void)(t1-t0);
}
""",
    # MDS: ARM64 variant 2 - ZombieLoad style repeated loads
    ("MDS_ZOMBIE", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb" ::: "memory"); }
static inline void flush(volatile void *p){ __asm__ __volatile__("dc civac, %0"::"r"(p):"memory"); }
volatile uint8_t target_buf[64] __attribute__((aligned(64)));
volatile uint8_t probe[256 * 64];
void zombieload_gadget(){
    barrier();
    flush(target_buf);
    barrier();
    __asm__ __volatile__(
        "ldrb w0, [%0]\\n\\t"
        "NOPPAD\\n\\t"
        "ldrb w1, [%0]\\n\\t"
        "ldrb w2, [%0]\\n\\t"
        "add x3, x0, x1\\n\\t"
        "lsl x3, x3, #6\\n\\t"
        "ldr x4, [%1, x3]\\n\\t"
        ::"r"(target_buf),"r"(probe):"x0","x1","x2","x3","x4","memory"
    );
}
""",
    # MDS: ARM64 variant 3 - RIDL style with store forwarding
    ("MDS_RIDL", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb" ::: "memory"); }
static inline void flush(volatile void *p){ __asm__ __volatile__("dc civac, %0; dsb ish"::"r"(p):"memory"); }
volatile uint64_t store_buf[8] __attribute__((aligned(64)));
volatile uint8_t probe[256 * 64];
void ridl_gadget(){
    barrier();
    store_buf[0] = 0x41;
    flush(&store_buf[0]);
    barrier();
    __asm__ __volatile__(
        "str xzr, [%0]\\n\\t"
        "NOPPAD\\n\\t"
        "ldrb w0, [%0]\\n\\t"
        "lsl x0, x0, #6\\n\\t"
        "ldr x1, [%1, x0]\\n\\t"
        ::"r"(store_buf),"r"(probe):"x0","x1","memory"
    );
}
""",
    # MDS: ARM64 variant 4 - Fallout style with store buffer
    ("MDS_FALLOUT", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb" ::: "memory"); }
static inline void flush(volatile void *p){ __asm__ __volatile__("dc civac, %0"::"r"(p):"memory"); }
volatile uint8_t fallout_buf[128] __attribute__((aligned(64)));
volatile uint8_t probe[256 * 64];
void fallout_gadget(uint8_t secret){
    barrier();
    fallout_buf[0] = secret;
    flush(fallout_buf);
    barrier();
    __asm__ __volatile__(
        "strb %w2, [%0]\\n\\t"
        "dc civac, %0\\n\\t"
        "NOPPAD\\n\\t"
        "ldrb w0, [%0]\\n\\t"
        "lsl x0, x0, #6\\n\\t"
        "ldr x1, [%1, x0]\\n\\t"
        ::"r"(fallout_buf),"r"(probe),"r"((uint64_t)secret):"x0","x1","memory"
    );
}
""",
    # MDS: x86_64 - Standard MDS pattern
    ("MDS", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline void mf(){ __asm__ __volatile__("mfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
volatile uint8_t mds_secret = 0x42;
volatile uint8_t probe[256 * 64];
void mds_gadget(){
    lf();
    uint64_t t0 = rd();
    __asm__ __volatile__("clflush (%0)"::"r"(&mds_secret):"memory");
    mf();
    __asm__ __volatile__(
        "xor %%eax, %%eax\\n\\t"
        "movb (%0), %%al\\n\\t"
        "NOPPAD\\n\\t"
        "shl $6, %%rax\\n\\t"
        "movq (%1, %%rax, 1), %%rbx\\n\\t"
        ::"r"(&mds_secret),"r"(probe):"rax","rbx","memory"
    );
    uint64_t t1 = rd();
    (void)(t1-t0);
}
""",
    # MDS: x86_64 variant 2 - ZombieLoad
    ("MDS_ZOMBIE", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline void mf(){ __asm__ __volatile__("mfence":::"memory"); }
volatile uint8_t target_buf[64] __attribute__((aligned(64)));
volatile uint8_t probe[256 * 64];
void zombieload_gadget(){
    lf();
    __asm__ __volatile__("clflush (%0)"::"r"(target_buf):"memory");
    mf();
    __asm__ __volatile__(
        "movzbl (%0), %%eax\\n\\t"
        "NOPPAD\\n\\t"
        "movzbl (%0), %%ebx\\n\\t"
        "movzbl (%0), %%ecx\\n\\t"
        "add %%ebx, %%eax\\n\\t"
        "shl $6, %%rax\\n\\t"
        "movq (%1, %%rax, 1), %%rdx\\n\\t"
        ::"r"(target_buf),"r"(probe):"rax","rbx","rcx","rdx","memory"
    );
}
""",
    # MDS: x86_64 variant 3 - TAA (TSX Asynchronous Abort) style
    ("MDS_TAA", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline void mf(){ __asm__ __volatile__("mfence":::"memory"); }
volatile uint8_t secret_data = 0x53;
volatile uint8_t probe[256 * 64];
void taa_gadget(){
    lf();
    __asm__ __volatile__("clflush (%0)"::"r"(&secret_data):"memory");
    mf();
    __asm__ __volatile__(
        "xor %%eax, %%eax\\n\\t"
        "movb (%0), %%al\\n\\t"
        "NOPPAD\\n\\t"
        "shl $6, %%eax\\n\\t"
        "movq (%1, %%rax, 1), %%rcx\\n\\t"
        ::"r"(&secret_data),"r"(probe):"rax","rcx","memory"
    );
}
""",
    # BHI: ARM64 indirect branches with variable NOP padding and probe/timing
    ("BHI", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb" ::: "memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
typedef void (*fn_t)(void);
static void tA(void){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
static void tB(void){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
void main_func(){ barrier(); (void)rd(); fn_t a=tA,b=tB; __asm__ __volatile__("mov x9,%0\\n\\tbr x9\\n\\tNOPPAD\\n\\tmov x10,%1\\n\\tbr x10"::"r"(a),"r"(b):"x9","x10"); volatile char *p=(volatile char*)&a; __asm__ __volatile__("dc civac,%0; isb; hint #0x14"::"r"(p):"memory"); }
""",
    # BHI: x86 jmp/call [reg] with clflush/rdtsc
    ("BHI", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
void tgtA(void){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
void tgtB(void){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
void main_func(){ lf(); (void)rd(); void (*a)(void)=tgtA,*b=tgtB; __asm__ __volatile__("jmp *%0\\n\\tNOPPAD\\n\\tcall *%1"::"r"(a),"r"(b)); volatile char buf[64]; __asm__ __volatile__("clflush (%0); lfence"::"r"(buf):"memory"); }
""",
    # INCEPTION: x86 return chain with timing and clflush
    ("INCEPTION", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
__attribute__((noinline)) void rchain(int n){ if(n<=0) return; __asm__ __volatile__("call 1f\\n\\t1: ret\\n\\tNOPPAD"); rchain(n-1); }
void main_func(){ lf(); (void)rd(); rchain(DEPTH); volatile char b[64]; __asm__ __volatile__("clflush (%0); lfence"::"r"(b):"memory"); }
""",
    # RETBLEED: x86 push/pop/ret spray
    ("RETBLEED", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
__attribute__((noinline)) void spray(){ __asm__ __volatile__("push %rbp; pop %rbp; ret; NOPPAD"); }
void main_func(){ lf(); (void)rd(); for(int i=0;i<DEPTH;i++) spray(); volatile char b[64]; __asm__ __volatile__("clflush (%0); lfence"::"r"(b):"memory"); }
""",
    # RETBLEED: x86 RSB underflow via deep recursion
    ("RETBLEED_RSB", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
__attribute__((noinline)) void deep_call(int n){
    if(n > 0){
        deep_call(n - 1);
    }
    __asm__ __volatile__("NOPPAD\\n\\tleave\\n\\tret");
}
void deplete_rsb(){
    for(int i = 0; i < DEPTH; i++){
        deep_call(16);
    }
}
""",
    # RETBLEED: x86 variant with call/ret mismatch
    ("RETBLEED_MISMATCH", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
__attribute__((noinline)) void victim_ret(){
    __asm__ __volatile__(
        "push %%rbp\\n\\t"
        "mov %%rsp, %%rbp\\n\\t"
        "NOPPAD\\n\\t"
        "pop %%rbp\\n\\t"
        "ret\\n\\t"
        :::"memory"
    );
}
void trigger_retbleed(){
    lf();
    for(int i = 0; i < DEPTH; i++){
        __asm__ __volatile__("call 1f\\n\\t1: ret");
    }
    victim_ret();
}
""",
    # RETBLEED: x86 multiple ret instructions pattern
    ("RETBLEED_MULTI_RET", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
__attribute__((noinline)) void func_a(){ __asm__ __volatile__("NOPPAD\\n\\tleave\\n\\tret"); }
__attribute__((noinline)) void func_b(){ __asm__ __volatile__("NOPPAD\\n\\tleave\\n\\tret"); }
__attribute__((noinline)) void func_c(){ __asm__ __volatile__("NOPPAD\\n\\tleave\\n\\tret"); }
void chain_rets(){
    lf();
    for(int i = 0; i < DEPTH; i++){
        func_a();
        func_b();
        func_c();
    }
}
""",
    # RETBLEED: ARM64 RSB underflow
    ("RETBLEED", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
__attribute__((noinline)) void deep_call_arm(int n){
    if(n > 0){
        deep_call_arm(n - 1);
    }
    __asm__ __volatile__("NOPPAD\\n\\tret");
}
void deplete_rsb_arm(){
    barrier();
    for(int i = 0; i < DEPTH; i++){
        deep_call_arm(16);
    }
}
""",
    # RETBLEED: ARM64 multiple bl/ret pattern
    ("RETBLEED_BL", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
__attribute__((noinline)) void target_a(){ __asm__ __volatile__("NOPPAD\\n\\tret"); }
__attribute__((noinline)) void target_b(){ __asm__ __volatile__("NOPPAD\\n\\tret"); }
void rsb_spray_arm(){
    barrier();
    __asm__ __volatile__(
        "bl target_a\\n\\t"
        "bl target_b\\n\\t"
        "NOPPAD\\n\\t"
        "bl target_a\\n\\t"
        "bl target_b\\n\\t"
        "ret\\n\\t"
        :::"x30","memory"
    );
}
""",
    # L1TF: ARM64 load + cache ops + timing
    ("L1TF", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
void main_func(volatile uint64_t *p){ barrier(); (void)rd(); __asm__ __volatile__("ldr x0,[%0]\\n\\tNOPPAD\\n\\tdc civac,%0\\n\\tisb"::"r"(p):"x0","memory"); }
""",
    # SPECTRE_V2: ARM64 indirect branch injection (simplified)
    ("SPECTRE_V2", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
void target(){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
void main_func(){ barrier(); (void)rd(); void (*f)()=target; __asm__ __volatile__("br %0\\n\\tNOPPAD"::"r"(f):"memory"); }
""",
    # SPECTRE_V2: x86 indirect jump poisoning
    ("SPECTRE_V2", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
void target(){ __asm__ __volatile__("nop\\n\\tNOPPAD"); }
    void main_func(){ lf(); (void)rd(); void (*f)()=target; __asm__ __volatile__("jmp *%0\\n\\tNOPPAD"::"r"(f):"memory"); }
""",
    # SPECTRE_V4: Speculative Store Bypass (SSB)
    ("SPECTRE_V4", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
void main_func(long *p){ barrier(); (void)rd(); *p = 0; __asm__ __volatile__("NOPPAD"); int v = *p; }
""",
    ("SPECTRE_V4", "x86_64"): """
#include <stdint.h>
static inline void lf(){ __asm__ __volatile__("lfence":::"memory"); }
static inline uint64_t rd(){ unsigned hi,lo; __asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi)); return ((uint64_t)hi<<32)|lo; }
void main_func(long *p){ lf(); (void)rd(); *p = 0; __asm__ __volatile__("NOPPAD"); int v = *p; }
""",
}


def materialize(code: str, nop_pad: int, depth: int) -> str:
    # Insert escaped newlines for inline asm strings
    if nop_pad <= 0:
        pad = ""
    else:
        pad = "".join(["\\n\\tnop" for _ in range(nop_pad)])
    code = code.replace("NOPPAD", pad)
    code = code.replace("DEPTH", str(max(1, depth)))
    return code


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--outdir", type=Path, default=Path("c_vulns/c_code/generated_variants"))
    ap.add_argument("--variants-per-class", type=int, default=6)
    ap.add_argument("--classes", type=str, nargs="*", default=None, 
                    help="Specific classes to generate (e.g., MDS MDS_ZOMBIE). Default: all")
    args = ap.parse_args()

    args.outdir.mkdir(parents=True, exist_ok=True)
    
    # Filter templates if specific classes requested
    templates_to_generate = TEMPLATES
    if args.classes:
        templates_to_generate = {
            k: v for k, v in TEMPLATES.items() 
            if k[0] in args.classes or k[0].upper() in [c.upper() for c in args.classes]
        }
    
    generated_count = 0
    for (cls, arch), code in templates_to_generate.items():
        for i in range(args.variants_per_class):
            nop = (i % 3) * 2  # 0,2,4
            depth = 2 + (i % 4)  # 2..5
            src = materialize(code, nop, depth)
            fname = f"{cls.lower()}_{arch}_gen_{i}.c"
            (args.outdir / fname).write_text(src)
            generated_count += 1
    print(f"Wrote {generated_count} templates to {args.outdir}")


if __name__ == "__main__":
    main()


