#ifndef _STUB_X86INTRIN_H
#define _STUB_X86INTRIN_H
/* x86 cache/timing intrinsics mapped to riscv64 so portable gadget C compiles.
   Semantics-preserving where it matters: fences are real riscv fences, __rdtsc is
   rdcycle. clflush has no bare-metal riscv equivalent -> a fence (harness only). */
#include <stdint.h>
static inline void _mm_mfence(void){ __asm__ __volatile__("fence rw,rw":::"memory"); }
static inline void _mm_lfence(void){ __asm__ __volatile__("fence r,r":::"memory"); }
static inline void _mm_sfence(void){ __asm__ __volatile__("fence w,w":::"memory"); }
static inline void _mm_clflush(volatile void *p){ (void)p; __asm__ __volatile__("fence":::"memory"); }
static inline uint64_t __rdtsc(void){ uint64_t c; __asm__ __volatile__("rdcycle %0":"=r"(c)); return c; }
static inline uint64_t _rdtsc(void){ return __rdtsc(); }
static inline uint64_t __rdtscp(unsigned *a){ if(a)*a=0; return __rdtsc(); }
#endif
