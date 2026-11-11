.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 79
sub sil, cl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 23
xor cl, -91
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, bl
cmp rbx, 10
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 72
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
