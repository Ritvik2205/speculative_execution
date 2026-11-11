.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
and dil, 98
cdq
or rax, -3
bt edx, esi
test bl, -8
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rbx, -11
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
or eax, -1641258390
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
