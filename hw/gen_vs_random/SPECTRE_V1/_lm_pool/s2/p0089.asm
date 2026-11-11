.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
add rdi, 2
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
inc dil
adc bl, 102
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ecx, 52
test cl, -62
lea bx, qword ptr [rax + rsi + 38]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
