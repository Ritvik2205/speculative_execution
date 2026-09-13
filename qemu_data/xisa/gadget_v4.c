#include <stdint.h>
#include <stddef.h>
extern uint8_t probe[]; extern uint8_t **slot; extern uint8_t *safe;
void gadget(void){ *slot = safe; __asm__ __volatile__("":::"memory"); uint8_t v=*(*slot); probe[v<<6]=1; }
