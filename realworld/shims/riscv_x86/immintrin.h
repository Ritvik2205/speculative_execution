/* Compile-only stand-in for x86 <immintrin.h>/<x86intrin.h> so the project's portable-C gadget
 * functions in c_vulns/ can be cross-compiled to riscv64. Only the helpers utils.c calls are
 * defined; the gadget functions themselves are compiled untouched. */
#ifndef RISCV_X86_SHIM_H
#define RISCV_X86_SHIM_H
#include <stdint.h>
static inline void _mm_clflush(const void *p) { (void)p; }
static inline void _mm_mfence(void) { __sync_synchronize(); }
static inline void _mm_lfence(void) { __sync_synchronize(); }
static inline void _mm_pause(void) {}
static inline uint64_t __rdtsc(void) { uint64_t t; __asm__ volatile("rdcycle %0" : "=r"(t)); return t; }
#endif
