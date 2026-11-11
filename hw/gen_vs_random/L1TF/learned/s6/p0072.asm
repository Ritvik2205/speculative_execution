.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 24
sub dil, -39
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
add al, 93
adc dx, 92
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
cmp rax, 1138518729
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, -104
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
