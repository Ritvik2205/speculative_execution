.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and eax, -409673666
and al, dil
or al, -2
and cl, dil
jmp .bb_0.1
.bb_0.1:
test dl, 84
sbb dil, 20
sub al, -47
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
