.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, si
sub al, sil
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
add al, 18
mov al, cl
sub dil, -32
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno bx, ax
sbb ecx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
