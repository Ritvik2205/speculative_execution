.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rax, 627810357
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
xor dl, 34
test dil, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
or cl, al
or sil, dil
bt eax, edx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
bt dx, bx
test sil, cl
and cl, -19
xor ax, -1005
and si, -121
cmovno rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
