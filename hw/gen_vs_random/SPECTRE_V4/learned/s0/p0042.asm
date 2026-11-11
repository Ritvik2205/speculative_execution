.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
cmovbe bx, cx
xchg rax, rdx
and ax, -14374
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
cmp bl, -79
adc bl, dil
cmp cl, dil
and bx, 11
or rcx, 57
or cl, bl
cmp al, 105
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
