.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
test dil, -116
setnb cl
sbb al, 33
adc dl, 48
add cl, -127
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add edi, -91
sub sil, al
sub bx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
