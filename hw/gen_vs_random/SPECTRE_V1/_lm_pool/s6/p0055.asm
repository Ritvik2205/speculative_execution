.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 84
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
adc ax, 24404
sub al, dil
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
lea ax, qword ptr [rdx]
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
btc ax, cx
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
