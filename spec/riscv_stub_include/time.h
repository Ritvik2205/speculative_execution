#ifndef _STUB_TIME_H
#define _STUB_TIME_H
typedef long time_t;
typedef long clock_t;
struct timespec { long tv_sec; long tv_nsec; };
time_t time(time_t *);
clock_t clock(void);
int clock_gettime(int, struct timespec *);
#define CLOCK_MONOTONIC 1
#endif
