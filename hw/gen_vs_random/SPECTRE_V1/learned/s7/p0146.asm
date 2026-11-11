.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 71
sbb al, sil
test al, -71
lea bx, qword ptr [rax]
or edi, 4
and rax, -175411684
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
setns al
cmp rdi, 24
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, cl
and cl, -57
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
