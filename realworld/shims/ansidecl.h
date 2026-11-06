/* Minimal stand-in for binutils/libiberty <ansidecl.h>: the Kocher 11ker/11gcc/11sub
 * sources only use the PTR macro (libiberty: `#define PTR void *`). Not in the toolchain image. */
#ifndef ANSIDECL_SHIM_H
#define ANSIDECL_SHIM_H
#define PTR void *
#endif
