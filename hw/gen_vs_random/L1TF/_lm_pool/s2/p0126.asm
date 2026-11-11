.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
or di, di
and dil, al
xor al, 89
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
