.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
sbb al, dl
sbb edi, 37
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test dil, -116
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp ebx, -33
jle .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, 49
add ebx, -116
sub al, cl
or rdi, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
