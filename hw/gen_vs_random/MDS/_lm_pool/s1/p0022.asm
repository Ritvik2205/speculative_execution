.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 56
and bl, al
and ax, -4410
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test dil, -51
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or cl, -36
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 23
btr dx, si
or al, -24
or cl, -77
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
