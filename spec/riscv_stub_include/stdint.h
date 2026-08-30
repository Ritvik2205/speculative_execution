#ifndef _STUB_STDINT_H
#define _STUB_STDINT_H
/* gcc's own <stdint.h> include_next's to a libc <stdint.h> we don't have
   (bare-metal toolchain, no newlib). stdint-gcc.h is the self-contained
   freestanding version gcc ships for exactly this case. */
#include <stdint-gcc.h>
#endif
