.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
xor dil, 8
test edx, -1561252782
xor rbx, 89
and dl, sil
xor ax, -12492
or bl, al
test al, dl
or al, -58
and si, -121
bt bx, si
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and al, -8
btc si, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
