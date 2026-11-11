.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
sbb sil, -78
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, 113
test sil, 47
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test dil, -116
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
