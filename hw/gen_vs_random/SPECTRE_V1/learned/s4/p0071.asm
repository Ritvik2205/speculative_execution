.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
cmp al, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, cl
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
