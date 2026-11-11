.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
sbb bl, dl
lea bx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
xor cx, 6
and rbx, 69
mov cl, dl
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
xor dil, -37
sub al, -89
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
