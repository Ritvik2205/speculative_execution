.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, ax
test dl, -7
lea rsi, qword ptr [rdi + rax]
adc bl, dl
xchg rdx, rax
setnz dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub di, 14
sbb dil, al
and dl, bl
sub al, sil
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
