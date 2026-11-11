.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
test dil, -126
lea edx, qword ptr [rsi]
sbb al, sil
xor sil, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 25
cmovbe edi, ebx
btc dx, bx
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
