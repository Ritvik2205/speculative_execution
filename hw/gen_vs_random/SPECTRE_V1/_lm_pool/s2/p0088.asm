.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
test bl, -8
test dil, -116
sub dl, -48
sub al, -1
lea rcx, qword ptr [rsi + rax]
cmp bl, sil
sbb dl, bl
sbb cl, 105
jmp .bb_0.1
.bb_0.1:
adc cl, -81
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
