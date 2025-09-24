#!/usr/bin/env python3
import argparse
from pathlib import Path


TEMPLATES = {
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
    # L1TF: ARM64 load + cache ops + timing
    ("L1TF", "arm64"): """
#include <stdint.h>
static inline void barrier(){ __asm__ __volatile__("dsb sy; isb":::"memory"); }
static inline uint64_t rd(){ uint64_t v; __asm__ __volatile__("mrs %0, cntvct_el0":"=r"(v)); return v; }
void main_func(volatile uint64_t *p){ barrier(); (void)rd(); __asm__ __volatile__("ldr x0,[%0]\\n\\tNOPPAD\\n\\tdc civac,%0\\n\\tisb"::"r"(p):"x0","memory"); }
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
    args = ap.parse_args()

    args.outdir.mkdir(parents=True, exist_ok=True)
    for (cls, arch), code in TEMPLATES.items():
        for i in range(args.variants_per_class):
            nop = (i % 3) * 2  # 0,2,4
            depth = 2 + (i % 4)  # 2..5
            src = materialize(code, nop, depth)
            fname = f"{cls.lower()}_{arch}_gen_{i}.c"
            (args.outdir / fname).write_text(src)
    print(f"Wrote templates to {args.outdir}")


if __name__ == "__main__":
    main()


