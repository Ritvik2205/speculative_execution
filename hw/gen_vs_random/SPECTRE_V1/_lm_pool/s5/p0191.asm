.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 72
cmp edx, 44
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 59
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
sbb edi, 41
sub cl, dil
add sil, al
sub cl, sil
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
lea ecx, qword ptr [rdx]
adc cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
