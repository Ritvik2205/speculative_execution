.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -6
cmp al, sil
and cl, -57
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and sil, -55
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
