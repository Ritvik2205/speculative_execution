.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
xor sil, -33
sbb ebx, 91
cmp rsi, 53
and bl, bl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
