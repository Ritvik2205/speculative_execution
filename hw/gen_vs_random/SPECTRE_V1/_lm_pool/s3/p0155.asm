.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and ax, 21910
sbb al, -114
jle .bb_0.2
jmp .exit_0
.bb_0.2:
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
