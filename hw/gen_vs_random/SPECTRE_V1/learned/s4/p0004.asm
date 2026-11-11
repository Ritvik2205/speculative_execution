.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and eax, 933895314
and bl, cl
cmovle rax, rcx
sbb dl, bl
sub al, -1
xor bl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
xor cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
