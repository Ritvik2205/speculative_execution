.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and ax, 7954
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
cmp di, -78
bt rax, rcx
sbb dil, bl
sub ax, 26007
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
