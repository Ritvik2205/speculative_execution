.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
cmovl cx, bx
and bl, 89
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
cmovle rdx, rdx
xchg eax, ebx
add al, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
add dl, 85 # instrumentation
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 43
add cl, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 59
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
