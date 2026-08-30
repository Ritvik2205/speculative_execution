#ifndef _STUB_STRING_H
#define _STUB_STRING_H
typedef unsigned long size_t;
void *memset(void *, int, size_t);
void *memcpy(void *, const void *, size_t);
char *strncpy(char *, const char *, size_t);
char *strcpy(char *, const char *);
size_t strlen(const char *);
int strcmp(const char *, const char *);
#endif
