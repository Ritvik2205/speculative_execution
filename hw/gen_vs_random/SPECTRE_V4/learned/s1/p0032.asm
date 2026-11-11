.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
or al, -19
sub al, 69
add cl, -62
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test dl, -125
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
or rdi, 43
xor al, dil
xchg rbx, rcx
test dl, -102
sub dil, -28
or cl, -104
bt esi, ebx
add bl, cl
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
