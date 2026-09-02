/* Real riscv64 shim for c_vulns/c_code/utils.c — maps the x86 harness primitives
   (_mm_clflush/_mm_mfence/_mm_lfence/__rdtsc) to riscv64-native ops so the PORTABLE
   gadget cores compile to genuine, idiomatic riscv64 (not a transliteration).
   Bare-metal riscv64-elf toolchain: declarations only, never linked. */
#include <stdint.h>
#include <stddef.h>
#ifndef _STUB_STDIO_DECL
int printf(const char *, ...);
void *memset(void *, int, unsigned long);
#endif
#define CACHE_LINE_SIZE 64
#define NUM_CACHE_LINES 256
#define PROBE_ARRAY_SIZE (NUM_CACHE_LINES * CACHE_LINE_SIZE)

/* x86 intrinsic names -> riscv64 semantics */
static inline void _mm_mfence(void){ __asm__ __volatile__("fence rw,rw":::"memory"); }
static inline void _mm_lfence(void){ __asm__ __volatile__("fence r,r":::"memory"); }
static inline void _mm_clflush(volatile void *p){ (void)p; __asm__ __volatile__("fence":::"memory"); }
static inline uint64_t __rdtsc(void){ uint64_t c; __asm__ __volatile__("rdcycle %0":"=r"(c)); return c; }
static inline uint64_t rdtsc(void){ return __rdtsc(); }

uint8_t probe_array[PROBE_ARRAY_SIZE];

void flush_probe_array(void){
    for (int i=0;i<NUM_CACHE_LINES;i++) _mm_clflush(&probe_array[i*CACHE_LINE_SIZE]);
    _mm_mfence();
}
long long measure_access_time(volatile uint8_t *addr){
    uint64_t s=rdtsc(); volatile uint8_t d=*addr; (void)d; _mm_mfence(); return (long long)(rdtsc()-s);
}
void benign_target(void){ probe_array[0]=1; }
void common_init(void){
    memset(probe_array,0,PROBE_ARRAY_SIZE);
    for (int i=0;i<PROBE_ARRAY_SIZE;i+=CACHE_LINE_SIZE) probe_array[i]=1;
    _mm_mfence(); flush_probe_array(); _mm_mfence();
}
int perform_measurement(uint8_t expected, const char *name){
    (void)expected;(void)name; int best=0;
    for (int i=0;i<NUM_CACHE_LINES;i++){ volatile uint8_t *a=&probe_array[i*CACHE_LINE_SIZE];
        if (measure_access_time(a) < 80) best=i; }
    return best;
}
