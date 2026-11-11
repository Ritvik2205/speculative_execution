.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -7
sub al, bl
test al, 34
add rcx, 23
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
sbb rdx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
