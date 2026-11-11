.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, sil
sbb al, 104
sub al, dil
or bl, cl
and rdi, 34
lea rcx, qword ptr [rdi]
bt esi, edx
lea rax, qword ptr [rdx + rbx + 4]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
cmp dil, -78
lea si, qword ptr [rbx + rdi + 86]
cmp dx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
