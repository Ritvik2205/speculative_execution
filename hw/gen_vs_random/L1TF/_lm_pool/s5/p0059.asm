.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
jmp .bb_0.1
.bb_0.1:
or sil, cl
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 80
jmp .bb_0.2
.bb_0.2:
test cl, 80
and sil, 93
lea cx, qword ptr [rsi + rcx + 93]
and cx, -79
xor eax, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
