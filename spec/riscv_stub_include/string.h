#ifndef _STUB_STRING_H
#define _STUB_STRING_H
typedef unsigned long size_t;
void *memset(void *, int, size_t);
void *memcpy(void *, const void *, size_t);
char *strncpy(char *, const char *, size_t);
char *strcpy(char *, const char *);
size_t strlen(const char *);
int strcmp(const char *, const char *);
int memcmp(const void *, const void *, size_t);
void *memmove(void *, const void *, size_t);
char *strncat(char *, const char *, size_t);
char *strstr(const char *, const char *);
size_t strncmp(const char *, const char *, size_t);
#endif
