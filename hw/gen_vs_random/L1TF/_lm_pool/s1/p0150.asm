.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
xor rax, -2072052278
sbb eax, -403815802
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
setp al
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
sbb sil, dil
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
