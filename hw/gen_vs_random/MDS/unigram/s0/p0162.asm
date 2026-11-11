.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovbe ax, di
test cl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
btc rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
cmovnb bx, cx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
or dx, 125
or cl, cl
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and ax, 19740
and bl, 120 # instrumentation
cmovnle ecx, ecx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
