.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
mov sil, dil
mov al, -28
sbb bl, -41
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
sub al, -89
add al, 10
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
