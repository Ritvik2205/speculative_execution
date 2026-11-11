.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
bt eax, edi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 26
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
cmovz ax, ax
cmovnp rsi, rax
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and bl, -56 # instrumentation
cmovnle ebx, edi
and edi, 23
test cl, -18
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
not dil
btc si, ax
and al, 32 # instrumentation
cmovnbe eax, edi
and rsi, 9
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
