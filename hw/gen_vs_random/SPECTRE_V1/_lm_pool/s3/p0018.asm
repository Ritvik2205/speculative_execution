.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 8
sub dl, bl
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
sub bl, -6
sub al, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, dl
sub cl, -47
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
