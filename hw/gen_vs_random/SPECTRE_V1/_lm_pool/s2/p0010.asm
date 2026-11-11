.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
test dl, -105
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 20
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, dl
mov dil, dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, al
sub sil, dil
cmp di, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
