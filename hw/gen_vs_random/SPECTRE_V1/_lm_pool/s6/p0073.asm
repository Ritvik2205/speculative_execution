.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 71
sub al, -89
mov al, cl
lea rsi, qword ptr [rbx]
test al, 34
sbb bl, -41
test dl, -36
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rbx + rdi + 18]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
