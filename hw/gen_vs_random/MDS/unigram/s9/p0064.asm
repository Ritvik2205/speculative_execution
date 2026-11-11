.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rcx, -63
cmovnp edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
btc ax, bx
and dx, bx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 51
bt edi, 17
xor dl, cl
and bl, -123 # instrumentation
cmovnp si, dx
cmovnz rsi, rdx
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
bt rax, 73
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
