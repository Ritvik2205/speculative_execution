.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 31
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
adc al, -82
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
mov sil, dil
adc edi, 49
btc bx, di
test al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
