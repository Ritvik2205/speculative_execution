.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
lea cx, qword ptr [rax]
sbb bl, 79
or cl, -98
add al, dil
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
lea eax, qword ptr [rsi]
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
