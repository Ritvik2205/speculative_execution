.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
sbb edx, -8
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or sil, cl
add al, 3
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
sbb edi, 74
cmp al, 53
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
