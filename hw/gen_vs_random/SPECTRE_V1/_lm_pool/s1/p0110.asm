.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
sbb al, -112
and ax, 2806
cmovno ax, bx
or al, 19
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
adc sil, -77
add dil, -75
sbb dl, bl
sbb dl, 127
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
