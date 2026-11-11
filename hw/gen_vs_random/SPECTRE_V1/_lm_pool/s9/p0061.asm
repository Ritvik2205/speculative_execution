.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
lea rsi, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test dl, -36
add ax, 6980
sbb al, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
