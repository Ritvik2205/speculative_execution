#ifndef _STUB_UNISTD_H
#define _STUB_UNISTD_H
typedef long ssize_t;
typedef int pid_t;
ssize_t read(int, void *, unsigned long);
ssize_t write(int, const void *, unsigned long);
int close(int);
int usleep(unsigned);
unsigned sleep(unsigned);
#endif
