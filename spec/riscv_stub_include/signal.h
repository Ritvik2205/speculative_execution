#ifndef _STUB_SIGNAL_H
#define _STUB_SIGNAL_H
typedef void (*sighandler_t)(int);
sighandler_t signal(int, sighandler_t);
#define SIGSEGV 11
#define SIGBUS 7
#define SIG_DFL ((sighandler_t)0)
#define SIG_IGN ((sighandler_t)1)
#define SIG_ERR ((sighandler_t)-1)
#endif
