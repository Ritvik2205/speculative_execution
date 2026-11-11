.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add al, 93
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 46
jmp .bb_0.3
.bb_0.3:
sub cl, al
sbb dil, sil
sub al, sil
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
