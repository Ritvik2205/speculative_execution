.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 97
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
xor dil, dl
add cl, -20
test bl, 12
and sil, 37
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
bt edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
