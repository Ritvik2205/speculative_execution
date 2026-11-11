.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -89
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb dl, sil
xchg rax, rcx
jle .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
add bl, bl
sub al, -82
add dil, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
