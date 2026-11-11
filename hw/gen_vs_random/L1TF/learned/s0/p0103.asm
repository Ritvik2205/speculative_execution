.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
sub dl, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 32
and dl, dil
jmp .bb_0.1
.bb_0.1:
sbb dl, -26
jmp .bb_0.2
.bb_0.2:
sub bl, cl
sub bl, cl
cmp al, -119
sbb rdi, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
