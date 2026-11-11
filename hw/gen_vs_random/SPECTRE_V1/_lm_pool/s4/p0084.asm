.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -1
js .bb_0.2
jmp .exit_0
.bb_0.2:
test dil, -116
adc dx, -112
add al, -13
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
add edx, 2
lea edi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
