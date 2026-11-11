.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
test dl, 113
add al, -13
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 66
setnb cl
sbb al, -107
jmp .bb_0.1
.bb_0.1:
sub rcx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
