.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
cmovl edi, ebx
btr dx, di
cmovle bx, dx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
cmovnle si, dx
btc ax, si
cmovnp rax, rcx
cmovl bx, ax
btc edi, eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 11
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 46
xor cl, cl
test bx, 25542
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
cmovnz dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
