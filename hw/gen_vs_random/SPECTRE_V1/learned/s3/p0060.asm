.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
sbb esi, 90
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test sil, 13
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
sub dl, -12
test cl, -62
lea ax, qword ptr [rbx + rdx + 32397]
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
lea rdi, qword ptr [rdx + rcx + 12]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
