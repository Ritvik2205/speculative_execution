.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
test cl, sil
test esi, 1857129931
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
not dl
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
or rax, 52
test cl, -113
test esi, 1857129931
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test rbx, 100
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and dx, 3
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
