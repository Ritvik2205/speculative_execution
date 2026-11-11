.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and sil, al
xor dil, 124
xor al, 115
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
or rsi, 57
and rax, -731384280
not dl
bt bx, dx
xor bl, -61
and rax, 41
xor rdi, -9
xor rbx, 89
or rbx, -72
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
