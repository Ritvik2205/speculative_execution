#ifndef _STUB_MMAN_H
#define _STUB_MMAN_H
typedef unsigned long size_t;
void *mmap(void *, size_t, int, int, int, long);
int munmap(void *, size_t);
int mprotect(void *, size_t, int);
#define PROT_READ 1
#define PROT_WRITE 2
#define PROT_EXEC 4
#define PROT_NONE 0
#define MAP_PRIVATE 2
#define MAP_ANONYMOUS 0x20
#define MAP_FAILED ((void*)-1)
#endif
