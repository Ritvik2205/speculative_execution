#ifndef _STUB_STDINT_H
#define _STUB_STDINT_H
/* Portable across the two compilers we harvest with:
   - gcc bare-metal (riscv64-elf-gcc): its own <stdint.h> include_next's to a libc
     one that is absent; stdint-gcc.h is gcc's self-contained freestanding version.
   - clang cross-compile (-nostdlibinc): clang ships a builtin <stdint.h>; reach it
     with include_next since this stub sits earlier on the search path. */
#if defined(__GNUC__) && !defined(__clang__)
#include <stdint-gcc.h>
#else
#include_next <stdint.h>
#endif
#endif
