#include <stdint.h>
#include <stddef.h>
/* Minimal self-contained Spectre-V1 gadget: bounds-check bypass + strided probe.
   Same source, three ISAs — externs only, so no harness/intrinsics differ. */
extern uint8_t probe[]; extern uint8_t *arr; extern size_t sz;
void gadget(size_t i){ if(i < sz){ uint8_t v = arr[i]; probe[v << 6] = 1; } }
