.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
sub ax, di
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sbb dl, sil
and bl, bl
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
