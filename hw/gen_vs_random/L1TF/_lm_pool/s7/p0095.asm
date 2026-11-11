.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 8
inc bl
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or bl, al
sub al, 9
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb sil, cl
cmp al, bl
cmp dl, -56
neg rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
