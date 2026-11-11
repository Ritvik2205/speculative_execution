.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
mov cl, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
cmp bl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 13
bt edi, eax
xchg cl, bl
adc dil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
