.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
sub bl, dl
sub al, dl
sub dl, -12
sub al, cl
lea dx, qword ptr [rax]
lea edi, qword ptr [rbx]
cmp rdx, -19
add bl, al
cmovnle rdi, rsi
sub bl, dl
mov ebx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
