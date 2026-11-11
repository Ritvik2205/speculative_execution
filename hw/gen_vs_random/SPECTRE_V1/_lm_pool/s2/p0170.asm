.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 8
add dil, 72
sbb al, 118
cmp rdi, 68
xor al, -89
add sil, -68
cmp ax, 7452
xor rcx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
test dil, -116
mov al, sil
add bl, 70
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
