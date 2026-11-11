.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
sbb al, -112
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
test bl, -8
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and cl, bl
test bl, -8
sub sil, al
jmp .bb_0.1
.bb_0.1:
test bl, -8
sbb al, 33
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
