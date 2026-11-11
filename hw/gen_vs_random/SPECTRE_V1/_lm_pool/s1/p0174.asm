.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 87
xor dl, bl
add al, 18
lea rsi, qword ptr [rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, sil
cmp rax, -1877933118
and dil, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
