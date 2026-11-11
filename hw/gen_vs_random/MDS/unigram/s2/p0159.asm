.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 66
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
xor dl, -68
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or sil, -8
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc dx, bx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
bt ebx, 107
bts rax, 149
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
cmovnp dx, bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and dl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and cl, 40
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
