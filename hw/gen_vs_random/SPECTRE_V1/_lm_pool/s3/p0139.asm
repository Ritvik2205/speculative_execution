.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
lea rsi, qword ptr [rcx + rdi + 92]
sub rax, -1628299544
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
or cl, cl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmovle rcx, rbx
sub sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
