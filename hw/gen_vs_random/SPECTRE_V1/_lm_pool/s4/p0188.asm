.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
sbb eax, -108
cmovle bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
sub al, -1
add dl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdx, 89
sub di, 3
lea dx, qword ptr [rbx + rdi + 76]
sub al, cl
test dil, -116
cmp cl, sil
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
