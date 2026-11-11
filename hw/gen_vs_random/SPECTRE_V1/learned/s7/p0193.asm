.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, 33
add edi, -91
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
cmovnle rdx, rax
imul rax, rcx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
