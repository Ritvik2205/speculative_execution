.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test dil, -126
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and sil, 93
mov cl, dl
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rcx + rdi + 5]
sbb al, dl
add dl, cl
sbb dl, cl
or cl, al
inc ebx
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
