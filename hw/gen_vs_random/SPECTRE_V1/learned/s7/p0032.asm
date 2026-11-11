.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
sub bl, dil
sub al, cl
sbb al, 33
test bl, -8
sub cl, al
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, bl
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
