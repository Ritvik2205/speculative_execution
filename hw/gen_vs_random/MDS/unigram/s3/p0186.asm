.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
jmp .bb_0.1
.bb_0.1:
and al, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
test rdx, -1624442902
btc rdi, rax
or bl, 73
and bl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
cmovnbe edx, eax
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and bl, 100
and bx, dx
and dil, -3 # instrumentation
cmovnb di, si
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
