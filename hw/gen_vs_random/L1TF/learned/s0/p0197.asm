.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and sil, 37
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
sub dil, cl
or al, -57
sbb dil, al
and di, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
