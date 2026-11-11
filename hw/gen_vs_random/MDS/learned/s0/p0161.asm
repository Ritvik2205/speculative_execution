.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and cl, -71
or cl, dil
and si, -121
or rbx, -77
or rsi, 86
test dil, 46
sbb sil, 18
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
