.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
or al, 100
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
sbb cl, dil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
add si, 53
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
