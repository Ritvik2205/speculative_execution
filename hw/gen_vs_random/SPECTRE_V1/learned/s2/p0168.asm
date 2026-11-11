.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor rsi, 74
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 79
sbb al, sil
lea cx, qword ptr [rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
add cl, dl
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
add dil, dl
sbb al, dl
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
