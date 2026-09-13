#ifndef _STUB_SETJMP_H
#define _STUB_SETJMP_H
typedef long jmp_buf[32];
typedef long sigjmp_buf[32];
int setjmp(jmp_buf); void longjmp(jmp_buf, int);
int sigsetjmp(sigjmp_buf, int); void siglongjmp(sigjmp_buf, int);
#define setjmp(e) setjmp(e)
#endif
