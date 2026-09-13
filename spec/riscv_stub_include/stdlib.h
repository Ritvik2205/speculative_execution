#ifndef _STUB_STDLIB_H
#define _STUB_STDLIB_H
typedef unsigned long size_t;
void *malloc(size_t);
void *calloc(size_t, size_t);
void free(void *);
void exit(int);
long random(void);
int rand(void);
void srand(unsigned);
void srandom(unsigned);
long strtol(const char *, char **, int);
int atoi(const char *);
#define NULL ((void*)0)
#endif
