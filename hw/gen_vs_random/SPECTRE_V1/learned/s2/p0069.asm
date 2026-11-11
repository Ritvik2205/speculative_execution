.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
lea rax, qword ptr [rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, cl
and dl, -109
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp rbx, 1
and cl, dil
lea di, qword ptr [rcx + rbx]
or rax, -1571963467
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
