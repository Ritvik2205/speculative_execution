.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add al, -109
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
add dl, 47
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, dil
add sil, -68
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
