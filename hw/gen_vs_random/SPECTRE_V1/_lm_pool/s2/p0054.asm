.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sub al, 63
xor sil, al
sub al, bl
and bl, 124
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 1392087754
lea rdx, qword ptr [rax + rdi + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
