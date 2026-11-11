.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
test ax, -13885
and dil, 98
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb al, 66
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
