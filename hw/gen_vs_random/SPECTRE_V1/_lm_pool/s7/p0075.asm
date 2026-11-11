.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
sbb dl, 127
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
xor cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
sbb ebx, 29
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -68
lea di, qword ptr [rdx]
cmp dil, -58
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
