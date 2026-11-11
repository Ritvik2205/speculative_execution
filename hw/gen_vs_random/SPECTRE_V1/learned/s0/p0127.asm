.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 81
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
xor dl, 71
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
or ebx, -124
lea ecx, qword ptr [rax]
add bl, 70
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
