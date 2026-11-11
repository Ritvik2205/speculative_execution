.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
sub al, dl
add ax, 8031
sub al, sil
add dil, dl
xor edx, 69
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, dl
lea bx, qword ptr [rax]
imul rdi, rax, 65
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
