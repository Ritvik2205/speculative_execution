.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
cmovnbe edi, edi
cmovns rsi, rcx
and dl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and al, -128 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
or dx, dx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 43
and bl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 73
and cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
