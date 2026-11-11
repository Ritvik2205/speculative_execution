.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 77
and cl, 86
test dil, -116
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
lea cx, qword ptr [rax]
adc dil, 95
sub al, dl
test bl, -8
jmp .bb_0.2
.bb_0.2:
test dil, -116
setnle al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
