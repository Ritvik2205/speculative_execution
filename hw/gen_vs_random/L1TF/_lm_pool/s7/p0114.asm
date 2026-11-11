.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
imul al
xor al, cl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc bl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 44
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
